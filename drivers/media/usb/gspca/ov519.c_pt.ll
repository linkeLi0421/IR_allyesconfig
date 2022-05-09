; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/ov519.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/ov519.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ov_i2c_regvals = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ov_regvals = type { i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctrl_valid = type { i8, [3 x i8] }
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
%struct.sd = type { %struct.gspca_dev, ptr, ptr, %struct.anon.108, %struct.anon.109, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, [256 x i16], [556 x i8] }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }

@__UNIQUE_ID_author303 = internal constant [64 x i8] c"gspca_ov519.author=Jean-Francois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [48 x i8] c"gspca_ov519.description=OV519 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_ov519.file=drivers/media/usb/gspca/gspca_ov519\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_ov519.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_ov519__307_5027_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__param_str_frame_rate = internal constant [23 x i8] c"gspca_ov519.frame_rate\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@frame_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_frame_rate = internal constant %struct.kernel_param { ptr @__param_str_frame_rate, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @frame_rate } }, section "__param", align 4
@__UNIQUE_ID_frame_ratetype308 = internal constant [36 x i8] c"gspca_ov519.parmtype=frame_rate:int\00", section ".modinfo", align 1
@__UNIQUE_ID_frame_rate309 = internal constant [65 x i8] c"gspca_ov519.parm=frame_rate:Frame rate (5, 10, 15, 20 or 30 fps)\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_ov519\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ov519\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [26 x %struct.usb_device_id], [144 x i8] } { [26 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 1054, i16 16466, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 1054, i16 16479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1054, i16 16480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1054, i16 16481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1054, i16 16484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1054, i16 16487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1054, i16 16488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1118, i16 652, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 1356, i16 340, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1356, i16 341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1449, i16 1297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1449, i16 1304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1449, i16 1305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 1449, i16 1328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 1449, i16 10240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 1449, i16 17689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1449, i16 -31463, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1449, i16 -23279, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1449, i16 -23272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 2067, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2914, i16 89, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 3734, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 4166, i16 -26265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 -32736, i16 -4348, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id zeroinitializer], [144 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr @sd_reset_snapshot, ptr @sd_get_jcomp, ptr @sd_set_jcomp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@ov511_vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 825308495, i32 1, i32 320, i32 230400, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825308495, i32 1, i32 640, i32 614400, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ov518_vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 942749007, i32 1, i32 320, i32 230400, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 942749007, i32 1, i32 640, i32 614400, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ov519_vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@w9968cf_vga_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1498831189, i32 1, i32 320, i32 38400, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 1498831189, i32 1, i32 352, i32 50688, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 640, i32 153600, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 704, i32 202752, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 1280, i32 614400, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Can't determine sensor slave IDs\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/ov519.c\00", [32 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@ov511_sif_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 825308495, i32 1, i32 160, i32 70000, i32 7, i32 3, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 825308495, i32 1, i32 176, i32 70000, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825308495, i32 1, i32 320, i32 230400, i32 7, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 825308495, i32 1, i32 352, i32 304128, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ov518_sif_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 942749007, i32 1, i32 160, i32 70000, i32 7, i32 3, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 942749007, i32 1, i32 176, i32 70000, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 942749007, i32 1, i32 320, i32 230400, i32 7, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 942749007, i32 1, i32 352, i32 304128, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ov519_sif_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1195724874, i32 1, i32 160, i32 7790, i32 7, i32 3, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 1195724874, i32 1, i32 176, i32 10094, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 352, i32 38606, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ovfx2_ov2610_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 800, i32 600, i32 825770306, i32 1, i32 800, i32 480000, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1600, i32 1200, i32 825770306, i32 1, i32 1600, i32 1920000, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ovfx2_ov3610_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 800, i32 600, i32 825770306, i32 1, i32 800, i32 480000, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1024, i32 768, i32 825770306, i32 1, i32 1024, i32 786432, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1600, i32 1200, i32 825770306, i32 1, i32 1600, i32 1920000, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 2048, i32 1536, i32 825770306, i32 1, i32 2048, i32 3145728, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ovfx2_ov9600_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 825770306, i32 1, i32 1280, i32 1310720, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@norm_3620b = internal constant { [64 x %struct.ov_i2c_regvals], [32 x i8] } { [64 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 17, i8 -128 }, %struct.ov_i2c_regvals { i8 19, i8 -64 }, %struct.ov_i2c_regvals { i8 9, i8 8 }, %struct.ov_i2c_regvals { i8 12, i8 8 }, %struct.ov_i2c_regvals { i8 13, i8 -95 }, %struct.ov_i2c_regvals { i8 14, i8 112 }, %struct.ov_i2c_regvals { i8 15, i8 66 }, %struct.ov_i2c_regvals { i8 20, i8 -58 }, %struct.ov_i2c_regvals { i8 21, i8 2 }, %struct.ov_i2c_regvals { i8 51, i8 9 }, %struct.ov_i2c_regvals { i8 52, i8 80 }, %struct.ov_i2c_regvals { i8 54, i8 0 }, %struct.ov_i2c_regvals { i8 55, i8 4 }, %struct.ov_i2c_regvals { i8 56, i8 82 }, %struct.ov_i2c_regvals { i8 58, i8 0 }, %struct.ov_i2c_regvals { i8 60, i8 31 }, %struct.ov_i2c_regvals { i8 68, i8 0 }, %struct.ov_i2c_regvals { i8 64, i8 0 }, %struct.ov_i2c_regvals { i8 65, i8 0 }, %struct.ov_i2c_regvals { i8 66, i8 0 }, %struct.ov_i2c_regvals { i8 67, i8 0 }, %struct.ov_i2c_regvals { i8 69, i8 -128 }, %struct.ov_i2c_regvals { i8 72, i8 -64 }, %struct.ov_i2c_regvals { i8 73, i8 25 }, %struct.ov_i2c_regvals { i8 75, i8 -128 }, %struct.ov_i2c_regvals { i8 77, i8 -60 }, %struct.ov_i2c_regvals { i8 53, i8 76 }, %struct.ov_i2c_regvals { i8 61, i8 0 }, %struct.ov_i2c_regvals { i8 62, i8 0 }, %struct.ov_i2c_regvals { i8 59, i8 24 }, %struct.ov_i2c_regvals { i8 51, i8 25 }, %struct.ov_i2c_regvals { i8 52, i8 90 }, %struct.ov_i2c_regvals { i8 59, i8 0 }, %struct.ov_i2c_regvals { i8 51, i8 9 }, %struct.ov_i2c_regvals { i8 52, i8 80 }, %struct.ov_i2c_regvals { i8 18, i8 64 }, %struct.ov_i2c_regvals { i8 23, i8 31 }, %struct.ov_i2c_regvals { i8 24, i8 95 }, %struct.ov_i2c_regvals { i8 25, i8 0 }, %struct.ov_i2c_regvals { i8 26, i8 96 }, %struct.ov_i2c_regvals { i8 50, i8 18 }, %struct.ov_i2c_regvals { i8 3, i8 74 }, %struct.ov_i2c_regvals { i8 17, i8 -128 }, %struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 18, i8 64 }, %struct.ov_i2c_regvals { i8 23, i8 31 }, %struct.ov_i2c_regvals { i8 24, i8 95 }, %struct.ov_i2c_regvals { i8 25, i8 0 }, %struct.ov_i2c_regvals { i8 26, i8 96 }, %struct.ov_i2c_regvals { i8 50, i8 18 }, %struct.ov_i2c_regvals { i8 3, i8 74 }, %struct.ov_i2c_regvals { i8 2, i8 -81 }, %struct.ov_i2c_regvals { i8 45, i8 -46 }, %struct.ov_i2c_regvals { i8 0, i8 24 }, %struct.ov_i2c_regvals { i8 1, i8 -16 }, %struct.ov_i2c_regvals { i8 16, i8 10 }, %struct.ov_i2c_regvals { i8 -31, i8 103 }, %struct.ov_i2c_regvals { i8 -29, i8 3 }, %struct.ov_i2c_regvals { i8 -28, i8 38 }, %struct.ov_i2c_regvals { i8 -27, i8 62 }, %struct.ov_i2c_regvals { i8 -8, i8 1 }, %struct.ov_i2c_regvals { i8 -1, i8 1 }], [32 x i8] zeroinitializer }, align 32
@norm_6x20 = internal constant { [29 x %struct.ov_i2c_regvals], [38 x i8] } { [29 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals { i8 17, i8 1 }, %struct.ov_i2c_regvals { i8 3, i8 96 }, %struct.ov_i2c_regvals { i8 5, i8 127 }, %struct.ov_i2c_regvals { i8 7, i8 -88 }, %struct.ov_i2c_regvals { i8 12, i8 36 }, %struct.ov_i2c_regvals { i8 13, i8 36 }, %struct.ov_i2c_regvals { i8 15, i8 21 }, %struct.ov_i2c_regvals { i8 16, i8 117 }, %struct.ov_i2c_regvals { i8 18, i8 36 }, %struct.ov_i2c_regvals { i8 20, i8 4 }, %struct.ov_i2c_regvals { i8 22, i8 6 }, %struct.ov_i2c_regvals { i8 38, i8 -78 }, %struct.ov_i2c_regvals { i8 40, i8 5 }, %struct.ov_i2c_regvals { i8 42, i8 4 }, %struct.ov_i2c_regvals { i8 45, i8 -123 }, %struct.ov_i2c_regvals { i8 51, i8 -96 }, %struct.ov_i2c_regvals { i8 52, i8 -46 }, %struct.ov_i2c_regvals { i8 56, i8 -117 }, %struct.ov_i2c_regvals { i8 57, i8 64 }, %struct.ov_i2c_regvals { i8 60, i8 57 }, %struct.ov_i2c_regvals { i8 60, i8 60 }, %struct.ov_i2c_regvals { i8 60, i8 36 }, %struct.ov_i2c_regvals { i8 61, i8 -128 }, %struct.ov_i2c_regvals { i8 74, i8 -128 }, %struct.ov_i2c_regvals { i8 75, i8 -128 }, %struct.ov_i2c_regvals { i8 77, i8 -46 }, %struct.ov_i2c_regvals { i8 78, i8 -63 }, %struct.ov_i2c_regvals { i8 79, i8 4 }], [38 x i8] zeroinitializer }, align 32
@norm_6x30 = internal constant { [82 x %struct.ov_i2c_regvals], [60 x i8] } { [82 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals { i8 0, i8 31 }, %struct.ov_i2c_regvals { i8 1, i8 -103 }, %struct.ov_i2c_regvals { i8 2, i8 124 }, %struct.ov_i2c_regvals { i8 3, i8 -64 }, %struct.ov_i2c_regvals { i8 5, i8 10 }, %struct.ov_i2c_regvals { i8 6, i8 -107 }, %struct.ov_i2c_regvals { i8 7, i8 45 }, %struct.ov_i2c_regvals { i8 12, i8 32 }, %struct.ov_i2c_regvals { i8 13, i8 32 }, %struct.ov_i2c_regvals { i8 14, i8 -96 }, %struct.ov_i2c_regvals { i8 15, i8 5 }, %struct.ov_i2c_regvals { i8 16, i8 -102 }, %struct.ov_i2c_regvals { i8 17, i8 0 }, %struct.ov_i2c_regvals { i8 18, i8 36 }, %struct.ov_i2c_regvals { i8 19, i8 33 }, %struct.ov_i2c_regvals { i8 20, i8 -128 }, %struct.ov_i2c_regvals { i8 21, i8 1 }, %struct.ov_i2c_regvals { i8 22, i8 3 }, %struct.ov_i2c_regvals { i8 23, i8 56 }, %struct.ov_i2c_regvals { i8 24, i8 -22 }, %struct.ov_i2c_regvals { i8 25, i8 4 }, %struct.ov_i2c_regvals { i8 26, i8 -109 }, %struct.ov_i2c_regvals { i8 27, i8 0 }, %struct.ov_i2c_regvals { i8 30, i8 -60 }, %struct.ov_i2c_regvals { i8 31, i8 4 }, %struct.ov_i2c_regvals { i8 32, i8 32 }, %struct.ov_i2c_regvals { i8 33, i8 16 }, %struct.ov_i2c_regvals { i8 34, i8 -120 }, %struct.ov_i2c_regvals { i8 35, i8 -64 }, %struct.ov_i2c_regvals { i8 37, i8 -102 }, %struct.ov_i2c_regvals { i8 38, i8 -78 }, %struct.ov_i2c_regvals { i8 39, i8 -94 }, %struct.ov_i2c_regvals { i8 40, i8 0 }, %struct.ov_i2c_regvals { i8 41, i8 0 }, %struct.ov_i2c_regvals { i8 42, i8 -124 }, %struct.ov_i2c_regvals { i8 43, i8 -88 }, %struct.ov_i2c_regvals { i8 44, i8 -96 }, %struct.ov_i2c_regvals { i8 45, i8 -107 }, %struct.ov_i2c_regvals { i8 46, i8 -120 }, %struct.ov_i2c_regvals { i8 51, i8 38 }, %struct.ov_i2c_regvals { i8 52, i8 3 }, %struct.ov_i2c_regvals { i8 54, i8 -113 }, %struct.ov_i2c_regvals { i8 55, i8 -128 }, %struct.ov_i2c_regvals { i8 56, i8 -125 }, %struct.ov_i2c_regvals { i8 57, i8 -128 }, %struct.ov_i2c_regvals { i8 58, i8 15 }, %struct.ov_i2c_regvals { i8 59, i8 60 }, %struct.ov_i2c_regvals { i8 60, i8 26 }, %struct.ov_i2c_regvals { i8 61, i8 -128 }, %struct.ov_i2c_regvals { i8 62, i8 -128 }, %struct.ov_i2c_regvals { i8 63, i8 14 }, %struct.ov_i2c_regvals { i8 64, i8 0 }, %struct.ov_i2c_regvals { i8 65, i8 0 }, %struct.ov_i2c_regvals { i8 66, i8 -128 }, %struct.ov_i2c_regvals { i8 67, i8 63 }, %struct.ov_i2c_regvals { i8 68, i8 -128 }, %struct.ov_i2c_regvals { i8 69, i8 32 }, %struct.ov_i2c_regvals { i8 70, i8 32 }, %struct.ov_i2c_regvals { i8 71, i8 -128 }, %struct.ov_i2c_regvals { i8 72, i8 127 }, %struct.ov_i2c_regvals { i8 73, i8 0 }, %struct.ov_i2c_regvals { i8 74, i8 0 }, %struct.ov_i2c_regvals { i8 75, i8 -128 }, %struct.ov_i2c_regvals { i8 76, i8 -48 }, %struct.ov_i2c_regvals { i8 77, i8 16 }, %struct.ov_i2c_regvals { i8 78, i8 64 }, %struct.ov_i2c_regvals { i8 79, i8 7 }, %struct.ov_i2c_regvals { i8 80, i8 -1 }, %struct.ov_i2c_regvals { i8 84, i8 35 }, %struct.ov_i2c_regvals { i8 85, i8 -1 }, %struct.ov_i2c_regvals { i8 86, i8 18 }, %struct.ov_i2c_regvals { i8 87, i8 -127 }, %struct.ov_i2c_regvals { i8 88, i8 117 }, %struct.ov_i2c_regvals { i8 89, i8 1 }, %struct.ov_i2c_regvals { i8 90, i8 44 }, %struct.ov_i2c_regvals { i8 91, i8 15 }, %struct.ov_i2c_regvals { i8 92, i8 16 }, %struct.ov_i2c_regvals { i8 61, i8 -128 }, %struct.ov_i2c_regvals { i8 39, i8 -90 }, %struct.ov_i2c_regvals { i8 18, i8 32 }, %struct.ov_i2c_regvals { i8 18, i8 36 }], [60 x i8] zeroinitializer }, align 32
@norm_7610 = internal constant { [27 x %struct.ov_i2c_regvals], [42 x i8] } { [27 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 16, i8 -1 }, %struct.ov_i2c_regvals { i8 22, i8 6 }, %struct.ov_i2c_regvals { i8 40, i8 36 }, %struct.ov_i2c_regvals { i8 43, i8 -84 }, %struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 56, i8 -127 }, %struct.ov_i2c_regvals { i8 40, i8 36 }, %struct.ov_i2c_regvals { i8 15, i8 -123 }, %struct.ov_i2c_regvals { i8 21, i8 1 }, %struct.ov_i2c_regvals { i8 32, i8 28 }, %struct.ov_i2c_regvals { i8 35, i8 42 }, %struct.ov_i2c_regvals { i8 36, i8 16 }, %struct.ov_i2c_regvals { i8 37, i8 -118 }, %struct.ov_i2c_regvals { i8 38, i8 -94 }, %struct.ov_i2c_regvals { i8 39, i8 -62 }, %struct.ov_i2c_regvals { i8 42, i8 4 }, %struct.ov_i2c_regvals { i8 44, i8 -2 }, %struct.ov_i2c_regvals { i8 45, i8 -109 }, %struct.ov_i2c_regvals { i8 48, i8 113 }, %struct.ov_i2c_regvals { i8 49, i8 96 }, %struct.ov_i2c_regvals { i8 50, i8 38 }, %struct.ov_i2c_regvals { i8 51, i8 32 }, %struct.ov_i2c_regvals { i8 52, i8 72 }, %struct.ov_i2c_regvals { i8 18, i8 36 }, %struct.ov_i2c_regvals { i8 17, i8 1 }, %struct.ov_i2c_regvals { i8 12, i8 36 }, %struct.ov_i2c_regvals { i8 13, i8 36 }], [42 x i8] zeroinitializer }, align 32
@norm_7620 = internal constant { [64 x %struct.ov_i2c_regvals], [32 x i8] } { [64 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals zeroinitializer, %struct.ov_i2c_regvals { i8 1, i8 -128 }, %struct.ov_i2c_regvals { i8 2, i8 -128 }, %struct.ov_i2c_regvals { i8 3, i8 -64 }, %struct.ov_i2c_regvals { i8 6, i8 96 }, %struct.ov_i2c_regvals { i8 7, i8 0 }, %struct.ov_i2c_regvals { i8 12, i8 36 }, %struct.ov_i2c_regvals { i8 12, i8 36 }, %struct.ov_i2c_regvals { i8 13, i8 36 }, %struct.ov_i2c_regvals { i8 17, i8 1 }, %struct.ov_i2c_regvals { i8 18, i8 36 }, %struct.ov_i2c_regvals { i8 19, i8 1 }, %struct.ov_i2c_regvals { i8 20, i8 -124 }, %struct.ov_i2c_regvals { i8 21, i8 1 }, %struct.ov_i2c_regvals { i8 22, i8 3 }, %struct.ov_i2c_regvals { i8 23, i8 47 }, %struct.ov_i2c_regvals { i8 24, i8 -49 }, %struct.ov_i2c_regvals { i8 25, i8 6 }, %struct.ov_i2c_regvals { i8 26, i8 -11 }, %struct.ov_i2c_regvals { i8 27, i8 0 }, %struct.ov_i2c_regvals { i8 32, i8 24 }, %struct.ov_i2c_regvals { i8 33, i8 -128 }, %struct.ov_i2c_regvals { i8 34, i8 -128 }, %struct.ov_i2c_regvals { i8 35, i8 0 }, %struct.ov_i2c_regvals { i8 38, i8 -94 }, %struct.ov_i2c_regvals { i8 39, i8 -22 }, %struct.ov_i2c_regvals { i8 40, i8 34 }, %struct.ov_i2c_regvals { i8 41, i8 0 }, %struct.ov_i2c_regvals { i8 42, i8 16 }, %struct.ov_i2c_regvals { i8 43, i8 0 }, %struct.ov_i2c_regvals { i8 44, i8 -120 }, %struct.ov_i2c_regvals { i8 45, i8 -111 }, %struct.ov_i2c_regvals { i8 46, i8 -128 }, %struct.ov_i2c_regvals { i8 47, i8 68 }, %struct.ov_i2c_regvals { i8 96, i8 39 }, %struct.ov_i2c_regvals { i8 97, i8 2 }, %struct.ov_i2c_regvals { i8 98, i8 95 }, %struct.ov_i2c_regvals { i8 99, i8 -43 }, %struct.ov_i2c_regvals { i8 100, i8 87 }, %struct.ov_i2c_regvals { i8 101, i8 -125 }, %struct.ov_i2c_regvals { i8 102, i8 85 }, %struct.ov_i2c_regvals { i8 103, i8 -110 }, %struct.ov_i2c_regvals { i8 104, i8 -49 }, %struct.ov_i2c_regvals { i8 105, i8 118 }, %struct.ov_i2c_regvals { i8 106, i8 34 }, %struct.ov_i2c_regvals { i8 107, i8 0 }, %struct.ov_i2c_regvals { i8 108, i8 2 }, %struct.ov_i2c_regvals { i8 109, i8 68 }, %struct.ov_i2c_regvals { i8 110, i8 -128 }, %struct.ov_i2c_regvals { i8 111, i8 29 }, %struct.ov_i2c_regvals { i8 112, i8 -117 }, %struct.ov_i2c_regvals { i8 113, i8 0 }, %struct.ov_i2c_regvals { i8 114, i8 20 }, %struct.ov_i2c_regvals { i8 115, i8 84 }, %struct.ov_i2c_regvals { i8 116, i8 0 }, %struct.ov_i2c_regvals { i8 117, i8 -114 }, %struct.ov_i2c_regvals { i8 118, i8 0 }, %struct.ov_i2c_regvals { i8 119, i8 -1 }, %struct.ov_i2c_regvals { i8 120, i8 -128 }, %struct.ov_i2c_regvals { i8 121, i8 -128 }, %struct.ov_i2c_regvals { i8 122, i8 -128 }, %struct.ov_i2c_regvals { i8 123, i8 -30 }, %struct.ov_i2c_regvals { i8 124, i8 0 }], [32 x i8] zeroinitializer }, align 32
@norm_7660 = internal constant { [116 x %struct.ov_i2c_regvals], [56 x i8] } { [116 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals { i8 17, i8 -127 }, %struct.ov_i2c_regvals { i8 -110, i8 0 }, %struct.ov_i2c_regvals { i8 -109, i8 0 }, %struct.ov_i2c_regvals { i8 -99, i8 76 }, %struct.ov_i2c_regvals { i8 -98, i8 63 }, %struct.ov_i2c_regvals { i8 59, i8 2 }, %struct.ov_i2c_regvals { i8 19, i8 -11 }, %struct.ov_i2c_regvals { i8 16, i8 0 }, %struct.ov_i2c_regvals zeroinitializer, %struct.ov_i2c_regvals { i8 1, i8 124 }, %struct.ov_i2c_regvals { i8 2, i8 -99 }, %struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 4, i8 0 }, %struct.ov_i2c_regvals { i8 24, i8 1 }, %struct.ov_i2c_regvals { i8 23, i8 19 }, %struct.ov_i2c_regvals { i8 50, i8 -110 }, %struct.ov_i2c_regvals { i8 25, i8 2 }, %struct.ov_i2c_regvals { i8 26, i8 122 }, %struct.ov_i2c_regvals { i8 3, i8 0 }, %struct.ov_i2c_regvals { i8 14, i8 4 }, %struct.ov_i2c_regvals { i8 15, i8 98 }, %struct.ov_i2c_regvals { i8 21, i8 0 }, %struct.ov_i2c_regvals { i8 22, i8 2 }, %struct.ov_i2c_regvals { i8 27, i8 0 }, %struct.ov_i2c_regvals { i8 30, i8 1 }, %struct.ov_i2c_regvals { i8 41, i8 60 }, %struct.ov_i2c_regvals { i8 51, i8 0 }, %struct.ov_i2c_regvals { i8 52, i8 7 }, %struct.ov_i2c_regvals { i8 53, i8 -124 }, %struct.ov_i2c_regvals { i8 54, i8 0 }, %struct.ov_i2c_regvals { i8 55, i8 4 }, %struct.ov_i2c_regvals { i8 57, i8 67 }, %struct.ov_i2c_regvals { i8 58, i8 0 }, %struct.ov_i2c_regvals { i8 60, i8 108 }, %struct.ov_i2c_regvals { i8 61, i8 -104 }, %struct.ov_i2c_regvals { i8 63, i8 35 }, %struct.ov_i2c_regvals { i8 64, i8 -63 }, %struct.ov_i2c_regvals { i8 65, i8 34 }, %struct.ov_i2c_regvals { i8 107, i8 10 }, %struct.ov_i2c_regvals { i8 -95, i8 8 }, %struct.ov_i2c_regvals { i8 105, i8 -128 }, %struct.ov_i2c_regvals { i8 67, i8 -16 }, %struct.ov_i2c_regvals { i8 68, i8 16 }, %struct.ov_i2c_regvals { i8 69, i8 120 }, %struct.ov_i2c_regvals { i8 70, i8 -88 }, %struct.ov_i2c_regvals { i8 71, i8 96 }, %struct.ov_i2c_regvals { i8 72, i8 -128 }, %struct.ov_i2c_regvals { i8 89, i8 -70 }, %struct.ov_i2c_regvals { i8 90, i8 -102 }, %struct.ov_i2c_regvals { i8 91, i8 34 }, %struct.ov_i2c_regvals { i8 92, i8 -71 }, %struct.ov_i2c_regvals { i8 93, i8 -101 }, %struct.ov_i2c_regvals { i8 94, i8 16 }, %struct.ov_i2c_regvals { i8 95, i8 -32 }, %struct.ov_i2c_regvals { i8 96, i8 -123 }, %struct.ov_i2c_regvals { i8 97, i8 96 }, %struct.ov_i2c_regvals { i8 -97, i8 -99 }, %struct.ov_i2c_regvals { i8 -96, i8 -96 }, %struct.ov_i2c_regvals { i8 79, i8 96 }, %struct.ov_i2c_regvals { i8 80, i8 100 }, %struct.ov_i2c_regvals { i8 81, i8 4 }, %struct.ov_i2c_regvals { i8 82, i8 24 }, %struct.ov_i2c_regvals { i8 83, i8 60 }, %struct.ov_i2c_regvals { i8 84, i8 84 }, %struct.ov_i2c_regvals { i8 85, i8 64 }, %struct.ov_i2c_regvals { i8 86, i8 64 }, %struct.ov_i2c_regvals { i8 87, i8 64 }, %struct.ov_i2c_regvals { i8 88, i8 13 }, %struct.ov_i2c_regvals { i8 -117, i8 -52 }, %struct.ov_i2c_regvals { i8 -116, i8 -52 }, %struct.ov_i2c_regvals { i8 -115, i8 -49 }, %struct.ov_i2c_regvals { i8 108, i8 64 }, %struct.ov_i2c_regvals { i8 109, i8 -32 }, %struct.ov_i2c_regvals { i8 110, i8 -96 }, %struct.ov_i2c_regvals { i8 111, i8 -128 }, %struct.ov_i2c_regvals { i8 112, i8 112 }, %struct.ov_i2c_regvals { i8 113, i8 -128 }, %struct.ov_i2c_regvals { i8 114, i8 96 }, %struct.ov_i2c_regvals { i8 115, i8 96 }, %struct.ov_i2c_regvals { i8 116, i8 80 }, %struct.ov_i2c_regvals { i8 117, i8 64 }, %struct.ov_i2c_regvals { i8 118, i8 56 }, %struct.ov_i2c_regvals { i8 119, i8 60 }, %struct.ov_i2c_regvals { i8 120, i8 50 }, %struct.ov_i2c_regvals { i8 121, i8 26 }, %struct.ov_i2c_regvals { i8 122, i8 40 }, %struct.ov_i2c_regvals { i8 123, i8 36 }, %struct.ov_i2c_regvals { i8 124, i8 4 }, %struct.ov_i2c_regvals { i8 125, i8 18 }, %struct.ov_i2c_regvals { i8 126, i8 38 }, %struct.ov_i2c_regvals { i8 127, i8 70 }, %struct.ov_i2c_regvals { i8 -128, i8 84 }, %struct.ov_i2c_regvals { i8 -127, i8 100 }, %struct.ov_i2c_regvals { i8 -126, i8 112 }, %struct.ov_i2c_regvals { i8 -125, i8 124 }, %struct.ov_i2c_regvals { i8 -124, i8 -122 }, %struct.ov_i2c_regvals { i8 -123, i8 -114 }, %struct.ov_i2c_regvals { i8 -122, i8 -100 }, %struct.ov_i2c_regvals { i8 -121, i8 -85 }, %struct.ov_i2c_regvals { i8 -120, i8 -60 }, %struct.ov_i2c_regvals { i8 -119, i8 -47 }, %struct.ov_i2c_regvals { i8 -118, i8 -27 }, %struct.ov_i2c_regvals { i8 20, i8 30 }, %struct.ov_i2c_regvals { i8 36, i8 -128 }, %struct.ov_i2c_regvals { i8 37, i8 114 }, %struct.ov_i2c_regvals { i8 38, i8 -77 }, %struct.ov_i2c_regvals { i8 98, i8 -128 }, %struct.ov_i2c_regvals { i8 99, i8 -128 }, %struct.ov_i2c_regvals { i8 100, i8 6 }, %struct.ov_i2c_regvals { i8 101, i8 0 }, %struct.ov_i2c_regvals { i8 102, i8 1 }, %struct.ov_i2c_regvals { i8 -108, i8 14 }, %struct.ov_i2c_regvals { i8 -107, i8 20 }, %struct.ov_i2c_regvals { i8 19, i8 -9 }, %struct.ov_i2c_regvals { i8 -95, i8 -56 }], [56 x i8] zeroinitializer }, align 32
@norm_7670 = internal constant { [156 x %struct.ov_i2c_regvals], [72 x i8] } { [156 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals { i8 58, i8 4 }, %struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 17, i8 1 }, %struct.ov_i2c_regvals { i8 23, i8 19 }, %struct.ov_i2c_regvals { i8 24, i8 1 }, %struct.ov_i2c_regvals { i8 50, i8 -74 }, %struct.ov_i2c_regvals { i8 25, i8 2 }, %struct.ov_i2c_regvals { i8 26, i8 122 }, %struct.ov_i2c_regvals { i8 3, i8 10 }, %struct.ov_i2c_regvals { i8 12, i8 0 }, %struct.ov_i2c_regvals { i8 62, i8 0 }, %struct.ov_i2c_regvals { i8 112, i8 58 }, %struct.ov_i2c_regvals { i8 113, i8 53 }, %struct.ov_i2c_regvals { i8 114, i8 17 }, %struct.ov_i2c_regvals { i8 115, i8 -16 }, %struct.ov_i2c_regvals { i8 -94, i8 2 }, %struct.ov_i2c_regvals { i8 122, i8 32 }, %struct.ov_i2c_regvals { i8 123, i8 16 }, %struct.ov_i2c_regvals { i8 124, i8 30 }, %struct.ov_i2c_regvals { i8 125, i8 53 }, %struct.ov_i2c_regvals { i8 126, i8 90 }, %struct.ov_i2c_regvals { i8 127, i8 105 }, %struct.ov_i2c_regvals { i8 -128, i8 118 }, %struct.ov_i2c_regvals { i8 -127, i8 -128 }, %struct.ov_i2c_regvals { i8 -126, i8 -120 }, %struct.ov_i2c_regvals { i8 -125, i8 -113 }, %struct.ov_i2c_regvals { i8 -124, i8 -106 }, %struct.ov_i2c_regvals { i8 -123, i8 -93 }, %struct.ov_i2c_regvals { i8 -122, i8 -81 }, %struct.ov_i2c_regvals { i8 -121, i8 -60 }, %struct.ov_i2c_regvals { i8 -120, i8 -41 }, %struct.ov_i2c_regvals { i8 -119, i8 -24 }, %struct.ov_i2c_regvals { i8 19, i8 -32 }, %struct.ov_i2c_regvals zeroinitializer, %struct.ov_i2c_regvals { i8 16, i8 0 }, %struct.ov_i2c_regvals { i8 13, i8 64 }, %struct.ov_i2c_regvals { i8 20, i8 24 }, %struct.ov_i2c_regvals { i8 -91, i8 5 }, %struct.ov_i2c_regvals { i8 -85, i8 7 }, %struct.ov_i2c_regvals { i8 36, i8 -107 }, %struct.ov_i2c_regvals { i8 37, i8 51 }, %struct.ov_i2c_regvals { i8 38, i8 -29 }, %struct.ov_i2c_regvals { i8 -97, i8 120 }, %struct.ov_i2c_regvals { i8 -96, i8 104 }, %struct.ov_i2c_regvals { i8 -95, i8 3 }, %struct.ov_i2c_regvals { i8 -90, i8 -40 }, %struct.ov_i2c_regvals { i8 -89, i8 -40 }, %struct.ov_i2c_regvals { i8 -88, i8 -16 }, %struct.ov_i2c_regvals { i8 -87, i8 -112 }, %struct.ov_i2c_regvals { i8 -86, i8 -108 }, %struct.ov_i2c_regvals { i8 19, i8 -27 }, %struct.ov_i2c_regvals { i8 14, i8 97 }, %struct.ov_i2c_regvals { i8 15, i8 75 }, %struct.ov_i2c_regvals { i8 22, i8 2 }, %struct.ov_i2c_regvals { i8 30, i8 7 }, %struct.ov_i2c_regvals { i8 33, i8 2 }, %struct.ov_i2c_regvals { i8 34, i8 -111 }, %struct.ov_i2c_regvals { i8 41, i8 7 }, %struct.ov_i2c_regvals { i8 51, i8 11 }, %struct.ov_i2c_regvals { i8 53, i8 11 }, %struct.ov_i2c_regvals { i8 55, i8 29 }, %struct.ov_i2c_regvals { i8 56, i8 113 }, %struct.ov_i2c_regvals { i8 57, i8 42 }, %struct.ov_i2c_regvals { i8 60, i8 120 }, %struct.ov_i2c_regvals { i8 77, i8 64 }, %struct.ov_i2c_regvals { i8 78, i8 32 }, %struct.ov_i2c_regvals { i8 105, i8 0 }, %struct.ov_i2c_regvals { i8 107, i8 74 }, %struct.ov_i2c_regvals { i8 116, i8 16 }, %struct.ov_i2c_regvals { i8 -115, i8 79 }, %struct.ov_i2c_regvals { i8 -114, i8 0 }, %struct.ov_i2c_regvals { i8 -113, i8 0 }, %struct.ov_i2c_regvals { i8 -112, i8 0 }, %struct.ov_i2c_regvals { i8 -111, i8 0 }, %struct.ov_i2c_regvals { i8 -106, i8 0 }, %struct.ov_i2c_regvals { i8 -102, i8 0 }, %struct.ov_i2c_regvals { i8 -80, i8 -124 }, %struct.ov_i2c_regvals { i8 -79, i8 12 }, %struct.ov_i2c_regvals { i8 -78, i8 14 }, %struct.ov_i2c_regvals { i8 -77, i8 -126 }, %struct.ov_i2c_regvals { i8 -72, i8 10 }, %struct.ov_i2c_regvals { i8 67, i8 10 }, %struct.ov_i2c_regvals { i8 68, i8 -16 }, %struct.ov_i2c_regvals { i8 69, i8 52 }, %struct.ov_i2c_regvals { i8 70, i8 88 }, %struct.ov_i2c_regvals { i8 71, i8 40 }, %struct.ov_i2c_regvals { i8 72, i8 58 }, %struct.ov_i2c_regvals { i8 89, i8 -120 }, %struct.ov_i2c_regvals { i8 90, i8 -120 }, %struct.ov_i2c_regvals { i8 91, i8 68 }, %struct.ov_i2c_regvals { i8 92, i8 103 }, %struct.ov_i2c_regvals { i8 93, i8 73 }, %struct.ov_i2c_regvals { i8 94, i8 14 }, %struct.ov_i2c_regvals { i8 108, i8 10 }, %struct.ov_i2c_regvals { i8 109, i8 85 }, %struct.ov_i2c_regvals { i8 110, i8 17 }, %struct.ov_i2c_regvals { i8 111, i8 -97 }, %struct.ov_i2c_regvals { i8 106, i8 64 }, %struct.ov_i2c_regvals { i8 1, i8 64 }, %struct.ov_i2c_regvals { i8 2, i8 96 }, %struct.ov_i2c_regvals { i8 19, i8 -25 }, %struct.ov_i2c_regvals { i8 79, i8 -128 }, %struct.ov_i2c_regvals { i8 80, i8 -128 }, %struct.ov_i2c_regvals { i8 81, i8 0 }, %struct.ov_i2c_regvals { i8 82, i8 34 }, %struct.ov_i2c_regvals { i8 83, i8 94 }, %struct.ov_i2c_regvals { i8 84, i8 -128 }, %struct.ov_i2c_regvals { i8 88, i8 -98 }, %struct.ov_i2c_regvals { i8 65, i8 8 }, %struct.ov_i2c_regvals { i8 63, i8 0 }, %struct.ov_i2c_regvals { i8 117, i8 5 }, %struct.ov_i2c_regvals { i8 118, i8 -31 }, %struct.ov_i2c_regvals { i8 76, i8 0 }, %struct.ov_i2c_regvals { i8 119, i8 1 }, %struct.ov_i2c_regvals { i8 61, i8 -62 }, %struct.ov_i2c_regvals { i8 75, i8 9 }, %struct.ov_i2c_regvals { i8 -55, i8 96 }, %struct.ov_i2c_regvals { i8 65, i8 56 }, %struct.ov_i2c_regvals { i8 86, i8 64 }, %struct.ov_i2c_regvals { i8 52, i8 17 }, %struct.ov_i2c_regvals { i8 59, i8 18 }, %struct.ov_i2c_regvals { i8 -92, i8 -120 }, %struct.ov_i2c_regvals { i8 -106, i8 0 }, %struct.ov_i2c_regvals { i8 -105, i8 48 }, %struct.ov_i2c_regvals { i8 -104, i8 32 }, %struct.ov_i2c_regvals { i8 -103, i8 48 }, %struct.ov_i2c_regvals { i8 -102, i8 -124 }, %struct.ov_i2c_regvals { i8 -101, i8 41 }, %struct.ov_i2c_regvals { i8 -100, i8 3 }, %struct.ov_i2c_regvals { i8 -99, i8 76 }, %struct.ov_i2c_regvals { i8 -98, i8 63 }, %struct.ov_i2c_regvals { i8 120, i8 4 }, %struct.ov_i2c_regvals { i8 121, i8 1 }, %struct.ov_i2c_regvals { i8 -56, i8 -16 }, %struct.ov_i2c_regvals { i8 121, i8 15 }, %struct.ov_i2c_regvals { i8 -56, i8 0 }, %struct.ov_i2c_regvals { i8 121, i8 16 }, %struct.ov_i2c_regvals { i8 -56, i8 126 }, %struct.ov_i2c_regvals { i8 121, i8 10 }, %struct.ov_i2c_regvals { i8 -56, i8 -128 }, %struct.ov_i2c_regvals { i8 121, i8 11 }, %struct.ov_i2c_regvals { i8 -56, i8 1 }, %struct.ov_i2c_regvals { i8 121, i8 12 }, %struct.ov_i2c_regvals { i8 -56, i8 15 }, %struct.ov_i2c_regvals { i8 121, i8 13 }, %struct.ov_i2c_regvals { i8 -56, i8 32 }, %struct.ov_i2c_regvals { i8 121, i8 9 }, %struct.ov_i2c_regvals { i8 -56, i8 -128 }, %struct.ov_i2c_regvals { i8 121, i8 2 }, %struct.ov_i2c_regvals { i8 -56, i8 -64 }, %struct.ov_i2c_regvals { i8 121, i8 3 }, %struct.ov_i2c_regvals { i8 -56, i8 64 }, %struct.ov_i2c_regvals { i8 121, i8 5 }, %struct.ov_i2c_regvals { i8 -56, i8 48 }, %struct.ov_i2c_regvals { i8 121, i8 38 }], [72 x i8] zeroinitializer }, align 32
@norm_8610 = internal constant { [83 x %struct.ov_i2c_regvals], [58 x i8] } { [83 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 -128 }, %struct.ov_i2c_regvals zeroinitializer, %struct.ov_i2c_regvals { i8 1, i8 -128 }, %struct.ov_i2c_regvals { i8 2, i8 -128 }, %struct.ov_i2c_regvals { i8 3, i8 -64 }, %struct.ov_i2c_regvals { i8 4, i8 48 }, %struct.ov_i2c_regvals { i8 5, i8 48 }, %struct.ov_i2c_regvals { i8 6, i8 112 }, %struct.ov_i2c_regvals { i8 10, i8 -122 }, %struct.ov_i2c_regvals { i8 11, i8 -80 }, %struct.ov_i2c_regvals { i8 12, i8 32 }, %struct.ov_i2c_regvals { i8 13, i8 32 }, %struct.ov_i2c_regvals { i8 17, i8 1 }, %struct.ov_i2c_regvals { i8 18, i8 37 }, %struct.ov_i2c_regvals { i8 19, i8 1 }, %struct.ov_i2c_regvals { i8 20, i8 4 }, %struct.ov_i2c_regvals { i8 21, i8 1 }, %struct.ov_i2c_regvals { i8 22, i8 3 }, %struct.ov_i2c_regvals { i8 23, i8 56 }, %struct.ov_i2c_regvals { i8 24, i8 -22 }, %struct.ov_i2c_regvals { i8 25, i8 2 }, %struct.ov_i2c_regvals { i8 26, i8 -11 }, %struct.ov_i2c_regvals { i8 27, i8 0 }, %struct.ov_i2c_regvals { i8 32, i8 -48 }, %struct.ov_i2c_regvals { i8 35, i8 -64 }, %struct.ov_i2c_regvals { i8 36, i8 48 }, %struct.ov_i2c_regvals { i8 37, i8 80 }, %struct.ov_i2c_regvals { i8 38, i8 -94 }, %struct.ov_i2c_regvals { i8 39, i8 -22 }, %struct.ov_i2c_regvals { i8 40, i8 0 }, %struct.ov_i2c_regvals { i8 41, i8 0 }, %struct.ov_i2c_regvals { i8 42, i8 -128 }, %struct.ov_i2c_regvals { i8 43, i8 -56 }, %struct.ov_i2c_regvals { i8 44, i8 -84 }, %struct.ov_i2c_regvals { i8 45, i8 69 }, %struct.ov_i2c_regvals { i8 46, i8 -128 }, %struct.ov_i2c_regvals { i8 47, i8 20 }, %struct.ov_i2c_regvals { i8 76, i8 0 }, %struct.ov_i2c_regvals { i8 77, i8 48 }, %struct.ov_i2c_regvals { i8 96, i8 2 }, %struct.ov_i2c_regvals { i8 97, i8 0 }, %struct.ov_i2c_regvals { i8 98, i8 95 }, %struct.ov_i2c_regvals { i8 99, i8 -1 }, %struct.ov_i2c_regvals { i8 100, i8 83 }, %struct.ov_i2c_regvals { i8 101, i8 0 }, %struct.ov_i2c_regvals { i8 102, i8 85 }, %struct.ov_i2c_regvals { i8 103, i8 -80 }, %struct.ov_i2c_regvals { i8 104, i8 -64 }, %struct.ov_i2c_regvals { i8 105, i8 2 }, %struct.ov_i2c_regvals { i8 106, i8 34 }, %struct.ov_i2c_regvals { i8 107, i8 0 }, %struct.ov_i2c_regvals { i8 108, i8 -103 }, %struct.ov_i2c_regvals { i8 109, i8 17 }, %struct.ov_i2c_regvals { i8 110, i8 17 }, %struct.ov_i2c_regvals { i8 111, i8 1 }, %struct.ov_i2c_regvals { i8 112, i8 -117 }, %struct.ov_i2c_regvals { i8 113, i8 0 }, %struct.ov_i2c_regvals { i8 114, i8 20 }, %struct.ov_i2c_regvals { i8 115, i8 84 }, %struct.ov_i2c_regvals { i8 116, i8 0 }, %struct.ov_i2c_regvals { i8 117, i8 14 }, %struct.ov_i2c_regvals { i8 118, i8 2 }, %struct.ov_i2c_regvals { i8 119, i8 -1 }, %struct.ov_i2c_regvals { i8 120, i8 -128 }, %struct.ov_i2c_regvals { i8 121, i8 -128 }, %struct.ov_i2c_regvals { i8 122, i8 -128 }, %struct.ov_i2c_regvals { i8 123, i8 16 }, %struct.ov_i2c_regvals { i8 124, i8 0 }, %struct.ov_i2c_regvals { i8 125, i8 8 }, %struct.ov_i2c_regvals { i8 126, i8 8 }, %struct.ov_i2c_regvals { i8 127, i8 -5 }, %struct.ov_i2c_regvals { i8 -128, i8 40 }, %struct.ov_i2c_regvals { i8 -127, i8 0 }, %struct.ov_i2c_regvals { i8 -126, i8 35 }, %struct.ov_i2c_regvals { i8 -125, i8 11 }, %struct.ov_i2c_regvals { i8 -124, i8 0 }, %struct.ov_i2c_regvals { i8 -123, i8 98 }, %struct.ov_i2c_regvals { i8 -122, i8 -55 }, %struct.ov_i2c_regvals { i8 -121, i8 0 }, %struct.ov_i2c_regvals { i8 -120, i8 0 }, %struct.ov_i2c_regvals { i8 -119, i8 1 }, %struct.ov_i2c_regvals { i8 18, i8 32 }, %struct.ov_i2c_regvals { i8 18, i8 37 }], [58 x i8] zeroinitializer }, align 32
@sd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 3440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: OV519 Config failed\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.7 = internal global ptr @sd_init._entry.5, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@ov511_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 2996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Device custom id %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov511_configure\00", [16 x i8] zeroinitializer }, align 32
@ov511_configure._entry_ptr = internal global ptr @ov511_configure._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 2072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: GET %02x 0000 %04x %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 2074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: reg_r %02x failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.14 = internal global ptr @reg_r._entry.12, section ".printk_index", align 4
@ov51x_upload_quan_tables.yQuanTable511 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\01\02\02\03\03\04\01\01\01\02\02\03\04\04\01\01\02\02\03\04\04\04\02\02\02\03\04\04\04\04\02\02\03\04\04\05\05\05\03\03\04\04\05\05\05\05\03\04\04\04\05\05\05\05\04\04\04\04\05\05\05\05", [32 x i8] zeroinitializer }, align 32
@ov51x_upload_quan_tables.uvQuanTable511 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\02\02\03\04\04\04\04\02\02\02\04\04\04\04\04\02\02\03\04\04\04\04\04\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04", [32 x i8] zeroinitializer }, align 32
@ov51x_upload_quan_tables.yQuanTable518 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\05\04\05\06\06\07\07\07\05\05\05\05\06\07\07\07\06\06\06\06\07\07\07\08\07\07\06\07\07\07\08\08", [32 x i8] zeroinitializer }, align 32
@ov51x_upload_quan_tables.uvQuanTable518 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\06\06\06\07\07\07\07\07\06\06\06\07\07\07\07\07\06\06\06\07\07\07\07\08\07\07\07\07\07\07\08\08", [32 x i8] zeroinitializer }, align 32
@ov51x_upload_quan_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 2917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Uploading quantization tables\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ov51x_upload_quan_tables\00", [39 x i8] zeroinitializer }, align 32
@ov51x_upload_quan_tables._entry_ptr = internal global ptr @ov51x_upload_quan_tables._entry, section ".printk_index", align 4
@ov518_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 3066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Device revision %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov518_configure\00", [16 x i8] zeroinitializer }, align 32
@ov518_configure._entry_ptr = internal global ptr @ov518_configure._entry, section ".printk_index", align 4
@init_ov_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 2551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: I2C synced in %d attempt(s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_ov_sensor\00", [17 x i8] zeroinitializer }, align 32
@init_ov_sensor._entry_ptr = internal global ptr @init_ov_sensor._entry, section ".printk_index", align 4
@ov511_i2c_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: i2c write retries exhausted\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov511_i2c_r\00", [20 x i8] zeroinitializer }, align 32
@ov511_i2c_r._entry_ptr = internal global ptr @ov511_i2c_r._entry, section ".printk_index", align 4
@ov511_i2c_r._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 2258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: i2c read retries exhausted\0A\00", [62 x i8] zeroinitializer }, align 32
@ov511_i2c_r._entry_ptr.25 = internal global ptr @ov511_i2c_r._entry.23, section ".printk_index", align 4
@ov511_i2c_r._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 2265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ov511_i2c_r %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@ov511_i2c_r._entry_ptr.28 = internal global ptr @ov511_i2c_r._entry.26, section ".printk_index", align 4
@ov518_i2c_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 2324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ov518_i2c_r %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov518_i2c_r\00", [20 x i8] zeroinitializer }, align 32
@ov518_i2c_r._entry_ptr = internal global ptr @ov518_i2c_r._entry, section ".printk_index", align 4
@reg_r8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: reg_r8 %02x failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_r8\00", [25 x i8] zeroinitializer }, align 32
@reg_r8._entry_ptr = internal global ptr @reg_r8._entry, section ".printk_index", align 4
@ovfx2_i2c_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 2367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ovfx2_i2c_r %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovfx2_i2c_r\00", [20 x i8] zeroinitializer }, align 32
@ovfx2_i2c_r._entry_ptr = internal global ptr @ovfx2_i2c_r._entry, section ".printk_index", align 4
@ovfx2_i2c_r._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 2369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: ovfx2_i2c_r %02x failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ovfx2_i2c_r._entry_ptr.37 = internal global ptr @ovfx2_i2c_r._entry.35, section ".printk_index", align 4
@w9968cf_i2c_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: i2c [0x%02X] -> 0x%02X\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w9968cf_i2c_r\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/w996Xcf.c\00", [62 x i8] zeroinitializer }, align 32
@w9968cf_i2c_r._entry_ptr = internal global ptr @w9968cf_i2c_r._entry, section ".printk_index", align 4
@w9968cf_i2c_r._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.40, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: i2c read [0x%02x] failed\0A\00", [32 x i8] zeroinitializer }, align 32
@w9968cf_i2c_r._entry_ptr.43 = internal global ptr @w9968cf_i2c_r._entry.41, section ".printk_index", align 4
@w9968cf_write_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.40, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_ov519: Write SB reg [01] %04x failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w9968cf_write_sb\00", [47 x i8] zeroinitializer }, align 32
@w9968cf_write_sb._entry_ptr = internal global ptr @w9968cf_write_sb._entry, section ".printk_index", align 4
@w9968cf_smbus_read_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.40, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Did not receive i2c ACK\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"w9968cf_smbus_read_ack\00", [41 x i8] zeroinitializer }, align 32
@w9968cf_smbus_read_ack._entry_ptr = internal global ptr @w9968cf_smbus_read_ack._entry, section ".printk_index", align 4
@w9968cf_read_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.40, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gspca_ov519: Read SB reg [01] failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w9968cf_read_sb\00", [16 x i8] zeroinitializer }, align 32
@w9968cf_read_sb._entry_ptr = internal global ptr @w9968cf_read_sb._entry, section ".printk_index", align 4
@ov7xx0_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 2692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: starting OV7xx0 configuration\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov7xx0_configure\00", [47 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr = internal global ptr @ov7xx0_configure._entry, section ".printk_index", align 4
@ov7xx0_configure._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 2700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error detecting sensor type\0A\00", [61 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.54 = internal global ptr @ov7xx0_configure._entry.52, section ".printk_index", align 4
@ov7xx0_configure._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.4, i32 2710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Sensor is an OV76%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.57 = internal global ptr @ov7xx0_configure._entry.55, section ".printk_index", align 4
@ov7xx0_configure._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.4, i32 2713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor is an OV7610\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.60 = internal global ptr @ov7xx0_configure._entry.58, section ".printk_index", align 4
@ov7xx0_configure._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.4, i32 2719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Sensor is an OV7620AE\0A\00", [35 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.63 = internal global ptr @ov7xx0_configure._entry.61, section ".printk_index", align 4
@ov7xx0_configure._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.4, i32 2722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor is an OV76BE\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.66 = internal global ptr @ov7xx0_configure._entry.64, section ".printk_index", align 4
@ov7xx0_configure._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.51, ptr @.str.4, i32 2729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error detecting camera chip PID\0A\00", [57 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.69 = internal global ptr @ov7xx0_configure._entry.67, section ".printk_index", align 4
@ov7xx0_configure._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.51, ptr @.str.4, i32 2734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error detecting camera chip VER\0A\00", [57 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.72 = internal global ptr @ov7xx0_configure._entry.70, section ".printk_index", align 4
@ov7xx0_configure._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.51, ptr @.str.4, i32 2740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Sensor is an OV7630/OV7635\0A\00", [62 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.75 = internal global ptr @ov7xx0_configure._entry.73, section ".printk_index", align 4
@ov7xx0_configure._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.51, ptr @.str.4, i32 2741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: 7630 is not supported by this driver\0A\00", [52 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.78 = internal global ptr @ov7xx0_configure._entry.76, section ".printk_index", align 4
@ov7xx0_configure._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.51, ptr @.str.4, i32 2744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor is an OV7645\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.81 = internal global ptr @ov7xx0_configure._entry.79, section ".printk_index", align 4
@ov7xx0_configure._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.51, ptr @.str.4, i32 2748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Sensor is an OV7645B\0A\00", [36 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.84 = internal global ptr @ov7xx0_configure._entry.82, section ".printk_index", align 4
@ov7xx0_configure._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.51, ptr @.str.4, i32 2752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor is an OV7648\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.87 = internal global ptr @ov7xx0_configure._entry.85, section ".printk_index", align 4
@ov7xx0_configure._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.51, ptr @.str.4, i32 2756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Sensor is a OV7660\0A\00", [38 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.90 = internal global ptr @ov7xx0_configure._entry.88, section ".printk_index", align 4
@ov7xx0_configure._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.51, ptr @.str.4, i32 2761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Unknown sensor: 0x76%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.93 = internal global ptr @ov7xx0_configure._entry.91, section ".printk_index", align 4
@ov7xx0_configure._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.51, ptr @.str.4, i32 2765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor is an OV7620\0A\00", [37 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.96 = internal global ptr @ov7xx0_configure._entry.94, section ".printk_index", align 4
@ov7xx0_configure._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.51, ptr @.str.4, i32 2770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Unknown image sensor version: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@ov7xx0_configure._entry_ptr.99 = internal global ptr @ov7xx0_configure._entry.97, section ".printk_index", align 4
@ov6xx0_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.4, i32 2780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: starting OV6xx0 configuration\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov6xx0_configure\00", [47 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr = internal global ptr @ov6xx0_configure._entry, section ".printk_index", align 4
@ov6xx0_configure._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.101, ptr @.str.4, i32 2785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.103 = internal global ptr @ov6xx0_configure._entry.102, section ".printk_index", align 4
@ov6xx0_configure._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.101, ptr @.str.4, i32 2795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\014gspca_ov519: WARNING: Sensor is an OV66308. Your camera may have been misdetected in previous driver versions.\0A\00", [46 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.106 = internal global ptr @ov6xx0_configure._entry.104, section ".printk_index", align 4
@ov6xx0_configure._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.101, ptr @.str.4, i32 2799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor is an OV6620\0A\00", [37 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.109 = internal global ptr @ov6xx0_configure._entry.107, section ".printk_index", align 4
@ov6xx0_configure._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.101, ptr @.str.4, i32 2803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Sensor is an OV66308AE\0A\00", [34 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.112 = internal global ptr @ov6xx0_configure._entry.110, section ".printk_index", align 4
@ov6xx0_configure._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.101, ptr @.str.4, i32 2807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Sensor is an OV66308AF\0A\00", [34 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.115 = internal global ptr @ov6xx0_configure._entry.113, section ".printk_index", align 4
@ov6xx0_configure._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.101, ptr @.str.4, i32 2811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"\014gspca_ov519: WARNING: Sensor is an OV66307. Your camera may have been misdetected in previous driver versions.\0A\00", [46 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.118 = internal global ptr @ov6xx0_configure._entry.116, section ".printk_index", align 4
@ov6xx0_configure._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.101, ptr @.str.4, i32 2815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: FATAL: Unknown sensor version: 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@ov6xx0_configure._entry_ptr.121 = internal global ptr @ov6xx0_configure._entry.119, section ".printk_index", align 4
@ov8xx0_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.4, i32 2669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: starting ov8xx0 configuration\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ov8xx0_configure\00", [47 x i8] zeroinitializer }, align 32
@ov8xx0_configure._entry_ptr = internal global ptr @ov8xx0_configure._entry, section ".printk_index", align 4
@ov8xx0_configure._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.123, ptr @.str.4, i32 2674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov8xx0_configure._entry_ptr.125 = internal global ptr @ov8xx0_configure._entry.124, section ".printk_index", align 4
@ov8xx0_configure._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.123, ptr @.str.4, i32 2681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov8xx0_configure._entry_ptr.127 = internal global ptr @ov8xx0_configure._entry.126, section ".printk_index", align 4
@ov_hires_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 2622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: error hires sensors only supported with ovfx2\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ov_hires_configure\00", [45 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr = internal global ptr @ov_hires_configure._entry, section ".printk_index", align 4
@ov_hires_configure._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.4, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: starting ov hires configuration\0A\00", [57 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr.132 = internal global ptr @ov_hires_configure._entry.130, section ".printk_index", align 4
@ov_hires_configure._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.4, i32 2636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Sensor is a OV2610\0A\00", [38 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr.135 = internal global ptr @ov_hires_configure._entry.133, section ".printk_index", align 4
@ov_hires_configure._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.129, ptr @.str.4, i32 2640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Sensor is a OV2610AE\0A\00", [36 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr.138 = internal global ptr @ov_hires_configure._entry.136, section ".printk_index", align 4
@ov_hires_configure._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.129, ptr @.str.4, i32 2644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Sensor is a OV9600\0A\00", [38 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr.141 = internal global ptr @ov_hires_configure._entry.139, section ".printk_index", align 4
@ov_hires_configure._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.129, ptr @.str.4, i32 2651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Sensor is a OV3610\0A\00", [38 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr.144 = internal global ptr @ov_hires_configure._entry.142, section ".printk_index", align 4
@ov_hires_configure._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.129, ptr @.str.4, i32 2658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Error unknown sensor type: %02x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@ov_hires_configure._entry_ptr.147 = internal global ptr @ov_hires_configure._entry.145, section ".printk_index", align 4
@ov511_i2c_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ov511_i2c_w %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov511_i2c_w\00", [20 x i8] zeroinitializer }, align 32
@ov511_i2c_w._entry_ptr = internal global ptr @ov511_i2c_w._entry, section ".printk_index", align 4
@ov511_i2c_w._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.149, ptr @.str.4, i32 2201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ov511_i2c_w._entry_ptr.151 = internal global ptr @ov511_i2c_w._entry.150, section ".printk_index", align 4
@ov518_i2c_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.4, i32 2284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ov518_i2c_w %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ov518_i2c_w\00", [20 x i8] zeroinitializer }, align 32
@ov518_i2c_w._entry_ptr = internal global ptr @ov518_i2c_w._entry, section ".printk_index", align 4
@ovfx2_i2c_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.4, i32 2343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: ovfx2_i2c_w %02x failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovfx2_i2c_w\00", [20 x i8] zeroinitializer }, align 32
@ovfx2_i2c_w._entry_ptr = internal global ptr @ovfx2_i2c_w._entry, section ".printk_index", align 4
@ovfx2_i2c_w._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.4, i32 2347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ovfx2_i2c_w %02x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@ovfx2_i2c_w._entry_ptr.158 = internal global ptr @ovfx2_i2c_w._entry.156, section ".printk_index", align 4
@w9968cf_i2c_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.40, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: i2c 0x%02x -> [0x%02x]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w9968cf_i2c_w\00", [18 x i8] zeroinitializer }, align 32
@w9968cf_i2c_w._entry_ptr = internal global ptr @w9968cf_i2c_w._entry, section ".printk_index", align 4
@w9968cf_write_fsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.40, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_ov519: Write FSB registers failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"w9968cf_write_fsb\00", [46 x i8] zeroinitializer }, align 32
@w9968cf_write_fsb._entry_ptr = internal global ptr @w9968cf_write_fsb._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.4, i32 2010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: SET %02x %04x %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.4, i32 2022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: SET %02x 0000 %04x %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.167 = internal global ptr @reg_w._entry.165, section ".printk_index", align 4
@reg_w._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.164, ptr @.str.4, i32 2032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: reg_w %02x failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.170 = internal global ptr @reg_w._entry.168, section ".printk_index", align 4
@ov519_set_mode.bridge_ov7660 = internal constant { [2 x [10 x %struct.ov_regvals]], [56 x i8] } { [2 x [10 x %struct.ov_regvals]] [[10 x %struct.ov_regvals] [%struct.ov_regvals { i8 16, i8 20 }, %struct.ov_regvals { i8 17, i8 30 }, %struct.ov_regvals { i8 18, i8 0 }, %struct.ov_regvals { i8 19, i8 0 }, %struct.ov_regvals { i8 20, i8 0 }, %struct.ov_regvals { i8 21, i8 0 }, %struct.ov_regvals { i8 22, i8 0 }, %struct.ov_regvals { i8 32, i8 12 }, %struct.ov_regvals { i8 37, i8 1 }, %struct.ov_regvals { i8 38, i8 0 }], [10 x %struct.ov_regvals] [%struct.ov_regvals { i8 16, i8 40 }, %struct.ov_regvals { i8 17, i8 60 }, %struct.ov_regvals { i8 18, i8 0 }, %struct.ov_regvals { i8 19, i8 0 }, %struct.ov_regvals { i8 20, i8 0 }, %struct.ov_regvals { i8 21, i8 0 }, %struct.ov_regvals { i8 22, i8 0 }, %struct.ov_regvals { i8 32, i8 12 }, %struct.ov_regvals { i8 37, i8 3 }, %struct.ov_regvals { i8 38, i8 0 }]], [56 x i8] zeroinitializer }, align 32
@ov519_set_mode.sensor_ov7660 = internal constant { [2 x [3 x %struct.ov_i2c_regvals]], [20 x i8] } { [2 x [3 x %struct.ov_i2c_regvals]] [[3 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 36, i8 0 }, %struct.ov_i2c_regvals { i8 12, i8 12 }], [3 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 18, i8 0 }, %struct.ov_i2c_regvals { i8 4, i8 0 }, %struct.ov_i2c_regvals { i8 12, i8 0 }]], [20 x i8] zeroinitializer }, align 32
@ov519_set_fr.fr_tb = internal constant { [2 x [6 x [3 x i8]]], [60 x i8] } { [2 x [6 x [3 x i8]]] [[6 x [3 x i8]] [[3 x i8] c"\04\FF\00", [3 x i8] c"\04\1F\00", [3 x i8] c"\04\1B\00", [3 x i8] c"\04\15\00", [3 x i8] c"\04\09\00", [3 x i8] c"\04\01\00"], [6 x [3 x i8]] [[3 x i8] c"\0C\FF\00", [3 x i8] c"\0C\1F\00", [3 x i8] c"\0C\1B\00", [3 x i8] c"\04\FF\01", [3 x i8] c"\04\1F\01", [3 x i8] c"\04\1B\01"]], [60 x i8] zeroinitializer }, align 32
@ov51x_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.4, i32 2499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: restarting\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov51x_restart\00", [18 x i8] zeroinitializer }, align 32
@ov51x_restart._entry_ptr = internal global ptr @ov51x_restart._entry, section ".printk_index", align 4
@ov51x_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.4, i32 2468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: stopping\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ov51x_stop\00", [21 x i8] zeroinitializer }, align 32
@ov51x_stop._entry_ptr = internal global ptr @ov51x_stop._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov519:4887:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@valid_controls = internal constant { [16 x %struct.ctrl_valid], [32 x i8] } { [16 x %struct.ctrl_valid] [%struct.ctrl_valid { i8 48, [3 x i8] undef }, %struct.ctrl_valid { i8 48, [3 x i8] undef }, %struct.ctrl_valid { i8 0, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -119, [3 x i8] undef }, %struct.ctrl_valid { i8 -119, [3 x i8] undef }, %struct.ctrl_valid { i8 -51, [3 x i8] undef }, %struct.ctrl_valid { i8 -59, [3 x i8] undef }, %struct.ctrl_valid { i8 -53, [3 x i8] undef }, %struct.ctrl_valid { i8 -54, [3 x i8] undef }, %struct.ctrl_valid { i8 48, [3 x i8] undef }], [32 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @sd_g_volatile_ctrl, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.4, i32 4940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Could not initialize controls\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setbrightness.brit_7660 = internal constant { [7 x [7 x %struct.ov_i2c_regvals]], [62 x i8] } { [7 x [7 x %struct.ov_i2c_regvals]] [[7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 64 }, %struct.ov_i2c_regvals { i8 37, i8 43 }, %struct.ov_i2c_regvals { i8 38, i8 -112 }, %struct.ov_i2c_regvals { i8 39, i8 -32 }, %struct.ov_i2c_regvals { i8 40, i8 -32 }, %struct.ov_i2c_regvals { i8 44, i8 -32 }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 80 }, %struct.ov_i2c_regvals { i8 37, i8 64 }, %struct.ov_i2c_regvals { i8 38, i8 -95 }, %struct.ov_i2c_regvals { i8 39, i8 -64 }, %struct.ov_i2c_regvals { i8 40, i8 -64 }, %struct.ov_i2c_regvals { i8 44, i8 -64 }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 104 }, %struct.ov_i2c_regvals { i8 37, i8 88 }, %struct.ov_i2c_regvals { i8 38, i8 -62 }, %struct.ov_i2c_regvals { i8 39, i8 -96 }, %struct.ov_i2c_regvals { i8 40, i8 -96 }, %struct.ov_i2c_regvals { i8 44, i8 -96 }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 112 }, %struct.ov_i2c_regvals { i8 37, i8 104 }, %struct.ov_i2c_regvals { i8 38, i8 -45 }, %struct.ov_i2c_regvals { i8 39, i8 -128 }, %struct.ov_i2c_regvals { i8 40, i8 -128 }, %struct.ov_i2c_regvals { i8 44, i8 -128 }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 -128 }, %struct.ov_i2c_regvals { i8 37, i8 112 }, %struct.ov_i2c_regvals { i8 38, i8 -45 }, %struct.ov_i2c_regvals { i8 39, i8 32 }, %struct.ov_i2c_regvals { i8 40, i8 32 }, %struct.ov_i2c_regvals { i8 44, i8 32 }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 -120 }, %struct.ov_i2c_regvals { i8 37, i8 120 }, %struct.ov_i2c_regvals { i8 38, i8 -45 }, %struct.ov_i2c_regvals { i8 39, i8 64 }, %struct.ov_i2c_regvals { i8 40, i8 64 }, %struct.ov_i2c_regvals { i8 44, i8 64 }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 15, i8 106 }, %struct.ov_i2c_regvals { i8 36, i8 -112 }, %struct.ov_i2c_regvals { i8 37, i8 -128 }, %struct.ov_i2c_regvals { i8 38, i8 -44 }, %struct.ov_i2c_regvals { i8 39, i8 96 }, %struct.ov_i2c_regvals { i8 40, i8 96 }, %struct.ov_i2c_regvals { i8 44, i8 96 }]], [62 x i8] zeroinitializer }, align 32
@setcontrast.contrast_7660 = internal constant { [7 x [31 x %struct.ov_i2c_regvals]], [110 x i8] } { [7 x [31 x %struct.ov_i2c_regvals]] [[31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 -16 }, %struct.ov_i2c_regvals { i8 109, i8 -16 }, %struct.ov_i2c_regvals { i8 110, i8 -8 }, %struct.ov_i2c_regvals { i8 111, i8 -96 }, %struct.ov_i2c_regvals { i8 112, i8 88 }, %struct.ov_i2c_regvals { i8 113, i8 56 }, %struct.ov_i2c_regvals { i8 114, i8 48 }, %struct.ov_i2c_regvals { i8 115, i8 48 }, %struct.ov_i2c_regvals { i8 116, i8 40 }, %struct.ov_i2c_regvals { i8 117, i8 40 }, %struct.ov_i2c_regvals { i8 118, i8 36 }, %struct.ov_i2c_regvals { i8 119, i8 36 }, %struct.ov_i2c_regvals { i8 120, i8 34 }, %struct.ov_i2c_regvals { i8 121, i8 40 }, %struct.ov_i2c_regvals { i8 122, i8 42 }, %struct.ov_i2c_regvals { i8 123, i8 52 }, %struct.ov_i2c_regvals { i8 124, i8 15 }, %struct.ov_i2c_regvals { i8 125, i8 30 }, %struct.ov_i2c_regvals { i8 126, i8 61 }, %struct.ov_i2c_regvals { i8 127, i8 101 }, %struct.ov_i2c_regvals { i8 -128, i8 112 }, %struct.ov_i2c_regvals { i8 -127, i8 119 }, %struct.ov_i2c_regvals { i8 -126, i8 125 }, %struct.ov_i2c_regvals { i8 -125, i8 -125 }, %struct.ov_i2c_regvals { i8 -124, i8 -120 }, %struct.ov_i2c_regvals { i8 -123, i8 -115 }, %struct.ov_i2c_regvals { i8 -122, i8 -106 }, %struct.ov_i2c_regvals { i8 -121, i8 -97 }, %struct.ov_i2c_regvals { i8 -120, i8 -80 }, %struct.ov_i2c_regvals { i8 -119, i8 -60 }, %struct.ov_i2c_regvals { i8 -118, i8 -39 }], [31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 -16 }, %struct.ov_i2c_regvals { i8 109, i8 -16 }, %struct.ov_i2c_regvals { i8 110, i8 -8 }, %struct.ov_i2c_regvals { i8 111, i8 -108 }, %struct.ov_i2c_regvals { i8 112, i8 88 }, %struct.ov_i2c_regvals { i8 113, i8 64 }, %struct.ov_i2c_regvals { i8 114, i8 48 }, %struct.ov_i2c_regvals { i8 115, i8 48 }, %struct.ov_i2c_regvals { i8 116, i8 48 }, %struct.ov_i2c_regvals { i8 117, i8 48 }, %struct.ov_i2c_regvals { i8 118, i8 44 }, %struct.ov_i2c_regvals { i8 119, i8 36 }, %struct.ov_i2c_regvals { i8 120, i8 34 }, %struct.ov_i2c_regvals { i8 121, i8 40 }, %struct.ov_i2c_regvals { i8 122, i8 42 }, %struct.ov_i2c_regvals { i8 123, i8 49 }, %struct.ov_i2c_regvals { i8 124, i8 15 }, %struct.ov_i2c_regvals { i8 125, i8 30 }, %struct.ov_i2c_regvals { i8 126, i8 61 }, %struct.ov_i2c_regvals { i8 127, i8 98 }, %struct.ov_i2c_regvals { i8 -128, i8 109 }, %struct.ov_i2c_regvals { i8 -127, i8 117 }, %struct.ov_i2c_regvals { i8 -126, i8 123 }, %struct.ov_i2c_regvals { i8 -125, i8 -127 }, %struct.ov_i2c_regvals { i8 -124, i8 -121 }, %struct.ov_i2c_regvals { i8 -123, i8 -115 }, %struct.ov_i2c_regvals { i8 -122, i8 -104 }, %struct.ov_i2c_regvals { i8 -121, i8 -95 }, %struct.ov_i2c_regvals { i8 -120, i8 -78 }, %struct.ov_i2c_regvals { i8 -119, i8 -58 }, %struct.ov_i2c_regvals { i8 -118, i8 -37 }], [31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 -16 }, %struct.ov_i2c_regvals { i8 109, i8 -16 }, %struct.ov_i2c_regvals { i8 110, i8 -16 }, %struct.ov_i2c_regvals { i8 111, i8 -124 }, %struct.ov_i2c_regvals { i8 112, i8 88 }, %struct.ov_i2c_regvals { i8 113, i8 72 }, %struct.ov_i2c_regvals { i8 114, i8 64 }, %struct.ov_i2c_regvals { i8 115, i8 64 }, %struct.ov_i2c_regvals { i8 116, i8 40 }, %struct.ov_i2c_regvals { i8 117, i8 40 }, %struct.ov_i2c_regvals { i8 118, i8 40 }, %struct.ov_i2c_regvals { i8 119, i8 36 }, %struct.ov_i2c_regvals { i8 120, i8 38 }, %struct.ov_i2c_regvals { i8 121, i8 40 }, %struct.ov_i2c_regvals { i8 122, i8 40 }, %struct.ov_i2c_regvals { i8 123, i8 52 }, %struct.ov_i2c_regvals { i8 124, i8 15 }, %struct.ov_i2c_regvals { i8 125, i8 30 }, %struct.ov_i2c_regvals { i8 126, i8 60 }, %struct.ov_i2c_regvals { i8 127, i8 93 }, %struct.ov_i2c_regvals { i8 -128, i8 104 }, %struct.ov_i2c_regvals { i8 -127, i8 113 }, %struct.ov_i2c_regvals { i8 -126, i8 121 }, %struct.ov_i2c_regvals { i8 -125, i8 -127 }, %struct.ov_i2c_regvals { i8 -124, i8 -122 }, %struct.ov_i2c_regvals { i8 -123, i8 -117 }, %struct.ov_i2c_regvals { i8 -122, i8 -107 }, %struct.ov_i2c_regvals { i8 -121, i8 -98 }, %struct.ov_i2c_regvals { i8 -120, i8 -79 }, %struct.ov_i2c_regvals { i8 -119, i8 -59 }, %struct.ov_i2c_regvals { i8 -118, i8 -39 }], [31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 -16 }, %struct.ov_i2c_regvals { i8 109, i8 -16 }, %struct.ov_i2c_regvals { i8 110, i8 -16 }, %struct.ov_i2c_regvals { i8 111, i8 112 }, %struct.ov_i2c_regvals { i8 112, i8 88 }, %struct.ov_i2c_regvals { i8 113, i8 88 }, %struct.ov_i2c_regvals { i8 114, i8 72 }, %struct.ov_i2c_regvals { i8 115, i8 72 }, %struct.ov_i2c_regvals { i8 116, i8 56 }, %struct.ov_i2c_regvals { i8 117, i8 64 }, %struct.ov_i2c_regvals { i8 118, i8 52 }, %struct.ov_i2c_regvals { i8 119, i8 52 }, %struct.ov_i2c_regvals { i8 120, i8 46 }, %struct.ov_i2c_regvals { i8 121, i8 40 }, %struct.ov_i2c_regvals { i8 122, i8 36 }, %struct.ov_i2c_regvals { i8 123, i8 34 }, %struct.ov_i2c_regvals { i8 124, i8 15 }, %struct.ov_i2c_regvals { i8 125, i8 30 }, %struct.ov_i2c_regvals { i8 126, i8 60 }, %struct.ov_i2c_regvals { i8 127, i8 88 }, %struct.ov_i2c_regvals { i8 -128, i8 99 }, %struct.ov_i2c_regvals { i8 -127, i8 110 }, %struct.ov_i2c_regvals { i8 -126, i8 119 }, %struct.ov_i2c_regvals { i8 -125, i8 -128 }, %struct.ov_i2c_regvals { i8 -124, i8 -121 }, %struct.ov_i2c_regvals { i8 -123, i8 -113 }, %struct.ov_i2c_regvals { i8 -122, i8 -100 }, %struct.ov_i2c_regvals { i8 -121, i8 -87 }, %struct.ov_i2c_regvals { i8 -120, i8 -64 }, %struct.ov_i2c_regvals { i8 -119, i8 -44 }, %struct.ov_i2c_regvals { i8 -118, i8 -26 }], [31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 -96 }, %struct.ov_i2c_regvals { i8 109, i8 -16 }, %struct.ov_i2c_regvals { i8 110, i8 -112 }, %struct.ov_i2c_regvals { i8 111, i8 -128 }, %struct.ov_i2c_regvals { i8 112, i8 112 }, %struct.ov_i2c_regvals { i8 113, i8 -128 }, %struct.ov_i2c_regvals { i8 114, i8 96 }, %struct.ov_i2c_regvals { i8 115, i8 96 }, %struct.ov_i2c_regvals { i8 116, i8 88 }, %struct.ov_i2c_regvals { i8 117, i8 96 }, %struct.ov_i2c_regvals { i8 118, i8 76 }, %struct.ov_i2c_regvals { i8 119, i8 56 }, %struct.ov_i2c_regvals { i8 120, i8 56 }, %struct.ov_i2c_regvals { i8 121, i8 42 }, %struct.ov_i2c_regvals { i8 122, i8 32 }, %struct.ov_i2c_regvals { i8 123, i8 14 }, %struct.ov_i2c_regvals { i8 124, i8 10 }, %struct.ov_i2c_regvals { i8 125, i8 20 }, %struct.ov_i2c_regvals { i8 126, i8 38 }, %struct.ov_i2c_regvals { i8 127, i8 70 }, %struct.ov_i2c_regvals { i8 -128, i8 84 }, %struct.ov_i2c_regvals { i8 -127, i8 100 }, %struct.ov_i2c_regvals { i8 -126, i8 112 }, %struct.ov_i2c_regvals { i8 -125, i8 124 }, %struct.ov_i2c_regvals { i8 -124, i8 -121 }, %struct.ov_i2c_regvals { i8 -123, i8 -109 }, %struct.ov_i2c_regvals { i8 -122, i8 -90 }, %struct.ov_i2c_regvals { i8 -121, i8 -76 }, %struct.ov_i2c_regvals { i8 -120, i8 -48 }, %struct.ov_i2c_regvals { i8 -119, i8 -27 }, %struct.ov_i2c_regvals { i8 -118, i8 -11 }], [31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 96 }, %struct.ov_i2c_regvals { i8 109, i8 -128 }, %struct.ov_i2c_regvals { i8 110, i8 96 }, %struct.ov_i2c_regvals { i8 111, i8 -128 }, %struct.ov_i2c_regvals { i8 112, i8 -128 }, %struct.ov_i2c_regvals { i8 113, i8 -128 }, %struct.ov_i2c_regvals { i8 114, i8 -120 }, %struct.ov_i2c_regvals { i8 115, i8 48 }, %struct.ov_i2c_regvals { i8 116, i8 112 }, %struct.ov_i2c_regvals { i8 117, i8 104 }, %struct.ov_i2c_regvals { i8 118, i8 100 }, %struct.ov_i2c_regvals { i8 119, i8 80 }, %struct.ov_i2c_regvals { i8 120, i8 60 }, %struct.ov_i2c_regvals { i8 121, i8 34 }, %struct.ov_i2c_regvals { i8 122, i8 16 }, %struct.ov_i2c_regvals { i8 123, i8 8 }, %struct.ov_i2c_regvals { i8 124, i8 6 }, %struct.ov_i2c_regvals { i8 125, i8 14 }, %struct.ov_i2c_regvals { i8 126, i8 26 }, %struct.ov_i2c_regvals { i8 127, i8 58 }, %struct.ov_i2c_regvals { i8 -128, i8 74 }, %struct.ov_i2c_regvals { i8 -127, i8 90 }, %struct.ov_i2c_regvals { i8 -126, i8 107 }, %struct.ov_i2c_regvals { i8 -125, i8 123 }, %struct.ov_i2c_regvals { i8 -124, i8 -119 }, %struct.ov_i2c_regvals { i8 -123, i8 -106 }, %struct.ov_i2c_regvals { i8 -122, i8 -81 }, %struct.ov_i2c_regvals { i8 -121, i8 -61 }, %struct.ov_i2c_regvals { i8 -120, i8 -31 }, %struct.ov_i2c_regvals { i8 -119, i8 -14 }, %struct.ov_i2c_regvals { i8 -118, i8 -6 }], [31 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 108, i8 32 }, %struct.ov_i2c_regvals { i8 109, i8 64 }, %struct.ov_i2c_regvals { i8 110, i8 32 }, %struct.ov_i2c_regvals { i8 111, i8 96 }, %struct.ov_i2c_regvals { i8 112, i8 -120 }, %struct.ov_i2c_regvals { i8 113, i8 -56 }, %struct.ov_i2c_regvals { i8 114, i8 -64 }, %struct.ov_i2c_regvals { i8 115, i8 -72 }, %struct.ov_i2c_regvals { i8 116, i8 -88 }, %struct.ov_i2c_regvals { i8 117, i8 -72 }, %struct.ov_i2c_regvals { i8 118, i8 -128 }, %struct.ov_i2c_regvals { i8 119, i8 92 }, %struct.ov_i2c_regvals { i8 120, i8 38 }, %struct.ov_i2c_regvals { i8 121, i8 16 }, %struct.ov_i2c_regvals { i8 122, i8 8 }, %struct.ov_i2c_regvals { i8 123, i8 4 }, %struct.ov_i2c_regvals { i8 124, i8 2 }, %struct.ov_i2c_regvals { i8 125, i8 6 }, %struct.ov_i2c_regvals { i8 126, i8 10 }, %struct.ov_i2c_regvals { i8 127, i8 34 }, %struct.ov_i2c_regvals { i8 -128, i8 51 }, %struct.ov_i2c_regvals { i8 -127, i8 76 }, %struct.ov_i2c_regvals { i8 -126, i8 100 }, %struct.ov_i2c_regvals { i8 -125, i8 123 }, %struct.ov_i2c_regvals { i8 -124, i8 -112 }, %struct.ov_i2c_regvals { i8 -123, i8 -89 }, %struct.ov_i2c_regvals { i8 -122, i8 -57 }, %struct.ov_i2c_regvals { i8 -121, i8 -34 }, %struct.ov_i2c_regvals { i8 -120, i8 -15 }, %struct.ov_i2c_regvals { i8 -119, i8 -7 }, %struct.ov_i2c_regvals { i8 -118, i8 -3 }]], [110 x i8] zeroinitializer }, align 32
@setcontrast.ctab = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\03\09\0B\0FSo5\7F", [24 x i8] zeroinitializer }, align 32
@setcontrast.ctab.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01\05\09\11\1557W[\A5\A7\C7\C9\CF\EF\FF", [16 x i8] zeroinitializer }, align 32
@setcolors.colors_7660 = internal constant { [5 x [6 x %struct.ov_i2c_regvals]], [36 x i8] } { [5 x [6 x %struct.ov_i2c_regvals]] [[6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 79, i8 40 }, %struct.ov_i2c_regvals { i8 80, i8 42 }, %struct.ov_i2c_regvals { i8 81, i8 2 }, %struct.ov_i2c_regvals { i8 82, i8 10 }, %struct.ov_i2c_regvals { i8 83, i8 25 }, %struct.ov_i2c_regvals { i8 84, i8 35 }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 79, i8 71 }, %struct.ov_i2c_regvals { i8 80, i8 74 }, %struct.ov_i2c_regvals { i8 81, i8 3 }, %struct.ov_i2c_regvals { i8 82, i8 17 }, %struct.ov_i2c_regvals { i8 83, i8 44 }, %struct.ov_i2c_regvals { i8 84, i8 62 }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 79, i8 102 }, %struct.ov_i2c_regvals { i8 80, i8 107 }, %struct.ov_i2c_regvals { i8 81, i8 5 }, %struct.ov_i2c_regvals { i8 82, i8 25 }, %struct.ov_i2c_regvals { i8 83, i8 64 }, %struct.ov_i2c_regvals { i8 84, i8 89 }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 79, i8 -124 }, %struct.ov_i2c_regvals { i8 80, i8 -117 }, %struct.ov_i2c_regvals { i8 81, i8 6 }, %struct.ov_i2c_regvals { i8 82, i8 32 }, %struct.ov_i2c_regvals { i8 83, i8 83 }, %struct.ov_i2c_regvals { i8 84, i8 115 }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 79, i8 -93 }, %struct.ov_i2c_regvals { i8 80, i8 -85 }, %struct.ov_i2c_regvals { i8 81, i8 8 }, %struct.ov_i2c_regvals { i8 82, i8 40 }, %struct.ov_i2c_regvals { i8 83, i8 102 }, %struct.ov_i2c_regvals { i8 84, i8 -114 }]], [36 x i8] zeroinitializer }, align 32
@ov511_mode_init_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.4, i32 3475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Couldn't get altsetting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov511_mode_init_regs\00", [43 x i8] zeroinitializer }, align 32
@ov511_mode_init_regs._entry_ptr = internal global ptr @ov511_mode_init_regs._entry, section ".printk_index", align 4
@ov518_mode_init_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.181, ptr @.str.4, i32 3606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov518_mode_init_regs\00", [43 x i8] zeroinitializer }, align 32
@ov518_mode_init_regs._entry_ptr = internal global ptr @ov518_mode_init_regs._entry, section ".printk_index", align 4
@ov518_reg_w32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.4, i32 2168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_w32 %02x failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ov518_reg_w32\00", [18 x i8] zeroinitializer }, align 32
@ov518_reg_w32._entry_ptr = internal global ptr @ov518_reg_w32._entry, section ".printk_index", align 4
@ov519_mode_init_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.4, i32 3884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Setting framerate to %d fps\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov519_mode_init_regs\00", [43 x i8] zeroinitializer }, align 32
@ov519_mode_init_regs._entry_ptr = internal global ptr @ov519_mode_init_regs._entry, section ".printk_index", align 4
@jpeg_head = internal constant { [556 x i8], [148 x i8] } { [556 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [148 x i8] zeroinitializer }, align 32
@mode_init_ov_sensor_regs.sxga_15 = internal constant { [4 x %struct.ov_i2c_regvals], [24 x i8] } { [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 17, i8 -128 }, %struct.ov_i2c_regvals { i8 20, i8 62 }, %struct.ov_i2c_regvals { i8 36, i8 -123 }, %struct.ov_i2c_regvals { i8 37, i8 117 }], [24 x i8] zeroinitializer }, align 32
@mode_init_ov_sensor_regs.sxga_7_5 = internal constant { [4 x %struct.ov_i2c_regvals], [24 x i8] } { [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 17, i8 -127 }, %struct.ov_i2c_regvals { i8 20, i8 62 }, %struct.ov_i2c_regvals { i8 36, i8 -123 }, %struct.ov_i2c_regvals { i8 37, i8 117 }], [24 x i8] zeroinitializer }, align 32
@mode_init_ov_sensor_regs.vga_30 = internal constant { [4 x %struct.ov_i2c_regvals], [24 x i8] } { [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 17, i8 -127 }, %struct.ov_i2c_regvals { i8 20, i8 126 }, %struct.ov_i2c_regvals { i8 36, i8 112 }, %struct.ov_i2c_regvals { i8 37, i8 96 }], [24 x i8] zeroinitializer }, align 32
@mode_init_ov_sensor_regs.vga_15 = internal constant { [4 x %struct.ov_i2c_regvals], [24 x i8] } { [4 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { i8 17, i8 -125 }, %struct.ov_i2c_regvals { i8 20, i8 62 }, %struct.ov_i2c_regvals { i8 36, i8 -128 }, %struct.ov_i2c_regvals { i8 37, i8 112 }], [24 x i8] zeroinitializer }, align 32
@ov511_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.4, i32 4348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Invalid frame size, got: %dx%d, requested: %dx%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov511_pkt_scan\00", [17 x i8] zeroinitializer }, align 32
@ov511_pkt_scan._entry_ptr = internal global ptr @ov511_pkt_scan._entry, section ".printk_index", align 4
@ov518_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.4, i32 4397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Invalid packet nr: %d (expect: %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ov518_pkt_scan\00", [17 x i8] zeroinitializer }, align 32
@ov518_pkt_scan._entry_ptr = internal global ptr @ov518_pkt_scan._entry, section ".printk_index", align 4
@switch.table.reg_r = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 3, i32 1, i32 1, i32 1, i32 11], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.190 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.194 = internal global [7 x i64] [i64 5, i64 32, i64 48, i64 64, i64 69, i64 72, i64 96]
@__sancov_gen_cov_switch_values.195 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 144]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 54, i64 150]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 65, i64 177]
@__sancov_gen_cov_switch_values.198 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 15]
@__sancov_gen_cov_switch_values.200 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 11]
@__sancov_gen_cov_switch_values.202 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.203 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.204 = internal global [6 x i64] [i64 4, i64 8, i64 5, i64 10, i64 25, i64 30]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 12]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 12]
@__sancov_gen_cov_switch_values.208 = internal global [6 x i64] [i64 4, i64 32, i64 9, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.209 = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 10, i64 15, i64 20, i64 25]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 10]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 8, i64 20, i64 30]
@__sancov_gen_cov_switch_values.212 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.213 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 13, i64 14]
@__sancov_gen_cov_switch_values.214 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 8, i64 80, i64 81]
@__sancov_gen_cov_switch_values.216 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.218 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.219 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.220 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.221 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.222 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.223 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.224 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963794, i64 9963796, i64 9963800, i64 9963808, i64 10291459]
@__sancov_gen_cov_switch_values.225 = internal global [11 x i64] [i64 9, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.226 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.228 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14]
@__sancov_gen_cov_switch_values.229 = internal global [14 x i64] [i64 12, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.230 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.231 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.232 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 5015, i32 26 }
@___asan_gen_.235 = private unnamed_addr constant [11 x i8] c"frame_rate\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 43, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 5027, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 5016, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4972, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4953, i32 29 }
@___asan_gen_.250 = private unnamed_addr constant [15 x i8] c"ov511_vga_mode\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 314, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant [15 x i8] c"ov518_vga_mode\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 279, i32 37 }
@___asan_gen_.256 = private unnamed_addr constant [15 x i8] c"ov519_vga_mode\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 238, i32 37 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"w9968cf_vga_mode\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 26, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3307, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [15 x i8] c"ov511_sif_mode\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 326, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant [15 x i8] c"ov518_sif_mode\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 291, i32 37 }
@___asan_gen_.280 = private unnamed_addr constant [15 x i8] c"ov519_sif_mode\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 250, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"ovfx2_ov2610_mode\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 349, i32 37 }
@___asan_gen_.286 = private unnamed_addr constant [18 x i8] c"ovfx2_ov3610_mode\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 360, i32 37 }
@___asan_gen_.289 = private unnamed_addr constant [18 x i8] c"ovfx2_ov9600_mode\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 387, i32 37 }
@___asan_gen_.292 = private unnamed_addr constant [11 x i8] c"norm_3620b\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 613, i32 36 }
@___asan_gen_.295 = private unnamed_addr constant [10 x i8] c"norm_6x20\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1295, i32 36 }
@___asan_gen_.298 = private unnamed_addr constant [10 x i8] c"norm_6x30\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1338, i32 36 }
@___asan_gen_.301 = private unnamed_addr constant [10 x i8] c"norm_7610\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1434, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant [10 x i8] c"norm_7620\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1464, i32 36 }
@___asan_gen_.307 = private unnamed_addr constant [10 x i8] c"norm_7660\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1556, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant [10 x i8] c"norm_7670\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1699, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant [10 x i8] c"norm_8610\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 1893, i32 36 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3440, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2995, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2071, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2074, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [14 x i8] c"yQuanTable511\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2876, i32 29 }
@___asan_gen_.349 = private unnamed_addr constant [15 x i8] c"uvQuanTable511\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2887, i32 29 }
@___asan_gen_.352 = private unnamed_addr constant [14 x i8] c"yQuanTable518\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2899, i32 29 }
@___asan_gen_.355 = private unnamed_addr constant [15 x i8] c"uvQuanTable518\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2905, i32 29 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2917, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3066, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2550, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2234, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2258, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2265, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2324, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2107, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2366, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2369, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 328, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 331, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 103, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 242, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 133, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2692, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2700, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2709, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2713, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2719, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2722, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2729, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2734, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2740, i32 5 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2741, i32 5 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2744, i32 5 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2748, i32 5 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2752, i32 5 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2756, i32 5 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2760, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2765, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2769, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2780, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2785, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2795, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2799, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2803, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2807, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2811, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2814, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2669, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2674, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2680, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2622, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2626, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2636, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2640, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2644, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2651, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2657, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2178, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2201, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2284, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2343, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2347, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 294, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant [37 x i8] c"../drivers/media/usb/gspca/w996Xcf.c\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 73, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2009, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2021, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2032, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant [14 x i8] c"bridge_ov7660\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3129, i32 33 }
@___asan_gen_.775 = private unnamed_addr constant [14 x i8] c"sensor_ov7660\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3137, i32 37 }
@___asan_gen_.778 = private unnamed_addr constant [6 x i8] c"fr_tb\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3173, i32 18 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2499, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2468, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4887, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [15 x i8] c"valid_controls\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 142, i32 32 }
@___asan_gen_.808 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4876, i32 35 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4940, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant [10 x i8] c"brit_7660\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4509, i32 37 }
@___asan_gen_.823 = private unnamed_addr constant [14 x i8] c"contrast_7660\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4556, i32 37 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4625, i32 19 }
@___asan_gen_.829 = private unnamed_addr constant [5 x i8] c"ctab\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4635, i32 19 }
@___asan_gen_.832 = private unnamed_addr constant [12 x i8] c"colors_7660\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4665, i32 37 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3475, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3606, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 2168, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 3883, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.869, i32 19, i32 17 }
@___asan_gen_.871 = private unnamed_addr constant [8 x i8] c"sxga_15\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4061, i32 38 }
@___asan_gen_.874 = private unnamed_addr constant [9 x i8] c"sxga_7_5\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4064, i32 38 }
@___asan_gen_.877 = private unnamed_addr constant [7 x i8] c"vga_30\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4067, i32 38 }
@___asan_gen_.880 = private unnamed_addr constant [7 x i8] c"vga_15\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4070, i32 38 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4345, i32 5 }
@___asan_gen_.892 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.898 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.899 = private constant [35 x i8] c"../drivers/media/usb/gspca/ov519.c\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.899, i32 4396, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant [19 x i8] c"switch.table.reg_r\00", align 1
@llvm.compiler.used = appending global [308 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_frame_rate309, ptr @__UNIQUE_ID_frame_ratetype308, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_ov519__307_5027_sd_driver_init6, ptr @__param_frame_rate, ptr @init_ov_sensor._entry, ptr @init_ov_sensor._entry_ptr, ptr @ov511_configure._entry, ptr @ov511_configure._entry_ptr, ptr @ov511_i2c_r._entry, ptr @ov511_i2c_r._entry.23, ptr @ov511_i2c_r._entry.26, ptr @ov511_i2c_r._entry_ptr, ptr @ov511_i2c_r._entry_ptr.25, ptr @ov511_i2c_r._entry_ptr.28, ptr @ov511_i2c_w._entry, ptr @ov511_i2c_w._entry.150, ptr @ov511_i2c_w._entry_ptr, ptr @ov511_i2c_w._entry_ptr.151, ptr @ov511_mode_init_regs._entry, ptr @ov511_mode_init_regs._entry_ptr, ptr @ov511_pkt_scan._entry, ptr @ov511_pkt_scan._entry_ptr, ptr @ov518_configure._entry, ptr @ov518_configure._entry_ptr, ptr @ov518_i2c_r._entry, ptr @ov518_i2c_r._entry_ptr, ptr @ov518_i2c_w._entry, ptr @ov518_i2c_w._entry_ptr, ptr @ov518_mode_init_regs._entry, ptr @ov518_mode_init_regs._entry_ptr, ptr @ov518_pkt_scan._entry, ptr @ov518_pkt_scan._entry_ptr, ptr @ov518_reg_w32._entry, ptr @ov518_reg_w32._entry_ptr, ptr @ov519_mode_init_regs._entry, ptr @ov519_mode_init_regs._entry_ptr, ptr @ov51x_restart._entry, ptr @ov51x_restart._entry_ptr, ptr @ov51x_stop._entry, ptr @ov51x_stop._entry_ptr, ptr @ov51x_upload_quan_tables._entry, ptr @ov51x_upload_quan_tables._entry_ptr, ptr @ov6xx0_configure._entry, ptr @ov6xx0_configure._entry.102, ptr @ov6xx0_configure._entry.104, ptr @ov6xx0_configure._entry.107, ptr @ov6xx0_configure._entry.110, ptr @ov6xx0_configure._entry.113, ptr @ov6xx0_configure._entry.116, ptr @ov6xx0_configure._entry.119, ptr @ov6xx0_configure._entry_ptr, ptr @ov6xx0_configure._entry_ptr.103, ptr @ov6xx0_configure._entry_ptr.106, ptr @ov6xx0_configure._entry_ptr.109, ptr @ov6xx0_configure._entry_ptr.112, ptr @ov6xx0_configure._entry_ptr.115, ptr @ov6xx0_configure._entry_ptr.118, ptr @ov6xx0_configure._entry_ptr.121, ptr @ov7xx0_configure._entry, ptr @ov7xx0_configure._entry.52, ptr @ov7xx0_configure._entry.55, ptr @ov7xx0_configure._entry.58, ptr @ov7xx0_configure._entry.61, ptr @ov7xx0_configure._entry.64, ptr @ov7xx0_configure._entry.67, ptr @ov7xx0_configure._entry.70, ptr @ov7xx0_configure._entry.73, ptr @ov7xx0_configure._entry.76, ptr @ov7xx0_configure._entry.79, ptr @ov7xx0_configure._entry.82, ptr @ov7xx0_configure._entry.85, ptr @ov7xx0_configure._entry.88, ptr @ov7xx0_configure._entry.91, ptr @ov7xx0_configure._entry.94, ptr @ov7xx0_configure._entry.97, ptr @ov7xx0_configure._entry_ptr, ptr @ov7xx0_configure._entry_ptr.54, ptr @ov7xx0_configure._entry_ptr.57, ptr @ov7xx0_configure._entry_ptr.60, ptr @ov7xx0_configure._entry_ptr.63, ptr @ov7xx0_configure._entry_ptr.66, ptr @ov7xx0_configure._entry_ptr.69, ptr @ov7xx0_configure._entry_ptr.72, ptr @ov7xx0_configure._entry_ptr.75, ptr @ov7xx0_configure._entry_ptr.78, ptr @ov7xx0_configure._entry_ptr.81, ptr @ov7xx0_configure._entry_ptr.84, ptr @ov7xx0_configure._entry_ptr.87, ptr @ov7xx0_configure._entry_ptr.90, ptr @ov7xx0_configure._entry_ptr.93, ptr @ov7xx0_configure._entry_ptr.96, ptr @ov7xx0_configure._entry_ptr.99, ptr @ov8xx0_configure._entry, ptr @ov8xx0_configure._entry.124, ptr @ov8xx0_configure._entry.126, ptr @ov8xx0_configure._entry_ptr, ptr @ov8xx0_configure._entry_ptr.125, ptr @ov8xx0_configure._entry_ptr.127, ptr @ov_hires_configure._entry, ptr @ov_hires_configure._entry.130, ptr @ov_hires_configure._entry.133, ptr @ov_hires_configure._entry.136, ptr @ov_hires_configure._entry.139, ptr @ov_hires_configure._entry.142, ptr @ov_hires_configure._entry.145, ptr @ov_hires_configure._entry_ptr, ptr @ov_hires_configure._entry_ptr.132, ptr @ov_hires_configure._entry_ptr.135, ptr @ov_hires_configure._entry_ptr.138, ptr @ov_hires_configure._entry_ptr.141, ptr @ov_hires_configure._entry_ptr.144, ptr @ov_hires_configure._entry_ptr.147, ptr @ovfx2_i2c_r._entry, ptr @ovfx2_i2c_r._entry.35, ptr @ovfx2_i2c_r._entry_ptr, ptr @ovfx2_i2c_r._entry_ptr.37, ptr @ovfx2_i2c_w._entry, ptr @ovfx2_i2c_w._entry.156, ptr @ovfx2_i2c_w._entry_ptr, ptr @ovfx2_i2c_w._entry_ptr.158, ptr @reg_r._entry, ptr @reg_r._entry.12, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.14, ptr @reg_r8._entry, ptr @reg_r8._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry.165, ptr @reg_w._entry.168, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.167, ptr @reg_w._entry_ptr.170, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.5, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.7, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @w9968cf_i2c_r._entry, ptr @w9968cf_i2c_r._entry.41, ptr @w9968cf_i2c_r._entry_ptr, ptr @w9968cf_i2c_r._entry_ptr.43, ptr @w9968cf_i2c_w._entry, ptr @w9968cf_i2c_w._entry_ptr, ptr @w9968cf_read_sb._entry, ptr @w9968cf_read_sb._entry_ptr, ptr @w9968cf_smbus_read_ack._entry, ptr @w9968cf_smbus_read_ack._entry_ptr, ptr @w9968cf_write_fsb._entry, ptr @w9968cf_write_fsb._entry_ptr, ptr @w9968cf_write_sb._entry, ptr @w9968cf_write_sb._entry_ptr, ptr @sd_driver, ptr @frame_rate, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @ov511_vga_mode, ptr @ov518_vga_mode, ptr @ov519_vga_mode, ptr @w9968cf_vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ov511_sif_mode, ptr @ov518_sif_mode, ptr @ov519_sif_mode, ptr @ovfx2_ov2610_mode, ptr @ovfx2_ov3610_mode, ptr @ovfx2_ov9600_mode, ptr @norm_3620b, ptr @norm_6x20, ptr @norm_6x30, ptr @norm_7610, ptr @norm_7620, ptr @norm_7660, ptr @norm_7670, ptr @norm_8610, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ov51x_upload_quan_tables.yQuanTable511, ptr @ov51x_upload_quan_tables.uvQuanTable511, ptr @ov51x_upload_quan_tables.yQuanTable518, ptr @ov51x_upload_quan_tables.uvQuanTable518, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.169, ptr @ov519_set_mode.bridge_ov7660, ptr @ov519_set_mode.sensor_ov7660, ptr @ov519_set_fr.fr_tb, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @sd_init_controls._key, ptr @.str.175, ptr @valid_controls, ptr @sd_ctrl_ops, ptr @.str.176, ptr @.str.177, ptr @setbrightness.brit_7660, ptr @setcontrast.contrast_7660, ptr @setcontrast.ctab, ptr @setcontrast.ctab.178, ptr @setcolors.colors_7660, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @jpeg_head, ptr @mode_init_ov_sensor_regs.sxga_15, ptr @mode_init_ov_sensor_regs.sxga_7_5, ptr @mode_init_ov_sensor_regs.vga_30, ptr @mode_init_ov_sensor_regs.vga_15, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @switch.table.reg_r], section "llvm.metadata"
@0 = internal global [224 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frame_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov519_vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_vga_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_sif_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_sif_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov519_sif_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_ov2610_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_ov3610_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_ov9600_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_3620b to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_6x20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_6x30 to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_7610 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_7620 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_7660 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_7670 to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @norm_8610 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_upload_quan_tables.yQuanTable511 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_upload_quan_tables.uvQuanTable511 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_upload_quan_tables.yQuanTable518 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_upload_quan_tables.uvQuanTable518 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_upload_quan_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ov_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_i2c_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_i2c_r._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_i2c_r._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_i2c_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_i2c_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_i2c_r._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_i2c_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_i2c_r._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_write_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_smbus_read_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_read_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7xx0_configure._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov6xx0_configure._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8xx0_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8xx0_configure._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov8xx0_configure._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_hires_configure._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_i2c_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_i2c_w._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_i2c_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_i2c_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovfx2_i2c_w._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_i2c_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w9968cf_write_fsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov519_set_mode.bridge_ov7660 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov519_set_mode.sensor_ov7660 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov519_set_fr.fr_tb to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov51x_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_controls to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setbrightness.brit_7660 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcontrast.contrast_7660 to i32), i32 434, i32 544, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcontrast.ctab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcontrast.ctab.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcolors.colors_7660 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_mode_init_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_mode_init_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_reg_w32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov519_mode_init_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 556, i32 704, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_init_ov_sensor_regs.sxga_15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_init_ov_sensor_regs.sxga_7_5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_init_ov_sensor_regs.vga_30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_init_ov_sensor_regs.vga_15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov511_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov518_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.reg_r to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 0, i32 0, i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3720, ptr noundef null) #7
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
define internal i32 @sd_config(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %2 = trunc i32 %1 to i8
  %conv = and i8 %2, 7
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %bridge, align 2
  %4 = load i32, ptr %driver_info, align 4
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %invert_led = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %8 = ptrtoint ptr %invert_led to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %invert_led, align 1
  %trunc = trunc i32 %1 to i3
  %9 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %entry.sw.epilog_crit_edge [
    i3 0, label %entry.sw.bb_crit_edge
    i3 1, label %entry.sw.bb_crit_edge37
    i3 2, label %entry.sw.bb8_crit_edge
    i3 3, label %entry.sw.bb8_crit_edge38
    i3 -4, label %sw.bb11
    i3 -3, label %sw.bb14
    i3 -2, label %sw.bb17
  ]

entry.sw.bb8_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge37
  %10 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ov511_vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %nmodes, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge38
  %12 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ov518_vga_mode, ptr %cam1, align 4
  %nmodes10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %nmodes10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %nmodes10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ov519_vga_mode, ptr %cam1, align 4
  %nmodes13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %nmodes13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %nmodes13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ov519_vga_mode, ptr %cam1, align 4
  %nmodes16 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %nmodes16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %nmodes16, align 4
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 53248, ptr %bulk_size, align 4
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %19 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %bulk_nurbs, align 2
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %20 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %bulk, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @w9968cf_vga_mode, ptr %cam1, align 4
  %nmodes19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %nmodes19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %nmodes19, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  %frame_rate = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %23 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 15, ptr %frame_rate, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.190)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge384
    i8 2, label %entry.sw.bb2_crit_edge
    i8 3, label %entry.sw.bb2_crit_edge385
    i8 4, label %sw.bb3
    i8 5, label %sw.bb4
    i8 6, label %sw.bb5
  ]

entry.sw.bb2_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge384:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end4.i_crit_edge

sw.bb.do.end4.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 95) #7
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %call.i) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %sw.bb.do.end4.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 127) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 127) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 63) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 61) #7
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bridge, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.191)
  switch i8 %5, label %do.end4.i.sw.epilog.i_crit_edge [
    i8 0, label %while.body.i21.preheader.i
    i8 1, label %do.end4.i.sw.epilog.sink.split.i_crit_edge
  ]

do.end4.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

do.end4.i.sw.epilog.i_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

while.body.i21.preheader.i:                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %while.body.i21.preheader.i, %do.end4.i.sw.epilog.sink.split.i_crit_edge
  %.sink47.i = phi i16 [ 1, %while.body.i21.preheader.i ], [ 255, %do.end4.i.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i16 [ 31, %while.body.i21.preheader.i ], [ 255, %do.end4.i.sw.epilog.sink.split.i_crit_edge ]
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext %.sink47.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 49, i16 noundef zeroext %.sink.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 120, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 121, i16 noundef zeroext 3) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %do.end4.i.sw.epilog.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 112, i16 noundef zeroext 31) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 113, i16 noundef zeroext 5) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 114, i16 noundef zeroext 6) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 115, i16 noundef zeroext 6) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 116, i16 noundef zeroext 20) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 117, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 118, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 119, i16 noundef zeroext 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i43.i = icmp sgt i32 %7, 0
  br i1 %cmp.i43.i, label %do.end.i.i, label %sw.epilog.i.do.end3.i.i_crit_edge

sw.epilog.i.do.end3.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i.i) #10
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %sw.epilog.i.do.end3.i.i_crit_edge
  %8 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch.i.i = icmp ult i8 %9, 2
  %pYTable.0.i.i = select i1 %switch.i.i, ptr @ov51x_upload_quan_tables.yQuanTable511, ptr @ov51x_upload_quan_tables.yQuanTable518
  %pUVTable.0.i.i = select i1 %switch.i.i, ptr @ov51x_upload_quan_tables.uvQuanTable511, ptr @ov51x_upload_quan_tables.uvQuanTable518
  %size.0.i.i = select i1 %switch.i.i, i32 32, i32 16
  %10 = or i32 %size.0.i.i, 128
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end3.i.i
  %reg.064.i.i = phi i32 [ 128, %do.end3.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pUVTable.162.i.i = phi ptr [ %pUVTable.0.i.i, %do.end3.i.i ], [ %incdec.ptr26.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %pYTable.161.i.i = phi ptr [ %pYTable.0.i.i, %do.end3.i.i ], [ %incdec.ptr14.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %incdec.ptr.i44.i = getelementptr i8, ptr %pYTable.161.i.i, i32 1
  %11 = ptrtoint ptr %pYTable.161.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pYTable.161.i.i, align 1
  %incdec.ptr14.i.i = getelementptr i8, ptr %pYTable.161.i.i, i32 2
  %13 = ptrtoint ptr %incdec.ptr.i44.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.i44.i, align 1
  %15 = and i8 %12, 15
  %16 = shl i8 %14, 4
  %or59.i.i = or i8 %16, %15
  %conv23.i.i = trunc i32 %reg.064.i.i to i16
  %conv24.i.i = zext i8 %or59.i.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv23.i.i, i16 noundef zeroext %conv24.i.i) #7
  %incdec.ptr25.i.i = getelementptr i8, ptr %pUVTable.162.i.i, i32 1
  %17 = ptrtoint ptr %pUVTable.162.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pUVTable.162.i.i, align 1
  %incdec.ptr26.i.i = getelementptr i8, ptr %pUVTable.162.i.i, i32 2
  %19 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr25.i.i, align 1
  %21 = and i8 %18, 15
  %22 = shl i8 %20, 4
  %or3660.i.i = or i8 %22, %21
  %add.i.i = add nuw nsw i32 %reg.064.i.i, %size.0.i.i
  %conv38.i.i = trunc i32 %add.i.i to i16
  %conv39.i.i = zext i8 %or3660.i.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv38.i.i, i16 noundef zeroext %conv39.i.i) #7
  %inc.i.i = add nuw nsw i32 %reg.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.body.i.i.sw.epilog_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.sw.epilog_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge385
  %call.i171 = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 95) #7
  %23 = trunc i32 %call.i171 to i8
  %conv.i = and i8 %23, 31
  %revision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %24 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %revision.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i172 = icmp sgt i32 %25, 0
  br i1 %cmp.i172, label %do.end.i174, label %sw.bb2.do.end7.i_crit_edge

sw.bb2.do.end7.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i174:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %name.i173 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %conv.i to i32
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i173, i32 noundef %conv4.i) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i174, %sw.bb2.do.end7.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 64) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 225) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 62) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 225) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 225) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 70, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  %call.i.i175 = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %cmp5.i.i = icmp slt i32 %call.i.i175, 0
  br i1 %cmp5.i.i, label %do.end7.i.reg_w_mask.exit.i_crit_edge, label %if.end.i.i

do.end7.i.reg_w_mask.exit.i_crit_edge:            ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_mask.exit.i

if.end.i.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = trunc i32 %call.i.i175 to i8
  %27 = and i8 %26, -3
  %conv15.i.i = zext i8 %27 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 87, i16 noundef zeroext %conv15.i.i) #7
  br label %reg_w_mask.exit.i

reg_w_mask.exit.i:                                ; preds = %if.end.i.i, %do.end7.i.reg_w_mask.exit.i_crit_edge
  %28 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bridge, align 2
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %29, label %reg_w_mask.exit.i.sw.epilog.i178_crit_edge [
    i8 2, label %while.body.i28.preheader.i
    i8 3, label %while.body.i38.preheader.i
  ]

reg_w_mask.exit.i.sw.epilog.i178_crit_edge:       ; preds = %reg_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i178

while.body.i38.preheader.i:                       ; preds = %reg_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 49, i16 noundef zeroext 15) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 36, i16 noundef zeroext 159) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 37, i16 noundef zeroext 144) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 96) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 81, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 113, i16 noundef zeroext 25) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 64, i16 noundef zeroext 255) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 65, i16 noundef zeroext 66) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 70, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 51, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 25) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 63, i16 noundef zeroext 16) #7
  br label %sw.epilog.sink.split.i177

while.body.i28.preheader.i:                       ; preds = %reg_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 49, i16 noundef zeroext 15) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 36, i16 noundef zeroext 159) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 37, i16 noundef zeroext 144) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 81, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 113, i16 noundef zeroext 25) #7
  br label %sw.epilog.sink.split.i177

sw.epilog.sink.split.i177:                        ; preds = %while.body.i28.preheader.i, %while.body.i38.preheader.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 128) #7
  br label %sw.epilog.i178

sw.epilog.i178:                                   ; preds = %sw.epilog.sink.split.i177, %reg_w_mask.exit.i.sw.epilog.i178_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i40.i = icmp sgt i32 %31, 0
  br i1 %cmp.i40.i, label %do.end.i.i180, label %sw.epilog.i178.do.end3.i.i185_crit_edge

sw.epilog.i178.do.end3.i.i185_crit_edge:          ; preds = %sw.epilog.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i185

do.end.i.i180:                                    ; preds = %sw.epilog.i178
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i179 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i.i179) #10
  br label %do.end3.i.i185

do.end3.i.i185:                                   ; preds = %do.end.i.i180, %sw.epilog.i178.do.end3.i.i185_crit_edge
  %32 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %switch.i.i181 = icmp ult i8 %33, 2
  %pYTable.0.i.i182 = select i1 %switch.i.i181, ptr @ov51x_upload_quan_tables.yQuanTable511, ptr @ov51x_upload_quan_tables.yQuanTable518
  %pUVTable.0.i.i183 = select i1 %switch.i.i181, ptr @ov51x_upload_quan_tables.uvQuanTable511, ptr @ov51x_upload_quan_tables.uvQuanTable518
  %size.0.i.i184 = select i1 %switch.i.i181, i32 32, i32 16
  %34 = or i32 %size.0.i.i184, 128
  br label %for.body.i.i201

for.body.i.i201:                                  ; preds = %for.body.i.i201.for.body.i.i201_crit_edge, %do.end3.i.i185
  %reg.064.i.i186 = phi i32 [ 128, %do.end3.i.i185 ], [ %inc.i.i199, %for.body.i.i201.for.body.i.i201_crit_edge ]
  %pUVTable.162.i.i187 = phi ptr [ %pUVTable.0.i.i183, %do.end3.i.i185 ], [ %incdec.ptr26.i.i194, %for.body.i.i201.for.body.i.i201_crit_edge ]
  %pYTable.161.i.i188 = phi ptr [ %pYTable.0.i.i182, %do.end3.i.i185 ], [ %incdec.ptr14.i.i189, %for.body.i.i201.for.body.i.i201_crit_edge ]
  %incdec.ptr.i42.i = getelementptr i8, ptr %pYTable.161.i.i188, i32 1
  %35 = ptrtoint ptr %pYTable.161.i.i188 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pYTable.161.i.i188, align 1
  %incdec.ptr14.i.i189 = getelementptr i8, ptr %pYTable.161.i.i188, i32 2
  %37 = ptrtoint ptr %incdec.ptr.i42.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i42.i, align 1
  %39 = and i8 %36, 15
  %40 = shl i8 %38, 4
  %or59.i.i190 = or i8 %40, %39
  %conv23.i.i191 = trunc i32 %reg.064.i.i186 to i16
  %conv24.i.i192 = zext i8 %or59.i.i190 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv23.i.i191, i16 noundef zeroext %conv24.i.i192) #7
  %incdec.ptr25.i.i193 = getelementptr i8, ptr %pUVTable.162.i.i187, i32 1
  %41 = ptrtoint ptr %pUVTable.162.i.i187 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pUVTable.162.i.i187, align 1
  %incdec.ptr26.i.i194 = getelementptr i8, ptr %pUVTable.162.i.i187, i32 2
  %43 = ptrtoint ptr %incdec.ptr25.i.i193 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr25.i.i193, align 1
  %45 = and i8 %42, 15
  %46 = shl i8 %44, 4
  %or3660.i.i195 = or i8 %46, %45
  %add.i.i196 = add nuw nsw i32 %reg.064.i.i186, %size.0.i.i184
  %conv38.i.i197 = trunc i32 %add.i.i196 to i16
  %conv39.i.i198 = zext i8 %or3660.i.i195 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv38.i.i197, i16 noundef zeroext %conv39.i.i198) #7
  %inc.i.i199 = add nuw nsw i32 %reg.064.i.i186, 1
  %exitcond.not.i.i200 = icmp eq i32 %inc.i.i199, %34
  br i1 %exitcond.not.i.i200, label %ov518_configure.exit, label %for.body.i.i201.for.body.i.i201_crit_edge

for.body.i.i201.for.body.i.i201_crit_edge:        ; preds = %for.body.i.i201
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i201

ov518_configure.exit:                             ; preds = %for.body.i.i201
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 128) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 90, i16 noundef zeroext 109) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 155) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 84, i16 noundef zeroext 255) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 73, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 72, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 114, i16 noundef zeroext 238) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 81, i16 noundef zeroext 15) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 81, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 34, i16 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %stopped.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %47 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %stopped.i, align 1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 96) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 15, i16 noundef zeroext 29) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 233, i16 noundef zeroext 130) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 234, i16 noundef zeroext 199) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 235, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 236, i16 noundef zeroext 246) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -256) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -16617) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -16624) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 16) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 48) #7
  %stopped.i202 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %48 = ptrtoint ptr %stopped.i202 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %stopped.i202, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %ov518_configure.exit, %for.body.i.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %49 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %sensor, align 1
  %call = tail call fastcc i32 @init_ov_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i203 = icmp sgt i32 %50, 0
  br i1 %cmp.i203, label %do.end.i206, label %if.then.do.end3.i_crit_edge

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i206:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name.i204 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name.i204) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i206, %if.then.do.end3.i_crit_edge
  %call4.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end15.i

do.end9.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %name12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name12.i) #10
  br label %if.end25

if.end15.i:                                       ; preds = %do.end3.i
  %and.i = and i32 %call4.i, 3
  %51 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %and.i, label %do.end231.i [
    i32 3, label %if.then17.i
    i32 1, label %if.then57.i
    i32 0, label %if.then96.i
  ]

if.then17.i:                                      ; preds = %if.end15.i
  %call18.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 10) #7
  %call19.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 118, i32 %call18.i)
  %cmp20.i = icmp eq i32 %call18.i, 118
  %and21.i = and i32 %call19.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %and21.i)
  %cmp22.i = icmp eq i32 %and21.i, 112
  %or.cond.i = select i1 %cmp20.i, i1 %cmp22.i, i1 false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %52 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp25.i = icmp sgt i32 %52, 0
  br i1 %or.cond.i, label %do.body24.i, label %do.body38.i

do.body24.i:                                      ; preds = %if.then17.i
  br i1 %cmp25.i, label %do.end29.i, label %do.body24.i.if.end31.sink.split_crit_edge

do.body24.i.if.end31.sink.split_crit_edge:        ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end29.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  %name32.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name32.i, i32 noundef %call19.i) #10
  br label %if.end31.sink.split

do.body38.i:                                      ; preds = %if.then17.i
  br i1 %cmp25.i, label %do.end43.i, label %do.body38.i.if.end31.sink.split_crit_edge

do.body38.i.if.end31.sink.split_crit_edge:        ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end43.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  %name46.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name46.i) #10
  br label %if.end31.sink.split

if.then57.i:                                      ; preds = %if.end15.i
  %call58.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 21) #7
  %and59.i = and i32 %call58.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool.not.i = icmp eq i32 %and59.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %53 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp78.i = icmp sgt i32 %53, 0
  br i1 %tobool.not.i, label %do.body77.i, label %do.body61.i

do.body61.i:                                      ; preds = %if.then57.i
  br i1 %cmp78.i, label %do.end66.i, label %do.body61.i.if.end31.sink.split_crit_edge

do.body61.i.if.end31.sink.split_crit_edge:        ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end66.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #9
  %name69.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name69.i) #10
  br label %if.end31.sink.split

do.body77.i:                                      ; preds = %if.then57.i
  br i1 %cmp78.i, label %do.end82.i, label %do.body77.i.if.end31.sink.split_crit_edge

do.body77.i.if.end31.sink.split_crit_edge:        ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end82.i:                                       ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  %name85.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name85.i) #10
  br label %if.end31.sink.split

if.then96.i:                                      ; preds = %if.end15.i
  %call97.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %cmp98.i = icmp slt i32 %call97.i, 0
  br i1 %cmp98.i, label %do.end102.i, label %if.end108.i

do.end102.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  %name105.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name105.i) #10
  br label %if.end25

if.end108.i:                                      ; preds = %if.then96.i
  %call109.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %cmp110.i = icmp slt i32 %call109.i, 0
  br i1 %cmp110.i, label %do.end114.i, label %if.end120.i

do.end114.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  %name117.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name117.i) #10
  br label %if.end25

if.end120.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 118, i32 %call97.i)
  %cmp121.i = icmp eq i32 %call97.i, 118
  br i1 %cmp121.i, label %if.then122.i, label %do.body212.i

if.then122.i:                                     ; preds = %if.end120.i
  %54 = zext i32 %call109.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %call109.i, label %do.end205.i [
    i32 48, label %do.end125.i
    i32 64, label %do.body140.i
    i32 69, label %do.body156.i
    i32 72, label %do.body172.i
    i32 96, label %do.body188.i
  ]

do.end125.i:                                      ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #9
  %name128.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name128.i) #10
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name128.i) #10
  br label %if.end25

do.body140.i:                                     ; preds = %if.then122.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %55 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp141.i = icmp sgt i32 %55, 0
  br i1 %cmp141.i, label %do.end145.i, label %do.body140.i.if.end31.sink.split_crit_edge

do.body140.i.if.end31.sink.split_crit_edge:       ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end145.i:                                      ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #9
  %name148.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name148.i) #10
  br label %if.end31.sink.split

do.body156.i:                                     ; preds = %if.then122.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %56 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp157.i = icmp sgt i32 %56, 0
  br i1 %cmp157.i, label %do.end161.i, label %do.body156.i.if.end31.sink.split_crit_edge

do.body156.i.if.end31.sink.split_crit_edge:       ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end161.i:                                      ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #9
  %name164.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name164.i) #10
  br label %if.end31.sink.split

do.body172.i:                                     ; preds = %if.then122.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %57 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp173.i = icmp sgt i32 %57, 0
  br i1 %cmp173.i, label %do.end177.i, label %do.body172.i.if.end31.sink.split_crit_edge

do.body172.i.if.end31.sink.split_crit_edge:       ; preds = %do.body172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end177.i:                                      ; preds = %do.body172.i
  call void @__sanitizer_cov_trace_pc() #9
  %name180.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call182.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name180.i) #10
  br label %if.end31.sink.split

do.body188.i:                                     ; preds = %if.then122.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %58 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp189.i = icmp sgt i32 %58, 0
  br i1 %cmp189.i, label %do.end193.i, label %do.body188.i.if.end31.sink.split_crit_edge

do.body188.i.if.end31.sink.split_crit_edge:       ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end193.i:                                      ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #9
  %name196.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call198.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name196.i) #10
  br label %if.end31.sink.split

do.end205.i:                                      ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #9
  %name208.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call210.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name208.i, i32 noundef %call109.i) #10
  br label %if.end25

do.body212.i:                                     ; preds = %if.end120.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %59 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp213.i = icmp sgt i32 %59, 0
  br i1 %cmp213.i, label %do.end217.i, label %do.body212.i.if.end31.sink.split_crit_edge

do.body212.i.if.end31.sink.split_crit_edge:       ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end217.i:                                      ; preds = %do.body212.i
  call void @__sanitizer_cov_trace_pc() #9
  %name220.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call222.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name220.i) #10
  br label %if.end31.sink.split

do.end231.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %name234.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call237.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name234.i, i32 noundef %and.i) #10
  br label %if.end25

if.else:                                          ; preds = %sw.epilog
  %call7 = tail call fastcc i32 @init_ov_sensor(ptr noundef %gspca_dev, i8 noundef zeroext -64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i207 = icmp sgt i32 %60, 0
  br i1 %cmp.i207, label %do.end.i210, label %if.then10.do.end3.i213_crit_edge

if.then10.do.end3.i213_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i213

do.end.i210:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %name.i208 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name.i208) #10
  br label %do.end3.i213

do.end3.i213:                                     ; preds = %do.end.i210, %if.then10.do.end3.i213_crit_edge
  %call4.i211 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i211)
  %cmp5.i212 = icmp slt i32 %call4.i211, 0
  br i1 %cmp5.i212, label %do.end9.i216, label %if.end15.i217

do.end9.i216:                                     ; preds = %do.end3.i213
  call void @__sanitizer_cov_trace_pc() #9
  %name12.i214 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call14.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name12.i214) #10
  br label %if.end25

if.end15.i217:                                    ; preds = %do.end3.i213
  %61 = zext i32 %call4.i211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %call4.i211, label %do.end78.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb21.i
    i32 2, label %sw.bb37.i
    i32 3, label %sw.bb53.i
    i32 144, label %sw.bb69.i
  ]

sw.bb.i:                                          ; preds = %if.end15.i217
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %sensor, align 1
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #10
  br label %sw.epilog.i219

sw.bb21.i:                                        ; preds = %if.end15.i217
  %63 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %sensor, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %64 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp24.i = icmp sgt i32 %64, 0
  br i1 %cmp24.i, label %do.end28.i, label %sw.bb21.i.sw.epilog.i219_crit_edge

sw.bb21.i.sw.epilog.i219_crit_edge:               ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i219

do.end28.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #9
  %name31.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name31.i) #10
  br label %sw.epilog.i219

sw.bb37.i:                                        ; preds = %if.end15.i217
  %65 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 4, ptr %sensor, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %66 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp40.i = icmp sgt i32 %66, 0
  br i1 %cmp40.i, label %do.end44.i, label %sw.bb37.i.sw.epilog.i219_crit_edge

sw.bb37.i.sw.epilog.i219_crit_edge:               ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i219

do.end44.i:                                       ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #9
  %name47.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name47.i) #10
  br label %sw.epilog.i219

sw.bb53.i:                                        ; preds = %if.end15.i217
  %67 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 5, ptr %sensor, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %68 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp56.i = icmp sgt i32 %68, 0
  br i1 %cmp56.i, label %do.end60.i, label %sw.bb53.i.sw.epilog.i219_crit_edge

sw.bb53.i.sw.epilog.i219_crit_edge:               ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i219

do.end60.i:                                       ; preds = %sw.bb53.i
  call void @__sanitizer_cov_trace_pc() #9
  %name63.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name63.i) #10
  br label %sw.epilog.i219

sw.bb69.i:                                        ; preds = %if.end15.i217
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %sensor, align 1
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #10
  br label %sw.epilog.i219

do.end78.i:                                       ; preds = %if.end15.i217
  call void @__sanitizer_cov_trace_pc() #9
  %name81.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name81.i, i32 noundef %call4.i211) #10
  br label %if.end25

sw.epilog.i219:                                   ; preds = %sw.bb69.i, %do.end60.i, %sw.bb53.i.sw.epilog.i219_crit_edge, %do.end44.i, %sw.bb37.i.sw.epilog.i219_crit_edge, %do.end28.i, %sw.bb21.i.sw.epilog.i219_crit_edge, %sw.bb.i
  %sif.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %70 = ptrtoint ptr %sif.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %sif.i, align 2
  br label %if.end25

if.else11:                                        ; preds = %if.else
  %call12 = tail call fastcc i32 @init_ov_sensor(ptr noundef %gspca_dev, i8 noundef zeroext -96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %cmp13 = icmp sgt i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %71 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i220 = icmp sgt i32 %71, 0
  br i1 %cmp.i220, label %do.end.i223, label %if.then15.do.end3.i226_crit_edge

if.then15.do.end3.i226_crit_edge:                 ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i226

do.end.i223:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %name.i221 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name.i221) #10
  br label %do.end3.i226

do.end3.i226:                                     ; preds = %do.end.i223, %if.then15.do.end3.i226_crit_edge
  %call4.i224 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i224)
  %cmp5.i225 = icmp slt i32 %call4.i224, 0
  br i1 %cmp5.i225, label %do.end9.i229, label %if.end15.i231

do.end9.i229:                                     ; preds = %do.end3.i226
  call void @__sanitizer_cov_trace_pc() #9
  %name12.i227 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call14.i228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name12.i227) #10
  br label %if.end25

if.end15.i231:                                    ; preds = %do.end3.i226
  %and.i230 = and i32 %call4.i224, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i230)
  %cmp16.i = icmp eq i32 %and.i230, 1
  br i1 %cmp16.i, label %if.end15.i231.if.end31.sink.split_crit_edge, label %do.end20.i

if.end15.i231.if.end31.sink.split_crit_edge:      ; preds = %if.end15.i231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end20.i:                                       ; preds = %if.end15.i231
  call void @__sanitizer_cov_trace_pc() #9
  %name23.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name23.i, i32 noundef %and.i230) #10
  br label %if.end25

if.else16:                                        ; preds = %if.else11
  %call17 = tail call fastcc i32 @init_ov_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, -1
  br i1 %cmp18, label %if.then20, label %do.end

if.then20:                                        ; preds = %if.else16
  %72 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %73)
  %cmp.not.i = icmp eq i8 %73, 5
  br i1 %cmp.not.i, label %do.body2.i, label %do.end.i237

do.end.i237:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %name.i235 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name.i235) #10
  br label %if.end25

do.body2.i:                                       ; preds = %if.then20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %74 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp3.i = icmp sgt i32 %74, 0
  br i1 %cmp3.i, label %do.end8.i, label %do.body2.i.do.end16.i_crit_edge

do.body2.i.do.end16.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

do.end8.i:                                        ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %name11.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name11.i) #10
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end8.i, %do.body2.i.do.end16.i_crit_edge
  %call17.i = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 10) #7
  %call18.i238 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 11) #7
  %75 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %call17.i, label %do.end16.i.do.end93.i_crit_edge [
    i32 150, label %sw.bb.i239
    i32 54, label %sw.bb69.i242
  ]

do.end16.i.do.end93.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93.i

sw.bb.i239:                                       ; preds = %do.end16.i
  %76 = zext i32 %call18.i238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %call18.i238, label %sw.bb.i239.do.end93.i_crit_edge [
    i32 64, label %do.body20.i
    i32 65, label %do.body36.i
    i32 177, label %do.body53.i
  ]

sw.bb.i239.do.end93.i_crit_edge:                  ; preds = %sw.bb.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93.i

do.body20.i:                                      ; preds = %sw.bb.i239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp21.i = icmp sgt i32 %77, 0
  br i1 %cmp21.i, label %do.end26.i, label %do.body20.i.if.end31.sink.split_crit_edge

do.body20.i.if.end31.sink.split_crit_edge:        ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  %name29.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %name29.i) #10
  br label %if.end31.sink.split

do.body36.i:                                      ; preds = %sw.bb.i239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %78 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp37.i = icmp sgt i32 %78, 0
  br i1 %cmp37.i, label %do.end42.i, label %do.body36.i.if.end31.sink.split_crit_edge

do.body36.i.if.end31.sink.split_crit_edge:        ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end42.i:                                       ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #9
  %name45.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %name45.i) #10
  br label %if.end31.sink.split

do.body53.i:                                      ; preds = %sw.bb.i239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %79 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp54.i = icmp sgt i32 %79, 0
  br i1 %cmp54.i, label %do.end59.i, label %do.body53.i.if.end31.sink.split_crit_edge

do.body53.i.if.end31.sink.split_crit_edge:        ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end59.i:                                       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #9
  %name62.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name62.i) #10
  br label %if.end31.sink.split

sw.bb69.i242:                                     ; preds = %do.end16.i
  %and.i241 = and i32 %call18.i238, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i241)
  %cmp70.i = icmp eq i32 %and.i241, 0
  br i1 %cmp70.i, label %do.body73.i, label %sw.bb69.i242.do.end93.i_crit_edge

sw.bb69.i242.do.end93.i_crit_edge:                ; preds = %sw.bb69.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93.i

do.body73.i:                                      ; preds = %sw.bb69.i242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %80 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp74.i = icmp sgt i32 %80, 0
  br i1 %cmp74.i, label %do.end79.i, label %do.body73.i.if.end31.sink.split_crit_edge

do.body73.i.if.end31.sink.split_crit_edge:        ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #9
  %name82.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name82.i) #10
  br label %if.end31.sink.split

do.end93.i:                                       ; preds = %sw.bb69.i242.do.end93.i_crit_edge, %sw.bb.i239.do.end93.i_crit_edge, %do.end16.i.do.end93.i_crit_edge
  %name96.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %name96.i, i32 noundef %call17.i, i32 noundef %call18.i238) #10
  br label %if.end25

do.end:                                           ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #10
  br label %do.end95

if.end25:                                         ; preds = %do.end93.i, %do.end.i237, %do.end20.i, %do.end9.i229, %sw.epilog.i219, %do.end78.i, %do.end9.i216, %do.end231.i, %do.end205.i, %do.end125.i, %do.end114.i, %do.end102.i, %do.end9.i
  %81 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp28 = icmp slt i8 %.pr, 0
  br i1 %cmp28, label %if.end25.do.end95_crit_edge, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end25.do.end95_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

if.end31.sink.split:                              ; preds = %do.end79.i, %do.body73.i.if.end31.sink.split_crit_edge, %do.end59.i, %do.body53.i.if.end31.sink.split_crit_edge, %do.end42.i, %do.body36.i.if.end31.sink.split_crit_edge, %do.end26.i, %do.body20.i.if.end31.sink.split_crit_edge, %if.end15.i231.if.end31.sink.split_crit_edge, %do.end217.i, %do.body212.i.if.end31.sink.split_crit_edge, %do.end193.i, %do.body188.i.if.end31.sink.split_crit_edge, %do.end177.i, %do.body172.i.if.end31.sink.split_crit_edge, %do.end161.i, %do.body156.i.if.end31.sink.split_crit_edge, %do.end145.i, %do.body140.i.if.end31.sink.split_crit_edge, %do.end82.i, %do.body77.i.if.end31.sink.split_crit_edge, %do.end66.i, %do.body61.i.if.end31.sink.split_crit_edge, %do.end43.i, %do.body38.i.if.end31.sink.split_crit_edge, %do.end29.i, %do.body24.i.if.end31.sink.split_crit_edge
  %.sink = phi i8 [ 12, %do.end29.i ], [ 12, %do.body24.i.if.end31.sink.split_crit_edge ], [ 6, %do.end43.i ], [ 6, %do.body38.i.if.end31.sink.split_crit_edge ], [ 8, %do.end66.i ], [ 8, %do.body61.i.if.end31.sink.split_crit_edge ], [ 13, %do.end82.i ], [ 13, %do.body77.i.if.end31.sink.split_crit_edge ], [ 9, %do.end145.i ], [ 9, %do.body140.i.if.end31.sink.split_crit_edge ], [ 9, %do.end161.i ], [ 9, %do.body156.i.if.end31.sink.split_crit_edge ], [ 10, %do.end177.i ], [ 10, %do.body172.i.if.end31.sink.split_crit_edge ], [ 11, %do.end193.i ], [ 11, %do.body188.i.if.end31.sink.split_crit_edge ], [ 7, %do.end217.i ], [ 7, %do.body212.i.if.end31.sink.split_crit_edge ], [ 14, %if.end15.i231.if.end31.sink.split_crit_edge ], [ 0, %do.end26.i ], [ 0, %do.body20.i.if.end31.sink.split_crit_edge ], [ 1, %do.end42.i ], [ 1, %do.body36.i.if.end31.sink.split_crit_edge ], [ 15, %do.end59.i ], [ 15, %do.body53.i.if.end31.sink.split_crit_edge ], [ 2, %do.end79.i ], [ 2, %do.body73.i.if.end31.sink.split_crit_edge ]
  %82 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %.sink, ptr %sensor, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end25.if.end31_crit_edge
  tail call fastcc void @ov51x_led_control(ptr noundef %gspca_dev, i32 noundef 0)
  %83 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bridge, align 2
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.198)
  switch i8 %84, label %if.end31.sw.epilog76_crit_edge [
    i8 0, label %if.end31.sw.bb34_crit_edge
    i8 1, label %if.end31.sw.bb34_crit_edge386
    i8 2, label %if.end31.sw.bb37_crit_edge
    i8 3, label %if.end31.sw.bb37_crit_edge387
    i8 4, label %sw.bb44
    i8 5, label %sw.bb51
    i8 6, label %sw.bb70
  ]

if.end31.sw.bb37_crit_edge387:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end31.sw.bb37_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb37

if.end31.sw.bb34_crit_edge386:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

if.end31.sw.bb34_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

if.end31.sw.epilog76_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

sw.bb34:                                          ; preds = %if.end31.sw.bb34_crit_edge, %if.end31.sw.bb34_crit_edge386
  %sif = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %86 = ptrtoint ptr %sif to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sif, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not = icmp eq i8 %87, 0
  br i1 %tobool.not, label %sw.bb34.sw.epilog76_crit_edge, label %if.then35

sw.bb34.sw.epilog76_crit_edge:                    ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.then35:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @ov511_sif_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %89 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %nmodes, align 4
  br label %sw.epilog76

sw.bb37:                                          ; preds = %if.end31.sw.bb37_crit_edge, %if.end31.sw.bb37_crit_edge387
  %sif38 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %90 = ptrtoint ptr %sif38 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sif38, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool39.not = icmp eq i8 %91, 0
  br i1 %tobool39.not, label %sw.bb37.sw.epilog76_crit_edge, label %if.then40

sw.bb37.sw.epilog76_crit_edge:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @ov518_sif_mode, ptr %cam1, align 4
  %nmodes42 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %93 = ptrtoint ptr %nmodes42 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %nmodes42, align 4
  br label %sw.epilog76

sw.bb44:                                          ; preds = %if.end31
  %sif45 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %94 = ptrtoint ptr %sif45 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sif45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool46.not = icmp eq i8 %95, 0
  br i1 %tobool46.not, label %sw.bb44.sw.epilog76_crit_edge, label %if.then47

sw.bb44.sw.epilog76_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @ov519_sif_mode, ptr %cam1, align 4
  %nmodes49 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %97 = ptrtoint ptr %nmodes49 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %nmodes49, align 4
  br label %sw.epilog76

sw.bb51:                                          ; preds = %if.end31
  %98 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sensor, align 1
  %conv53 = sext i8 %99 to i32
  %100 = zext i32 %conv53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %conv53, label %sw.default [
    i32 0, label %sw.bb51.sw.bb54_crit_edge
    i32 1, label %sw.bb51.sw.bb54_crit_edge388
    i32 2, label %sw.bb57
    i32 15, label %sw.bb60
  ]

sw.bb51.sw.bb54_crit_edge388:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

sw.bb51.sw.bb54_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb51.sw.bb54_crit_edge, %sw.bb51.sw.bb54_crit_edge388
  %101 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @ovfx2_ov2610_mode, ptr %cam1, align 4
  %nmodes56 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %102 = ptrtoint ptr %nmodes56 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %nmodes56, align 4
  br label %sw.epilog76

sw.bb57:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @ovfx2_ov3610_mode, ptr %cam1, align 4
  %nmodes59 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %104 = ptrtoint ptr %nmodes59 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 5, ptr %nmodes59, align 4
  br label %sw.epilog76

sw.bb60:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @ovfx2_ov9600_mode, ptr %cam1, align 4
  %nmodes62 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %106 = ptrtoint ptr %nmodes62 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %nmodes62, align 4
  br label %sw.epilog76

sw.default:                                       ; preds = %sw.bb51
  %sif63 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %107 = ptrtoint ptr %sif63 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sif63, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool64.not = icmp eq i8 %108, 0
  br i1 %tobool64.not, label %sw.default.sw.epilog76_crit_edge, label %if.then65

sw.default.sw.epilog76_crit_edge:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.then65:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @ov519_sif_mode, ptr %cam1, align 4
  %nmodes67 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %110 = ptrtoint ptr %nmodes67 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 4, ptr %nmodes67, align 4
  br label %sw.epilog76

sw.bb70:                                          ; preds = %if.end31
  %sif71 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %111 = ptrtoint ptr %sif71 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %sif71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool72.not = icmp eq i8 %112, 0
  br i1 %tobool72.not, label %sw.bb70.if.end75_crit_edge, label %if.then73

sw.bb70.if.end75_crit_edge:                       ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then73:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  %nmodes74 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %113 = ptrtoint ptr %nmodes74 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 4, ptr %nmodes74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %sw.bb70.if.end75_crit_edge
  %cond.i = phi i32 [ 202752, %if.then73 ], [ 614400, %sw.bb70.if.end75_crit_edge ]
  %div82.i = lshr exact i32 %cond.i, 1
  %div183.i = lshr exact i32 %cond.i, 2
  %add2.i = add nuw nsw i32 %div82.i, %div183.i
  %add4.i = add nuw nsw i32 %add2.i, %div183.i
  %add6.i = add nuw nsw i32 %add4.i, %div82.i
  %add8.i = add nuw nsw i32 %add6.i, %div183.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -256) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -16624) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 3, i16 noundef zeroext 16477) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 4, i16 noundef zeroext 48) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 0) #7
  %conv12.i = trunc i32 %div82.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 36, i16 noundef zeroext %conv12.i) #7
  %shr13.i = lshr i32 %cond.i, 17
  %conv14.i = trunc i32 %shr13.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 37, i16 noundef zeroext %conv14.i) #7
  %conv16.i = trunc i32 %add2.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 40, i16 noundef zeroext %conv16.i) #7
  %shr17.i = lshr i32 %add2.i, 16
  %conv18.i = trunc i32 %shr17.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 41, i16 noundef zeroext %conv18.i) #7
  %conv20.i = trunc i32 %add4.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 34, i16 noundef zeroext %conv20.i) #7
  %shr21.i = lshr i32 %add4.i, 16
  %conv22.i = trunc i32 %shr21.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext %conv22.i) #7
  %114 = trunc i32 %add6.i to i16
  %conv24.i = and i16 %114, -512
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 38, i16 noundef zeroext %conv24.i) #7
  %shr25.i = lshr i32 %add6.i, 16
  %conv26.i = trunc i32 %shr25.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 39, i16 noundef zeroext %conv26.i) #7
  %conv28.i = trunc i32 %add8.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 42, i16 noundef zeroext %conv28.i) #7
  %shr29.i = lshr i32 %add8.i, 16
  %conv30.i = trunc i32 %shr29.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 43, i16 noundef zeroext %conv30.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 50, i16 noundef zeroext %conv20.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 51, i16 noundef zeroext %conv22.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 52, i16 noundef zeroext %conv20.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 53, i16 noundef zeroext %conv22.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 54, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 2052) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 56, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 63, i16 noundef zeroext 0) #7
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %if.end75, %if.then65, %sw.default.sw.epilog76_crit_edge, %sw.bb60, %sw.bb57, %sw.bb54, %if.then47, %sw.bb44.sw.epilog76_crit_edge, %if.then40, %sw.bb37.sw.epilog76_crit_edge, %if.then35, %sw.bb34.sw.epilog76_crit_edge, %if.end31.sw.epilog76_crit_edge
  %115 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %sensor, align 1
  %conv78 = sext i8 %116 to i32
  %117 = zext i32 %conv78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %conv78, label %sw.epilog76.while.body.i298_crit_edge [
    i32 0, label %while.body.i.preheader
    i32 1, label %while.body.i254.preheader
    i32 2, label %sw.epilog76.while.body.i268_crit_edge
    i32 3, label %sw.epilog76.while.body.i282_crit_edge
    i32 4, label %sw.epilog76.while.body.i290.preheader_crit_edge
    i32 5, label %sw.epilog76.while.body.i290.preheader_crit_edge389
    i32 7, label %sw.epilog76.while.body.i311.preheader_crit_edge
    i32 8, label %sw.epilog76.while.body.i311.preheader_crit_edge390
    i32 9, label %sw.epilog76.sw.bb86_crit_edge
    i32 10, label %sw.epilog76.sw.bb86_crit_edge391
    i32 11, label %sw.bb87
    i32 12, label %sw.epilog76.while.body.i341_crit_edge
    i32 14, label %sw.epilog76.while.body.i349_crit_edge
    i32 15, label %while.body.i357.preheader
  ]

sw.epilog76.while.body.i349_crit_edge:            ; preds = %sw.epilog76
  br label %while.body.i349

sw.epilog76.while.body.i341_crit_edge:            ; preds = %sw.epilog76
  br label %while.body.i341

sw.epilog76.sw.bb86_crit_edge391:                 ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb86

sw.epilog76.sw.bb86_crit_edge:                    ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb86

sw.epilog76.while.body.i311.preheader_crit_edge390: ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i311.preheader

sw.epilog76.while.body.i311.preheader_crit_edge:  ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i311.preheader

sw.epilog76.while.body.i290.preheader_crit_edge389: ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i290.preheader

sw.epilog76.while.body.i290.preheader_crit_edge:  ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i290.preheader

sw.epilog76.while.body.i282_crit_edge:            ; preds = %sw.epilog76
  br label %while.body.i282

sw.epilog76.while.body.i268_crit_edge:            ; preds = %sw.epilog76
  br label %while.body.i268

sw.epilog76.while.body.i298_crit_edge:            ; preds = %sw.epilog76
  br label %while.body.i298

while.body.i311.preheader:                        ; preds = %sw.epilog76.while.body.i311.preheader_crit_edge, %sw.epilog76.while.body.i311.preheader_crit_edge390
  br label %while.body.i311

while.body.i290.preheader:                        ; preds = %sw.epilog76.while.body.i290.preheader_crit_edge, %sw.epilog76.while.body.i290.preheader_crit_edge389
  br label %while.body.i290

while.body.i357.preheader:                        ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 12, i8 noundef zeroext 40) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext -128) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext -75) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 20, i8 noundef zeroext 62) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 27, i8 noundef zeroext 4) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 36, i8 noundef zeroext -80) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 37, i8 noundef zeroext -112) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 38, i8 noundef zeroext -108) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 53, i8 noundef zeroext -112) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 55, i8 noundef zeroext 7) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 56, i8 noundef zeroext 8) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 1, i8 noundef zeroext -114) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 2, i8 noundef zeroext -123) #7
  br label %sw.epilog92

while.body.i254.preheader:                        ; preds = %sw.epilog76
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext -51) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 9, i8 noundef zeroext 1) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 13, i8 noundef zeroext 0) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext -128) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext 32) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 51, i8 noundef zeroext 12) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 53, i8 noundef zeroext -112) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 54, i8 noundef zeroext 55) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 17, i8 noundef zeroext -125) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 45, i8 noundef zeroext 0) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 36, i8 noundef zeroext -80) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 37, i8 noundef zeroext -112) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 16, i8 noundef zeroext 67) #7
  %call.i256 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %cmp.i257 = icmp slt i32 %call.i256, 0
  br i1 %cmp.i257, label %while.body.i254.preheader.sw.epilog92_crit_edge, label %if.end.i260

while.body.i254.preheader.sw.epilog92_crit_edge:  ; preds = %while.body.i254.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

while.body.i.preheader:                           ; preds = %sw.epilog76
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #7
  %call.i246 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp.i247 = icmp slt i32 %call.i246, 0
  br i1 %cmp.i247, label %while.body.i.preheader.sw.epilog92_crit_edge, label %if.end.i

while.body.i.preheader.sw.epilog92_crit_edge:     ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

if.end.i:                                         ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %118 = trunc i32 %call.i246 to i8
  %conv9.i = or i8 %118, 39
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i) #7
  br label %sw.epilog92

if.end.i260:                                      ; preds = %while.body.i254.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %119 = trunc i32 %call.i256 to i8
  %conv9.i259 = or i8 %119, 5
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i259) #7
  br label %sw.epilog92

while.body.i268:                                  ; preds = %while.body.i268.while.body.i268_crit_edge, %sw.epilog76.while.body.i268_crit_edge
  %dec6.i262 = phi i32 [ %dec.i266, %while.body.i268.while.body.i268_crit_edge ], [ 63, %sw.epilog76.while.body.i268_crit_edge ]
  %regvals.addr.05.i263 = phi ptr [ %incdec.ptr.i265, %while.body.i268.while.body.i268_crit_edge ], [ @norm_3620b, %sw.epilog76.while.body.i268_crit_edge ]
  %120 = ptrtoint ptr %regvals.addr.05.i263 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %regvals.addr.05.i263, align 1
  %val.i264 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i263, i32 0, i32 1
  %122 = ptrtoint ptr %val.i264 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %val.i264, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %121, i8 noundef zeroext %123) #7
  %incdec.ptr.i265 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i263, i32 1
  %dec.i266 = add nsw i32 %dec6.i262, -1
  %cmp.i267.not = icmp eq i32 %dec6.i262, 0
  br i1 %cmp.i267.not, label %write_i2c_regvals.exit269, label %while.body.i268.while.body.i268_crit_edge

while.body.i268.while.body.i268_crit_edge:        ; preds = %while.body.i268
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i268

write_i2c_regvals.exit269:                        ; preds = %while.body.i268
  %call.i270 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp.i271 = icmp slt i32 %call.i270, 0
  br i1 %cmp.i271, label %write_i2c_regvals.exit269.sw.epilog92_crit_edge, label %if.end.i274

write_i2c_regvals.exit269.sw.epilog92_crit_edge:  ; preds = %write_i2c_regvals.exit269
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

if.end.i274:                                      ; preds = %write_i2c_regvals.exit269
  call void @__sanitizer_cov_trace_pc() #9
  %124 = trunc i32 %call.i270 to i8
  %conv9.i273 = or i8 %124, 39
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i273) #7
  br label %sw.epilog92

while.body.i282:                                  ; preds = %while.body.i282.while.body.i282_crit_edge, %sw.epilog76.while.body.i282_crit_edge
  %dec6.i276 = phi i32 [ %dec.i280, %while.body.i282.while.body.i282_crit_edge ], [ 28, %sw.epilog76.while.body.i282_crit_edge ]
  %regvals.addr.05.i277 = phi ptr [ %incdec.ptr.i279, %while.body.i282.while.body.i282_crit_edge ], [ @norm_6x20, %sw.epilog76.while.body.i282_crit_edge ]
  %125 = ptrtoint ptr %regvals.addr.05.i277 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %regvals.addr.05.i277, align 1
  %val.i278 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i277, i32 0, i32 1
  %127 = ptrtoint ptr %val.i278 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %val.i278, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %126, i8 noundef zeroext %128) #7
  %incdec.ptr.i279 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i277, i32 1
  %dec.i280 = add nsw i32 %dec6.i276, -1
  %cmp.i281.not = icmp eq i32 %dec6.i276, 0
  br i1 %cmp.i281.not, label %while.body.i282.sw.epilog92_crit_edge, label %while.body.i282.while.body.i282_crit_edge

while.body.i282.while.body.i282_crit_edge:        ; preds = %while.body.i282
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i282

while.body.i282.sw.epilog92_crit_edge:            ; preds = %while.body.i282
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

while.body.i290:                                  ; preds = %while.body.i290.while.body.i290_crit_edge, %while.body.i290.preheader
  %dec6.i284 = phi i32 [ %dec.i288, %while.body.i290.while.body.i290_crit_edge ], [ 81, %while.body.i290.preheader ]
  %regvals.addr.05.i285 = phi ptr [ %incdec.ptr.i287, %while.body.i290.while.body.i290_crit_edge ], [ @norm_6x30, %while.body.i290.preheader ]
  %129 = ptrtoint ptr %regvals.addr.05.i285 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %regvals.addr.05.i285, align 1
  %val.i286 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i285, i32 0, i32 1
  %131 = ptrtoint ptr %val.i286 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %val.i286, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %130, i8 noundef zeroext %132) #7
  %incdec.ptr.i287 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i285, i32 1
  %dec.i288 = add nsw i32 %dec6.i284, -1
  %cmp.i289.not = icmp eq i32 %dec6.i284, 0
  br i1 %cmp.i289.not, label %while.body.i290.sw.epilog92_crit_edge, label %while.body.i290.while.body.i290_crit_edge

while.body.i290.while.body.i290_crit_edge:        ; preds = %while.body.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i290

while.body.i290.sw.epilog92_crit_edge:            ; preds = %while.body.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

while.body.i298:                                  ; preds = %while.body.i298.while.body.i298_crit_edge, %sw.epilog76.while.body.i298_crit_edge
  %dec6.i292 = phi i32 [ %dec.i296, %while.body.i298.while.body.i298_crit_edge ], [ 26, %sw.epilog76.while.body.i298_crit_edge ]
  %regvals.addr.05.i293 = phi ptr [ %incdec.ptr.i295, %while.body.i298.while.body.i298_crit_edge ], [ @norm_7610, %sw.epilog76.while.body.i298_crit_edge ]
  %133 = ptrtoint ptr %regvals.addr.05.i293 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %regvals.addr.05.i293, align 1
  %val.i294 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i293, i32 0, i32 1
  %135 = ptrtoint ptr %val.i294 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %val.i294, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %134, i8 noundef zeroext %136) #7
  %incdec.ptr.i295 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i293, i32 1
  %dec.i296 = add nsw i32 %dec6.i292, -1
  %cmp.i297.not = icmp eq i32 %dec6.i292, 0
  br i1 %cmp.i297.not, label %write_i2c_regvals.exit299, label %while.body.i298.while.body.i298_crit_edge

while.body.i298.while.body.i298_crit_edge:        ; preds = %while.body.i298
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i298

write_i2c_regvals.exit299:                        ; preds = %while.body.i298
  %call.i300 = tail call fastcc i32 @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %cmp.i301 = icmp slt i32 %call.i300, 0
  br i1 %cmp.i301, label %write_i2c_regvals.exit299.sw.epilog92_crit_edge, label %if.end.i303

write_i2c_regvals.exit299.sw.epilog92_crit_edge:  ; preds = %write_i2c_regvals.exit299
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

if.end.i303:                                      ; preds = %write_i2c_regvals.exit299
  call void @__sanitizer_cov_trace_pc() #9
  %137 = trunc i32 %call.i300 to i8
  %138 = and i8 %137, -65
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 14, i8 noundef zeroext %138) #7
  br label %sw.epilog92

while.body.i311:                                  ; preds = %while.body.i311.while.body.i311_crit_edge, %while.body.i311.preheader
  %dec6.i305 = phi i32 [ %dec.i309, %while.body.i311.while.body.i311_crit_edge ], [ 63, %while.body.i311.preheader ]
  %regvals.addr.05.i306 = phi ptr [ %incdec.ptr.i308, %while.body.i311.while.body.i311_crit_edge ], [ @norm_7620, %while.body.i311.preheader ]
  %139 = ptrtoint ptr %regvals.addr.05.i306 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %regvals.addr.05.i306, align 1
  %val.i307 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i306, i32 0, i32 1
  %141 = ptrtoint ptr %val.i307 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %val.i307, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %140, i8 noundef zeroext %142) #7
  %incdec.ptr.i308 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i306, i32 1
  %dec.i309 = add nsw i32 %dec6.i305, -1
  %cmp.i310.not = icmp eq i32 %dec6.i305, 0
  br i1 %cmp.i310.not, label %while.body.i311.sw.epilog92_crit_edge, label %while.body.i311.while.body.i311_crit_edge

while.body.i311.while.body.i311_crit_edge:        ; preds = %while.body.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i311

while.body.i311.sw.epilog92_crit_edge:            ; preds = %while.body.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

sw.bb86:                                          ; preds = %sw.epilog76.sw.bb86_crit_edge, %sw.epilog76.sw.bb86_crit_edge391
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext 20) #7
  br label %sw.epilog92

sw.bb87:                                          ; preds = %sw.epilog76
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 18, i8 noundef zeroext -128)
  tail call void @msleep(i32 noundef 14) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 87, i16 noundef zeroext 35)
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 155) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 84, i16 noundef zeroext 15) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 162, i16 noundef zeroext 32) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 163, i16 noundef zeroext 24) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 165, i16 noundef zeroext 40) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 85, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 12) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 56) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 34, i16 noundef zeroext 29) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 23, i16 noundef zeroext 80) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 64, i16 noundef zeroext 255) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 70, i16 noundef zeroext 0) #7
  br label %while.body.i333

while.body.i333:                                  ; preds = %while.body.i333.while.body.i333_crit_edge, %sw.bb87
  %dec6.i327 = phi i32 [ %dec.i331, %while.body.i333.while.body.i333_crit_edge ], [ 115, %sw.bb87 ]
  %regvals.addr.05.i328 = phi ptr [ %incdec.ptr.i330, %while.body.i333.while.body.i333_crit_edge ], [ @norm_7660, %sw.bb87 ]
  %143 = ptrtoint ptr %regvals.addr.05.i328 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %regvals.addr.05.i328, align 1
  %val.i329 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i328, i32 0, i32 1
  %145 = ptrtoint ptr %val.i329 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %val.i329, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %144, i8 noundef zeroext %146) #7
  %incdec.ptr.i330 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i328, i32 1
  %dec.i331 = add nsw i32 %dec6.i327, -1
  %cmp.i332.not = icmp eq i32 %dec6.i327, 0
  br i1 %cmp.i332.not, label %write_i2c_regvals.exit334, label %while.body.i333.while.body.i333_crit_edge

while.body.i333.while.body.i333_crit_edge:        ; preds = %while.body.i333
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i333

write_i2c_regvals.exit334:                        ; preds = %while.body.i333
  call void @__sanitizer_cov_trace_pc() #9
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %147 = ptrtoint ptr %curr_mode to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %curr_mode, align 1
  tail call fastcc void @ov519_set_mode(ptr noundef %gspca_dev)
  tail call fastcc void @ov519_set_fr(ptr noundef %gspca_dev)
  tail call void @sd_reset_snapshot(ptr noundef %gspca_dev)
  tail call fastcc void @ov51x_restart(ptr noundef %gspca_dev)
  tail call fastcc void @ov51x_stop(ptr noundef %gspca_dev)
  tail call fastcc void @ov51x_led_control(ptr noundef %gspca_dev, i32 noundef 0)
  br label %sw.epilog92

while.body.i341:                                  ; preds = %while.body.i341.while.body.i341_crit_edge, %sw.epilog76.while.body.i341_crit_edge
  %dec6.i335 = phi i32 [ %dec.i339, %while.body.i341.while.body.i341_crit_edge ], [ 155, %sw.epilog76.while.body.i341_crit_edge ]
  %regvals.addr.05.i336 = phi ptr [ %incdec.ptr.i338, %while.body.i341.while.body.i341_crit_edge ], [ @norm_7670, %sw.epilog76.while.body.i341_crit_edge ]
  %148 = ptrtoint ptr %regvals.addr.05.i336 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %regvals.addr.05.i336, align 1
  %val.i337 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i336, i32 0, i32 1
  %150 = ptrtoint ptr %val.i337 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %val.i337, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %149, i8 noundef zeroext %151) #7
  %incdec.ptr.i338 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i336, i32 1
  %dec.i339 = add nsw i32 %dec6.i335, -1
  %cmp.i340.not = icmp eq i32 %dec6.i335, 0
  br i1 %cmp.i340.not, label %while.body.i341.sw.epilog92_crit_edge, label %while.body.i341.while.body.i341_crit_edge

while.body.i341.while.body.i341_crit_edge:        ; preds = %while.body.i341
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i341

while.body.i341.sw.epilog92_crit_edge:            ; preds = %while.body.i341
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

while.body.i349:                                  ; preds = %while.body.i349.while.body.i349_crit_edge, %sw.epilog76.while.body.i349_crit_edge
  %dec6.i343 = phi i32 [ %dec.i347, %while.body.i349.while.body.i349_crit_edge ], [ 82, %sw.epilog76.while.body.i349_crit_edge ]
  %regvals.addr.05.i344 = phi ptr [ %incdec.ptr.i346, %while.body.i349.while.body.i349_crit_edge ], [ @norm_8610, %sw.epilog76.while.body.i349_crit_edge ]
  %152 = ptrtoint ptr %regvals.addr.05.i344 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %regvals.addr.05.i344, align 1
  %val.i345 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i344, i32 0, i32 1
  %154 = ptrtoint ptr %val.i345 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %val.i345, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %153, i8 noundef zeroext %155) #7
  %incdec.ptr.i346 = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i344, i32 1
  %dec.i347 = add nsw i32 %dec6.i343, -1
  %cmp.i348.not = icmp eq i32 %dec6.i343, 0
  br i1 %cmp.i348.not, label %while.body.i349.sw.epilog92_crit_edge, label %while.body.i349.while.body.i349_crit_edge

while.body.i349.while.body.i349_crit_edge:        ; preds = %while.body.i349
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i349

while.body.i349.sw.epilog92_crit_edge:            ; preds = %while.body.i349
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %while.body.i349.sw.epilog92_crit_edge, %while.body.i341.sw.epilog92_crit_edge, %write_i2c_regvals.exit334, %sw.bb86, %while.body.i311.sw.epilog92_crit_edge, %if.end.i303, %write_i2c_regvals.exit299.sw.epilog92_crit_edge, %while.body.i290.sw.epilog92_crit_edge, %while.body.i282.sw.epilog92_crit_edge, %if.end.i274, %write_i2c_regvals.exit269.sw.epilog92_crit_edge, %if.end.i260, %if.end.i, %while.body.i.preheader.sw.epilog92_crit_edge, %while.body.i254.preheader.sw.epilog92_crit_edge, %while.body.i357.preheader
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %156 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %usb_err, align 8
  br label %cleanup

do.end95:                                         ; preds = %if.end25.do.end95_crit_edge, %do.end
  %name98 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name98) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %sw.epilog92
  %retval.0 = phi i32 [ -22, %do.end95 ], [ %157, %sw.epilog92 ]
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 10, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.175) #7
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sensor, align 1
  %idxprom = sext i8 %2 to i32
  %arrayidx = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %2)
  %cmp = icmp eq i8 %2, 11
  %4 = select i1 %cmp, i64 6, i64 255
  %5 = select i1 %cmp, i64 3, i64 127
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef %4, i64 noundef 1, i64 noundef %5) #7
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %brightness, align 4
  %7 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %sensor, align 1
  %.pre = sext i8 %.pr to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %idxprom13.pre-phi = phi i32 [ %.pre, %if.then ], [ %idxprom, %entry.if.end_crit_edge ]
  %8 = phi i8 [ %.pr, %if.then ], [ %2, %entry.if.end_crit_edge ]
  %arrayidx14 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom13.pre-phi
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load15 = load i8, ptr %arrayidx14, align 4
  %10 = and i8 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool18.not = icmp eq i8 %10, 0
  br i1 %tobool18.not, label %if.end.if.end38_crit_edge, label %if.then19

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then19:                                        ; preds = %if.end
  %11 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.201)
  switch i8 %8, label %lor.rhs [
    i8 11, label %if.then24
    i8 4, label %if.then19.lor.end_crit_edge
  ]

if.then19.lor.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 6, i64 noundef 1, i64 noundef 3) #7
  br label %if.end38

lor.rhs:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp32 = icmp eq i8 %8, 5
  %phi.sel = select i1 %cmp32, i32 200, i32 127
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then19.lor.end_crit_edge
  %12 = phi i32 [ %phi.sel, %lor.rhs ], [ 200, %if.then19.lor.end_crit_edge ]
  %13 = zext i32 %12 to i64
  %call36 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef %13) #7
  br label %if.end38

if.end38:                                         ; preds = %lor.end, %if.then24, %if.end.if.end38_crit_edge
  %14 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sensor, align 1
  %idxprom40 = sext i8 %15 to i32
  %arrayidx41 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom40
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load42 = load i8, ptr %arrayidx41, align 4
  %17 = and i8 %bf.load42, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool46.not = icmp eq i8 %17, 0
  br i1 %tobool46.not, label %if.end38.if.end61_crit_edge, label %if.then47

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %15)
  %cmp50 = icmp eq i8 %15, 11
  %18 = select i1 %cmp50, i64 4, i64 255
  %19 = select i1 %cmp50, i64 2, i64 127
  %call60 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef %18, i64 noundef 1, i64 noundef %19) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then47, %if.end38.if.end61_crit_edge
  %20 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sensor, align 1
  %idxprom63 = sext i8 %21 to i32
  %arrayidx64 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom63
  %22 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load65 = load i8, ptr %arrayidx64, align 4
  %23 = and i8 %bf.load65, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool69.not = icmp eq i8 %23, 0
  br i1 %tobool69.not, label %if.end61.if.end72_crit_edge, label %if.then70

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #7
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call71, ptr %exposure, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end61.if.end72_crit_edge
  %25 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sensor, align 1
  %idxprom74 = sext i8 %26 to i32
  %arrayidx75 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom74
  %27 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load76 = load i8, ptr %arrayidx75, align 4
  %28 = and i8 %bf.load76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool80.not = icmp eq i8 %28, 0
  br i1 %tobool80.not, label %if.end72.if.end84_crit_edge, label %if.then81

if.end72.if.end84_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %29 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call82, ptr %29, align 8
  %call83 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call83, ptr %vflip, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end72.if.end84_crit_edge
  %32 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sensor, align 1
  %idxprom86 = sext i8 %33 to i32
  %arrayidx87 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom86
  %34 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load88 = load i8, ptr %arrayidx87, align 4
  %35 = and i8 %bf.load88, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool92.not = icmp eq i8 %35, 0
  br i1 %tobool92.not, label %if.end84.if.end95_crit_edge, label %if.then93

if.end84.if.end95_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then93:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %call94 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963808, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %36 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call94, ptr %36, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end84.if.end95_crit_edge
  %38 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sensor, align 1
  %idxprom97 = sext i8 %39 to i32
  %arrayidx98 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom97
  %40 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load99 = load i8, ptr %arrayidx98, align 4
  %41 = and i8 %bf.load99, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool103.not = icmp eq i8 %41, 0
  br i1 %tobool103.not, label %if.end95.if.end106_crit_edge, label %if.then104

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then104:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %call105 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %42 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call105, ptr %42, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end95.if.end106_crit_edge
  %44 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sensor, align 1
  %idxprom108 = sext i8 %45 to i32
  %arrayidx109 = getelementptr [16 x %struct.ctrl_valid], ptr @valid_controls, i32 0, i32 %idxprom108
  %46 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load110 = load i8, ptr %arrayidx109, align 4
  %bf.clear111 = and i8 %bf.load110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear111)
  %tobool113.not = icmp eq i8 %bf.clear111, 0
  br i1 %tobool113.not, label %if.end106.if.end125_crit_edge, label %if.then114

if.end106.if.end125_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then114:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %45)
  %cmp117 = icmp eq i8 %45, 12
  br i1 %cmp117, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 3) #7
  br label %if.end125.sink.split

if.else121:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #7
  br label %if.end125.sink.split

if.end125.sink.split:                             ; preds = %if.else121, %if.then119
  %call120.sink = phi ptr [ %call120, %if.then119 ], [ %call122, %if.else121 ]
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %47 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call120.sink, ptr %freq, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.end125.sink.split, %if.end106.if.end125_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %48 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %cmp127 = icmp eq i8 %49, 6
  br i1 %cmp127, label %if.then129, label %if.end125.if.end131_crit_edge

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 10291459, i64 noundef 50, i64 noundef 70, i64 noundef 1, i64 noundef 50) #7
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %50 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call130, ptr %jpegqual, align 8
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end125.if.end131_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %51 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool132.not = icmp eq i32 %52, 0
  br i1 %tobool132.not, label %if.end137, label %do.end

do.end:                                           ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name) #10
  %53 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %error, align 4
  br label %cleanup

if.end137:                                        ; preds = %if.end131
  %55 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %tobool139.not = icmp eq ptr %57, null
  br i1 %tobool139.not, label %if.end137.if.end142_crit_edge, label %if.then140

if.end137.if.end142_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %55, i8 noundef zeroext 0, i1 noundef zeroext true) #7
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end137.if.end142_crit_edge
  %58 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %tobool144.not = icmp eq ptr %60, null
  br i1 %tobool144.not, label %if.end142.if.end147_crit_edge, label %if.then145

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %58, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end142.if.end147_crit_edge
  %61 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %tobool149.not = icmp eq ptr %63, null
  br i1 %tobool149.not, label %if.end147.cleanup_crit_edge, label %if.then150

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %61) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %if.end147.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %54, %do.end ], [ 0, %if.then150 ], [ 0, %if.end147.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %0 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixfmt, align 8
  %conv = trunc i32 %1 to i16
  %sensor_width = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %sensor_width to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sensor_width, align 2
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %conv4 = trunc i32 %4 to i16
  %sensor_height = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %5 = ptrtoint ptr %sensor_height to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %sensor_height, align 8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %6 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bridge, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.202)
  switch i8 %7, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge101
    i8 2, label %entry.sw.bb6_crit_edge
    i8 3, label %entry.sw.bb6_crit_edge102
    i8 4, label %sw.bb7
    i8 6, label %sw.bb8
  ]

entry.sw.bb6_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb_crit_edge101:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge101
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %iface.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %11 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iface.i, align 1
  %conv.i = zext i8 %12 to i32
  %call.i = tail call ptr @usb_ifnum_to_if(ptr noundef %10, i32 noundef %conv.i) #7
  %alt4.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %13 = ptrtoint ptr %alt4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alt4.i, align 2
  %conv5.i = zext i8 %14 to i32
  %call6.i = tail call ptr @usb_altnum_to_altsetting(ptr noundef %call.i, i32 noundef %conv5.i) #7
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name.i) #10
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -5, ptr %usb_err.i, align 8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call6.i, i32 0, i32 4
  %16 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  br i1 %cmp.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %usb_err13.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %18 = ptrtoint ptr %usb_err13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -19, ptr %usb_err13.i, align 8
  br label %sw.epilog

if.end14.i:                                       ; preds = %if.end.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %call6.i, i32 0, i32 3
  %19 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %endpoint.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %wMaxPacketSize.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %conv16.i = zext i16 %23 to i32
  %24 = lshr i16 %23, 5
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 48, i16 noundef zeroext %24) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 22, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 30, i16 noundef zeroext 1) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 31, i16 noundef zeroext 3) #7
  %25 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixfmt, align 8
  %shr19.i = lshr i32 %26, 3
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %shr22.i = lshr i32 %28, 3
  %29 = trunc i32 %shr19.i to i16
  %conv24.i = add i16 %29, -1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 18, i16 noundef zeroext %conv24.i) #7
  %30 = trunc i32 %shr22.i to i16
  %conv25.i = add i16 %30, -1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 19, i16 noundef zeroext %conv25.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 21, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 24, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 26, i16 noundef zeroext %conv24.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 27, i16 noundef zeroext %conv25.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 28, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 29, i16 noundef zeroext 0) #7
  %31 = load i32, ptr @frame_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp28.i = icmp sgt i32 %31, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end14.i.if.end32.i_crit_edge

if.end14.i.if.end32.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv31.i = trunc i32 %31 to i8
  %frame_rate.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %32 = ptrtoint ptr %frame_rate.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv31.i, ptr %frame_rate.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end14.i.if.end32.i_crit_edge
  %sensor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %33 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sensor.i, align 1
  %conv33.i = sext i8 %34 to i32
  %35 = zext i32 %conv33.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %conv33.i, label %if.end32.i.sw.epilog76.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 7, label %if.end32.i.sw.bb34.i_crit_edge
    i32 8, label %if.end32.i.sw.bb34.i_crit_edge103
    i32 9, label %if.end32.i.sw.bb34.i_crit_edge104
    i32 10, label %if.end32.i.sw.bb34.i_crit_edge105
    i32 13, label %if.end32.i.sw.bb34.i_crit_edge106
    i32 4, label %if.end32.i.sw.bb42.i_crit_edge
    i32 6, label %if.end32.i.sw.bb42.i_crit_edge107
    i32 12, label %if.end32.i.sw.bb42.i_crit_edge108
    i32 14, label %sw.bb74.i
  ]

if.end32.i.sw.bb42.i_crit_edge108:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb42.i

if.end32.i.sw.bb42.i_crit_edge107:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb42.i

if.end32.i.sw.bb42.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb42.i

if.end32.i.sw.bb34.i_crit_edge106:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

if.end32.i.sw.bb34.i_crit_edge105:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

if.end32.i.sw.bb34.i_crit_edge104:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

if.end32.i.sw.bb34.i_crit_edge103:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

if.end32.i.sw.bb34.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34.i

if.end32.i.sw.epilog76.i_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76.i

sw.bb.i:                                          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %clockdiv.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %36 = ptrtoint ptr %clockdiv.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %clockdiv.i, align 2
  br label %sw.epilog76.i

sw.bb34.i:                                        ; preds = %if.end32.i.sw.bb34.i_crit_edge, %if.end32.i.sw.bb34.i_crit_edge103, %if.end32.i.sw.bb34.i_crit_edge104, %if.end32.i.sw.bb34.i_crit_edge105, %if.end32.i.sw.bb34.i_crit_edge106
  %37 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %38)
  %cmp38.i = icmp ne i32 %38, 320
  br label %sw.bb42.i

sw.bb42.i:                                        ; preds = %sw.bb34.i, %if.end32.i.sw.bb42.i_crit_edge, %if.end32.i.sw.bb42.i_crit_edge107, %if.end32.i.sw.bb42.i_crit_edge108
  %tobool59.not.i = phi i1 [ true, %if.end32.i.sw.bb42.i_crit_edge ], [ true, %if.end32.i.sw.bb42.i_crit_edge107 ], [ true, %if.end32.i.sw.bb42.i_crit_edge108 ], [ %cmp38.i, %sw.bb34.i ]
  %frame_rate43.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %39 = ptrtoint ptr %frame_rate43.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %frame_rate43.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %40, label %sw.bb42.i.sw.default.i_crit_edge [
    i8 30, label %sw.bb42.i.sw.bb45.i_crit_edge
    i8 25, label %sw.bb42.i.sw.bb45.i_crit_edge109
    i8 10, label %sw.bb42.i.sw.epilog.i_crit_edge
    i8 5, label %sw.bb57.i
  ]

sw.bb42.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb42.i.sw.bb45.i_crit_edge109:                 ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45.i

sw.bb42.i.sw.bb45.i_crit_edge:                    ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb45.i

sw.bb42.i.sw.default.i_crit_edge:                 ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.bb45.i:                                        ; preds = %sw.bb42.i.sw.bb45.i_crit_edge, %sw.bb42.i.sw.bb45.i_crit_edge109
  %42 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %43)
  %cmp49.not.i = icmp eq i32 %43, 640
  br i1 %cmp49.not.i, label %sw.bb45.i.sw.default.i_crit_edge, label %sw.bb45.i.sw.epilog.i_crit_edge

sw.bb45.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb45.i.sw.default.i_crit_edge:                 ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb45.i.sw.default.i_crit_edge, %sw.bb42.i.sw.default.i_crit_edge
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb57.i, %sw.default.i, %sw.bb45.i.sw.epilog.i_crit_edge, %sw.bb42.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ 5, %sw.bb57.i ], [ 1, %sw.default.i ], [ 0, %sw.bb45.i.sw.epilog.i_crit_edge ], [ 2, %sw.bb42.i.sw.epilog.i_crit_edge ]
  %clockdiv58.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %44 = ptrtoint ptr %clockdiv58.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink.i, ptr %clockdiv58.i, align 2
  br i1 %tobool59.not.i, label %sw.epilog.i.sw.epilog76.i_crit_edge, label %if.then60.i

sw.epilog.i.sw.epilog76.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76.i

if.then60.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = shl nuw nsw i8 %.sink.i, 1
  %sub63.i = or i8 %add.i, 1
  %45 = tail call i8 @llvm.umin.i8(i8 %sub63.i, i8 10) #7
  %46 = ptrtoint ptr %clockdiv58.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %clockdiv58.i, align 2
  br label %sw.epilog76.i

sw.bb74.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %clockdiv75.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %47 = ptrtoint ptr %clockdiv75.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %clockdiv75.i, align 2
  br label %sw.epilog76.i

sw.epilog76.i:                                    ; preds = %sw.bb74.i, %if.then60.i, %sw.epilog.i.sw.epilog76.i_crit_edge, %sw.bb.i, %if.end32.i.sw.epilog76.i_crit_edge
  %tobool77.not.i = phi i16 [ 30, %sw.epilog.i.sw.epilog76.i_crit_edge ], [ 30, %if.end32.i.sw.epilog76.i_crit_edge ], [ 30, %sw.bb74.i ], [ 30, %sw.bb.i ], [ 60, %if.then60.i ]
  %clockdiv78.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %48 = ptrtoint ptr %clockdiv78.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %clockdiv78.i, align 2
  %conv79.i = zext i8 %49 to i16
  %add80.i = add nuw nsw i16 %conv79.i, 1
  %div156.i = udiv i16 %tobool77.not.i, %add80.i
  %narrow.i = add nuw nsw i16 %div156.i, 1
  %add81.i = zext i16 %narrow.i to i32
  %50 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pixfmt, align 8
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  %mul85.i = mul i32 %51, 3
  %mul89.i = mul i32 %mul85.i, %add81.i
  %mul90.i = mul i32 %mul89.i, %53
  %div91155.i = lshr i32 %mul90.i, 1
  %mul92.i = mul nuw nsw i32 %conv16.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div91155.i, i32 %mul92.i)
  %cmp93.i = icmp ugt i32 %div91155.i, %mul92.i
  %..i = select i1 %cmp93.i, i16 7, i16 6
  %.159.i = select i1 %cmp93.i, i16 3, i16 0
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 120, i16 noundef zeroext %..i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 121, i16 noundef zeroext %.159.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 8) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge102
  %dev.i24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %54 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i24, align 4
  %iface.i25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %56 = ptrtoint ptr %iface.i25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %iface.i25, align 1
  %conv.i26 = zext i8 %57 to i32
  %call.i27 = tail call ptr @usb_ifnum_to_if(ptr noundef %55, i32 noundef %conv.i26) #7
  %alt4.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %58 = ptrtoint ptr %alt4.i28 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %alt4.i28, align 2
  %conv5.i29 = zext i8 %59 to i32
  %call6.i30 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %call.i27, i32 noundef %conv5.i29) #7
  %tobool.not.i31 = icmp eq ptr %call6.i30, null
  br i1 %tobool.not.i31, label %do.end.i35, label %if.end.i39

do.end.i35:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %name.i32 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name.i32) #10
  %usb_err.i34 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %60 = ptrtoint ptr %usb_err.i34 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -5, ptr %usb_err.i34, align 8
  br label %sw.epilog

if.end.i39:                                       ; preds = %sw.bb6
  %bNumEndpoints.i36 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call6.i30, i32 0, i32 4
  %61 = ptrtoint ptr %bNumEndpoints.i36 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bNumEndpoints.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i37 = icmp eq i8 %62, 0
  %usb_err13.i38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  br i1 %cmp.i37, label %if.then11.i40, label %if.end14.i41

if.then11.i40:                                    ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -19, ptr %usb_err13.i38, align 8
  br label %sw.epilog

if.end14.i41:                                     ; preds = %if.end.i39
  %64 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i = icmp slt i32 %65, 0
  br i1 %cmp.i.i, label %if.end14.i41.ov518_reg_w32.exit.i_crit_edge, label %if.end.i.i

if.end14.i41.ov518_reg_w32.exit.i_crit_edge:      ; preds = %if.end14.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov518_reg_w32.exit.i

if.end.i.i:                                       ; preds = %if.end14.i41
  %endpoint.i42 = getelementptr inbounds %struct.usb_host_interface, ptr %call6.i30, i32 0, i32 3
  %66 = ptrtoint ptr %endpoint.i42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %endpoint.i42, align 4
  %wMaxPacketSize.i43 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %wMaxPacketSize.i43 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %wMaxPacketSize.i43, align 4
  %70 = and i16 %69, -1793
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #7
  %and.i = zext i16 %71 to i32
  %72 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %73 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %usb_buf.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %74, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 32212200) #7
  %77 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i24, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %shl.i.i.i = shl i32 %80, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %81 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %usb_buf.i.i, align 4
  %call8.i.i = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef %82, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %do.end.i.i, label %if.end.i.i.ov518_reg_w32.exit.i_crit_edge

if.end.i.i.ov518_reg_w32.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov518_reg_w32.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i.i, i32 noundef 48, i32 noundef %call8.i.i) #10
  %83 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call8.i.i, ptr %usb_err13.i38, align 8
  br label %ov518_reg_w32.exit.i

ov518_reg_w32.exit.i:                             ; preds = %do.end.i.i, %if.end.i.i.ov518_reg_w32.exit.i_crit_edge, %if.end14.i41.ov518_reg_w32.exit.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 43, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 44, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 45, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 46, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 59, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 60, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 61, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 62, i16 noundef zeroext 0) #7
  %84 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %85)
  %cmp18.i = icmp eq i8 %85, 2
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %ov518_reg_w32.exit.i
  %call.i.i = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i.i, label %if.then20.i.reg_w_mask.exit.i_crit_edge, label %if.end.i159.i

if.then20.i.reg_w_mask.exit.i_crit_edge:          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_mask.exit.i

if.end.i159.i:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = trunc i32 %call.i.i to i8
  %conv13.i.i = or i8 %86, 8
  %conv15.i.i = zext i8 %conv13.i.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext %conv15.i.i) #7
  br label %reg_w_mask.exit.i

reg_w_mask.exit.i:                                ; preds = %if.end.i159.i, %if.then20.i.reg_w_mask.exit.i_crit_edge
  %call.i160.i = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %cmp5.i161.i = icmp slt i32 %call.i160.i, 0
  br i1 %cmp5.i161.i, label %reg_w_mask.exit.i.reg_w_mask.exit166.i_crit_edge, label %if.end.i164.i

reg_w_mask.exit.i.reg_w_mask.exit166.i_crit_edge: ; preds = %reg_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_mask.exit166.i

if.end.i164.i:                                    ; preds = %reg_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = trunc i32 %call.i160.i to i8
  %88 = and i8 %87, 15
  %conv13.i163.i = or i8 %88, -128
  %conv15.i165.i = zext i8 %conv13.i163.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 40, i16 noundef zeroext %conv15.i165.i) #7
  br label %reg_w_mask.exit166.i

reg_w_mask.exit166.i:                             ; preds = %if.end.i164.i, %reg_w_mask.exit.i.reg_w_mask.exit166.i_crit_edge
  %call.i167.i = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i)
  %cmp5.i168.i = icmp slt i32 %call.i167.i, 0
  br i1 %cmp5.i168.i, label %reg_w_mask.exit166.i.if.end21.i_crit_edge, label %if.end.i171.i

reg_w_mask.exit166.i.if.end21.i_crit_edge:        ; preds = %reg_w_mask.exit166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.end.i171.i:                                    ; preds = %reg_w_mask.exit166.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = trunc i32 %call.i167.i to i8
  %90 = and i8 %89, 15
  %conv13.i170.i = or i8 %90, -128
  %conv15.i172.i = zext i8 %conv13.i170.i to i16
  br label %if.end21.i.sink.split

if.else.i:                                        ; preds = %ov518_reg_w32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 40, i16 noundef zeroext 128) #7
  br label %if.end21.i.sink.split

if.end21.i.sink.split:                            ; preds = %if.else.i, %if.end.i171.i
  %.sink = phi i16 [ 128, %if.else.i ], [ %conv15.i172.i, %if.end.i171.i ]
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 56, i16 noundef zeroext %.sink) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.i.sink.split, %reg_w_mask.exit166.i.if.end21.i_crit_edge
  %91 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pixfmt, align 8
  %div157.i = lshr i32 %92, 4
  %93 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height, align 4
  %div25158.i = lshr i32 %94, 2
  %conv26.i = trunc i32 %div157.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 41, i16 noundef zeroext %conv26.i) #7
  %conv27.i = trunc i32 %div25158.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 42, i16 noundef zeroext %conv27.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 57, i16 noundef zeroext %conv26.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 58, i16 noundef zeroext %conv27.i) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 128) #7
  %95 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %96)
  %cmp32.i = icmp eq i8 %96, 3
  br i1 %cmp32.i, label %land.lhs.true.i, label %if.end21.i.if.else42.i_crit_edge

if.end21.i.if.else42.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else42.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %revision.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %97 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp35.i = icmp eq i8 %98, 0
  br i1 %cmp35.i, label %land.lhs.true37.i, label %land.lhs.true.i.if.else42.i_crit_edge

land.lhs.true.i.if.else42.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else42.i

land.lhs.true37.i:                                ; preds = %land.lhs.true.i
  %sensor.i46 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %99 = ptrtoint ptr %sensor.i46 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sensor.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %100)
  %cmp39.i = icmp eq i8 %100, 8
  br i1 %cmp39.i, label %land.lhs.true37.i.if.end44.i_crit_edge, label %land.lhs.true37.i.if.else42.i_crit_edge

land.lhs.true37.i.if.else42.i_crit_edge:          ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else42.i

land.lhs.true37.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.else42.i:                                      ; preds = %land.lhs.true37.i.if.else42.i_crit_edge, %land.lhs.true.i.if.else42.i_crit_edge, %if.end21.i.if.else42.i_crit_edge
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else42.i, %land.lhs.true37.i.if.end44.i_crit_edge
  %.sink.i47 = phi i8 [ 1, %if.else42.i ], [ 0, %land.lhs.true37.i.if.end44.i_crit_edge ]
  %clockdiv43.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %101 = ptrtoint ptr %clockdiv43.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink.i47, ptr %clockdiv43.i, align 2
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 81, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 34, i16 noundef zeroext 24) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 255) #7
  %102 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %103)
  %cmp47.i = icmp eq i8 %103, 3
  br i1 %cmp47.i, label %if.then49.i, label %if.else66.i

if.then49.i:                                      ; preds = %if.end44.i
  %sensor50.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %104 = ptrtoint ptr %sensor50.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %sensor50.i, align 1
  %conv51.i = sext i8 %105 to i32
  %106 = zext i32 %conv51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %conv51.i, label %sw.default.i49 [
    i32 8, label %sw.bb.i48
    i32 7, label %sw.bb65.i
  ]

sw.bb.i48:                                        ; preds = %if.then49.i
  %revision52.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %107 = ptrtoint ptr %revision52.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %revision52.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp54.not.i = icmp eq i8 %108, 0
  br i1 %cmp54.not.i, label %sw.bb.i48.if.else63.i_crit_edge, label %land.lhs.true56.i

sw.bb.i48.if.else63.i_crit_edge:                  ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63.i

land.lhs.true56.i:                                ; preds = %sw.bb.i48
  %109 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %110)
  %cmp60.i = icmp eq i32 %110, 640
  br i1 %cmp60.i, label %if.then62.i, label %land.lhs.true56.i.if.else63.i_crit_edge

land.lhs.true56.i.if.else63.i_crit_edge:          ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63.i

if.then62.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 96) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 31) #7
  br label %if.end67.i

if.else63.i:                                      ; preds = %land.lhs.true56.i.if.else63.i_crit_edge, %sw.bb.i48.if.else63.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 25) #7
  br label %if.end67.i

sw.bb65.i:                                        ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 25) #7
  br label %if.end67.i

sw.default.i49:                                   ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 25) #7
  br label %if.end67.i

if.else66.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 113, i16 noundef zeroext 23) #7
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else66.i, %sw.default.i49, %sw.bb65.i, %if.else63.i, %if.then62.i
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 84, i8 noundef zeroext 35) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 128) #7
  %111 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %112)
  %cmp70.i = icmp eq i8 %112, 3
  br i1 %cmp70.i, label %if.then72.i, label %if.else73.i

if.then72.i:                                      ; preds = %if.end67.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 36, i16 noundef zeroext 148) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 37, i16 noundef zeroext 144) #7
  %113 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i175.i = icmp slt i32 %114, 0
  br i1 %cmp.i175.i, label %if.then72.i.if.end74.i_crit_edge, label %if.end.i182.i

if.then72.i.if.end74.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i182.i:                                    ; preds = %if.then72.i
  %usb_buf.i176.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %115 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %usb_buf.i176.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -1878982656, ptr %116, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 32212200) #7
  %119 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i24, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  %shl.i.i178.i = shl i32 %122, 8
  %or.i179.i = or i32 %shl.i.i178.i, -2147483648
  %123 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i180.i = tail call i32 @usb_control_msg(ptr noundef %120, i32 noundef %or.i179.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 196, ptr noundef %124, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i180.i)
  %cmp9.i181.i = icmp slt i32 %call8.i180.i, 0
  br i1 %cmp9.i181.i, label %do.end.i185.i, label %ov518_reg_w32.exit186.i

do.end.i185.i:                                    ; preds = %if.end.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i183.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i184.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i183.i, i32 noundef 196, i32 noundef %call8.i180.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit186.i:                          ; preds = %if.end.i182.i
  %125 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i188.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i188.i, label %ov518_reg_w32.exit186.i.if.end74.i_crit_edge, label %if.end.i195.i

ov518_reg_w32.exit186.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i195.i:                                    ; preds = %ov518_reg_w32.exit186.i
  %126 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb_buf.i176.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 469893120, ptr %127, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 32212200) #7
  %130 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i24, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i191.i = shl i32 %133, 8
  %or.i192.i = or i32 %shl.i.i191.i, -2147483648
  %134 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i193.i = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or.i192.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 198, ptr noundef %135, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i193.i)
  %cmp9.i194.i = icmp slt i32 %call8.i193.i, 0
  br i1 %cmp9.i194.i, label %do.end.i198.i, label %ov518_reg_w32.exit199.i

do.end.i198.i:                                    ; preds = %if.end.i195.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i196.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i196.i, i32 noundef 198, i32 noundef %call8.i193.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit199.i:                          ; preds = %if.end.i195.i
  %136 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr409.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr409.pr.i)
  %cmp.i201.i = icmp slt i32 %.pr409.pr.i, 0
  br i1 %cmp.i201.i, label %ov518_reg_w32.exit199.i.if.end74.i_crit_edge, label %if.end.i208.i

ov518_reg_w32.exit199.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i208.i:                                    ; preds = %ov518_reg_w32.exit199.i
  %137 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i176.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 469893120, ptr %138, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 32212200) #7
  %141 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i24, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 8
  %shl.i.i204.i = shl i32 %144, 8
  %or.i205.i = or i32 %shl.i.i204.i, -2147483648
  %145 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i206.i = tail call i32 @usb_control_msg(ptr noundef %142, i32 noundef %or.i205.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 199, ptr noundef %146, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i206.i)
  %cmp9.i207.i = icmp slt i32 %call8.i206.i, 0
  br i1 %cmp9.i207.i, label %do.end.i211.i, label %ov518_reg_w32.exit212.i

do.end.i211.i:                                    ; preds = %if.end.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i209.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i210.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i209.i, i32 noundef 199, i32 noundef %call8.i206.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit212.i:                          ; preds = %if.end.i208.i
  %147 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr411.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr411.pr.i)
  %cmp.i214.i = icmp slt i32 %.pr411.pr.i, 0
  br i1 %cmp.i214.i, label %ov518_reg_w32.exit212.i.if.end74.i_crit_edge, label %if.end.i221.i

ov518_reg_w32.exit212.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit212.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i221.i:                                    ; preds = %ov518_reg_w32.exit212.i
  %148 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %usb_buf.i176.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1811939328, ptr %149, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 32212200) #7
  %152 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i24, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %shl.i.i217.i = shl i32 %155, 8
  %or.i218.i = or i32 %shl.i.i217.i, -2147483648
  %156 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i219.i = tail call i32 @usb_control_msg(ptr noundef %153, i32 noundef %or.i218.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 200, ptr noundef %157, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i219.i)
  %cmp9.i220.i = icmp slt i32 %call8.i219.i, 0
  br i1 %cmp9.i220.i, label %do.end.i224.i, label %ov518_reg_w32.exit225.i

do.end.i224.i:                                    ; preds = %if.end.i221.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i222.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i223.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i222.i, i32 noundef 200, i32 noundef %call8.i219.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit225.i:                          ; preds = %if.end.i221.i
  %158 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr413.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr413.pr.pr.i)
  %cmp.i227.i = icmp slt i32 %.pr413.pr.pr.i, 0
  br i1 %cmp.i227.i, label %ov518_reg_w32.exit225.i.if.end74.i_crit_edge, label %if.end.i234.i

ov518_reg_w32.exit225.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit225.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i234.i:                                    ; preds = %ov518_reg_w32.exit225.i
  %159 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %usb_buf.i176.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 436208128, ptr %160, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %162(i32 noundef 32212200) #7
  %163 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i24, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i230.i = shl i32 %166, 8
  %or.i231.i = or i32 %shl.i.i230.i, -2147483648
  %167 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i232.i = tail call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i231.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 202, ptr noundef %168, i16 noundef zeroext 3, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i232.i)
  %cmp9.i233.i = icmp slt i32 %call8.i232.i, 0
  br i1 %cmp9.i233.i, label %do.end.i237.i, label %ov518_reg_w32.exit238.i

do.end.i237.i:                                    ; preds = %if.end.i234.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i235.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i236.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i235.i, i32 noundef 202, i32 noundef %call8.i232.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit238.i:                          ; preds = %if.end.i234.i
  %169 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %169)
  %.pr415.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr415.pr.pr.i)
  %cmp.i240.i = icmp slt i32 %.pr415.pr.pr.i, 0
  br i1 %cmp.i240.i, label %ov518_reg_w32.exit238.i.if.end74.i_crit_edge, label %if.end.i247.i

ov518_reg_w32.exit238.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i247.i:                                    ; preds = %ov518_reg_w32.exit238.i
  %170 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %usb_buf.i176.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 335675392, ptr %171, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 32212200) #7
  %174 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev.i24, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 8
  %shl.i.i243.i = shl i32 %177, 8
  %or.i244.i = or i32 %shl.i.i243.i, -2147483648
  %178 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i245.i = tail call i32 @usb_control_msg(ptr noundef %175, i32 noundef %or.i244.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 203, ptr noundef %179, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i245.i)
  %cmp9.i246.i = icmp slt i32 %call8.i245.i, 0
  br i1 %cmp9.i246.i, label %do.end.i250.i, label %ov518_reg_w32.exit251.i

do.end.i250.i:                                    ; preds = %if.end.i247.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i248.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i249.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i248.i, i32 noundef 203, i32 noundef %call8.i245.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit251.i:                          ; preds = %if.end.i247.i
  %180 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pr417.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr417.pr.pr.i)
  %cmp.i253.i = icmp slt i32 %.pr417.pr.pr.i, 0
  br i1 %cmp.i253.i, label %ov518_reg_w32.exit251.i.if.end74.i_crit_edge, label %if.end.i260.i

ov518_reg_w32.exit251.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i260.i:                                    ; preds = %ov518_reg_w32.exit251.i
  %181 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %usb_buf.i176.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1611202560, ptr %182, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 32212200) #7
  %185 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i24, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 8
  %shl.i.i256.i = shl i32 %188, 8
  %or.i257.i = or i32 %shl.i.i256.i, -2147483648
  %189 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i258.i = tail call i32 @usb_control_msg(ptr noundef %186, i32 noundef %or.i257.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 204, ptr noundef %190, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i258.i)
  %cmp9.i259.i = icmp slt i32 %call8.i258.i, 0
  br i1 %cmp9.i259.i, label %do.end.i263.i, label %ov518_reg_w32.exit264.i

do.end.i263.i:                                    ; preds = %if.end.i260.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i261.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i262.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i261.i, i32 noundef 204, i32 noundef %call8.i258.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit264.i:                          ; preds = %if.end.i260.i
  %191 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr419.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr419.pr.pr.i)
  %cmp.i266.i = icmp slt i32 %.pr419.pr.pr.i, 0
  br i1 %cmp.i266.i, label %ov518_reg_w32.exit264.i.if.end74.i_crit_edge, label %if.end.i273.i

ov518_reg_w32.exit264.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i273.i:                                    ; preds = %ov518_reg_w32.exit264.i
  %192 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %usb_buf.i176.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 536870912, ptr %193, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 32212200) #7
  %196 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i24, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 8
  %shl.i.i269.i = shl i32 %199, 8
  %or.i270.i = or i32 %shl.i.i269.i, -2147483648
  %200 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i271.i = tail call i32 @usb_control_msg(ptr noundef %197, i32 noundef %or.i270.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 205, ptr noundef %201, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i271.i)
  %cmp9.i272.i = icmp slt i32 %call8.i271.i, 0
  br i1 %cmp9.i272.i, label %do.end.i276.i, label %ov518_reg_w32.exit277.i

do.end.i276.i:                                    ; preds = %if.end.i273.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i274.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i275.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i274.i, i32 noundef 205, i32 noundef %call8.i271.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit277.i:                          ; preds = %if.end.i273.i
  %202 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pr421.pr.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr421.pr.pr.pr.i)
  %cmp.i279.i = icmp slt i32 %.pr421.pr.pr.pr.i, 0
  br i1 %cmp.i279.i, label %ov518_reg_w32.exit277.i.if.end74.i_crit_edge, label %if.end.i286.i

ov518_reg_w32.exit277.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit277.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i286.i:                                    ; preds = %ov518_reg_w32.exit277.i
  %203 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %usb_buf.i176.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 1610743808, ptr %204, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %206(i32 noundef 32212200) #7
  %207 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i24, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 8
  %shl.i.i282.i = shl i32 %210, 8
  %or.i283.i = or i32 %shl.i.i282.i, -2147483648
  %211 = ptrtoint ptr %usb_buf.i176.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %usb_buf.i176.i, align 4
  %call8.i284.i = tail call i32 @usb_control_msg(ptr noundef %208, i32 noundef %or.i283.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 206, ptr noundef %212, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i284.i)
  %cmp9.i285.i = icmp slt i32 %call8.i284.i, 0
  br i1 %cmp9.i285.i, label %do.end.i289.i, label %if.end.i286.i.if.end74.i_crit_edge

if.end.i286.i.if.end74.i_crit_edge:               ; preds = %if.end.i286.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

do.end.i289.i:                                    ; preds = %if.end.i286.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i287.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i288.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i287.i, i32 noundef 206, i32 noundef %call8.i284.i) #10
  br label %if.end74.sink.split.i

if.else73.i:                                      ; preds = %if.end67.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 36, i16 noundef zeroext 159) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 37, i16 noundef zeroext 144) #7
  %213 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp.i292.i = icmp slt i32 %214, 0
  br i1 %cmp.i292.i, label %if.else73.i.if.end74.i_crit_edge, label %if.end.i299.i

if.else73.i.if.end74.i_crit_edge:                 ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i299.i:                                    ; preds = %if.else73.i
  %usb_buf.i293.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %215 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %usb_buf.i293.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1878982656, ptr %216, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %218(i32 noundef 32212200) #7
  %219 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev.i24, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 8
  %shl.i.i295.i = shl i32 %222, 8
  %or.i296.i = or i32 %shl.i.i295.i, -2147483648
  %223 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i297.i = tail call i32 @usb_control_msg(ptr noundef %220, i32 noundef %or.i296.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 196, ptr noundef %224, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i297.i)
  %cmp9.i298.i = icmp slt i32 %call8.i297.i, 0
  br i1 %cmp9.i298.i, label %do.end.i302.i, label %ov518_reg_w32.exit303.i

do.end.i302.i:                                    ; preds = %if.end.i299.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i300.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i301.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i300.i, i32 noundef 196, i32 noundef %call8.i297.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit303.i:                          ; preds = %if.end.i299.i
  %225 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %225)
  %.pr423.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr423.i)
  %cmp.i305.i = icmp slt i32 %.pr423.i, 0
  br i1 %cmp.i305.i, label %ov518_reg_w32.exit303.i.if.end74.i_crit_edge, label %if.end.i312.i

ov518_reg_w32.exit303.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit303.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i312.i:                                    ; preds = %ov518_reg_w32.exit303.i
  %226 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %usb_buf.i293.i, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 2097217536, ptr %227, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %229 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %229(i32 noundef 32212200) #7
  %230 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev.i24, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 8
  %shl.i.i308.i = shl i32 %233, 8
  %or.i309.i = or i32 %shl.i.i308.i, -2147483648
  %234 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i310.i = tail call i32 @usb_control_msg(ptr noundef %231, i32 noundef %or.i309.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 198, ptr noundef %235, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i310.i)
  %cmp9.i311.i = icmp slt i32 %call8.i310.i, 0
  br i1 %cmp9.i311.i, label %do.end.i315.i, label %ov518_reg_w32.exit316.i

do.end.i315.i:                                    ; preds = %if.end.i312.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i313.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i314.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i313.i, i32 noundef 198, i32 noundef %call8.i310.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit316.i:                          ; preds = %if.end.i312.i
  %236 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %236)
  %.pr425.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr425.pr.i)
  %cmp.i318.i = icmp slt i32 %.pr425.pr.i, 0
  br i1 %cmp.i318.i, label %ov518_reg_w32.exit316.i.if.end74.i_crit_edge, label %if.end.i325.i

ov518_reg_w32.exit316.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit316.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i325.i:                                    ; preds = %ov518_reg_w32.exit316.i
  %237 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %usb_buf.i293.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 2097217536, ptr %238, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %240(i32 noundef 32212200) #7
  %241 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev.i24, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 8
  %shl.i.i321.i = shl i32 %244, 8
  %or.i322.i = or i32 %shl.i.i321.i, -2147483648
  %245 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i323.i = tail call i32 @usb_control_msg(ptr noundef %242, i32 noundef %or.i322.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 199, ptr noundef %246, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i323.i)
  %cmp9.i324.i = icmp slt i32 %call8.i323.i, 0
  br i1 %cmp9.i324.i, label %do.end.i328.i, label %ov518_reg_w32.exit329.i

do.end.i328.i:                                    ; preds = %if.end.i325.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i326.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i327.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i326.i, i32 noundef 199, i32 noundef %call8.i323.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit329.i:                          ; preds = %if.end.i325.i
  %247 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %247)
  %.pr427.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr427.pr.i)
  %cmp.i331.i = icmp slt i32 %.pr427.pr.i, 0
  br i1 %cmp.i331.i, label %ov518_reg_w32.exit329.i.if.end74.i_crit_edge, label %if.end.i338.i

ov518_reg_w32.exit329.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit329.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i338.i:                                    ; preds = %ov518_reg_w32.exit329.i
  %248 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %usb_buf.i293.i, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -2147483648, ptr %249, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %251(i32 noundef 32212200) #7
  %252 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev.i24, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %253, align 8
  %shl.i.i334.i = shl i32 %255, 8
  %or.i335.i = or i32 %shl.i.i334.i, -2147483648
  %256 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i336.i = tail call i32 @usb_control_msg(ptr noundef %253, i32 noundef %or.i335.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 200, ptr noundef %257, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i336.i)
  %cmp9.i337.i = icmp slt i32 %call8.i336.i, 0
  br i1 %cmp9.i337.i, label %do.end.i341.i, label %ov518_reg_w32.exit342.i

do.end.i341.i:                                    ; preds = %if.end.i338.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i339.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i340.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i339.i, i32 noundef 200, i32 noundef %call8.i336.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit342.i:                          ; preds = %if.end.i338.i
  %258 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %258)
  %.pr429.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr429.pr.pr.i)
  %cmp.i344.i = icmp slt i32 %.pr429.pr.pr.i, 0
  br i1 %cmp.i344.i, label %ov518_reg_w32.exit342.i.if.end74.i_crit_edge, label %if.end.i351.i

ov518_reg_w32.exit342.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i351.i:                                    ; preds = %ov518_reg_w32.exit342.i
  %259 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %usb_buf.i293.i, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 600572416, ptr %260, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %262 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %262(i32 noundef 32212200) #7
  %263 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev.i24, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %264, align 8
  %shl.i.i347.i = shl i32 %266, 8
  %or.i348.i = or i32 %shl.i.i347.i, -2147483648
  %267 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i349.i = tail call i32 @usb_control_msg(ptr noundef %264, i32 noundef %or.i348.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 202, ptr noundef %268, i16 noundef zeroext 3, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i349.i)
  %cmp9.i350.i = icmp slt i32 %call8.i349.i, 0
  br i1 %cmp9.i350.i, label %do.end.i354.i, label %ov518_reg_w32.exit355.i

do.end.i354.i:                                    ; preds = %if.end.i351.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i352.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i353.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i352.i, i32 noundef 202, i32 noundef %call8.i349.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit355.i:                          ; preds = %if.end.i351.i
  %269 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %269)
  %.pr431.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr431.pr.pr.i)
  %cmp.i357.i = icmp slt i32 %.pr431.pr.pr.i, 0
  br i1 %cmp.i357.i, label %ov518_reg_w32.exit355.i.if.end74.i_crit_edge, label %if.end.i364.i

ov518_reg_w32.exit355.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit355.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i364.i:                                    ; preds = %ov518_reg_w32.exit355.i
  %270 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %usb_buf.i293.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -368967680, ptr %271, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %273(i32 noundef 32212200) #7
  %274 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev.i24, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 8
  %shl.i.i360.i = shl i32 %277, 8
  %or.i361.i = or i32 %shl.i.i360.i, -2147483648
  %278 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i362.i = tail call i32 @usb_control_msg(ptr noundef %275, i32 noundef %or.i361.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 203, ptr noundef %279, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i362.i)
  %cmp9.i363.i = icmp slt i32 %call8.i362.i, 0
  br i1 %cmp9.i363.i, label %do.end.i367.i, label %ov518_reg_w32.exit368.i

do.end.i367.i:                                    ; preds = %if.end.i364.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i365.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i366.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i365.i, i32 noundef 203, i32 noundef %call8.i362.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit368.i:                          ; preds = %if.end.i364.i
  %280 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %280)
  %.pr433.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr433.pr.pr.i)
  %cmp.i370.i = icmp slt i32 %.pr433.pr.pr.i, 0
  br i1 %cmp.i370.i, label %ov518_reg_w32.exit368.i.if.end74.i_crit_edge, label %if.end.i377.i

ov518_reg_w32.exit368.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit368.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i377.i:                                    ; preds = %ov518_reg_w32.exit368.i
  %281 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %usb_buf.i293.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 -704249856, ptr %282, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %284(i32 noundef 32212200) #7
  %285 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev.i24, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %286, align 8
  %shl.i.i373.i = shl i32 %288, 8
  %or.i374.i = or i32 %shl.i.i373.i, -2147483648
  %289 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i375.i = tail call i32 @usb_control_msg(ptr noundef %286, i32 noundef %or.i374.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 204, ptr noundef %290, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i375.i)
  %cmp9.i376.i = icmp slt i32 %call8.i375.i, 0
  br i1 %cmp9.i376.i, label %do.end.i380.i, label %ov518_reg_w32.exit381.i

do.end.i380.i:                                    ; preds = %if.end.i377.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i378.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i379.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i378.i, i32 noundef 204, i32 noundef %call8.i375.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit381.i:                          ; preds = %if.end.i377.i
  %291 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %291)
  %.pr435.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr435.pr.pr.i)
  %cmp.i383.i = icmp slt i32 %.pr435.pr.pr.i, 0
  br i1 %cmp.i383.i, label %ov518_reg_w32.exit381.i.if.end74.i_crit_edge, label %if.end.i390.i

ov518_reg_w32.exit381.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit381.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i390.i:                                    ; preds = %ov518_reg_w32.exit381.i
  %292 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %usb_buf.i293.i, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 754974720, ptr %293, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %295 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %295(i32 noundef 32212200) #7
  %296 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dev.i24, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %297, align 8
  %shl.i.i386.i = shl i32 %299, 8
  %or.i387.i = or i32 %shl.i.i386.i, -2147483648
  %300 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i388.i = tail call i32 @usb_control_msg(ptr noundef %297, i32 noundef %or.i387.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 205, ptr noundef %301, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i388.i)
  %cmp9.i389.i = icmp slt i32 %call8.i388.i, 0
  br i1 %cmp9.i389.i, label %do.end.i393.i, label %ov518_reg_w32.exit394.i

do.end.i393.i:                                    ; preds = %if.end.i390.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i391.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i392.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i391.i, i32 noundef 205, i32 noundef %call8.i388.i) #10
  br label %if.end74.sink.split.i

ov518_reg_w32.exit394.i:                          ; preds = %if.end.i390.i
  %302 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_load4_noabort(i32 %302)
  %.pr437.pr.pr.pr.i = load i32, ptr %usb_err13.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr437.pr.pr.pr.i)
  %cmp.i396.i = icmp slt i32 %.pr437.pr.pr.pr.i, 0
  br i1 %cmp.i396.i, label %ov518_reg_w32.exit394.i.if.end74.i_crit_edge, label %if.end.i403.i

ov518_reg_w32.exit394.i.if.end74.i_crit_edge:     ; preds = %ov518_reg_w32.exit394.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.end.i403.i:                                    ; preds = %ov518_reg_w32.exit394.i
  %303 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %usb_buf.i293.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1392705536, ptr %304, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %306 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %306(i32 noundef 32212200) #7
  %307 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev.i24, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %308, align 8
  %shl.i.i399.i = shl i32 %310, 8
  %or.i400.i = or i32 %shl.i.i399.i, -2147483648
  %311 = ptrtoint ptr %usb_buf.i293.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %usb_buf.i293.i, align 4
  %call8.i401.i = tail call i32 @usb_control_msg(ptr noundef %308, i32 noundef %or.i400.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 206, ptr noundef %312, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i401.i)
  %cmp9.i402.i = icmp slt i32 %call8.i401.i, 0
  br i1 %cmp9.i402.i, label %do.end.i406.i, label %if.end.i403.i.if.end74.i_crit_edge

if.end.i403.i.if.end74.i_crit_edge:               ; preds = %if.end.i403.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

do.end.i406.i:                                    ; preds = %if.end.i403.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i404.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i405.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name.i404.i, i32 noundef 206, i32 noundef %call8.i401.i) #10
  br label %if.end74.sink.split.i

if.end74.sink.split.i:                            ; preds = %do.end.i406.i, %do.end.i393.i, %do.end.i380.i, %do.end.i367.i, %do.end.i354.i, %do.end.i341.i, %do.end.i328.i, %do.end.i315.i, %do.end.i302.i, %do.end.i289.i, %do.end.i276.i, %do.end.i263.i, %do.end.i250.i, %do.end.i237.i, %do.end.i224.i, %do.end.i211.i, %do.end.i198.i, %do.end.i185.i
  %call8.i297.sink.i = phi i32 [ %call8.i297.i, %do.end.i302.i ], [ %call8.i180.i, %do.end.i185.i ], [ %call8.i349.i, %do.end.i354.i ], [ %call8.i336.i, %do.end.i341.i ], [ %call8.i323.i, %do.end.i328.i ], [ %call8.i310.i, %do.end.i315.i ], [ %call8.i232.i, %do.end.i237.i ], [ %call8.i219.i, %do.end.i224.i ], [ %call8.i206.i, %do.end.i211.i ], [ %call8.i193.i, %do.end.i198.i ], [ %call8.i375.i, %do.end.i380.i ], [ %call8.i362.i, %do.end.i367.i ], [ %call8.i258.i, %do.end.i263.i ], [ %call8.i245.i, %do.end.i250.i ], [ %call8.i388.i, %do.end.i393.i ], [ %call8.i271.i, %do.end.i276.i ], [ %call8.i401.i, %do.end.i406.i ], [ %call8.i284.i, %do.end.i289.i ]
  %313 = ptrtoint ptr %usb_err13.i38 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call8.i297.sink.i, ptr %usb_err13.i38, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.sink.split.i, %if.end.i403.i.if.end74.i_crit_edge, %ov518_reg_w32.exit394.i.if.end74.i_crit_edge, %ov518_reg_w32.exit381.i.if.end74.i_crit_edge, %ov518_reg_w32.exit368.i.if.end74.i_crit_edge, %ov518_reg_w32.exit355.i.if.end74.i_crit_edge, %ov518_reg_w32.exit342.i.if.end74.i_crit_edge, %ov518_reg_w32.exit329.i.if.end74.i_crit_edge, %ov518_reg_w32.exit316.i.if.end74.i_crit_edge, %ov518_reg_w32.exit303.i.if.end74.i_crit_edge, %if.else73.i.if.end74.i_crit_edge, %if.end.i286.i.if.end74.i_crit_edge, %ov518_reg_w32.exit277.i.if.end74.i_crit_edge, %ov518_reg_w32.exit264.i.if.end74.i_crit_edge, %ov518_reg_w32.exit251.i.if.end74.i_crit_edge, %ov518_reg_w32.exit238.i.if.end74.i_crit_edge, %ov518_reg_w32.exit225.i.if.end74.i_crit_edge, %ov518_reg_w32.exit212.i.if.end74.i_crit_edge, %ov518_reg_w32.exit199.i.if.end74.i_crit_edge, %ov518_reg_w32.exit186.i.if.end74.i_crit_edge, %if.then72.i.if.end74.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 128) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %sensor.i50 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %314 = ptrtoint ptr %sensor.i50 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %sensor.i50, align 1
  %conv.i51 = sext i8 %315 to i32
  %316 = zext i32 %conv.i51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %316, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %conv.i51, label %while.body.i.preheader.i [
    i32 11, label %sw.bb7.sw.epilog_crit_edge
    i32 12, label %while.body.i156.preheader.i
  ]

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.i156.preheader.i:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 159) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 84, i16 noundef zeroext 15) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 162, i16 noundef zeroext 32) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 163, i16 noundef zeroext 24) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 165, i16 noundef zeroext 40) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 85, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext 12) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 56) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 34, i16 noundef zeroext 29) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 23, i16 noundef zeroext 80) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 64, i16 noundef zeroext 255) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 70, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 89, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 0) #7
  br label %sw.epilog.i59

while.body.i.preheader.i:                         ; preds = %sw.bb7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 93, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 83, i16 noundef zeroext 159) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 84, i16 noundef zeroext 15) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 162, i16 noundef zeroext 32) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 163, i16 noundef zeroext 24) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 165, i16 noundef zeroext 40) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 85, i16 noundef zeroext 2) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 34, i16 noundef zeroext 29) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 23, i16 noundef zeroext 80) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 55, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 64, i16 noundef zeroext 255) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 70, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 89, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 0) #7
  %317 = ptrtoint ptr %sensor.i50 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %sensor.i50, align 1
  %.off.i = add i8 %318, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %while.body.i.preheader.i.sw.epilog.i59_crit_edge

while.body.i.preheader.i.sw.epilog.i59_crit_edge: ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i59

if.then.i:                                        ; preds = %while.body.i.preheader.i
  %call.i.i52 = tail call fastcc i32 @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %cmp5.i.i53 = icmp slt i32 %call.i.i52, 0
  br i1 %cmp5.i.i53, label %if.then.i.sw.epilog.i59_crit_edge, label %if.end.i.i56

if.then.i.sw.epilog.i59_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i59

if.end.i.i56:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %319 = trunc i32 %call.i.i52 to i8
  %conv13.i.i54 = or i8 %319, 16
  %conv15.i.i55 = zext i8 %conv13.i.i54 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext %conv15.i.i55) #7
  br label %sw.epilog.i59

sw.epilog.i59:                                    ; preds = %if.end.i.i56, %if.then.i.sw.epilog.i59_crit_edge, %while.body.i.preheader.i.sw.epilog.i59_crit_edge, %while.body.i156.preheader.i
  %320 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %pixfmt, align 8
  %shr.i = lshr i32 %321, 4
  %conv10.i = trunc i32 %shr.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext %conv10.i) #7
  %322 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %height, align 4
  %shr13.i = lshr i32 %323, 3
  %conv14.i = trunc i32 %shr13.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 17, i16 noundef zeroext %conv14.i) #7
  %324 = ptrtoint ptr %sensor.i50 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %sensor.i50, align 1
  %326 = zext i8 %325 to i64
  call void @__sanitizer_cov_trace_switch(i64 %326, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %325, label %sw.epilog.i59.if.else37.i_crit_edge [
    i8 12, label %land.lhs.true.i61
    i8 10, label %land.lhs.true26.i
  ]

sw.epilog.i59.if.else37.i_crit_edge:              ; preds = %sw.epilog.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37.i

land.lhs.true.i61:                                ; preds = %sw.epilog.i59
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %327 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cam.i, align 4
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %329 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %curr_mode.i, align 1
  %idxprom.i = zext i8 %330 to i32
  %priv.i = getelementptr %struct.v4l2_pix_format, ptr %328, i32 %idxprom.i, i32 7
  %331 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool.not.i60 = icmp eq i32 %332, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.if.else37.i_crit_edge, label %land.lhs.true.i61.if.end39.i_crit_edge

land.lhs.true.i61.if.end39.i_crit_edge:           ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

land.lhs.true.i61.if.else37.i_crit_edge:          ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37.i

land.lhs.true26.i:                                ; preds = %sw.epilog.i59
  %cam28.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %333 = ptrtoint ptr %cam28.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cam28.i, align 4
  %curr_mode31.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %335 = ptrtoint ptr %curr_mode31.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %curr_mode31.i, align 1
  %idxprom32.i = zext i8 %336 to i32
  %priv34.i = getelementptr %struct.v4l2_pix_format, ptr %334, i32 %idxprom32.i, i32 7
  %337 = ptrtoint ptr %priv34.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %priv34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool35.not.i = icmp eq i32 %338, 0
  br i1 %tobool35.not.i, label %land.lhs.true26.i.if.else37.i_crit_edge, label %land.lhs.true26.i.if.end39.i_crit_edge

land.lhs.true26.i.if.end39.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

land.lhs.true26.i.if.else37.i_crit_edge:          ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37.i

if.else37.i:                                      ; preds = %land.lhs.true26.i.if.else37.i_crit_edge, %land.lhs.true.i61.if.else37.i_crit_edge, %sw.epilog.i59.if.else37.i_crit_edge
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else37.i, %land.lhs.true26.i.if.end39.i_crit_edge, %land.lhs.true.i61.if.end39.i_crit_edge
  %.sink.i62 = phi i16 [ 0, %if.else37.i ], [ 4, %land.lhs.true.i61.if.end39.i_crit_edge ], [ 1, %land.lhs.true26.i.if.end39.i_crit_edge ]
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 18, i16 noundef zeroext %.sink.i62) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 19, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 21, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 22, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 37, i16 noundef zeroext 3) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 38, i16 noundef zeroext 0) #7
  %339 = load i32, ptr @frame_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp40.i = icmp sgt i32 %339, 0
  br i1 %cmp40.i, label %if.then42.i, label %if.end39.i.if.end44.i65_crit_edge

if.end39.i.if.end44.i65_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i65

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv43.i = trunc i32 %339 to i8
  %frame_rate.i63 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %340 = ptrtoint ptr %frame_rate.i63 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %conv43.i, ptr %frame_rate.i63, align 1
  br label %if.end44.i65

if.end44.i65:                                     ; preds = %if.then42.i, %if.end39.i.if.end44.i65_crit_edge
  %clockdiv.i64 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %341 = ptrtoint ptr %clockdiv.i64 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 0, ptr %clockdiv.i64, align 2
  %342 = ptrtoint ptr %sensor.i50 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %sensor.i50, align 1
  %conv46.i = sext i8 %343 to i32
  %344 = zext i32 %conv46.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %conv46.i, label %if.end44.i65.sw.epilog_crit_edge [
    i32 9, label %if.end44.i65.sw.bb47.i_crit_edge
    i32 10, label %if.end44.i65.sw.bb47.i_crit_edge110
    i32 14, label %sw.bb60.i
    i32 12, label %do.body.i
  ]

if.end44.i65.sw.bb47.i_crit_edge110:              ; preds = %if.end44.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i

if.end44.i65.sw.bb47.i_crit_edge:                 ; preds = %if.end44.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i

if.end44.i65.sw.epilog_crit_edge:                 ; preds = %if.end44.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb47.i:                                        ; preds = %if.end44.i65.sw.bb47.i_crit_edge, %if.end44.i65.sw.bb47.i_crit_edge110
  %frame_rate48.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %345 = ptrtoint ptr %frame_rate48.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %frame_rate48.i, align 1
  %347 = zext i8 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %347, ptr @__sancov_gen_cov_switch_values.209)
  switch i8 %346, label %sw.default50.i [
    i8 25, label %sw.bb51.i
    i8 20, label %sw.bb52.i
    i8 15, label %sw.bb53.i
    i8 10, label %sw.bb55.i
    i8 5, label %sw.bb57.i66
  ]

sw.default50.i:                                   ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 12) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 255) #7
  br label %sw.epilog

sw.bb51.i:                                        ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 12) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 31) #7
  br label %sw.epilog

sw.bb52.i:                                        ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 12) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 27) #7
  br label %sw.epilog

sw.bb53.i:                                        ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 255) #7
  %348 = ptrtoint ptr %clockdiv.i64 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 1, ptr %clockdiv.i64, align 2
  br label %sw.epilog

sw.bb55.i:                                        ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 31) #7
  %349 = ptrtoint ptr %clockdiv.i64 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 1, ptr %clockdiv.i64, align 2
  br label %sw.epilog

sw.bb57.i66:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 4) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 27) #7
  %350 = ptrtoint ptr %clockdiv.i64 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 1, ptr %clockdiv.i64, align 2
  br label %sw.epilog

sw.bb60.i:                                        ; preds = %if.end44.i65
  %frame_rate61.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %351 = ptrtoint ptr %frame_rate61.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %frame_rate61.i, align 1
  %353 = zext i8 %352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.210)
  switch i8 %352, label %sw.default63.i [
    i8 10, label %sw.bb64.i
    i8 5, label %sw.bb65.i67
  ]

sw.default63.i:                                   ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 6) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 255) #7
  br label %sw.epilog

sw.bb64.i:                                        ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 6) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 31) #7
  br label %sw.epilog

sw.bb65.i67:                                      ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 6) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 27) #7
  br label %sw.epilog

do.body.i:                                        ; preds = %if.end44.i65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %354 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %354)
  %cmp68.i = icmp sgt i32 %354, 2
  br i1 %cmp68.i, label %do.end.i71, label %do.body.i.do.end80.i_crit_edge

do.body.i.do.end80.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

do.end.i71:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i68 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %frame_rate72.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %355 = ptrtoint ptr %frame_rate72.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %frame_rate72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %356)
  %cmp74.i = icmp eq i8 %356, 0
  %narrow.i69 = select i1 %cmp74.i, i8 15, i8 %356
  %spec.select.i = zext i8 %narrow.i69 to i32
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %name.i68, i32 noundef %spec.select.i) #10
  br label %do.end80.i

do.end80.i:                                       ; preds = %do.end.i71, %do.body.i.do.end80.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 164, i16 noundef zeroext 16) #7
  %frame_rate81.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %357 = ptrtoint ptr %frame_rate81.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %frame_rate81.i, align 1
  %359 = zext i8 %358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.211)
  switch i8 %358, label %sw.default85.i [
    i8 30, label %sw.bb83.i
    i8 20, label %sw.bb84.i
  ]

sw.bb83.i:                                        ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 255) #7
  br label %sw.epilog

sw.bb84.i:                                        ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 27) #7
  br label %sw.epilog

sw.default85.i:                                   ; preds = %do.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 35, i16 noundef zeroext 255) #7
  %360 = ptrtoint ptr %clockdiv.i64 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 1, ptr %clockdiv.i64, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  tail call fastcc void @w9968cf_set_crop_window(ptr noundef %gspca_dev) #7
  %361 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %pixfmt, align 8
  %conv.i73 = trunc i32 %362 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext %conv.i73) #7
  %363 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %height, align 4
  %conv3.i = trunc i32 %364 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 21, i16 noundef zeroext %conv3.i) #7
  %365 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %pixfmt, align 8
  %conv7.i = trunc i32 %366 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 48, i16 noundef zeroext %conv7.i) #7
  %367 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %height, align 4
  %conv11.i = trunc i32 %368 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 49, i16 noundef zeroext %conv11.i) #7
  %curr_mode.i75 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %369 = ptrtoint ptr %curr_mode.i75 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %curr_mode.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %370)
  %371 = icmp ugt i8 %370, 1
  %372 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %pixfmt, align 8
  br i1 %371, label %if.then.i76, label %sw.bb8.if.end.i80_crit_edge

sw.bb8.if.end.i80_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i80

if.then.i76:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %div113.i = lshr i32 %373, 1
  %conv17.i = trunc i32 %div113.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 44, i16 noundef zeroext %conv17.i) #7
  %374 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %pixfmt, align 8
  %div21114.i = lshr i32 %375, 2
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.then.i76, %sw.bb8.if.end.i80_crit_edge
  %.sink121.i = phi i32 [ %div21114.i, %if.then.i76 ], [ %373, %sw.bb8.if.end.i80_crit_edge ]
  %.sink.i77 = phi i16 [ 45, %if.then.i76 ], [ 44, %sw.bb8.if.end.i80_crit_edge ]
  %conv26.i78 = trunc i32 %.sink121.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %.sink.i77, i16 noundef zeroext %conv26.i78) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -16617) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext -16624) #7
  %376 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %pixfmt, align 8
  %378 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %height, align 4
  %mul.i = mul i32 %379, %377
  %conv33.i79 = trunc i32 %mul.i to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 61, i16 noundef zeroext %conv33.i79) #7
  %380 = lshr i32 %mul.i, 16
  %conv34.i = trunc i32 %380 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 62, i16 noundef zeroext %conv34.i) #7
  %381 = ptrtoint ptr %curr_mode.i75 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %curr_mode.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %382)
  %383 = icmp ugt i8 %382, 1
  br i1 %383, label %if.then42.i83, label %if.end.i80.w9968cf_mode_init_regs.exit_crit_edge

if.end.i80.w9968cf_mode_init_regs.exit_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_mode_init_regs.exit

if.then42.i83:                                    ; preds = %if.end.i80
  %jpeg_hdr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %384 = call ptr @memcpy(ptr %jpeg_hdr.i, ptr @jpeg_head, i32 556)
  %jpegqual.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %385 = ptrtoint ptr %jpegqual.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %jpegqual.i, align 8
  %call.i81 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %386) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i81)
  %cmp.i.i82 = icmp slt i32 %call.i81, 1
  br i1 %cmp.i.i82, label %if.then42.i83.if.end4.i.i_crit_edge, label %if.else.i.i

if.then42.i83.if.end4.i.i_crit_edge:              ; preds = %if.then42.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.else.i.i:                                      ; preds = %if.then42.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call.i81)
  %cmp1.i.i = icmp ult i32 %call.i81, 50
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div31.rhs.trunc.i.i = trunc i32 %call.i81 to i16
  %div3132.i.i = udiv i16 5000, %div31.rhs.trunc.i.i
  %div31.zext.i.i = zext i16 %div3132.i.i to i32
  br label %if.end4.i.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.neg.i.i = mul i32 %call.i81, -2
  %sub.i.i = add i32 %mul.neg.i.i, 200
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.else3.i.i, %if.then2.i.i, %if.then42.i83.if.end4.i.i_crit_edge
  %sc.0.i.i = phi i32 [ %div31.zext.i.i, %if.then2.i.i ], [ %sub.i.i, %if.else3.i.i ], [ 5000, %if.then42.i83.if.end4.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end4.i.i
  %i.033.i.i = phi i32 [ 0, %if.end4.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.033.i.i, 7
  %arrayidx.i.i = getelementptr [556 x i8], ptr @jpeg_head, i32 0, i32 %add.i.i
  %387 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %388 to i32
  %mul6.i.i = mul i32 %sc.0.i.i, %conv.i.i
  %add7.i.i = add i32 %mul6.i.i, 50
  %div8.i.i = sdiv i32 %add7.i.i, 100
  %conv9.i.i = trunc i32 %div8.i.i to i8
  %arrayidx11.i.i = getelementptr i8, ptr %jpeg_hdr.i, i32 %add.i.i
  %389 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %conv9.i.i, ptr %arrayidx11.i.i, align 1
  %add12.i.i = add nuw nsw i32 %i.033.i.i, 72
  %arrayidx13.i.i = getelementptr [556 x i8], ptr @jpeg_head, i32 0, i32 %add12.i.i
  %390 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %391 to i32
  %mul15.i.i = mul i32 %sc.0.i.i, %conv14.i.i
  %add16.i.i = add i32 %mul15.i.i, 50
  %div17.i.i = sdiv i32 %add16.i.i, 100
  %conv18.i.i = trunc i32 %div17.i.i to i8
  %arrayidx20.i.i = getelementptr i8, ptr %jpeg_hdr.i, i32 %add12.i.i
  %392 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %conv18.i.i, ptr %arrayidx20.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %jpeg_set_qual.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

jpeg_set_qual.exit.i:                             ; preds = %for.body.i.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 57, i16 noundef zeroext 16) #7
  %arrayidx.i115.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 21, i32 7
  %arrayidx8.i.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 21, i32 72
  br label %for.body.i120.i

for.body.i120.i:                                  ; preds = %for.body.i120.i.for.body.i120.i_crit_edge, %jpeg_set_qual.exit.i
  %j.039.i.i = phi i32 [ 0, %jpeg_set_qual.exit.i ], [ %add23.i.i, %for.body.i120.i.for.body.i120.i_crit_edge ]
  %i.038.i.i = phi i32 [ 0, %jpeg_set_qual.exit.i ], [ %inc.i118.i, %for.body.i120.i.for.body.i120.i_crit_edge ]
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx.i115.i, i32 %j.039.i.i
  %393 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx1.i.i, align 1
  %conv.i116.i = zext i8 %394 to i16
  %add.i117.i = or i32 %j.039.i.i, 1
  %arrayidx4.i.i = getelementptr i8, ptr %arrayidx.i115.i, i32 %add.i117.i
  %395 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %396 to i16
  %shl.i.i = shl nuw i16 %conv5.i.i, 8
  %or.i.i84 = or i16 %shl.i.i, %conv.i116.i
  %arrayidx9.i.i = getelementptr i8, ptr %arrayidx8.i.i, i32 %j.039.i.i
  %397 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %398 to i16
  %arrayidx14.i.i = getelementptr i8, ptr %arrayidx8.i.i, i32 %add.i117.i
  %399 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i85 = zext i8 %400 to i16
  %shl16.i.i = shl nuw i16 %conv15.i.i85, 8
  %or17.i.i = or i16 %shl16.i.i, %conv10.i.i
  %401 = trunc i32 %i.038.i.i to i16
  %conv20.i.i = add i16 %401, 64
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv20.i.i, i16 noundef zeroext %or.i.i84) #7
  %conv22.i.i = add i16 %401, 96
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv22.i.i, i16 noundef zeroext %or17.i.i) #7
  %inc.i118.i = add nuw nsw i32 %i.038.i.i, 1
  %add23.i.i = add nuw nsw i32 %j.039.i.i, 2
  %exitcond.not.i119.i = icmp eq i32 %inc.i118.i, 32
  br i1 %exitcond.not.i119.i, label %w9968cf_upload_quantizationtables.exit.i, label %for.body.i120.i.for.body.i120.i_crit_edge

for.body.i120.i.for.body.i120.i_crit_edge:        ; preds = %for.body.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i120.i

w9968cf_upload_quantizationtables.exit.i:         ; preds = %for.body.i120.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 57, i16 noundef zeroext 18) #7
  %402 = ptrtoint ptr %jpegqual.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %jpegqual.i, align 8
  %tobool.not.i.i = icmp eq ptr %403, null
  br i1 %tobool.not.i.i, label %w9968cf_upload_quantizationtables.exit.i.w9968cf_mode_init_regs.exit_crit_edge, label %if.end.i.i86

w9968cf_upload_quantizationtables.exit.i.w9968cf_mode_init_regs.exit_crit_edge: ; preds = %w9968cf_upload_quantizationtables.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_mode_init_regs.exit

if.end.i.i86:                                     ; preds = %w9968cf_upload_quantizationtables.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %403, i32 0, i32 2
  %404 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %405, i32 0, i32 1
  %406 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %407, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %403, i1 noundef zeroext true) #7
  %408 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i6.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %lock.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %lock.i6.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %411) #7
  br label %w9968cf_mode_init_regs.exit

w9968cf_mode_init_regs.exit:                      ; preds = %if.end.i.i86, %w9968cf_upload_quantizationtables.exit.i.w9968cf_mode_init_regs.exit_crit_edge, %if.end.i80.w9968cf_mode_init_regs.exit_crit_edge
  %sensor.i87 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %412 = ptrtoint ptr %sensor.i87 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %sensor.i87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %413)
  %cmp54.i = icmp eq i8 %413, 7
  %414 = ptrtoint ptr %curr_mode.i75 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %curr_mode.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %415)
  %416 = icmp ugt i8 %415, 1
  %val.0.v.i = select i1 %416, i16 3, i16 128
  %val.0.i = select i1 %cmp54.i, i16 -26624, i16 -28672
  %conv73.i = or i16 %val.0.v.i, %val.0.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 22, i16 noundef zeroext %conv73.i) #7
  %empty_packet.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 16
  %417 = ptrtoint ptr %empty_packet.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %empty_packet.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %w9968cf_mode_init_regs.exit, %sw.default85.i, %sw.bb84.i, %sw.bb83.i, %sw.bb65.i67, %sw.bb64.i, %sw.default63.i, %sw.bb57.i66, %sw.bb55.i, %sw.bb53.i, %sw.bb52.i, %sw.bb51.i, %sw.default50.i, %if.end44.i65.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %if.end74.i, %if.then11.i40, %do.end.i35, %sw.epilog76.i, %if.then11.i, %do.end.i, %entry.sw.epilog_crit_edge
  %sensor.i88 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %418 = ptrtoint ptr %sensor.i88 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %sensor.i88, align 1
  %conv.i89 = sext i8 %419 to i32
  %420 = zext i32 %conv.i89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %420, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %conv.i89, label %sw.epilog.i96 [
    i32 0, label %sw.epilog.sw.bb.i90_crit_edge
    i32 1, label %sw.epilog.sw.bb.i90_crit_edge111
    i32 2, label %sw.epilog.sw.bb.i90_crit_edge112
    i32 12, label %sw.epilog.sw.bb.i90_crit_edge113
    i32 15, label %sw.epilog.sw.bb.i90_crit_edge114
    i32 11, label %sw.bb1.i
  ]

sw.epilog.sw.bb.i90_crit_edge114:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i90

sw.epilog.sw.bb.i90_crit_edge113:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i90

sw.epilog.sw.bb.i90_crit_edge112:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i90

sw.epilog.sw.bb.i90_crit_edge111:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i90

sw.epilog.sw.bb.i90_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i90

sw.bb.i90:                                        ; preds = %sw.epilog.sw.bb.i90_crit_edge, %sw.epilog.sw.bb.i90_crit_edge111, %sw.epilog.sw.bb.i90_crit_edge112, %sw.epilog.sw.bb.i90_crit_edge113, %sw.epilog.sw.bb.i90_crit_edge114
  tail call fastcc void @mode_init_ov_sensor_regs(ptr noundef %gspca_dev) #7
  br label %set_ov_sensor_window.exit

sw.bb1.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ov519_set_mode(ptr noundef %gspca_dev) #7
  tail call fastcc void @ov519_set_fr(ptr noundef %gspca_dev) #7
  br label %set_ov_sensor_window.exit

sw.epilog.i96:                                    ; preds = %sw.epilog
  %cam.i91 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %421 = ptrtoint ptr %cam.i91 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cam.i91, align 4
  %curr_mode.i92 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %423 = ptrtoint ptr %curr_mode.i92 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %curr_mode.i92, align 1
  %idxprom.i93 = zext i8 %424 to i32
  %priv.i94 = getelementptr %struct.v4l2_pix_format, ptr %422, i32 %idxprom.i93, i32 7
  %425 = ptrtoint ptr %priv.i94 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %priv.i94, align 4
  %and.i95 = and i32 %426, 1
  %427 = zext i32 %conv.i89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %427, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %conv.i89, label %sw.epilog.i96.set_ov_sensor_window.exit_crit_edge [
    i32 14, label %sw.bb33.i
    i32 6, label %sw.epilog.i96.sw.default38.i_crit_edge
    i32 13, label %sw.epilog.i96.sw.default38.i_crit_edge115
    i32 3, label %sw.epilog.i96.sw.bb14.i_crit_edge
    i32 4, label %sw.epilog.i96.sw.bb14.i_crit_edge116
    i32 5, label %sw.epilog.i96.sw.bb14.i_crit_edge117
    i32 7, label %sw.epilog.i96.sw.bb24.i_crit_edge
    i32 8, label %sw.epilog.i96.sw.bb24.i_crit_edge118
    i32 9, label %sw.epilog.i96.sw.bb25.i_crit_edge
    i32 10, label %sw.epilog.i96.sw.bb25.i_crit_edge119
  ]

sw.epilog.i96.sw.bb25.i_crit_edge119:             ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25.i

sw.epilog.i96.sw.bb25.i_crit_edge:                ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25.i

sw.epilog.i96.sw.bb24.i_crit_edge118:             ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24.i

sw.epilog.i96.sw.bb24.i_crit_edge:                ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24.i

sw.epilog.i96.sw.bb14.i_crit_edge117:             ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

sw.epilog.i96.sw.bb14.i_crit_edge116:             ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

sw.epilog.i96.sw.bb14.i_crit_edge:                ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

sw.epilog.i96.sw.default38.i_crit_edge115:        ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default38.i

sw.epilog.i96.sw.default38.i_crit_edge:           ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default38.i

sw.epilog.i96.set_ov_sensor_window.exit_crit_edge: ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_ov_sensor_window.exit

sw.bb14.i:                                        ; preds = %sw.epilog.i96.sw.bb14.i_crit_edge, %sw.epilog.i96.sw.bb14.i_crit_edge116, %sw.epilog.i96.sw.bb14.i_crit_edge117
  %and9.i = and i32 %426, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %419)
  %cmp.i97 = icmp ne i8 %419, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i98 = icmp eq i32 %and.i95, 0
  %or.cond.i = select i1 %cmp.i97, i1 true, i1 %tobool.not.i98
  %hwsbase.0.i = select i1 %or.cond.i, i32 56, i32 57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool18.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool18.not.i, label %sw.bb14.i.sw.bb29.i_crit_edge, label %if.then19.i

sw.bb14.i.sw.bb29.i_crit_edge:                    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29.i

if.then19.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i99 = add nuw nsw i32 %hwsbase.0.i, 8
  br label %sw.bb29.i

sw.bb24.i:                                        ; preds = %sw.epilog.i96.sw.bb24.i_crit_edge, %sw.epilog.i96.sw.bb24.i_crit_edge118
  br label %sw.default38.i

sw.bb25.i:                                        ; preds = %sw.epilog.i96.sw.bb25.i_crit_edge, %sw.epilog.i96.sw.bb25.i_crit_edge119
  br label %sw.default38.i

sw.bb29.i:                                        ; preds = %if.then19.i, %sw.bb14.i.sw.bb29.i_crit_edge
  %hwsbase.1.i = phi i32 [ %add.i99, %if.then19.i ], [ %hwsbase.0.i, %sw.bb14.i.sw.bb29.i_crit_edge ]
  %hwebase.0.i = phi i16 [ 66, %if.then19.i ], [ 58, %sw.bb14.i.sw.bb29.i_crit_edge ]
  %vwsbase.0.i = phi i8 [ 16, %if.then19.i ], [ 5, %sw.bb14.i.sw.bb29.i_crit_edge ]
  %vwebase.0.i = phi i16 [ 17, %if.then19.i ], [ 6, %sw.bb14.i.sw.bb29.i_crit_edge ]
  %428 = trunc i32 %and.i95 to i16
  %429 = xor i16 %428, 1
  br label %sw.epilog43.i

sw.bb33.i:                                        ; preds = %sw.epilog.i96
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool34.not.i = icmp eq i32 %and.i95, 0
  %.86.i = select i1 %tobool34.not.i, i16 2, i16 1
  br label %sw.epilog43.i

sw.default38.i:                                   ; preds = %sw.bb25.i, %sw.bb24.i, %sw.epilog.i96.sw.default38.i_crit_edge, %sw.epilog.i96.sw.default38.i_crit_edge115
  %hwsbase.1.ph.i = phi i32 [ 56, %sw.epilog.i96.sw.default38.i_crit_edge ], [ 56, %sw.epilog.i96.sw.default38.i_crit_edge115 ], [ 47, %sw.bb24.i ], [ 26, %sw.bb25.i ]
  %hwebase.0.ph.i = phi i16 [ 58, %sw.epilog.i96.sw.default38.i_crit_edge ], [ 58, %sw.epilog.i96.sw.default38.i_crit_edge115 ], [ 47, %sw.bb24.i ], [ 26, %sw.bb25.i ]
  %vwsbase.0.ph.i = phi i8 [ 5, %sw.epilog.i96.sw.default38.i_crit_edge ], [ 5, %sw.epilog.i96.sw.default38.i_crit_edge115 ], [ 5, %sw.bb24.i ], [ 3, %sw.bb25.i ]
  %vwebase.0.ph.i = phi i16 [ 5, %sw.epilog.i96.sw.default38.i_crit_edge ], [ 5, %sw.epilog.i96.sw.default38.i_crit_edge115 ], [ 5, %sw.bb24.i ], [ 3, %sw.bb25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool39.not.i = icmp eq i32 %and.i95, 0
  %.87.i = select i1 %tobool39.not.i, i16 2, i16 1
  %430 = trunc i32 %and.i95 to i16
  %431 = xor i16 %430, 1
  br label %sw.epilog43.i

sw.epilog43.i:                                    ; preds = %sw.default38.i, %sw.bb33.i, %sw.bb29.i
  %vwebase.099.i = phi i16 [ %vwebase.0.i, %sw.bb29.i ], [ 2, %sw.bb33.i ], [ %vwebase.0.ph.i, %sw.default38.i ]
  %vwsbase.097.i = phi i8 [ %vwsbase.0.i, %sw.bb29.i ], [ 2, %sw.bb33.i ], [ %vwsbase.0.ph.i, %sw.default38.i ]
  %hwebase.095.i = phi i16 [ %hwebase.0.i, %sw.bb29.i ], [ 30, %sw.bb33.i ], [ %hwebase.0.ph.i, %sw.default38.i ]
  %hwsbase.193.i = phi i32 [ %hwsbase.1.i, %sw.bb29.i ], [ 30, %sw.bb33.i ], [ %hwsbase.1.ph.i, %sw.default38.i ]
  %hwscale.0.i = phi i16 [ %429, %sw.bb29.i ], [ %.86.i, %sw.bb33.i ], [ %.87.i, %sw.default38.i ]
  %vwscale.0.i = phi i16 [ %429, %sw.bb29.i ], [ %.86.i, %sw.bb33.i ], [ %431, %sw.default38.i ]
  tail call fastcc void @mode_init_ov_sensor_regs(ptr noundef %gspca_dev) #7
  %conv44.i = trunc i32 %hwsbase.193.i to i8
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 23, i8 noundef zeroext %conv44.i) #7
  %432 = ptrtoint ptr %sensor_width to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %sensor_width, align 2
  %shr.i100 = lshr i16 %433, %hwscale.0.i
  %add46.i = add i16 %shr.i100, %hwebase.095.i
  %conv47.i = trunc i16 %add46.i to i8
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 24, i8 noundef zeroext %conv47.i) #7
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 25, i8 noundef zeroext %vwsbase.097.i) #7
  %434 = ptrtoint ptr %sensor_height to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %sensor_height, align 8
  %shr50.i = lshr i16 %435, %vwscale.0.i
  %add51.i = add i16 %shr50.i, %vwebase.099.i
  %conv52.i = trunc i16 %add51.i to i8
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 26, i8 noundef zeroext %conv52.i) #7
  br label %set_ov_sensor_window.exit

set_ov_sensor_window.exit:                        ; preds = %sw.epilog43.i, %sw.epilog.i96.set_ov_sensor_window.exit_crit_edge, %sw.bb1.i, %sw.bb.i90
  %snapshot_needs_reset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %436 = ptrtoint ptr %snapshot_needs_reset to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 1, ptr %snapshot_needs_reset, align 1
  tail call void @sd_reset_snapshot(ptr noundef %gspca_dev)
  %first_frame = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %437 = ptrtoint ptr %first_frame to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 3, ptr %first_frame, align 8
  tail call fastcc void @ov51x_restart(ptr noundef %gspca_dev)
  tail call fastcc void @ov51x_led_control(ptr noundef %gspca_dev, i32 noundef 1)
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %438 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %usb_err, align 8
  ret i32 %439
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.214)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge72
    i8 2, label %entry.sw.bb1_crit_edge
    i8 3, label %entry.sw.bb1_crit_edge73
    i8 4, label %sw.bb2
    i8 5, label %sw.bb3
    i8 6, label %sw.bb4
  ]

entry.sw.bb1_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge72:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge72
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %arrayidx1.i = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1.i, align 1
  %or86.i = or i8 %6, %4
  %arrayidx3.i = getelementptr i8, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3.i, align 1
  %or587.i = or i8 %or86.i, %8
  %arrayidx6.i = getelementptr i8, ptr %data, i32 3
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6.i, align 1
  %or888.i = or i8 %or587.i, %10
  %arrayidx9.i = getelementptr i8, ptr %data, i32 4
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9.i, align 1
  %or1189.i = or i8 %or888.i, %12
  %arrayidx12.i = getelementptr i8, ptr %data, i32 5
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12.i, align 1
  %or1490.i = or i8 %or1189.i, %14
  %arrayidx15.i = getelementptr i8, ptr %data, i32 6
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15.i, align 1
  %or1791.i = or i8 %or1490.i, %16
  %arrayidx18.i = getelementptr i8, ptr %data, i32 7
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18.i, align 1
  %or2092.i = or i8 %or1791.i, %18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or2092.i)
  %tobool.not.i = icmp eq i8 %or2092.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb.if.end57.i_crit_edge

sw.bb.if.end57.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %arrayidx21.i = getelementptr i8, ptr %data, i32 8
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21.i, align 1
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not.i = icmp eq i8 %21, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i.if.end57.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end57.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %22 = lshr i8 %20, 2
  %and26.i = and i8 %22, 1
  %snapshot_pressed.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %23 = ptrtoint ptr %snapshot_pressed.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %snapshot_pressed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %and26.i)
  %cmp.not.i.i = icmp eq i8 %24, %and26.i
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %input_dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %25 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input_dev.i.i, align 8
  %27 = zext i8 %and26.i to i32
  tail call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 212, i32 noundef %27) #7
  %28 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input_dev.i.i, align 8
  tail call void @input_event(ptr noundef %29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and26.i)
  %tobool.not.i.i = icmp eq i8 %and26.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %snapshot_needs_reset.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %30 = ptrtoint ptr %snapshot_needs_reset.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %snapshot_needs_reset.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then5.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %31 = ptrtoint ptr %snapshot_pressed.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %and26.i, ptr %snapshot_pressed.i.i, align 4
  br label %ov51x_handle_button.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and26.i)
  %tobool8.not.i.i = icmp eq i8 %and26.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i.ov51x_handle_button.exit.i_crit_edge, label %if.then9.i.i

if.else.i.i.ov51x_handle_button.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov51x_handle_button.exit.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %snapshot_needs_reset10.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %32 = ptrtoint ptr %snapshot_needs_reset10.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %snapshot_needs_reset10.i.i, align 1
  br label %ov51x_handle_button.exit.i

ov51x_handle_button.exit.i:                       ; preds = %if.then9.i.i, %if.else.i.i.ov51x_handle_button.exit.i_crit_edge, %if.end.i.i
  %33 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool31.not.i = icmp sgt i8 %34, -1
  br i1 %tobool31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %ov51x_handle_button.exit.i
  %arrayidx33.i = getelementptr i8, ptr %data, i32 9
  %35 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %36 to i32
  %add.i = shl nuw nsw i32 %conv34.i, 3
  %mul.i = add nuw nsw i32 %add.i, 8
  %pixfmt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %37 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %38)
  %cmp.not.i = icmp eq i32 %mul.i, %38
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then32.i.do.end.i_crit_edge

if.then32.i.do.end.i_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then32.i
  %arrayidx36.i = getelementptr i8, ptr %data, i32 10
  %39 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %40 to i32
  %add38.i = shl nuw nsw i32 %conv37.i, 3
  %mul39.i = add nuw nsw i32 %add38.i, 8
  %height.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul39.i, i32 %42)
  %cmp41.not.i = icmp eq i32 %mul39.i, %42
  br i1 %cmp41.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then32.i.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %arrayidx48.i = getelementptr i8, ptr %data, i32 10
  %43 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %44 to i32
  %add50.i = shl nuw nsw i32 %conv49.i, 3
  %mul51.i = add nuw nsw i32 %add50.i, 8
  %height55.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %45 = ptrtoint ptr %height55.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height55.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %name.i, i32 noundef %mul.i, i32 noundef %mul51.i, i32 noundef %38, i32 noundef %46) #10
  %last_packet_type.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %47 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %last_packet_type.i, align 4
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef 11) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %ov51x_handle_button.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %data, i32 noundef 0) #7
  %packet_nr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %48 = ptrtoint ptr %packet_nr.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %packet_nr.i, align 1
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else.i, %land.lhs.true.i.if.end57.i_crit_edge, %sw.bb.if.end57.i_crit_edge
  %dec.i = add i32 %len, -1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %dec.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge73
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data, align 1
  %arrayidx1.i18 = getelementptr i8, ptr %data, i32 1
  %51 = ptrtoint ptr %arrayidx1.i18 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx1.i18, align 1
  %or75.i = or i8 %52, %50
  %arrayidx3.i19 = getelementptr i8, ptr %data, i32 2
  %53 = ptrtoint ptr %arrayidx3.i19 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx3.i19, align 1
  %or576.i = or i8 %or75.i, %54
  %arrayidx6.i20 = getelementptr i8, ptr %data, i32 3
  %55 = ptrtoint ptr %arrayidx6.i20 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx6.i20, align 1
  %or877.i = or i8 %or576.i, %56
  %arrayidx9.i21 = getelementptr i8, ptr %data, i32 5
  %57 = ptrtoint ptr %arrayidx9.i21 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx9.i21, align 1
  %or1178.i = or i8 %or877.i, %58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or1178.i)
  %tobool.not.i22 = icmp eq i8 %or1178.i, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %sw.bb1.if.end.i43_crit_edge

sw.bb1.if.end.i43_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43

land.lhs.true.i24:                                ; preds = %sw.bb1
  %arrayidx12.i23 = getelementptr i8, ptr %data, i32 6
  %59 = ptrtoint ptr %arrayidx12.i23 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx12.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool14.not.i = icmp eq i8 %60, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i24.if.end.i43_crit_edge, label %if.then.i27

land.lhs.true.i24.if.end.i43_crit_edge:           ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43

if.then.i27:                                      ; preds = %land.lhs.true.i24
  %61 = lshr i8 %60, 1
  %62 = and i8 %61, 1
  %snapshot_pressed.i.i25 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %63 = ptrtoint ptr %snapshot_pressed.i.i25 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %snapshot_pressed.i.i25, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %62)
  %cmp.not.i.i26 = icmp eq i8 %64, %62
  br i1 %cmp.not.i.i26, label %if.then.i27.ov51x_handle_button.exit.i41_crit_edge, label %if.then.i.i30

if.then.i27.ov51x_handle_button.exit.i41_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ov51x_handle_button.exit.i41

if.then.i.i30:                                    ; preds = %if.then.i27
  %input_dev.i.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %65 = ptrtoint ptr %input_dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input_dev.i.i28, align 8
  %67 = zext i8 %62 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 212, i32 noundef %67) #7
  %68 = ptrtoint ptr %input_dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input_dev.i.i28, align 8
  tail call void @input_event(ptr noundef %69, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i29 = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i29, label %if.then.i.i30.if.end.i.i33_crit_edge, label %if.then5.i.i32

if.then.i.i30.if.end.i.i33_crit_edge:             ; preds = %if.then.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i33

if.then5.i.i32:                                   ; preds = %if.then.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  %snapshot_needs_reset.i.i31 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %70 = ptrtoint ptr %snapshot_needs_reset.i.i31 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %snapshot_needs_reset.i.i31, align 1
  br label %if.end.i.i33

if.end.i.i33:                                     ; preds = %if.then5.i.i32, %if.then.i.i30.if.end.i.i33_crit_edge
  %71 = ptrtoint ptr %snapshot_pressed.i.i25 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %62, ptr %snapshot_pressed.i.i25, align 4
  br label %ov51x_handle_button.exit.i41

ov51x_handle_button.exit.i41:                     ; preds = %if.end.i.i33, %if.then.i27.ov51x_handle_button.exit.i41_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  %packet_nr.i40 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %72 = ptrtoint ptr %packet_nr.i40 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %packet_nr.i40, align 1
  br label %if.end.i43

if.end.i43:                                       ; preds = %ov51x_handle_button.exit.i41, %land.lhs.true.i24.if.end.i43_crit_edge, %sw.bb1.if.end.i43_crit_edge
  %last_packet_type.i42 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %73 = ptrtoint ptr %last_packet_type.i42 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %last_packet_type.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp.i = icmp eq i8 %74, 0
  br i1 %cmp.i, label %if.end.i43.sw.epilog_crit_edge, label %if.end21.i

if.end.i43.sw.epilog_crit_edge:                   ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end21.i:                                       ; preds = %if.end.i43
  %and22.i = and i32 %len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i44 = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i44, label %if.end21.i.if.end48.i_crit_edge, label %if.then24.i

if.end21.i.if.end48.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then24.i:                                      ; preds = %if.end21.i
  %dec.i45 = add i32 %len, -1
  %packet_nr25.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %75 = ptrtoint ptr %packet_nr25.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %packet_nr25.i, align 1
  %arrayidx27.i = getelementptr i8, ptr %data, i32 %dec.i45
  %77 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %78)
  %cmp29.i = icmp eq i8 %76, %78
  br i1 %cmp29.i, label %if.then31.i, label %if.else.i46

if.then31.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i8 %76, 1
  %79 = ptrtoint ptr %packet_nr25.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %inc.i, ptr %packet_nr25.i, align 1
  br label %if.end48.i

if.else.i46:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp35.i = icmp ne i8 %76, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool39.not.i = icmp eq i8 %78, 0
  %or.cond.i = select i1 %cmp35.i, i1 %tobool39.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i46.if.end48.i_crit_edge, label %do.end.i49

if.else.i46.if.end48.i_crit_edge:                 ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

do.end.i49:                                       ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #9
  %name.i47 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv42.i = zext i8 %78 to i32
  %conv44.i = zext i8 %76 to i32
  %call.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name.i47, i32 noundef %conv42.i, i32 noundef %conv44.i) #10
  %80 = ptrtoint ptr %last_packet_type.i42 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %last_packet_type.i42, align 4
  br label %sw.epilog

if.end48.i:                                       ; preds = %if.else.i46.if.end48.i_crit_edge, %if.then31.i, %if.end21.i.if.end48.i_crit_edge
  %len.addr.0.i = phi i32 [ %dec.i45, %if.then31.i ], [ %len, %if.end21.i.if.end48.i_crit_edge ], [ %dec.i45, %if.else.i46.if.end48.i_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %len.addr.0.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %cmp.i50 = icmp eq i8 %82, -1
  br i1 %cmp.i50, label %land.lhs.true.i51, label %sw.bb2.if.end33.i_crit_edge

sw.bb2.if.end33.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

land.lhs.true.i51:                                ; preds = %sw.bb2
  %arrayidx2.i = getelementptr i8, ptr %data, i32 1
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %84)
  %cmp4.i = icmp eq i8 %84, -1
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i51.if.end33.i_crit_edge

land.lhs.true.i51.if.end33.i_crit_edge:           ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i51
  %arrayidx7.i = getelementptr i8, ptr %data, i32 2
  %85 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %86)
  %cmp9.i = icmp eq i8 %86, -1
  br i1 %cmp9.i, label %if.then.i52, label %land.lhs.true6.i.if.end33.i_crit_edge

land.lhs.true6.i.if.end33.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then.i52:                                      ; preds = %land.lhs.true6.i
  %arrayidx11.i = getelementptr i8, ptr %data, i32 3
  %87 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx11.i, align 1
  %89 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.215)
  switch i8 %88, label %if.then.i52.if.end33.i_crit_edge [
    i8 80, label %sw.bb.i
    i8 81, label %sw.bb22.i
  ]

if.then.i52.if.end33.i_crit_edge:                 ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

sw.bb.i:                                          ; preds = %if.then.i52
  %add.ptr.i = getelementptr i8, ptr %data, i32 16
  %sub.i = add i32 %len, -16
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %cmp15.i = icmp eq i8 %91, -1
  br i1 %cmp15.i, label %sw.bb.i.if.then21.i_crit_edge, label %lor.lhs.false.i53

sw.bb.i.if.then21.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

lor.lhs.false.i53:                                ; preds = %sw.bb.i
  %arrayidx17.i = getelementptr i8, ptr %data, i32 17
  %92 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %93)
  %cmp19.i = icmp eq i8 %93, -40
  br i1 %cmp19.i, label %lor.lhs.false.i53.if.then21.i_crit_edge, label %if.else.i55

lor.lhs.false.i53.if.then21.i_crit_edge:          ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i53.if.then21.i_crit_edge, %sw.bb.i.if.then21.i_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr.i, i32 noundef %sub.i) #7
  br label %sw.epilog

if.else.i55:                                      ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #9
  %last_packet_type.i54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %94 = ptrtoint ptr %last_packet_type.i54 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %last_packet_type.i54, align 4
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %if.then.i52
  %arrayidx23.i = getelementptr i8, ptr %data, i32 11
  %95 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx23.i, align 1
  %97 = and i8 %96, 1
  tail call fastcc void @ov51x_handle_button(ptr noundef %gspca_dev, i8 noundef zeroext %97) #7
  %arrayidx26.i = getelementptr i8, ptr %data, i32 9
  %98 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp28.not.i = icmp eq i8 %99, 0
  br i1 %cmp28.not.i, label %sw.bb22.i.if.end32.i_crit_edge, label %if.then30.i

sw.bb22.i.if.end32.i_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then30.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  %last_packet_type31.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %100 = ptrtoint ptr %last_packet_type31.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %last_packet_type31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %sw.bb22.i.if.end32.i_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  br label %sw.epilog

if.end33.i:                                       ; preds = %if.then.i52.if.end33.i_crit_edge, %land.lhs.true6.i.if.end33.i_crit_edge, %land.lhs.true.i51.if.end33.i_crit_edge, %sw.bb2.if.end33.i_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %len) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %len) #7
  %bulk_size.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %101 = ptrtoint ptr %bulk_size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bulk_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %len)
  %cmp.i56 = icmp ugt i32 %102, %len
  br i1 %cmp.i56, label %if.then.i58, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i58:                                      ; preds = %sw.bb3
  %first_frame.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %103 = ptrtoint ptr %first_frame.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %first_frame.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i57 = icmp eq i8 %104, 0
  br i1 %tobool.not.i57, label %if.then.i58.if.end8.i_crit_edge, label %if.then1.i

if.then.i58.if.end8.i_crit_edge:                  ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then1.i:                                       ; preds = %if.then.i58
  %dec.i59 = add i8 %104, -1
  %105 = ptrtoint ptr %first_frame.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %dec.i59, ptr %first_frame.i, align 8
  %image_len.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %106 = ptrtoint ptr %image_len.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %image_len.i, align 8
  %pixfmt.i60 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %108 = ptrtoint ptr %pixfmt.i60 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pixfmt.i60, align 8
  %height.i61 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %110 = ptrtoint ptr %height.i61 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %height.i61, align 4
  %mul.i62 = mul i32 %111, %109
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %mul.i62)
  %cmp6.i = icmp ult i32 %107, %mul.i62
  br i1 %cmp6.i, label %if.then7.i, label %if.then1.i.if.end8.i_crit_edge

if.then1.i.if.end8.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %last_packet_type.i63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %112 = ptrtoint ptr %last_packet_type.i63 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %last_packet_type.i63, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.then1.i.if.end8.i_crit_edge, %if.then.i58.if.end8.i_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %113 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %curr_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %115 = icmp ugt i8 %114, 1
  br i1 %115, label %if.then.i64, label %if.else.i70

if.then.i64:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp1.i = icmp sgt i32 %len, 1
  br i1 %cmp1.i, label %land.lhs.true.i65, label %if.then.i64.w9968cf_pkt_scan.exit_crit_edge

if.then.i64.w9968cf_pkt_scan.exit_crit_edge:      ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_pkt_scan.exit

land.lhs.true.i65:                                ; preds = %if.then.i64
  %116 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %cmp3.i = icmp eq i8 %117, -1
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i65.w9968cf_pkt_scan.exit_crit_edge

land.lhs.true.i65.w9968cf_pkt_scan.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_pkt_scan.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i65
  %arrayidx6.i66 = getelementptr i8, ptr %data, i32 1
  %118 = ptrtoint ptr %arrayidx6.i66 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx6.i66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %119)
  %cmp8.i = icmp eq i8 %119, -40
  br i1 %cmp8.i, label %if.then10.i, label %land.lhs.true5.i.w9968cf_pkt_scan.exit_crit_edge

land.lhs.true5.i.w9968cf_pkt_scan.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_pkt_scan.exit

if.then10.i:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  %jpeg_hdr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr.i, i32 noundef 556) #7
  %sub.i67 = add nsw i32 %len, -2
  %add.ptr.i68 = getelementptr i8, ptr %data, i32 2
  br label %w9968cf_pkt_scan.exit

if.else.i70:                                      ; preds = %sw.bb4
  %empty_packet.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 16
  %120 = ptrtoint ptr %empty_packet.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %empty_packet.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i69 = icmp eq i8 %121, 0
  br i1 %tobool.not.i69, label %if.else.i70.w9968cf_pkt_scan.exit_crit_edge, label %if.then11.i

if.else.i70.w9968cf_pkt_scan.exit_crit_edge:      ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_pkt_scan.exit

if.then11.i:                                      ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  %122 = ptrtoint ptr %empty_packet.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %empty_packet.i, align 1
  br label %w9968cf_pkt_scan.exit

w9968cf_pkt_scan.exit:                            ; preds = %if.then11.i, %if.else.i70.w9968cf_pkt_scan.exit_crit_edge, %if.then10.i, %land.lhs.true5.i.w9968cf_pkt_scan.exit_crit_edge, %land.lhs.true.i65.w9968cf_pkt_scan.exit_crit_edge, %if.then.i64.w9968cf_pkt_scan.exit_crit_edge
  %data.addr.0.i = phi ptr [ %add.ptr.i68, %if.then10.i ], [ %data, %land.lhs.true5.i.w9968cf_pkt_scan.exit_crit_edge ], [ %data, %land.lhs.true.i65.w9968cf_pkt_scan.exit_crit_edge ], [ %data, %if.then.i64.w9968cf_pkt_scan.exit_crit_edge ], [ %data, %if.then11.i ], [ %data, %if.else.i70.w9968cf_pkt_scan.exit_crit_edge ]
  %len.addr.0.i71 = phi i32 [ %sub.i67, %if.then10.i ], [ %len, %land.lhs.true5.i.w9968cf_pkt_scan.exit_crit_edge ], [ %len, %land.lhs.true.i65.w9968cf_pkt_scan.exit_crit_edge ], [ %len, %if.then.i64.w9968cf_pkt_scan.exit_crit_edge ], [ %len, %if.then11.i ], [ %len, %if.else.i70.w9968cf_pkt_scan.exit_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0.i, i32 noundef %len.addr.0.i71) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %w9968cf_pkt_scan.exit, %if.end8.i, %sw.bb3.sw.epilog_crit_edge, %if.end33.i, %if.end32.i, %if.else.i55, %if.then21.i, %if.end48.i, %do.end.i49, %if.end.i43.sw.epilog_crit_edge, %if.end57.i, %if.end.i, %do.end.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_isoc_init(ptr nocapture noundef %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cond = icmp eq i8 %1, 5
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %3)
  %cmp.not = icmp eq i32 %3, 800
  %bulk_size3 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %. = select i1 %cmp.not, i32 28672, i32 53248
  %4 = ptrtoint ptr %bulk_size3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %bulk_size3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ov51x_stop(ptr noundef %gspca_dev)
  tail call fastcc void @ov51x_led_control(ptr noundef %gspca_dev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp eq i8 %3, 6
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %jpegqual.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %4 = ptrtoint ptr %jpegqual.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jpegqual.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then3.w9968cf_stop0.exit_crit_edge, label %if.end.i.i

if.then3.w9968cf_stop0.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_stop0.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #7
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %5, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i6.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %lock.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i6.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %13) #7
  br label %w9968cf_stop0.exit

w9968cf_stop0.exit:                               ; preds = %if.end.i.i, %if.then3.w9968cf_stop0.exit_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 57, i16 noundef zeroext 0) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 22, i16 noundef zeroext 0) #7
  br label %if.end4

if.end4:                                          ; preds = %w9968cf_stop0.exit, %if.end.if.end4_crit_edge
  %snapshot_pressed = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %14 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %snapshot_pressed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef 212, i32 noundef 0) #7
  %18 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %19, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %20 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %snapshot_pressed, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %21 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp12 = icmp eq i8 %22, 4
  br i1 %cmp12, label %if.then14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 87, i16 noundef zeroext 35)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_reset_snapshot(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %snapshot_needs_reset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %snapshot_needs_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %snapshot_needs_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %snapshot_needs_reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %snapshot_needs_reset, align 1
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bridge, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.216)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge12
    i8 2, label %if.end.sw.bb2_crit_edge
    i8 3, label %if.end.sw.bb2_crit_edge13
    i8 4, label %sw.bb3
  ]

if.end.sw.bb2_crit_edge13:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge12
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 2)
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 0)
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge13
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 2)
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 82, i16 noundef zeroext 1)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 64)
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 80, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_get_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef writeonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.not = icmp eq i8 %1, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = call ptr @memset(ptr %jcomp, i32 0, i32 140)
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %3 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jpegqual, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %4) #7
  %5 = ptrtoint ptr %jcomp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %jcomp, align 4
  %jpeg_markers = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %jcomp, i32 0, i32 6
  %6 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 56, ptr %jpeg_markers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_set_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.not = icmp eq i8 %1, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #7
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %3, i32 noundef %5) #7
  %10 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_ov_sensor(ptr noundef %sd, i8 noundef zeroext %slave) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.217)
  switch i8 %1, label %sw.epilog.i [
    i8 5, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = zext i8 %slave to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 0, i16 noundef zeroext %conv1.i) #7
  br label %ov51x_set_slave_ids.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sensor_addr.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 17
  %3 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %slave, ptr %sensor_addr.i, align 4
  br label %ov51x_set_slave_ids.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i = zext i8 %slave to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 65, i16 noundef zeroext %conv3.i) #7
  %add.i = add nuw nsw i16 %conv3.i, 1
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 68, i16 noundef zeroext %add.i) #7
  br label %ov51x_set_slave_ids.exit

ov51x_set_slave_ids.exit:                         ; preds = %sw.epilog.i, %sw.bb2.i, %sw.bb.i
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext -128)
  tail call void @msleep(i32 noundef 150) #7
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %ov51x_set_slave_ids.exit
  %i.025 = phi i32 [ 0, %ov51x_set_slave_ids.exit ], [ %inc, %if.end10.for.body_crit_edge ]
  %call = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call)
  %cmp1 = icmp eq i32 %call, 127
  br i1 %cmp1, label %land.lhs.true, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 162, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 162
  br i1 %cmp3, label %do.body, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %i.025) #10
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext -128)
  tail call void @msleep(i32 noundef 150) #7
  %call11 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, -1
  %inc = add nuw nsw i32 %i.025, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.025)
  %cmp = icmp ult i32 %i.025, 9
  %or.cond = select i1 %cmp12, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end10.for.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov51x_led_control(ptr noundef %sd, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %invert_led = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %invert_led to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert_led, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1.not = icmp eq i32 %on, 0
  %lnot.ext = zext i1 %tobool1.not to i32
  %on.addr.0 = select i1 %tobool.not, i32 %on, i32 %lnot.ext
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.218)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb3_crit_edge
    i8 3, label %entry.sw.bb3_crit_edge22
    i8 4, label %sw.bb5
  ]

entry.sw.bb3_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = trunc i32 %on.addr.0 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 85, i16 noundef zeroext %conv2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge22
  %call.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %on.addr.0.tr = trunc i32 %on.addr.0 to i8
  %conv4 = shl i8 %on.addr.0.tr, 1
  %and24.i = and i8 %conv4, 2
  %5 = trunc i32 %call.i to i8
  %6 = and i8 %5, -3
  %conv13.i = or i8 %6, %and24.i
  %conv15.i = zext i8 %conv13.i to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 86, i16 noundef zeroext %conv15.i) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call.i14 = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp5.i15 = icmp slt i32 %call.i14, 0
  br i1 %cmp5.i15, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i19

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i19:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = trunc i32 %on.addr.0 to i8
  %and24.i16 = and i8 %conv6, 1
  %7 = trunc i32 %call.i14 to i8
  %8 = and i8 %7, -2
  %conv13.i18 = or i8 %8, %and24.i16
  %conv15.i20 = zext i8 %conv13.i18 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 113, i16 noundef zeroext %conv15.i20) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i19, %sw.bb5.sw.epilog_crit_edge, %if.end.i, %sw.bb3.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_reg_cache = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 20
  %idxprom = zext i8 %reg to i32
  %arrayidx = getelementptr %struct.sd, ptr %sd, i32 0, i32 20, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %1 to i32
  %conv1 = zext i8 %value to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1)
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %entry.if.end21_crit_edge, label %if.end

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.219)
  switch i8 %3, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge52
    i8 2, label %if.end.sw.bb4_crit_edge
    i8 3, label %if.end.sw.bb4_crit_edge53
    i8 4, label %if.end.sw.bb4_crit_edge54
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
  ]

if.end.sw.bb4_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb4_crit_edge53:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb_crit_edge52:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i = icmp sgt i32 %5, 6
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end4.i_crit_edge

sw.bb.do.end4.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name.i, i32 noundef %idxprom, i32 noundef %conv1) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %sw.bb.do.end4.i_crit_edge
  %conv5.i = zext i8 %reg to i16
  %conv6.i = zext i8 %value to i16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end23.i.for.cond.i_crit_edge, %do.end4.i
  %retries.0.i = phi i32 [ 6, %do.end4.i ], [ %dec.i, %if.end23.i.for.cond.i_crit_edge ]
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 66, i16 noundef zeroext %conv5.i) #7
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 69, i16 noundef zeroext %conv6.i) #7
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 64, i16 noundef zeroext 1) #7
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.body7.i.do.body7.i_crit_edge, %for.cond.i
  %call8.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp10.i = icmp sgt i32 %call8.i, 0
  %and.i = and i32 %call8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp12.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp10.i, %cmp12.i
  br i1 %or.cond.i, label %do.body7.i.do.body7.i_crit_edge, label %do.end14.i

do.body7.i.do.body7.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

do.end14.i:                                       ; preds = %do.body7.i
  %6 = and i32 %call8.i, -2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %.not.i = icmp eq i32 %6, 2
  br i1 %.not.i, label %if.end23.i, label %do.end14.i.sw.epilog_crit_edge

do.end14.i.sw.epilog_crit_edge:                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end23.i:                                       ; preds = %do.end14.i
  %dec.i = add nsw i32 %retries.0.i, -1
  %cmp24.i = icmp eq i32 %retries.0.i, 0
  br i1 %cmp24.i, label %do.body27.i, label %if.end23.i.for.cond.i_crit_edge

if.end23.i.for.cond.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body27.i:                                      ; preds = %if.end23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp28.i = icmp sgt i32 %7, 6
  br i1 %cmp28.i, label %do.end33.i, label %do.body27.i.sw.epilog_crit_edge

do.body27.i.sw.epilog_crit_edge:                  ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  %name36.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name36.i) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge53, %if.end.sw.bb4_crit_edge54
  tail call fastcc void @ov518_i2c_w(ptr noundef %sd, i8 noundef zeroext %reg, i8 noundef zeroext %value)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i42 = icmp slt i32 %9, 0
  br i1 %cmp.i42, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb5
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i43 = zext i8 %value to i16
  %conv5.i44 = zext i8 %reg to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv.i43, i16 noundef zeroext %conv5.i44, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i46, label %if.end.i.do.body15.i_crit_edge

if.end.i.do.body15.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15.i

do.end.i46:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i45 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %name.i45, i32 noundef %idxprom, i32 noundef %call6.i) #10
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call6.i, ptr %usb_err.i, align 8
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.end.i46, %if.end.i.do.body15.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp16.i = icmp sgt i32 %15, 6
  br i1 %cmp16.i, label %do.end21.i, label %do.body15.i.sw.epilog_crit_edge

do.body15.i.sw.epilog_crit_edge:                  ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  %name24.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %name24.i, i32 noundef %idxprom, i32 noundef %conv1) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %sensor_addr.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 17
  %18 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sensor_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool.not.i = icmp sgt i8 %19, -1
  %conv2.i47 = select i1 %tobool.not.i, i16 2095, i16 7471
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv2.i47, ptr %17, align 2
  %21 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sensor_addr.i, align 4
  %23 = and i8 %22, 64
  %24 = zext i8 %23 to i16
  %25 = shl nuw nsw i16 %24, 8
  %or10.i = or i16 %25, %conv2.i47
  store i16 %or10.i, ptr %17, align 2
  %26 = load i8, ptr %sensor_addr.i, align 4
  %27 = and i8 %26, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not.i = icmp eq i8 %27, 0
  %conv18.i = select i1 %tobool15.not.i, i16 8322, i16 8327
  %arrayidx19.i = getelementptr i16, ptr %17, i32 1
  %28 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv18.i, ptr %arrayidx19.i, align 2
  %29 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sensor_addr.i, align 4
  %31 = and i8 %30, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool23.not.i = icmp eq i8 %31, 0
  %cond24.i = select i1 %tobool23.not.i, i16 0, i16 336
  %or27.i = or i16 %cond24.i, %conv18.i
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %or27.i, ptr %arrayidx19.i, align 2
  %33 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sensor_addr.i, align 4
  %35 = and i8 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool32.not.i = icmp eq i8 %35, 0
  %cond33.i = select i1 %tobool32.not.i, i16 0, i16 21504
  %or36.i = or i16 %cond33.i, %or27.i
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %or36.i, ptr %arrayidx19.i, align 2
  %37 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sensor_addr.i, align 4
  %39 = and i8 %38, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool41.not.i = icmp eq i8 %39, 0
  %conv44.i = select i1 %tobool41.not.i, i16 -32248, i16 -32227
  %arrayidx45.i = getelementptr i16, ptr %17, i32 2
  %40 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv44.i, ptr %arrayidx45.i, align 2
  %41 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sensor_addr.i, align 4
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool49.not.i = icmp eq i8 %43, 0
  %cond50.i = select i1 %tobool49.not.i, i16 0, i16 1344
  %or53.i = or i16 %cond50.i, %conv44.i
  %44 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %or53.i, ptr %arrayidx45.i, align 2
  %45 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor_addr.i, align 4
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool58.not.i = icmp eq i8 %47, 0
  %cond59.i = select i1 %tobool58.not.i, i16 0, i16 20480
  %or62.i = or i16 %cond59.i, %or53.i
  %48 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or62.i, ptr %arrayidx45.i, align 2
  %49 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sensor_addr.i, align 4
  %51 = lshr i8 %50, 1
  %.lobit.i = and i8 %51, 1
  %52 = zext i8 %.lobit.i to i16
  %or69.i = or i16 %52, 7456
  %arrayidx71.i = getelementptr i16, ptr %17, i32 3
  %53 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or69.i, ptr %arrayidx71.i, align 2
  %54 = load i8, ptr %sensor_addr.i, align 4
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool75.not.i = icmp eq i8 %55, 0
  %cond76.i = select i1 %tobool75.not.i, i16 0, i16 84
  %or79.i = or i16 %cond76.i, %or69.i
  %56 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %or79.i, ptr %arrayidx71.i, align 2
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %57 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i = icmp slt i32 %58, 0
  br i1 %cmp.i.i, label %sw.bb6.w9968cf_write_fsb.exit.i_crit_edge, label %if.end.i.i

sw.bb6.w9968cf_write_fsb.exit.i_crit_edge:        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_fsb.exit.i

if.end.i.i:                                       ; preds = %sw.bb6
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %61 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf.i, align 4
  %63 = call ptr @memcpy(ptr %62, ptr %arrayidx19.i, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 32212200) #7
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %60, align 8
  %shl.i.i.i = shl i32 %66, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %67 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf.i, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %or10.i, i16 noundef zeroext 6, ptr noundef %68, i16 noundef zeroext 6, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %do.end.i.i, label %if.end.i.i.w9968cf_write_fsb.exit.i_crit_edge

if.end.i.i.w9968cf_write_fsb.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_fsb.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %call5.i.i) #10
  %69 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call5.i.i, ptr %usb_err.i.i, align 8
  br label %w9968cf_write_fsb.exit.i

w9968cf_write_fsb.exit.i:                         ; preds = %do.end.i.i, %if.end.i.i.w9968cf_write_fsb.exit.i_crit_edge, %sw.bb6.w9968cf_write_fsb.exit.i_crit_edge
  %and82.i = and i32 %idxprom, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  %and89.i = and i32 %idxprom, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  %cond91.i = select i1 %tobool90.not.i, i16 0, i16 1344
  %conv93.i = select i1 %tobool83.not.i, i16 -32248, i16 -32227
  %or94.i = or i16 %conv93.i, %cond91.i
  %and97.i = and i32 %idxprom, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  %cond99.i = select i1 %tobool98.not.i, i16 0, i16 20480
  %or102.i = or i16 %or94.i, %cond99.i
  %70 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %or102.i, ptr %17, align 2
  %not.tobool98.not.i = xor i1 %tobool98.not.i, true
  %cond107.i = zext i1 %not.tobool98.not.i to i32
  %and112.i = and i32 %idxprom, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  %cond114.i = select i1 %tobool113.not.i, i32 0, i32 84
  %and120.i = and i32 %idxprom, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  %cond122.i = select i1 %tobool121.not.i, i32 0, i32 5376
  %and128.i = and i32 %idxprom, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128.i)
  %tobool129.not.i = icmp eq i32 %and128.i, 0
  %71 = shl nuw nsw i32 %and128.i, 12
  %or117.i = or i32 %71, %cond107.i
  %or108.i = or i32 %or117.i, %cond114.i
  %or125.i = or i32 %or108.i, %cond122.i
  %72 = trunc i32 %or125.i to i16
  %conv134.i = or i16 %72, 2080
  %73 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv134.i, ptr %arrayidx19.i, align 2
  %and143.i = and i32 %idxprom, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i)
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  %cond145.i = select i1 %tobool144.not.i, i16 0, i16 336
  %conv147.i = select i1 %tobool129.not.i, i16 8322, i16 8327
  %or148.i = or i16 %conv147.i, %cond145.i
  %and151.i = and i32 %idxprom, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  %cond153.i = select i1 %tobool152.not.i, i16 0, i16 21504
  %or156.i = or i16 %or148.i, %cond153.i
  %74 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %or156.i, ptr %arrayidx45.i, align 2
  %75 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 29, ptr %arrayidx71.i, align 2
  %76 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i312.i = icmp slt i32 %77, 0
  br i1 %cmp.i312.i, label %w9968cf_write_fsb.exit.i.w9968cf_write_fsb.exit323.i_crit_edge, label %if.end.i320.i

w9968cf_write_fsb.exit.i.w9968cf_write_fsb.exit323.i_crit_edge: ; preds = %w9968cf_write_fsb.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_fsb.exit323.i

if.end.i320.i:                                    ; preds = %w9968cf_write_fsb.exit.i
  %dev.i313.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %78 = ptrtoint ptr %dev.i313.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i313.i, align 4
  %80 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i, align 4
  %82 = call ptr @memcpy(ptr %81, ptr %arrayidx19.i, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 32212200) #7
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %79, align 8
  %shl.i.i316.i = shl i32 %85, 8
  %or.i317.i = or i32 %shl.i.i316.i, -2147483648
  %86 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_buf.i, align 4
  %call5.i318.i = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i317.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %or102.i, i16 noundef zeroext 6, ptr noundef %87, i16 noundef zeroext 6, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i318.i)
  %cmp6.i319.i = icmp slt i32 %call5.i318.i, 0
  br i1 %cmp6.i319.i, label %do.end.i322.i, label %if.end.i320.i.w9968cf_write_fsb.exit323.i_crit_edge

if.end.i320.i.w9968cf_write_fsb.exit323.i_crit_edge: ; preds = %if.end.i320.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_fsb.exit323.i

do.end.i322.i:                                    ; preds = %if.end.i320.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i321.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %call5.i318.i) #10
  %88 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call5.i318.i, ptr %usb_err.i.i, align 8
  br label %w9968cf_write_fsb.exit323.i

w9968cf_write_fsb.exit323.i:                      ; preds = %do.end.i322.i, %if.end.i320.i.w9968cf_write_fsb.exit323.i_crit_edge, %w9968cf_write_fsb.exit.i.w9968cf_write_fsb.exit323.i_crit_edge
  %and160.i = and i32 %conv1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  %and167.i = and i32 %conv1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  %cond169.i = select i1 %tobool168.not.i, i16 0, i16 1344
  %conv171.i = select i1 %tobool161.not.i, i16 -32248, i16 -32227
  %or172.i = or i16 %conv171.i, %cond169.i
  %and175.i = and i32 %conv1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  %cond177.i = select i1 %tobool176.not.i, i16 0, i16 20480
  %or180.i = or i16 %or172.i, %cond177.i
  %89 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %or180.i, ptr %17, align 2
  %not.tobool176.not.i = xor i1 %tobool176.not.i, true
  %cond185.i = zext i1 %not.tobool176.not.i to i32
  %and190.i = and i32 %conv1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i)
  %tobool191.not.i = icmp eq i32 %and190.i, 0
  %cond192.i = select i1 %tobool191.not.i, i32 0, i32 84
  %and198.i = and i32 %conv1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198.i)
  %tobool199.not.i = icmp eq i32 %and198.i, 0
  %cond200.i = select i1 %tobool199.not.i, i32 0, i32 5376
  %and206.i = and i32 %conv1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206.i)
  %tobool207.not.i = icmp eq i32 %and206.i, 0
  %90 = shl nuw nsw i32 %and206.i, 12
  %or195.i = or i32 %90, %cond185.i
  %or186.i = or i32 %or195.i, %cond192.i
  %or203.i = or i32 %or186.i, %cond200.i
  %91 = trunc i32 %or203.i to i16
  %conv212.i = or i16 %91, 2080
  %92 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv212.i, ptr %arrayidx19.i, align 2
  %and221.i = and i32 %conv1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  %cond223.i = select i1 %tobool222.not.i, i16 0, i16 336
  %conv225.i = select i1 %tobool207.not.i, i16 8322, i16 8327
  %or226.i = or i16 %conv225.i, %cond223.i
  %and229.i = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229.i)
  %tobool230.not.i = icmp eq i32 %and229.i, 0
  %cond231.i = select i1 %tobool230.not.i, i16 0, i16 21504
  %or234.i = or i16 %or226.i, %cond231.i
  %93 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %or234.i, ptr %arrayidx45.i, align 2
  %94 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -483, ptr %arrayidx71.i, align 2
  %95 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i325.i = icmp slt i32 %96, 0
  br i1 %cmp.i325.i, label %w9968cf_write_fsb.exit323.i.w9968cf_write_fsb.exit336.i_crit_edge, label %if.end.i333.i

w9968cf_write_fsb.exit323.i.w9968cf_write_fsb.exit336.i_crit_edge: ; preds = %w9968cf_write_fsb.exit323.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_fsb.exit336.i

if.end.i333.i:                                    ; preds = %w9968cf_write_fsb.exit323.i
  %dev.i326.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %97 = ptrtoint ptr %dev.i326.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i326.i, align 4
  %99 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %usb_buf.i, align 4
  %101 = call ptr @memcpy(ptr %100, ptr %arrayidx19.i, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 32212200) #7
  %103 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %98, align 8
  %shl.i.i329.i = shl i32 %104, 8
  %or.i330.i = or i32 %shl.i.i329.i, -2147483648
  %105 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %usb_buf.i, align 4
  %call5.i331.i = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i330.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %or180.i, i16 noundef zeroext 6, ptr noundef %106, i16 noundef zeroext 6, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i331.i)
  %cmp6.i332.i = icmp slt i32 %call5.i331.i, 0
  br i1 %cmp6.i332.i, label %do.end.i335.i, label %if.end.i333.i.w9968cf_write_fsb.exit336.i_crit_edge

if.end.i333.i.w9968cf_write_fsb.exit336.i_crit_edge: ; preds = %if.end.i333.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_fsb.exit336.i

do.end.i335.i:                                    ; preds = %if.end.i333.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i334.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %call5.i331.i) #10
  %107 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call5.i331.i, ptr %usb_err.i.i, align 8
  br label %w9968cf_write_fsb.exit336.i

w9968cf_write_fsb.exit336.i:                      ; preds = %do.end.i335.i, %if.end.i333.i.w9968cf_write_fsb.exit336.i_crit_edge, %w9968cf_write_fsb.exit323.i.w9968cf_write_fsb.exit336.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %108 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %108)
  %cmp.i48 = icmp sgt i32 %108, 6
  br i1 %cmp.i48, label %do.end.i51, label %w9968cf_write_fsb.exit336.i.sw.epilog_crit_edge

w9968cf_write_fsb.exit336.i.sw.epilog_crit_edge:  ; preds = %w9968cf_write_fsb.exit336.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i51:                                       ; preds = %w9968cf_write_fsb.exit336.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i49 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name.i49, i32 noundef %conv1, i32 noundef %idxprom) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i51, %w9968cf_write_fsb.exit336.i.sw.epilog_crit_edge, %do.end21.i, %do.body15.i.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb4, %do.end33.i, %do.body27.i.sw.epilog_crit_edge, %do.end14.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %109 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp7 = icmp sgt i32 %110, -1
  br i1 %cmp7, label %if.then9, label %sw.epilog.if.end21_crit_edge

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %reg)
  %cmp11 = icmp ne i8 %reg, 18
  %and = and i32 %conv1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp11, %tobool.not
  br i1 %or.cond, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %111 = call ptr @memset(ptr %sensor_reg_cache, i32 255, i32 512)
  br label %if.end21

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i8 %value to i16
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv16, ptr %arrayidx, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then14, %sw.epilog.if.end21_crit_edge, %entry.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %index, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 32212200) #7
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bridge, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %4, label %sw.default [
    i8 0, label %if.end.do.body19_crit_edge
    i8 1, label %if.end.do.body19_crit_edge89
    i8 5, label %sw.bb2
    i8 6, label %if.end.do.body_crit_edge
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.do.body19_crit_edge89:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %sw.bb2, %if.end.do.body_crit_edge
  %req.0 = phi i32 [ 0, %if.end.do.body_crit_edge ], [ 10, %sw.bb2 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp4 = icmp sgt i32 %6, 6
  br i1 %cmp4, label %do.end, label %do.body.do.end12_crit_edge

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv8 = zext i16 %value to i32
  %conv9 = zext i16 %index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %name, i32 noundef %req.0, i32 noundef %conv8, i32 noundef %conv9) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or = or i32 %shl.i, -2147483648
  %conv17 = trunc i32 %req.0 to i8
  %call18 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or, i8 noundef zeroext %conv17, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  br label %leave

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body19:                                        ; preds = %sw.default, %if.end.do.body19_crit_edge, %if.end.do.body19_crit_edge89
  %req.1 = phi i32 [ 1, %sw.default ], [ 2, %if.end.do.body19_crit_edge ], [ 2, %if.end.do.body19_crit_edge89 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp20 = icmp sgt i32 %11, 6
  br i1 %cmp20, label %do.end25, label %do.body19.do.end35_crit_edge

do.body19.do.end35_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %name28 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv30 = zext i16 %index to i32
  %conv31 = zext i16 %value to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %name28, i32 noundef %req.1, i32 noundef %conv30, i32 noundef %conv31) #10
  br label %do.end35

do.end35:                                         ; preds = %do.end25, %do.body19.do.end35_crit_edge
  %conv36 = trunc i16 %value to i8
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %12 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv36, ptr %13, align 1
  %dev39 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev39, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i88 = shl i32 %18, 8
  %or43 = or i32 %shl.i88, -2147483648
  %conv44 = trunc i32 %req.1 to i8
  %19 = load ptr, ptr %usb_buf, align 4
  %call47 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or43, i8 noundef zeroext %conv44, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 500) #7
  br label %leave

leave:                                            ; preds = %do.end35, %do.end12
  %ret.0 = phi i32 [ %call47, %do.end35 ], [ %call18, %do.end12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp48 = icmp slt i32 %ret.0, 0
  br i1 %cmp48, label %do.end53, label %leave.cleanup_crit_edge

leave.cleanup_crit_edge:                          ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end53:                                         ; preds = %leave
  call void @__sanitizer_cov_trace_pc() #9
  %name56 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv58 = zext i16 %index to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name56, i32 noundef %conv58, i32 noundef %ret.0) #10
  %20 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ret.0, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %leave.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov519_set_mode(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %0 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [2 x [10 x %struct.ov_regvals]], ptr @ov519_set_mode.bridge_ov7660, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i16
  %val.i = getelementptr inbounds %struct.ov_regvals, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  %conv1.i = zext i8 %5 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv1.i) #7
  %incdec.ptr.i = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i, align 1
  %conv.i.1 = zext i8 %7 to i16
  %val.i.1 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 1, i32 1
  %8 = ptrtoint ptr %val.i.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i.1, align 1
  %conv1.i.1 = zext i8 %9 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.1, i16 noundef zeroext %conv1.i.1) #7
  %incdec.ptr.i.1 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 2
  %10 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr.i.1, align 1
  %conv.i.2 = zext i8 %11 to i16
  %val.i.2 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 2, i32 1
  %12 = ptrtoint ptr %val.i.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i.2, align 1
  %conv1.i.2 = zext i8 %13 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.2, i16 noundef zeroext %conv1.i.2) #7
  %incdec.ptr.i.2 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 3
  %14 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i.2, align 1
  %conv.i.3 = zext i8 %15 to i16
  %val.i.3 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 3, i32 1
  %16 = ptrtoint ptr %val.i.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i.3, align 1
  %conv1.i.3 = zext i8 %17 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.3, i16 noundef zeroext %conv1.i.3) #7
  %incdec.ptr.i.3 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 4
  %18 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.i.3, align 1
  %conv.i.4 = zext i8 %19 to i16
  %val.i.4 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 4, i32 1
  %20 = ptrtoint ptr %val.i.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i.4, align 1
  %conv1.i.4 = zext i8 %21 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.4, i16 noundef zeroext %conv1.i.4) #7
  %incdec.ptr.i.4 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 5
  %22 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.i.4, align 1
  %conv.i.5 = zext i8 %23 to i16
  %val.i.5 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 5, i32 1
  %24 = ptrtoint ptr %val.i.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i.5, align 1
  %conv1.i.5 = zext i8 %25 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.5, i16 noundef zeroext %conv1.i.5) #7
  %incdec.ptr.i.5 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 6
  %26 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i.5, align 1
  %conv.i.6 = zext i8 %27 to i16
  %val.i.6 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 6, i32 1
  %28 = ptrtoint ptr %val.i.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val.i.6, align 1
  %conv1.i.6 = zext i8 %29 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.6, i16 noundef zeroext %conv1.i.6) #7
  %incdec.ptr.i.6 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 7
  %30 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i.6, align 1
  %conv.i.7 = zext i8 %31 to i16
  %val.i.7 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 7, i32 1
  %32 = ptrtoint ptr %val.i.7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val.i.7, align 1
  %conv1.i.7 = zext i8 %33 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.7, i16 noundef zeroext %conv1.i.7) #7
  %incdec.ptr.i.7 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 8
  %34 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i.7, align 1
  %conv.i.8 = zext i8 %35 to i16
  %val.i.8 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 8, i32 1
  %36 = ptrtoint ptr %val.i.8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val.i.8, align 1
  %conv1.i.8 = zext i8 %37 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.8, i16 noundef zeroext %conv1.i.8) #7
  %incdec.ptr.i.8 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 9
  %38 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i.8, align 1
  %conv.i.9 = zext i8 %39 to i16
  %val.i.9 = getelementptr %struct.ov_regvals, ptr %arrayidx, i32 9, i32 1
  %40 = ptrtoint ptr %val.i.9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val.i.9, align 1
  %conv1.i.9 = zext i8 %41 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext %conv.i.9, i16 noundef zeroext %conv1.i.9) #7
  %42 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %curr_mode, align 1
  %idxprom3 = zext i8 %43 to i32
  %arrayidx4 = getelementptr [2 x [3 x %struct.ov_i2c_regvals]], ptr @ov519_set_mode.sensor_ov7660, i32 0, i32 %idxprom3
  %44 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4, align 1
  %val.i10 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %arrayidx4, i32 0, i32 1
  %46 = ptrtoint ptr %val.i10 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %val.i10, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %45, i8 noundef zeroext %47) #7
  %incdec.ptr.i11 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx4, i32 1
  %48 = ptrtoint ptr %incdec.ptr.i11 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.i11, align 1
  %val.i10.1 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx4, i32 1, i32 1
  %50 = ptrtoint ptr %val.i10.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val.i10.1, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %49, i8 noundef zeroext %51) #7
  %incdec.ptr.i11.1 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx4, i32 2
  %52 = ptrtoint ptr %incdec.ptr.i11.1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.i11.1, align 1
  %val.i10.2 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx4, i32 2, i32 1
  %54 = ptrtoint ptr %val.i10.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %val.i10.2, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %53, i8 noundef zeroext %55) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 23, i8 noundef zeroext 19) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 24, i8 noundef zeroext 1) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 50, i8 noundef zeroext -110) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 25, i8 noundef zeroext 2) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 26, i8 noundef zeroext 122) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov519_set_fr(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @frame_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %0 to i8
  %frame_rate = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 14
  %1 = ptrtoint ptr %frame_rate to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %frame_rate, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frame_rate1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 14
  %2 = ptrtoint ptr %frame_rate1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frame_rate1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %3)
  %cmp3 = icmp ugt i8 %3, 29
  br i1 %cmp3, label %if.end.if.end34_crit_edge, label %if.else

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %3)
  %cmp8 = icmp ugt i8 %3, 24
  br i1 %cmp8, label %if.else.if.end34_crit_edge, label %if.else11

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %3)
  %cmp14 = icmp ugt i8 %3, 19
  br i1 %cmp14, label %if.else11.if.end34_crit_edge, label %if.else17

if.else11.if.end34_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else17:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %3)
  %cmp20 = icmp ugt i8 %3, 14
  br i1 %cmp20, label %if.else17.if.end34_crit_edge, label %if.else23

if.else17.if.end34_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else23:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp26 = icmp ugt i8 %3, 9
  %. = select i1 %cmp26, i32 4, i32 5
  br label %if.end34

if.end34:                                         ; preds = %if.else23, %if.else17.if.end34_crit_edge, %if.else11.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %fr.0 = phi i32 [ 0, %if.end.if.end34_crit_edge ], [ 1, %if.else.if.end34_crit_edge ], [ 2, %if.else11.if.end34_crit_edge ], [ 3, %if.else17.if.end34_crit_edge ], [ %., %if.else23 ]
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %4 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx35 = getelementptr [2 x [6 x [3 x i8]]], ptr @ov519_set_fr.fr_tb, i32 0, i32 %idxprom, i32 %fr.0
  %6 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx35, align 1
  %conv37 = zext i8 %7 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 164, i16 noundef zeroext %conv37)
  %8 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %curr_mode, align 1
  %idxprom40 = zext i8 %9 to i32
  %arrayidx43 = getelementptr [2 x [6 x [3 x i8]]], ptr @ov519_set_fr.fr_tb, i32 0, i32 %idxprom40, i32 %fr.0, i32 1
  %10 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %11 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 35, i16 noundef zeroext %conv44)
  %12 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %curr_mode, align 1
  %idxprom47 = zext i8 %13 to i32
  %arrayidx50 = getelementptr [2 x [6 x [3 x i8]]], ptr @ov519_set_fr.fr_tb, i32 0, i32 %idxprom47, i32 %fr.0, i32 2
  %14 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx50, align 1
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 16
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %17)
  %cmp52 = icmp eq i8 %17, 11
  %18 = or i8 %15, -128
  %spec.select = select i1 %cmp52, i8 %18, i8 %15
  tail call fastcc void @ov518_i2c_w(ptr noundef %sd, i8 noundef zeroext 17, i8 noundef zeroext %spec.select)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov51x_restart(ptr noundef %sd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %stopped = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 12
  %1 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %stopped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %3 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stopped, align 1
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bridge, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.221)
  switch i8 %5, label %if.end5.cleanup_crit_edge [
    i8 0, label %if.end5.sw.bb_crit_edge
    i8 1, label %if.end5.sw.bb_crit_edge22
    i8 2, label %if.end5.sw.bb7_crit_edge
    i8 3, label %if.end5.sw.bb7_crit_edge23
    i8 4, label %sw.bb8
    i8 5, label %sw.bb9
    i8 6, label %sw.bb10
  ]

if.end5.sw.bb7_crit_edge23:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end5.sw.bb7_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end5.sw.bb_crit_edge22:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge22
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 80, i16 noundef zeroext 0)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5.sw.bb7_crit_edge, %if.end5.sw.bb7_crit_edge23
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 47, i16 noundef zeroext 128)
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 80, i16 noundef zeroext 0)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 81, i16 noundef zeroext 15)
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 81, i16 noundef zeroext 0)
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 34, i16 noundef zeroext 29)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end5
  %call.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %sw.bb9.cleanup_crit_edge, label %if.end.i

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = trunc i32 %call.i to i8
  %conv13.i = or i8 %7, 2
  %conv15.i = zext i8 %conv13.i to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 15, i16 noundef zeroext %conv15.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 60, i16 noundef zeroext -30203)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %if.end.i, %sw.bb9.cleanup_crit_edge, %sw.bb8, %sw.bb7, %sw.bb, %if.end5.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov51x_stop(ptr noundef %sd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %stopped = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 12
  %1 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %stopped, align 1
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %3, label %do.end3.sw.epilog_crit_edge [
    i8 0, label %do.end3.sw.bb_crit_edge
    i8 1, label %do.end3.sw.bb_crit_edge23
    i8 2, label %do.end3.sw.bb4_crit_edge
    i8 3, label %do.end3.sw.bb4_crit_edge24
    i8 4, label %sw.bb5
    i8 5, label %sw.bb6
    i8 6, label %sw.bb7
  ]

do.end3.sw.bb4_crit_edge24:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

do.end3.sw.bb4_crit_edge:                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

do.end3.sw.bb_crit_edge23:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end3.sw.bb_crit_edge:                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end3.sw.bb_crit_edge, %do.end3.sw.bb_crit_edge23
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 80, i16 noundef zeroext 61)
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end3.sw.bb4_crit_edge, %do.end3.sw.bb4_crit_edge24
  %call.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = trunc i32 %call.i to i8
  %conv13.i = or i8 %5, 58
  %conv15.i = zext i8 %conv13.i to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 80, i16 noundef zeroext %conv15.i) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 81, i16 noundef zeroext 15)
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 81, i16 noundef zeroext 0)
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 34, i16 noundef zeroext 0)
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end3
  %call.i17 = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp5.i18 = icmp slt i32 %call.i17, 0
  br i1 %cmp5.i18, label %sw.bb6.sw.epilog_crit_edge, label %if.end.i20

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i20:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %6 = trunc i32 %call.i17 to i8
  %7 = and i8 %6, -3
  %conv15.i21 = zext i8 %7 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 15, i16 noundef zeroext %conv15.i21) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 60, i16 noundef zeroext 2565)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.end.i20, %sw.bb6.sw.epilog_crit_edge, %sw.bb5, %if.end.i, %sw.bb4.sw.epilog_crit_edge, %sw.bb, %do.end3.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
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
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %4 = icmp ult i8 %3, 6
  br i1 %4, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.reg_r, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %req.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.end.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 32212200) #7
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or6 = or i32 %shl.i, -2147483520
  %conv7 = trunc i32 %req.0 to i8
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %12 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf, align 4
  %call9 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or6, i8 noundef zeroext %conv7, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.then12, label %do.end27

if.then12:                                        ; preds = %sw.epilog
  %14 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv15 = zext i8 %17 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp16 = icmp sgt i32 %18, 5
  br i1 %cmp16, label %do.end, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv20 = zext i16 %index to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %req.0, i32 noundef %conv20, i32 noundef %conv15) #10
  br label %cleanup

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %name30 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv32 = zext i16 %index to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name30, i32 noundef %conv32, i32 noundef %call9) #10
  %19 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call9, ptr %usb_err, align 8
  %20 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %21, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %conv15, %do.end ], [ %conv15, %if.then12.cleanup_crit_edge ], [ %call9, %do.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %reg to i32
  %arrayidx = getelementptr %struct.sd, ptr %sd, i32 0, i32 20, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.not = icmp eq i16 %1, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = sext i16 %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.223)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 1, label %if.end.sw.bb_crit_edge96
    i8 2, label %if.end.sw.bb7_crit_edge
    i8 3, label %if.end.sw.bb7_crit_edge97
    i8 4, label %if.end.sw.bb7_crit_edge98
    i8 5, label %sw.bb9
    i8 6, label %sw.bb11
  ]

if.end.sw.bb7_crit_edge98:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb7_crit_edge97:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

if.end.sw.bb_crit_edge96:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge96
  %conv.i = zext i8 %reg to i16
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end10.i.for.cond.i_crit_edge, %sw.bb
  %retries.0.i = phi i32 [ 6, %sw.bb ], [ %dec.i, %if.end10.i.for.cond.i_crit_edge ]
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 67, i16 noundef zeroext %conv.i) #7
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 64, i16 noundef zeroext 3) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.i
  %call.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %do.end.i.cleanup_crit_edge, label %if.end.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end.i
  %and6.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 0
  br i1 %cmp7.i, label %if.end.i.for.cond26.i_crit_edge, label %if.end10.i

if.end.i.for.cond26.i_crit_edge:                  ; preds = %if.end.i
  br label %for.cond26.i

if.end10.i:                                       ; preds = %if.end.i
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 64, i16 noundef zeroext 16) #7
  %dec.i = add nsw i32 %retries.0.i, -1
  %cmp11.i = icmp eq i32 %retries.0.i, 0
  br i1 %cmp11.i, label %do.body14.i, label %if.end10.i.for.cond.i_crit_edge

if.end10.i.for.cond.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.body14.i:                                      ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp15.i = icmp sgt i32 %5, 5
  br i1 %cmp15.i, label %do.end20.i, label %do.body14.i.cleanup_crit_edge

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i) #10
  br label %cleanup

for.cond26.i:                                     ; preds = %if.end46.i.for.cond26.i_crit_edge, %if.end.i.for.cond26.i_crit_edge
  %retries.1.i = phi i32 [ %dec47.i, %if.end46.i.for.cond26.i_crit_edge ], [ 6, %if.end.i.for.cond26.i_crit_edge ]
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 64, i16 noundef zeroext 5) #7
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.do.body27.i_crit_edge, %for.cond26.i
  %call28.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp30.i = icmp sgt i32 %call28.i, 0
  %and33.i = and i32 %call28.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %cmp34.i = icmp eq i32 %and33.i, 0
  %or.cond111.i = and i1 %cmp30.i, %cmp34.i
  br i1 %or.cond111.i, label %do.body27.i.do.body27.i_crit_edge, label %do.end37.i

do.body27.i.do.body27.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.i

do.end37.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp38.i = icmp slt i32 %call28.i, 0
  br i1 %cmp38.i, label %do.end37.i.cleanup_crit_edge, label %if.end41.i

do.end37.i.cleanup_crit_edge:                     ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41.i:                                       ; preds = %do.end37.i
  %and42.i = and i32 %call28.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %cmp43.i = icmp eq i32 %and42.i, 0
  br i1 %cmp43.i, label %for.end67.i, label %if.end46.i

if.end46.i:                                       ; preds = %if.end41.i
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 64, i16 noundef zeroext 16) #7
  %dec47.i = add nsw i32 %retries.1.i, -1
  %cmp48.i = icmp eq i32 %retries.1.i, 0
  br i1 %cmp48.i, label %do.body51.i, label %if.end46.i.for.cond26.i_crit_edge

if.end46.i.for.cond26.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond26.i

do.body51.i:                                      ; preds = %if.end46.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp52.i = icmp sgt i32 %6, 5
  br i1 %cmp52.i, label %do.end57.i, label %do.body51.i.cleanup_crit_edge

do.body51.i.cleanup_crit_edge:                    ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end57.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  %name60.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name60.i) #10
  br label %cleanup

for.end67.i:                                      ; preds = %if.end41.i
  %call68.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 69) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp70.i = icmp sgt i32 %7, 5
  br i1 %cmp70.i, label %do.end75.i, label %for.end67.i.do.end84.i_crit_edge

for.end67.i.do.end84.i_crit_edge:                 ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84.i

do.end75.i:                                       ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  %name78.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name78.i, i32 noundef %idxprom, i32 noundef %call68.i) #10
  br label %do.end84.i

do.end84.i:                                       ; preds = %do.end75.i, %for.end67.i.do.end84.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 64, i16 noundef zeroext 5) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge97, %if.end.sw.bb7_crit_edge98
  %conv.i36 = zext i8 %reg to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 67, i16 noundef zeroext %conv.i36) #7
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 71, i16 noundef zeroext 3) #7
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %8 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp slt i32 %9, 0
  br i1 %cmp.i.i, label %sw.bb7.reg_r8.exit.i_crit_edge, label %if.end.i.i

sw.bb7.reg_r8.exit.i_crit_edge:                   ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r8.exit.i

if.end.i.i:                                       ; preds = %sw.bb7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 32212200) #7
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or5.i.i = or i32 %shl.i.i.i, -2147483520
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %15 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or5.i.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 71, ptr noundef %16, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i.i)
  %cmp8.i.i = icmp sgt i32 %call7.i.i, -1
  br i1 %cmp8.i.i, label %if.end.i.i.reg_r8.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.reg_r8.exit.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r8.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i.i, i32 noundef 71, i32 noundef %call7.i.i) #10
  %17 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call7.i.i, ptr %usb_err.i.i, align 8
  %18 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 0, ptr %19, align 1
  br label %reg_r8.exit.i

reg_r8.exit.i:                                    ; preds = %do.end.i.i, %if.end.i.i.reg_r8.exit.i_crit_edge, %sw.bb7.reg_r8.exit.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 71, i16 noundef zeroext 5) #7
  %21 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i18.i = icmp slt i32 %22, 0
  br i1 %cmp.i18.i, label %reg_r8.exit.i.reg_r8.exit29.i_crit_edge, label %if.end.i25.i

reg_r8.exit.i.reg_r8.exit29.i_crit_edge:          ; preds = %reg_r8.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r8.exit29.i

if.end.i25.i:                                     ; preds = %reg_r8.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 32212200) #7
  %dev.i19.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i19.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i19.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i20.i = shl i32 %27, 8
  %or5.i21.i = or i32 %shl.i.i20.i, -2147483520
  %usb_buf.i22.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %28 = ptrtoint ptr %usb_buf.i22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i22.i, align 4
  %call7.i23.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or5.i21.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 71, ptr noundef %29, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i23.i)
  %cmp8.i24.i = icmp sgt i32 %call7.i23.i, -1
  br i1 %cmp8.i24.i, label %if.end.i25.i.reg_r8.exit29.i_crit_edge, label %do.end.i28.i

if.end.i25.i.reg_r8.exit29.i_crit_edge:           ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r8.exit29.i

do.end.i28.i:                                     ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i26.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call13.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i26.i, i32 noundef 71, i32 noundef %call7.i23.i) #10
  %30 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call7.i23.i, ptr %usb_err.i.i, align 8
  %31 = ptrtoint ptr %usb_buf.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 0, ptr %32, align 1
  br label %reg_r8.exit29.i

reg_r8.exit29.i:                                  ; preds = %do.end.i28.i, %if.end.i25.i.reg_r8.exit29.i_crit_edge, %reg_r8.exit.i.reg_r8.exit29.i_crit_edge
  %call2.i = tail call fastcc i32 @reg_r(ptr noundef %sd, i16 noundef zeroext 69) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %34 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp.i37 = icmp sgt i32 %34, 5
  br i1 %cmp.i37, label %do.end.i39, label %reg_r8.exit29.i.sw.epilog_crit_edge

reg_r8.exit29.i.sw.epilog_crit_edge:              ; preds = %reg_r8.exit29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i39:                                       ; preds = %reg_r8.exit29.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i38 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i38, i32 noundef %idxprom, i32 noundef %call2.i) #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i40 = icmp slt i32 %36, 0
  br i1 %cmp.i40, label %sw.bb9.cleanup_crit_edge, label %if.end.i42

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i42:                                       ; preds = %sw.bb9
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i = shl i32 %40, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %conv.i41 = zext i8 %reg to i16
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %41 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i, align 4
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or5.i, i8 noundef zeroext 3, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i41, ptr noundef %42, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, -1
  br i1 %cmp8.i, label %if.then10.i, label %do.end25.i

if.then10.i:                                      ; preds = %if.end.i42
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv13.i = zext i8 %46 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %47 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp14.i = icmp sgt i32 %47, 5
  br i1 %cmp14.i, label %do.end.i44, label %if.then10.i.if.then15_crit_edge

if.then10.i.if.then15_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

do.end.i44:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i43 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i43, i32 noundef %idxprom, i32 noundef %conv13.i) #10
  br label %if.then15

do.end25.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  %name28.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name28.i, i32 noundef %idxprom, i32 noundef %call7.i) #10
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call7.i, ptr %usb_err.i, align 8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %usb_err.i.i46 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %49 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i47 = icmp slt i32 %50, 0
  br i1 %cmp.i.i47, label %sw.bb11.w9968cf_write_sb.exit.i_crit_edge, label %if.end.i.i50

sw.bb11.w9968cf_write_sb.exit.i_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit.i

if.end.i.i50:                                     ; preds = %sw.bb11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 32212200) #7
  %dev.i.i48 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %52 = ptrtoint ptr %dev.i.i48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i48, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i49 = shl i32 %55, 8
  %or.i.i = or i32 %shl.i.i.i49, -2147483648
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i52, label %if.end.i.i50.w9968cf_write_sb.exit.i_crit_edge

if.end.i.i50.w9968cf_write_sb.exit.i_crit_edge:   ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit.i

do.end.i.i52:                                     ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 19) #10
  %57 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call4.i.i, ptr %usb_err.i.i46, align 8
  br label %w9968cf_write_sb.exit.i

w9968cf_write_sb.exit.i:                          ; preds = %do.end.i.i52, %if.end.i.i50.w9968cf_write_sb.exit.i_crit_edge, %sw.bb11.w9968cf_write_sb.exit.i_crit_edge
  tail call fastcc void @w9968cf_smbus_start(ptr noundef %sd) #7
  %sensor_addr.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 17
  %58 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sensor_addr.i, align 4
  tail call fastcc void @w9968cf_smbus_write_byte(ptr noundef %sd, i8 noundef zeroext %59) #7
  tail call fastcc void @w9968cf_smbus_read_ack(ptr noundef %sd) #7
  tail call fastcc void @w9968cf_smbus_write_byte(ptr noundef %sd, i8 noundef zeroext %reg) #7
  tail call fastcc void @w9968cf_smbus_read_ack(ptr noundef %sd) #7
  tail call fastcc void @w9968cf_smbus_stop(ptr noundef %sd) #7
  tail call fastcc void @w9968cf_smbus_start(ptr noundef %sd) #7
  %60 = ptrtoint ptr %sensor_addr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sensor_addr.i, align 4
  %add.i = add i8 %61, 1
  tail call fastcc void @w9968cf_smbus_write_byte(ptr noundef %sd, i8 noundef zeroext %add.i) #7
  tail call fastcc void @w9968cf_smbus_read_ack(ptr noundef %sd) #7
  %dev.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %usb_buf.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %w9968cf_write_sb.exit27.i.i.for.body.i.i_crit_edge, %w9968cf_write_sb.exit.i
  %value.0.i = phi i8 [ 0, %w9968cf_write_sb.exit.i ], [ %conv5.i72.i, %w9968cf_write_sb.exit27.i.i.for.body.i.i_crit_edge ]
  %bit.029.i.i = phi i8 [ 0, %w9968cf_write_sb.exit.i ], [ %inc.i.i, %w9968cf_write_sb.exit27.i.i.for.body.i.i_crit_edge ]
  %shl.i.i53 = shl i8 %value.0.i, 1
  %62 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i = icmp slt i32 %63, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.w9968cf_write_sb.exit27.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.w9968cf_write_sb.exit27.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit27.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 32212200) #7
  %65 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i.i.i = shl i32 %68, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call4.i.i.i = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end.i.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge, label %w9968cf_write_sb.exit.i.i

if.end.i.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit27.i.sink.split.i

w9968cf_write_sb.exit.i.i:                        ; preds = %if.end.i.i.i
  %70 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr.i.i = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.i12.i.i = icmp slt i32 %.pr.i.i, 0
  br i1 %cmp.i12.i.i, label %w9968cf_write_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge, label %if.end.i15.i.i

w9968cf_write_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge: ; preds = %w9968cf_write_sb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit27.i.i

if.end.i15.i.i:                                   ; preds = %w9968cf_write_sb.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 32212200) #7
  %72 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %shl.i.i14.i.i = shl i32 %75, 8
  %or4.i.i.i = or i32 %shl.i.i14.i.i, -2147483520
  %76 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call6.i.i.i = tail call i32 @usb_control_msg(ptr noundef %73, i32 noundef %or4.i.i.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %77, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %call6.i.i.i, -1
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %do.end.i16.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %conv.i.i.i = zext i8 %81 to i32
  br label %w9968cf_read_sb.exit.i.i

do.end.i16.i.i:                                   ; preds = %if.end.i15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #10
  %82 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call6.i.i.i, ptr %usb_err.i.i46, align 8
  %83 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb_buf.i.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 0, ptr %84, align 1
  br label %w9968cf_read_sb.exit.i.i

w9968cf_read_sb.exit.i.i:                         ; preds = %do.end.i16.i.i, %if.then8.i.i.i
  %ret.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then8.i.i.i ], [ %call6.i.i.i, %do.end.i16.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 858992) #7
  %87 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr.i = load i32, ptr %usb_err.i.i46, align 8
  %88 = trunc i32 %ret.0.i.i.i to i8
  %89 = lshr i8 %88, 3
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i18.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i18.i.i, label %w9968cf_read_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge, label %if.end.i24.i.i

w9968cf_read_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge: ; preds = %w9968cf_read_sb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit27.i.i

if.end.i24.i.i:                                   ; preds = %w9968cf_read_sb.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 32212200) #7
  %92 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i20.i.i = shl i32 %95, 8
  %or.i21.i.i = or i32 %shl.i.i20.i.i, -2147483648
  %call4.i22.i.i = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or.i21.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i22.i.i)
  %cmp5.i23.i.i = icmp slt i32 %call4.i22.i.i, 0
  br i1 %cmp5.i23.i.i, label %if.end.i24.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge, label %if.end.i24.i.i.w9968cf_write_sb.exit27.i.i_crit_edge

if.end.i24.i.i.w9968cf_write_sb.exit27.i.i_crit_edge: ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit27.i.i

if.end.i24.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge: ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit27.i.sink.split.i

w9968cf_write_sb.exit27.i.sink.split.i:           ; preds = %if.end.i24.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge, %if.end.i.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 19, %if.end.i.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge ], [ 18, %if.end.i24.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge ]
  %call4.i.i.sink.i = phi i32 [ %call4.i.i.i, %if.end.i.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge ], [ %call4.i22.i.i, %if.end.i24.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge ]
  %.pn.ph.i = phi i8 [ 1, %if.end.i.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge ], [ %90, %if.end.i24.i.i.w9968cf_write_sb.exit27.i.sink.split.i_crit_edge ]
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %.sink.i) #10
  %97 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call4.i.i.sink.i, ptr %usb_err.i.i46, align 8
  br label %w9968cf_write_sb.exit27.i.i

w9968cf_write_sb.exit27.i.i:                      ; preds = %w9968cf_write_sb.exit27.i.sink.split.i, %if.end.i24.i.i.w9968cf_write_sb.exit27.i.i_crit_edge, %w9968cf_read_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge, %w9968cf_write_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge, %for.body.i.i.w9968cf_write_sb.exit27.i.i_crit_edge
  %.pn.i = phi i8 [ %90, %if.end.i24.i.i.w9968cf_write_sb.exit27.i.i_crit_edge ], [ %90, %w9968cf_read_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge ], [ 1, %w9968cf_write_sb.exit.i.i.w9968cf_write_sb.exit27.i.i_crit_edge ], [ 1, %for.body.i.i.w9968cf_write_sb.exit27.i.i_crit_edge ], [ %.pn.ph.i, %w9968cf_write_sb.exit27.i.sink.split.i ]
  %conv5.i72.i = or i8 %.pn.i, %shl.i.i53
  %inc.i.i = add nuw nsw i8 %bit.029.i.i, 1
  %cmp.i44.i = icmp ult i8 %bit.029.i.i, 7
  br i1 %cmp.i44.i, label %w9968cf_write_sb.exit27.i.i.for.body.i.i_crit_edge, label %w9968cf_smbus_read_byte.exit.i

w9968cf_write_sb.exit27.i.i.for.body.i.i_crit_edge: ; preds = %w9968cf_write_sb.exit27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

w9968cf_smbus_read_byte.exit.i:                   ; preds = %w9968cf_write_sb.exit27.i.i
  %98 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i.i46.i = icmp slt i32 %99, 0
  br i1 %cmp.i.i46.i, label %w9968cf_smbus_read_byte.exit.i.w9968cf_smbus_write_nack.exit.i_crit_edge, label %if.end.i.i52.i

w9968cf_smbus_read_byte.exit.i.w9968cf_smbus_write_nack.exit.i_crit_edge: ; preds = %w9968cf_smbus_read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_smbus_write_nack.exit.i

if.end.i.i52.i:                                   ; preds = %w9968cf_smbus_read_byte.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 32212200) #7
  %101 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %shl.i.i.i48.i = shl i32 %104, 8
  %or.i.i49.i = or i32 %shl.i.i.i48.i, -2147483648
  %call4.i.i50.i = tail call i32 @usb_control_msg(ptr noundef %102, i32 noundef %or.i.i49.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i50.i)
  %cmp5.i.i51.i = icmp slt i32 %call4.i.i50.i, 0
  br i1 %cmp5.i.i51.i, label %if.end.i.i52.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge, label %w9968cf_write_sb.exit.i54.i

if.end.i.i52.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge: ; preds = %if.end.i.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12.sink.split.i.i

w9968cf_write_sb.exit.i54.i:                      ; preds = %if.end.i.i52.i
  %106 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr.i53.i = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i53.i)
  %cmp.i3.i.i = icmp slt i32 %.pr.i53.i, 0
  br i1 %cmp.i3.i.i, label %w9968cf_write_sb.exit.i54.i.w9968cf_smbus_write_nack.exit.i_crit_edge, label %if.end.i9.i.i

w9968cf_write_sb.exit.i54.i.w9968cf_smbus_write_nack.exit.i_crit_edge: ; preds = %w9968cf_write_sb.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_smbus_write_nack.exit.i

if.end.i9.i.i:                                    ; preds = %w9968cf_write_sb.exit.i54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 32212200) #7
  %108 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i.i5.i.i = shl i32 %111, 8
  %or.i6.i.i = or i32 %shl.i.i5.i.i, -2147483648
  %call4.i7.i.i = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %or.i6.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i7.i.i)
  %cmp5.i8.i.i = icmp slt i32 %call4.i7.i.i, 0
  br i1 %cmp5.i8.i.i, label %if.end.i9.i.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge, label %if.end.i9.i.i.w9968cf_smbus_write_nack.exit.i_crit_edge

if.end.i9.i.i.w9968cf_smbus_write_nack.exit.i_crit_edge: ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_smbus_write_nack.exit.i

if.end.i9.i.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge: ; preds = %if.end.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12.sink.split.i.i

w9968cf_write_sb.exit12.sink.split.i.i:           ; preds = %if.end.i9.i.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge, %if.end.i.i52.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 19, %if.end.i.i52.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge ], [ 18, %if.end.i9.i.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge ]
  %call4.i.sink.i.i = phi i32 [ %call4.i.i50.i, %if.end.i.i52.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge ], [ %call4.i7.i.i, %if.end.i9.i.i.w9968cf_write_sb.exit12.sink.split.i.i_crit_edge ]
  %call7.i.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %.sink.i.i) #10
  %113 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call4.i.sink.i.i, ptr %usb_err.i.i46, align 8
  br label %w9968cf_smbus_write_nack.exit.i

w9968cf_smbus_write_nack.exit.i:                  ; preds = %w9968cf_write_sb.exit12.sink.split.i.i, %if.end.i9.i.i.w9968cf_smbus_write_nack.exit.i_crit_edge, %w9968cf_write_sb.exit.i54.i.w9968cf_smbus_write_nack.exit.i_crit_edge, %w9968cf_smbus_read_byte.exit.i.w9968cf_smbus_write_nack.exit.i_crit_edge
  tail call fastcc void @w9968cf_smbus_stop(ptr noundef %sd) #7
  %114 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i57.i = icmp slt i32 %115, 0
  br i1 %cmp.i57.i, label %w9968cf_smbus_write_nack.exit.i.do.end16.i_crit_edge, label %if.end.i63.i

w9968cf_smbus_write_nack.exit.i.do.end16.i_crit_edge: ; preds = %w9968cf_smbus_write_nack.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

if.end.i63.i:                                     ; preds = %w9968cf_smbus_write_nack.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 32212200) #7
  %117 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 8
  %shl.i.i59.i = shl i32 %120, 8
  %or.i60.i = or i32 %shl.i.i59.i, -2147483648
  %call4.i61.i = tail call i32 @usb_control_msg(ptr noundef %118, i32 noundef %or.i60.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 48, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i61.i)
  %cmp5.i62.i = icmp slt i32 %call4.i61.i, 0
  br i1 %cmp5.i62.i, label %do.end.i65.i, label %w9968cf_write_sb.exit66.i

do.end.i65.i:                                     ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 48) #10
  %122 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call4.i61.i, ptr %usb_err.i.i46, align 8
  br label %do.end16.i

w9968cf_write_sb.exit66.i:                        ; preds = %if.end.i63.i
  %123 = ptrtoint ptr %usb_err.i.i46 to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr73.i = load i32, ptr %usb_err.i.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr73.i)
  %cmp.i54 = icmp sgt i32 %.pr73.i, -1
  br i1 %cmp.i54, label %if.then.i, label %w9968cf_write_sb.exit66.i.do.end16.i_crit_edge

w9968cf_write_sb.exit66.i.do.end16.i_crit_edge:   ; preds = %w9968cf_write_sb.exit66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

if.then.i:                                        ; preds = %w9968cf_write_sb.exit66.i
  %conv5.i55 = zext i8 %conv5.i72.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %124 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %124)
  %cmp6.i = icmp sgt i32 %124, 5
  br i1 %cmp6.i, label %do.end.i58, label %if.then.i.if.then15_crit_edge

if.then.i.if.then15_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

do.end.i58:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i56 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i56, i32 noundef %idxprom, i32 noundef %conv5.i55) #10
  br label %if.then15

do.end16.i:                                       ; preds = %w9968cf_write_sb.exit66.i.do.end16.i_crit_edge, %do.end.i65.i, %w9968cf_smbus_write_nack.exit.i.do.end16.i_crit_edge
  %name19.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name19.i, i32 noundef %idxprom) #10
  br label %if.then15

sw.epilog:                                        ; preds = %do.end.i39, %reg_r8.exit29.i.sw.epilog_crit_edge, %do.end84.i
  %ret.0 = phi i32 [ %call68.i, %do.end84.i ], [ %call2.i, %reg_r8.exit29.i.sw.epilog_crit_edge ], [ %call2.i, %do.end.i39 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp13 = icmp sgt i32 %ret.0, -1
  br i1 %cmp13, label %sw.epilog.if.then15_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.if.then15_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %sw.epilog.if.then15_crit_edge, %do.end16.i, %do.end.i58, %if.then.i.if.then15_crit_edge, %do.end.i44, %if.then10.i.if.then15_crit_edge
  %ret.066 = phi i32 [ %ret.0, %sw.epilog.if.then15_crit_edge ], [ 0, %do.end16.i ], [ %conv5.i55, %if.then.i.if.then15_crit_edge ], [ %conv5.i55, %do.end.i58 ], [ %conv13.i, %if.then10.i.if.then15_crit_edge ], [ %conv13.i, %do.end.i44 ]
  %conv16 = trunc i32 %ret.066 to i16
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv16, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %sw.epilog.cleanup_crit_edge, %do.end25.i, %sw.bb9.cleanup_crit_edge, %do.end57.i, %do.body51.i.cleanup_crit_edge, %do.end37.i.cleanup_crit_edge, %do.end20.i, %do.body14.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %ret.066, %if.then15 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %call7.i, %do.end25.i ], [ -1, %sw.bb9.cleanup_crit_edge ], [ -1, %do.body51.i.cleanup_crit_edge ], [ -1, %do.end57.i ], [ -1, %do.body14.i.cleanup_crit_edge ], [ -1, %do.end20.i ], [ -1, %if.end.cleanup_crit_edge ], [ %call28.i, %do.end37.i.cleanup_crit_edge ], [ %call.i, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w9968cf_smbus_start(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.w9968cf_write_sb.exit12_crit_edge, label %if.end.i

entry.w9968cf_write_sb.exit12_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 32212200) #7
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.w9968cf_write_sb.exit12.sink.split_crit_edge, label %w9968cf_write_sb.exit

if.end.i.w9968cf_write_sb.exit12.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12.sink.split

w9968cf_write_sb.exit:                            ; preds = %if.end.i
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i3 = icmp slt i32 %.pr, 0
  br i1 %cmp.i3, label %w9968cf_write_sb.exit.w9968cf_write_sb.exit12_crit_edge, label %if.end.i9

w9968cf_write_sb.exit.w9968cf_write_sb.exit12_crit_edge: ; preds = %w9968cf_write_sb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12

if.end.i9:                                        ; preds = %w9968cf_write_sb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 32212200) #7
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i5 = shl i32 %13, 8
  %or.i6 = or i32 %shl.i.i5, -2147483648
  %call4.i7 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i6, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i7)
  %cmp5.i8 = icmp slt i32 %call4.i7, 0
  br i1 %cmp5.i8, label %if.end.i9.w9968cf_write_sb.exit12.sink.split_crit_edge, label %if.end.i9.w9968cf_write_sb.exit12_crit_edge

if.end.i9.w9968cf_write_sb.exit12_crit_edge:      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12

if.end.i9.w9968cf_write_sb.exit12.sink.split_crit_edge: ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit12.sink.split

w9968cf_write_sb.exit12.sink.split:               ; preds = %if.end.i9.w9968cf_write_sb.exit12.sink.split_crit_edge, %if.end.i.w9968cf_write_sb.exit12.sink.split_crit_edge
  %.sink = phi i32 [ 17, %if.end.i.w9968cf_write_sb.exit12.sink.split_crit_edge ], [ 16, %if.end.i9.w9968cf_write_sb.exit12.sink.split_crit_edge ]
  %call4.i.sink = phi i32 [ %call4.i, %if.end.i.w9968cf_write_sb.exit12.sink.split_crit_edge ], [ %call4.i7, %if.end.i9.w9968cf_write_sb.exit12.sink.split_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %.sink) #10
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4.i.sink, ptr %usb_err.i, align 8
  br label %w9968cf_write_sb.exit12

w9968cf_write_sb.exit12:                          ; preds = %w9968cf_write_sb.exit12.sink.split, %if.end.i9.w9968cf_write_sb.exit12_crit_edge, %w9968cf_write_sb.exit.w9968cf_write_sb.exit12_crit_edge, %entry.w9968cf_write_sb.exit12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w9968cf_smbus_write_byte(ptr nocapture noundef %sd, i8 noundef zeroext %v) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %w9968cf_write_sb.exit39.for.body_crit_edge, %entry
  %bit.050 = phi i8 [ 0, %entry ], [ %inc, %w9968cf_write_sb.exit39.for.body_crit_edge ]
  %v.addr.049 = phi i8 [ %v, %entry ], [ %shl, %w9968cf_write_sb.exit39.for.body_crit_edge ]
  %0 = lshr i8 %v.addr.049, 6
  %1 = and i8 %0, 2
  %shl = shl i8 %v.addr.049, 1
  %2 = or i8 %1, 16
  %conv5 = zext i8 %2 to i16
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %for.body.w9968cf_write_sb.exit39_crit_edge, label %if.end.i

for.body.w9968cf_write_sb.exit39_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 32212200) #7
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv5, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.w9968cf_write_sb.exit39.sink.split_crit_edge, label %w9968cf_write_sb.exit

if.end.i.w9968cf_write_sb.exit39.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39.sink.split

w9968cf_write_sb.exit:                            ; preds = %if.end.i
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i17 = icmp slt i32 %.pr, 0
  br i1 %cmp.i17, label %w9968cf_write_sb.exit.w9968cf_write_sb.exit39_crit_edge, label %if.end.i23

w9968cf_write_sb.exit.w9968cf_write_sb.exit39_crit_edge: ; preds = %w9968cf_write_sb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39

if.end.i23:                                       ; preds = %w9968cf_write_sb.exit
  %12 = or i8 %0, 17
  %conv7 = zext i8 %12 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 32212200) #7
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i19 = shl i32 %17, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %call4.i21 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i20, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv7, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i21)
  %cmp5.i22 = icmp slt i32 %call4.i21, 0
  br i1 %cmp5.i22, label %if.end.i23.w9968cf_write_sb.exit39.sink.split_crit_edge, label %w9968cf_write_sb.exit27

if.end.i23.w9968cf_write_sb.exit39.sink.split_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39.sink.split

w9968cf_write_sb.exit27:                          ; preds = %if.end.i23
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr42.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr42.pr)
  %cmp.i29 = icmp slt i32 %.pr42.pr, 0
  br i1 %cmp.i29, label %w9968cf_write_sb.exit27.w9968cf_write_sb.exit39_crit_edge, label %if.end.i35

w9968cf_write_sb.exit27.w9968cf_write_sb.exit39_crit_edge: ; preds = %w9968cf_write_sb.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39

if.end.i35:                                       ; preds = %w9968cf_write_sb.exit27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 32212200) #7
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i31 = shl i32 %24, 8
  %or.i32 = or i32 %shl.i.i31, -2147483648
  %call4.i33 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i32, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv5, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i33)
  %cmp5.i34 = icmp slt i32 %call4.i33, 0
  br i1 %cmp5.i34, label %if.end.i35.w9968cf_write_sb.exit39.sink.split_crit_edge, label %if.end.i35.w9968cf_write_sb.exit39_crit_edge

if.end.i35.w9968cf_write_sb.exit39_crit_edge:     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39

if.end.i35.w9968cf_write_sb.exit39.sink.split_crit_edge: ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit39.sink.split

w9968cf_write_sb.exit39.sink.split:               ; preds = %if.end.i35.w9968cf_write_sb.exit39.sink.split_crit_edge, %if.end.i23.w9968cf_write_sb.exit39.sink.split_crit_edge, %if.end.i.w9968cf_write_sb.exit39.sink.split_crit_edge
  %.sink = phi i8 [ %2, %if.end.i.w9968cf_write_sb.exit39.sink.split_crit_edge ], [ %12, %if.end.i23.w9968cf_write_sb.exit39.sink.split_crit_edge ], [ %2, %if.end.i35.w9968cf_write_sb.exit39.sink.split_crit_edge ]
  %call4.i.sink = phi i32 [ %call4.i, %if.end.i.w9968cf_write_sb.exit39.sink.split_crit_edge ], [ %call4.i21, %if.end.i23.w9968cf_write_sb.exit39.sink.split_crit_edge ], [ %call4.i33, %if.end.i35.w9968cf_write_sb.exit39.sink.split_crit_edge ]
  %conv.i = zext i8 %.sink to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv.i) #10
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call4.i.sink, ptr %usb_err.i, align 8
  br label %w9968cf_write_sb.exit39

w9968cf_write_sb.exit39:                          ; preds = %w9968cf_write_sb.exit39.sink.split, %if.end.i35.w9968cf_write_sb.exit39_crit_edge, %w9968cf_write_sb.exit27.w9968cf_write_sb.exit39_crit_edge, %w9968cf_write_sb.exit.w9968cf_write_sb.exit39_crit_edge, %for.body.w9968cf_write_sb.exit39_crit_edge
  %inc = add nuw nsw i8 %bit.050, 1
  %cmp = icmp ult i8 %bit.050, 7
  br i1 %cmp, label %w9968cf_write_sb.exit39.for.body_crit_edge, label %for.end

w9968cf_write_sb.exit39.for.body_crit_edge:       ; preds = %w9968cf_write_sb.exit39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %w9968cf_write_sb.exit39
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w9968cf_smbus_read_ack(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.if.end8_crit_edge, label %if.end.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 32212200) #7
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %w9968cf_write_sb.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 18) #10
  br label %if.end8.sink.split

w9968cf_write_sb.exit:                            ; preds = %if.end.i
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i16 = icmp slt i32 %.pr, 0
  br i1 %cmp.i16, label %w9968cf_write_sb.exit.if.end8_crit_edge, label %if.end.i22

w9968cf_write_sb.exit.if.end8_crit_edge:          ; preds = %w9968cf_write_sb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i22:                                       ; preds = %w9968cf_write_sb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 32212200) #7
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i18 = shl i32 %13, 8
  %or.i19 = or i32 %shl.i.i18, -2147483648
  %call4.i20 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i19, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i20)
  %cmp5.i21 = icmp slt i32 %call4.i20, 0
  br i1 %cmp5.i21, label %do.end.i24, label %w9968cf_write_sb.exit25

do.end.i24:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 19) #10
  br label %if.end8.sink.split

w9968cf_write_sb.exit25:                          ; preds = %if.end.i22
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr44.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr44.pr)
  %cmp.i27 = icmp slt i32 %.pr44.pr, 0
  br i1 %cmp.i27, label %w9968cf_write_sb.exit25.if.end8_crit_edge, label %if.end.i30

w9968cf_write_sb.exit25.if.end8_crit_edge:        ; preds = %w9968cf_write_sb.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i30:                                       ; preds = %w9968cf_write_sb.exit25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 32212200) #7
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i29 = shl i32 %20, 8
  %or4.i = or i32 %shl.i.i29, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or4.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %22, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6.i)
  %cmp7.i = icmp sgt i32 %call6.i, -1
  br i1 %cmp7.i, label %if.then8.i, label %do.end.i31

if.then8.i:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv.i = zext i8 %26 to i32
  br label %w9968cf_read_sb.exit

do.end.i31:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #10
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call6.i, ptr %usb_err.i, align 8
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 0, ptr %29, align 1
  br label %w9968cf_read_sb.exit

w9968cf_read_sb.exit:                             ; preds = %do.end.i31, %if.then8.i
  %ret.0.i = phi i32 [ %conv.i, %if.then8.i ], [ %call6.i, %do.end.i31 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 858992) #7
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr46.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr46.pr)
  %cmp.i33 = icmp slt i32 %.pr46.pr, 0
  br i1 %cmp.i33, label %w9968cf_read_sb.exit.w9968cf_write_sb.exit42_crit_edge, label %if.end.i39

w9968cf_read_sb.exit.w9968cf_write_sb.exit42_crit_edge: ; preds = %w9968cf_read_sb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit42

if.end.i39:                                       ; preds = %w9968cf_read_sb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 32212200) #7
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i35 = shl i32 %37, 8
  %or.i36 = or i32 %shl.i.i35, -2147483648
  %call4.i37 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i36, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i37)
  %cmp5.i38 = icmp slt i32 %call4.i37, 0
  br i1 %cmp5.i38, label %do.end.i41, label %if.end.i39.w9968cf_write_sb.exit42_crit_edge

if.end.i39.w9968cf_write_sb.exit42_crit_edge:     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit42

do.end.i41:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 18) #10
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call4.i37, ptr %usb_err.i, align 8
  br label %w9968cf_write_sb.exit42

w9968cf_write_sb.exit42:                          ; preds = %do.end.i41, %if.end.i39.w9968cf_write_sb.exit42_crit_edge, %w9968cf_read_sb.exit.w9968cf_write_sb.exit42_crit_edge
  %40 = and i32 %ret.0.i, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %.not = icmp eq i32 %40, 8
  br i1 %.not, label %do.body, label %w9968cf_write_sb.exit42.if.end8_crit_edge

w9968cf_write_sb.exit42.if.end8_crit_edge:        ; preds = %w9968cf_write_sb.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %w9968cf_write_sb.exit42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %cmp1 = icmp sgt i32 %41, 5
  br i1 %cmp1, label %do.end, label %do.body.if.end8.sink.split_crit_edge

do.body.if.end8.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.sink.split

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name) #10
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %do.end, %do.body.if.end8.sink.split_crit_edge, %do.end.i24, %do.end.i
  %call4.i20.sink = phi i32 [ %call4.i20, %do.end.i24 ], [ %call4.i, %do.end.i ], [ -5, %do.end ], [ -5, %do.body.if.end8.sink.split_crit_edge ]
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call4.i20.sink, ptr %usb_err.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %w9968cf_write_sb.exit42.if.end8_crit_edge, %w9968cf_write_sb.exit25.if.end8_crit_edge, %w9968cf_write_sb.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w9968cf_smbus_stop(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.w9968cf_write_sb.exit24_crit_edge, label %if.end.i

entry.w9968cf_write_sb.exit24_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 32212200) #7
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.w9968cf_write_sb.exit24.sink.split_crit_edge, label %w9968cf_write_sb.exit

if.end.i.w9968cf_write_sb.exit24.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24.sink.split

w9968cf_write_sb.exit:                            ; preds = %if.end.i
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i4 = icmp slt i32 %.pr, 0
  br i1 %cmp.i4, label %w9968cf_write_sb.exit.w9968cf_write_sb.exit24_crit_edge, label %if.end.i10

w9968cf_write_sb.exit.w9968cf_write_sb.exit24_crit_edge: ; preds = %w9968cf_write_sb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24

if.end.i10:                                       ; preds = %w9968cf_write_sb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 32212200) #7
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i6 = shl i32 %13, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call4.i8 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i7, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i8)
  %cmp5.i9 = icmp slt i32 %call4.i8, 0
  br i1 %cmp5.i9, label %if.end.i10.w9968cf_write_sb.exit24.sink.split_crit_edge, label %w9968cf_write_sb.exit13

if.end.i10.w9968cf_write_sb.exit24.sink.split_crit_edge: ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24.sink.split

w9968cf_write_sb.exit13:                          ; preds = %if.end.i10
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr26.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr26.pr)
  %cmp.i15 = icmp slt i32 %.pr26.pr, 0
  br i1 %cmp.i15, label %w9968cf_write_sb.exit13.w9968cf_write_sb.exit24_crit_edge, label %if.end.i21

w9968cf_write_sb.exit13.w9968cf_write_sb.exit24_crit_edge: ; preds = %w9968cf_write_sb.exit13
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24

if.end.i21:                                       ; preds = %w9968cf_write_sb.exit13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 32212200) #7
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i17 = shl i32 %20, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %call4.i19 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i18, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 19, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 858992) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i19)
  %cmp5.i20 = icmp slt i32 %call4.i19, 0
  br i1 %cmp5.i20, label %if.end.i21.w9968cf_write_sb.exit24.sink.split_crit_edge, label %if.end.i21.w9968cf_write_sb.exit24_crit_edge

if.end.i21.w9968cf_write_sb.exit24_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24

if.end.i21.w9968cf_write_sb.exit24.sink.split_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %w9968cf_write_sb.exit24.sink.split

w9968cf_write_sb.exit24.sink.split:               ; preds = %if.end.i21.w9968cf_write_sb.exit24.sink.split_crit_edge, %if.end.i10.w9968cf_write_sb.exit24.sink.split_crit_edge, %if.end.i.w9968cf_write_sb.exit24.sink.split_crit_edge
  %.sink = phi i32 [ 16, %if.end.i.w9968cf_write_sb.exit24.sink.split_crit_edge ], [ 17, %if.end.i10.w9968cf_write_sb.exit24.sink.split_crit_edge ], [ 19, %if.end.i21.w9968cf_write_sb.exit24.sink.split_crit_edge ]
  %call4.i.sink = phi i32 [ %call4.i, %if.end.i.w9968cf_write_sb.exit24.sink.split_crit_edge ], [ %call4.i8, %if.end.i10.w9968cf_write_sb.exit24.sink.split_crit_edge ], [ %call4.i19, %if.end.i21.w9968cf_write_sb.exit24.sink.split_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %.sink) #10
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call4.i.sink, ptr %usb_err.i, align 8
  br label %w9968cf_write_sb.exit24

w9968cf_write_sb.exit24:                          ; preds = %w9968cf_write_sb.exit24.sink.split, %if.end.i21.w9968cf_write_sb.exit24_crit_edge, %w9968cf_write_sb.exit13.w9968cf_write_sb.exit24_crit_edge, %w9968cf_write_sb.exit.w9968cf_write_sb.exit24_crit_edge, %entry.w9968cf_write_sb.exit24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov518_i2c_w(ptr noundef %sd, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv = zext i8 %reg to i32
  %conv2 = zext i8 %value to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %conv5 = zext i8 %reg to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 66, i16 noundef zeroext %conv5)
  %conv6 = zext i8 %value to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 69, i16 noundef zeroext %conv6)
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 71, i16 noundef zeroext 1)
  tail call void @msleep(i32 noundef 4) #7
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %do.end4.reg_r8.exit_crit_edge, label %if.end.i

do.end4.reg_r8.exit_crit_edge:                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r8.exit

if.end.i:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 32212200) #7
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %8 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or5.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 71, ptr noundef %9, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i)
  %cmp8.i = icmp sgt i32 %call7.i, -1
  br i1 %cmp8.i, label %if.end.i.reg_r8.exit_crit_edge, label %do.end.i

if.end.i.reg_r8.exit_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r8.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i, i32 noundef 71, i32 noundef %call7.i) #10
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call7.i, ptr %usb_err.i, align 8
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 1
  br label %reg_r8.exit

reg_r8.exit:                                      ; preds = %do.end.i, %if.end.i.reg_r8.exit_crit_edge, %do.end4.reg_r8.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %4)
  %cond = icmp eq i32 %4, 9963794
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %call = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 16)
  %exposure = getelementptr i8, ptr %1, i32 188
  %5 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %exposure, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

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
  %4 = load i8, ptr %streaming, align 2, !range !475
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963800, label %sw.bb3
    i32 9963808, label %sw.bb5
    i32 9963778, label %sw.bb21
    i32 9963796, label %sw.bb23
    i32 9963794, label %sw.bb26
    i32 10291459, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call fastcc void @setbrightness(ptr noundef %add.ptr, i32 noundef %9)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val2, align 4
  %sensor.i = getelementptr i8, ptr %1, i32 1059
  %12 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sensor.i, align 1
  %conv.i = sext i8 %13 to i32
  %14 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %conv.i, label %sw.bb1.sw.epilog_crit_edge [
    i32 6, label %sw.bb1.sw.bb.i_crit_edge
    i32 3, label %sw.bb1.sw.bb.i_crit_edge108
    i32 4, label %sw.bb1.sw.bb2.i_crit_edge
    i32 5, label %sw.bb1.sw.bb2.i_crit_edge109
    i32 14, label %sw.bb4.i
    i32 7, label %sw.bb1.sw.bb6.i_crit_edge
    i32 8, label %sw.bb1.sw.bb6.i_crit_edge110
    i32 11, label %sw.bb9.i
    i32 12, label %sw.bb11.i
  ]

sw.bb1.sw.bb6.i_crit_edge110:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

sw.bb1.sw.bb6.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6.i

sw.bb1.sw.bb2.i_crit_edge109:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb1.sw.bb2.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sw.bb1.sw.bb.i_crit_edge108:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb1.sw.bb.i_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb1.sw.bb.i_crit_edge, %sw.bb1.sw.bb.i_crit_edge108
  %conv1.i = trunc i32 %11 to i8
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 5, i8 noundef zeroext %conv1.i) #7
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb1.sw.bb2.i_crit_edge, %sw.bb1.sw.bb2.i_crit_edge109
  %call.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb2.i.sw.epilog_crit_edge, label %if.end.i.i

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = trunc i32 %11 to i8
  %16 = lshr i8 %15, 4
  %17 = trunc i32 %call.i.i to i8
  %18 = and i8 %17, -16
  %conv9.i.i = or i8 %18, %16
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 5, i8 noundef zeroext %conv9.i.i) #7
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %shr5.i = ashr i32 %11, 5
  %arrayidx.i = getelementptr [8 x i8], ptr @setcontrast.ctab, i32 0, i32 %shr5.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 100, i8 noundef zeroext %20) #7
  br label %sw.epilog

sw.bb6.i:                                         ; preds = %sw.bb1.sw.bb6.i_crit_edge, %sw.bb1.sw.bb6.i_crit_edge110
  %shr7.i = ashr i32 %11, 4
  %arrayidx8.i = getelementptr [16 x i8], ptr @setcontrast.ctab.178, i32 0, i32 %shr7.i
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx8.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 100, i8 noundef zeroext %22) #7
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %sw.bb1
  %arrayidx10.i = getelementptr [7 x [31 x %struct.ov_i2c_regvals]], ptr @setcontrast.contrast_7660, i32 0, i32 %11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %sw.bb9.i
  %dec6.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 30, %sw.bb9.i ]
  %regvals.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %arrayidx10.i, %sw.bb9.i ]
  %23 = ptrtoint ptr %regvals.addr.05.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %regvals.addr.05.i.i, align 1
  %val.i.i = getelementptr inbounds %struct.ov_i2c_regvals, ptr %regvals.addr.05.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %24, i8 noundef zeroext %26) #7
  %incdec.ptr.i.i = getelementptr %struct.ov_i2c_regvals, ptr %regvals.addr.05.i.i, i32 1
  %dec.i.i = add nsw i32 %dec6.i.i, -1
  %cmp.i25.not.i = icmp eq i32 %dec6.i.i, 0
  br i1 %cmp.i25.not.i, label %while.body.i.i.sw.epilog_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.sw.epilog_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %27 = lshr i32 %11, 1
  %conv13.i = trunc i32 %27 to i8
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 86, i8 noundef zeroext %conv13.i) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %28 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val4, align 4
  %sensor.i.i = getelementptr i8, ptr %1, i32 1059
  %30 = ptrtoint ptr %sensor.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sensor.i.i, align 1
  %.off.i.i = add i8 %31, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb3
  %32 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %29, label %if.then.i.i.setfreq_i.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb6.i.i
    i32 2, label %sw.bb7.i.i
    i32 3, label %sw.bb8.i.i
  ]

if.then.i.i.setfreq_i.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  %call.i.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.bb.i.i.setfreq_i.exit.i_crit_edge, label %if.end.i.i.i

sw.bb.i.i.setfreq_i.exit.i_crit_edge:             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = trunc i32 %call.i.i.i to i8
  %34 = and i8 %33, -33
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %34) #7
  br label %setfreq_i.exit.i

sw.bb6.i.i:                                       ; preds = %if.then.i.i
  %call.i76.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i.i)
  %cmp.i77.i.i = icmp slt i32 %call.i76.i.i, 0
  br i1 %cmp.i77.i.i, label %sw.bb6.i.i.i2c_w_mask.exit80.i.i_crit_edge, label %if.end.i79.i.i

sw.bb6.i.i.i2c_w_mask.exit80.i.i_crit_edge:       ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit80.i.i

if.end.i79.i.i:                                   ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = trunc i32 %call.i76.i.i to i8
  %conv9.i.i.i = or i8 %35, 32
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i.i.i) #7
  br label %i2c_w_mask.exit80.i.i

i2c_w_mask.exit80.i.i:                            ; preds = %if.end.i79.i.i, %sw.bb6.i.i.i2c_w_mask.exit80.i.i_crit_edge
  %call.i81.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i.i)
  %cmp.i82.i.i = icmp slt i32 %call.i81.i.i, 0
  br i1 %cmp.i82.i.i, label %i2c_w_mask.exit80.i.i.setfreq_i.exit.i_crit_edge, label %if.end.i85.i.i

i2c_w_mask.exit80.i.i.setfreq_i.exit.i_crit_edge: ; preds = %i2c_w_mask.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

if.end.i85.i.i:                                   ; preds = %i2c_w_mask.exit80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = trunc i32 %call.i81.i.i to i8
  %37 = and i8 %36, -25
  %conv9.i84.i.i = or i8 %37, 8
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 59, i8 noundef zeroext %conv9.i84.i.i) #7
  br label %setfreq_i.exit.i

sw.bb7.i.i:                                       ; preds = %if.then.i.i
  %call.i87.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i.i)
  %cmp.i88.i.i = icmp slt i32 %call.i87.i.i, 0
  br i1 %cmp.i88.i.i, label %sw.bb7.i.i.i2c_w_mask.exit92.i.i_crit_edge, label %if.end.i91.i.i

sw.bb7.i.i.i2c_w_mask.exit92.i.i_crit_edge:       ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit92.i.i

if.end.i91.i.i:                                   ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = trunc i32 %call.i87.i.i to i8
  %conv9.i90.i.i = or i8 %38, 32
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i90.i.i) #7
  br label %i2c_w_mask.exit92.i.i

i2c_w_mask.exit92.i.i:                            ; preds = %if.end.i91.i.i, %sw.bb7.i.i.i2c_w_mask.exit92.i.i_crit_edge
  %call.i93.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %cmp.i94.i.i = icmp slt i32 %call.i93.i.i, 0
  br i1 %cmp.i94.i.i, label %i2c_w_mask.exit92.i.i.setfreq_i.exit.i_crit_edge, label %if.end.i96.i.i

i2c_w_mask.exit92.i.i.setfreq_i.exit.i_crit_edge: ; preds = %i2c_w_mask.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

if.end.i96.i.i:                                   ; preds = %i2c_w_mask.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = trunc i32 %call.i93.i.i to i8
  %40 = and i8 %39, -25
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 59, i8 noundef zeroext %40) #7
  br label %setfreq_i.exit.i

sw.bb8.i.i:                                       ; preds = %if.then.i.i
  %call.i98.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i.i)
  %cmp.i99.i.i = icmp slt i32 %call.i98.i.i, 0
  br i1 %cmp.i99.i.i, label %sw.bb8.i.i.i2c_w_mask.exit103.i.i_crit_edge, label %if.end.i102.i.i

sw.bb8.i.i.i2c_w_mask.exit103.i.i_crit_edge:      ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit103.i.i

if.end.i102.i.i:                                  ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = trunc i32 %call.i98.i.i to i8
  %conv9.i101.i.i = or i8 %41, 32
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i101.i.i) #7
  br label %i2c_w_mask.exit103.i.i

i2c_w_mask.exit103.i.i:                           ; preds = %if.end.i102.i.i, %sw.bb8.i.i.i2c_w_mask.exit103.i.i_crit_edge
  %call.i104.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i.i)
  %cmp.i105.i.i = icmp slt i32 %call.i104.i.i, 0
  br i1 %cmp.i105.i.i, label %i2c_w_mask.exit103.i.i.setfreq_i.exit.i_crit_edge, label %if.end.i108.i.i

i2c_w_mask.exit103.i.i.setfreq_i.exit.i_crit_edge: ; preds = %i2c_w_mask.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

if.end.i108.i.i:                                  ; preds = %i2c_w_mask.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = trunc i32 %call.i104.i.i to i8
  %43 = and i8 %42, -25
  %conv9.i107.i.i = or i8 %43, 16
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 59, i8 noundef zeroext %conv9.i107.i.i) #7
  br label %setfreq_i.exit.i

if.else.i.i:                                      ; preds = %sw.bb3
  %44 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %29, label %if.else.i.i.setfreq_i.exit.i_crit_edge [
    i32 0, label %sw.bb9.i.i
    i32 1, label %sw.bb10.i.i
    i32 2, label %sw.bb27.i.i
  ]

if.else.i.i.setfreq_i.exit.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

sw.bb9.i.i:                                       ; preds = %if.else.i.i
  %call.i110.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %cmp.i111.i.i = icmp slt i32 %call.i110.i.i, 0
  br i1 %cmp.i111.i.i, label %sw.bb9.i.i.i2c_w_mask.exit114.i.i_crit_edge, label %if.end.i113.i.i

sw.bb9.i.i.i2c_w_mask.exit114.i.i_crit_edge:      ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit114.i.i

if.end.i113.i.i:                                  ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = trunc i32 %call.i110.i.i to i8
  %46 = and i8 %45, -5
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 45, i8 noundef zeroext %46) #7
  br label %i2c_w_mask.exit114.i.i

i2c_w_mask.exit114.i.i:                           ; preds = %if.end.i113.i.i, %sw.bb9.i.i.i2c_w_mask.exit114.i.i_crit_edge
  %call.i115.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i.i)
  %cmp.i116.i.i = icmp slt i32 %call.i115.i.i, 0
  br i1 %cmp.i116.i.i, label %i2c_w_mask.exit114.i.i.setfreq_i.exit.i_crit_edge, label %if.end.i118.i.i

i2c_w_mask.exit114.i.i.setfreq_i.exit.i_crit_edge: ; preds = %i2c_w_mask.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

if.end.i118.i.i:                                  ; preds = %i2c_w_mask.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = trunc i32 %call.i115.i.i to i8
  %48 = and i8 %47, 127
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 42, i8 noundef zeroext %48) #7
  br label %setfreq_i.exit.i

sw.bb10.i.i:                                      ; preds = %if.else.i.i
  %call.i120.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i.i)
  %cmp.i121.i.i = icmp slt i32 %call.i120.i.i, 0
  br i1 %cmp.i121.i.i, label %sw.bb10.i.i.i2c_w_mask.exit125.i.i_crit_edge, label %if.end.i124.i.i

sw.bb10.i.i.i2c_w_mask.exit125.i.i_crit_edge:     ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit125.i.i

if.end.i124.i.i:                                  ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = trunc i32 %call.i120.i.i to i8
  %conv9.i123.i.i = or i8 %49, 4
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 45, i8 noundef zeroext %conv9.i123.i.i) #7
  br label %i2c_w_mask.exit125.i.i

i2c_w_mask.exit125.i.i:                           ; preds = %if.end.i124.i.i, %sw.bb10.i.i.i2c_w_mask.exit125.i.i_crit_edge
  %call.i126.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126.i.i)
  %cmp.i127.i.i = icmp slt i32 %call.i126.i.i, 0
  br i1 %cmp.i127.i.i, label %i2c_w_mask.exit125.i.i.i2c_w_mask.exit131.i.i_crit_edge, label %if.end.i130.i.i

i2c_w_mask.exit125.i.i.i2c_w_mask.exit131.i.i_crit_edge: ; preds = %i2c_w_mask.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit131.i.i

if.end.i130.i.i:                                  ; preds = %i2c_w_mask.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = trunc i32 %call.i126.i.i to i8
  %conv9.i129.i.i = or i8 %50, -128
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 42, i8 noundef zeroext %conv9.i129.i.i) #7
  br label %i2c_w_mask.exit131.i.i

i2c_w_mask.exit131.i.i:                           ; preds = %if.end.i130.i.i, %i2c_w_mask.exit125.i.i.i2c_w_mask.exit131.i.i_crit_edge
  %51 = ptrtoint ptr %sensor.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sensor.i.i, align 1
  %.off72.i.i = add i8 %52, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off72.i.i)
  %switch73.i.i = icmp ult i8 %.off72.i.i, 3
  br i1 %switch73.i.i, label %if.then25.i.i, label %if.else26.i.i

if.then25.i.i:                                    ; preds = %i2c_w_mask.exit131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 43, i8 noundef zeroext 94) #7
  br label %setfreq_i.exit.i

if.else26.i.i:                                    ; preds = %i2c_w_mask.exit131.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 43, i8 noundef zeroext -84) #7
  br label %setfreq_i.exit.i

sw.bb27.i.i:                                      ; preds = %if.else.i.i
  %call.i132.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i.i)
  %cmp.i133.i.i = icmp slt i32 %call.i132.i.i, 0
  br i1 %cmp.i133.i.i, label %sw.bb27.i.i.i2c_w_mask.exit137.i.i_crit_edge, label %if.end.i136.i.i

sw.bb27.i.i.i2c_w_mask.exit137.i.i_crit_edge:     ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit137.i.i

if.end.i136.i.i:                                  ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = trunc i32 %call.i132.i.i to i8
  %conv9.i135.i.i = or i8 %53, 4
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 45, i8 noundef zeroext %conv9.i135.i.i) #7
  br label %i2c_w_mask.exit137.i.i

i2c_w_mask.exit137.i.i:                           ; preds = %if.end.i136.i.i, %sw.bb27.i.i.i2c_w_mask.exit137.i.i_crit_edge
  %54 = ptrtoint ptr %sensor.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sensor.i.i, align 1
  %.off74.i.i = add i8 %55, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off74.i.i)
  %switch75.i.i = icmp ult i8 %.off74.i.i, 3
  %call.i138.i.i = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i.i)
  %cmp.i139.i.i = icmp slt i32 %call.i138.i.i, 0
  br i1 %switch75.i.i, label %if.then42.i.i, label %if.else43.i.i

if.then42.i.i:                                    ; preds = %i2c_w_mask.exit137.i.i
  br i1 %cmp.i139.i.i, label %if.then42.i.i.i2c_w_mask.exit143.i.i_crit_edge, label %if.end.i142.i.i

if.then42.i.i.i2c_w_mask.exit143.i.i_crit_edge:   ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit143.i.i

if.end.i142.i.i:                                  ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = trunc i32 %call.i138.i.i to i8
  %conv9.i141.i.i = or i8 %56, -128
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 42, i8 noundef zeroext %conv9.i141.i.i) #7
  br label %i2c_w_mask.exit143.i.i

i2c_w_mask.exit143.i.i:                           ; preds = %if.end.i142.i.i, %if.then42.i.i.i2c_w_mask.exit143.i.i_crit_edge
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 43, i8 noundef zeroext -88) #7
  br label %setfreq_i.exit.i

if.else43.i.i:                                    ; preds = %i2c_w_mask.exit137.i.i
  br i1 %cmp.i139.i.i, label %if.else43.i.i.setfreq_i.exit.i_crit_edge, label %if.end.i147.i.i

if.else43.i.i.setfreq_i.exit.i_crit_edge:         ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setfreq_i.exit.i

if.end.i147.i.i:                                  ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = trunc i32 %call.i138.i.i to i8
  %58 = and i8 %57, 127
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 42, i8 noundef zeroext %58) #7
  br label %setfreq_i.exit.i

setfreq_i.exit.i:                                 ; preds = %if.end.i147.i.i, %if.else43.i.i.setfreq_i.exit.i_crit_edge, %i2c_w_mask.exit143.i.i, %if.else26.i.i, %if.then25.i.i, %if.end.i118.i.i, %i2c_w_mask.exit114.i.i.setfreq_i.exit.i_crit_edge, %if.else.i.i.setfreq_i.exit.i_crit_edge, %if.end.i108.i.i, %i2c_w_mask.exit103.i.i.setfreq_i.exit.i_crit_edge, %if.end.i96.i.i, %i2c_w_mask.exit92.i.i.setfreq_i.exit.i_crit_edge, %if.end.i85.i.i, %i2c_w_mask.exit80.i.i.setfreq_i.exit.i_crit_edge, %if.end.i.i.i, %sw.bb.i.i.setfreq_i.exit.i_crit_edge, %if.then.i.i.setfreq_i.exit.i_crit_edge
  %bridge.i = getelementptr i8, ptr %1, i32 1050
  %59 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bridge.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %60)
  %cmp.i = icmp eq i8 %60, 6
  br i1 %cmp.i, label %if.then.i, label %setfreq_i.exit.i.sw.epilog_crit_edge

setfreq_i.exit.i.sw.epilog_crit_edge:             ; preds = %setfreq_i.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %setfreq_i.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @w9968cf_set_crop_window(ptr noundef %add.ptr) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %61 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load = load i32, ptr %is_new, align 4
  %62 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool6.not = icmp eq i32 %62, 0
  br i1 %tobool6.not, label %sw.bb5.if.end9_crit_edge, label %if.then7

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %sw.bb5
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %63 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val8, align 4
  %call.i.i78 = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp.i.i79 = icmp slt i32 %call.i.i78, 0
  br i1 %cmp.i.i79, label %if.then7.if.end9_crit_edge, label %if.end.i.i82

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i.i82:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  %conv.i80 = select i1 %tobool.not.i, i8 0, i8 16
  %65 = trunc i32 %call.i.i78 to i8
  %66 = and i8 %65, -17
  %conv9.i.i81 = or i8 %66, %conv.i80
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 45, i8 noundef zeroext %conv9.i.i81) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.i82, %if.then7.if.end9_crit_edge, %sw.bb5.if.end9_crit_edge
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %67 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool11.not = icmp eq i32 %68, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end9.sw.epilog_crit_edge

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end9
  %brightness = getelementptr i8, ptr %1, i32 1044
  %69 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %brightness, align 4
  %is_new12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %is_new12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load13 = load i32, ptr %is_new12, align 4
  %72 = and i32 %bf.load13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool16.not = icmp eq i32 %72, 0
  br i1 %tobool16.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then17

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 22
  %73 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val19, align 4
  tail call fastcc void @setbrightness(ptr noundef %add.ptr, i32 noundef %74)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %75 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val22, align 4
  %sensor.i83 = getelementptr i8, ptr %1, i32 1059
  %77 = ptrtoint ptr %sensor.i83 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sensor.i83, align 1
  %conv.i84 = sext i8 %78 to i32
  %79 = zext i32 %conv.i84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %conv.i84, label %sw.bb21.sw.epilog_crit_edge [
    i32 14, label %sw.bb21.sw.bb.i86_crit_edge
    i32 6, label %sw.bb21.sw.bb.i86_crit_edge111
    i32 13, label %sw.bb21.sw.bb.i86_crit_edge112
    i32 3, label %sw.bb21.sw.bb.i86_crit_edge113
    i32 4, label %sw.bb21.sw.bb.i86_crit_edge114
    i32 5, label %sw.bb21.sw.bb.i86_crit_edge115
    i32 7, label %sw.bb21.sw.bb2.i87_crit_edge
    i32 8, label %sw.bb21.sw.bb2.i87_crit_edge116
    i32 9, label %sw.bb21.sw.bb4.i88_crit_edge
    i32 10, label %sw.bb21.sw.bb4.i88_crit_edge117
    i32 11, label %sw.bb6.i92
  ]

sw.bb21.sw.bb4.i88_crit_edge117:                  ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i88

sw.bb21.sw.bb4.i88_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i88

sw.bb21.sw.bb2.i87_crit_edge116:                  ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i87

sw.bb21.sw.bb2.i87_crit_edge:                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i87

sw.bb21.sw.bb.i86_crit_edge115:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i86

sw.bb21.sw.bb.i86_crit_edge114:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i86

sw.bb21.sw.bb.i86_crit_edge113:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i86

sw.bb21.sw.bb.i86_crit_edge112:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i86

sw.bb21.sw.bb.i86_crit_edge111:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i86

sw.bb21.sw.bb.i86_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i86

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i86:                                        ; preds = %sw.bb21.sw.bb.i86_crit_edge, %sw.bb21.sw.bb.i86_crit_edge111, %sw.bb21.sw.bb.i86_crit_edge112, %sw.bb21.sw.bb.i86_crit_edge113, %sw.bb21.sw.bb.i86_crit_edge114, %sw.bb21.sw.bb.i86_crit_edge115
  %conv1.i85 = trunc i32 %76 to i8
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext %conv1.i85) #7
  br label %sw.epilog

sw.bb2.i87:                                       ; preds = %sw.bb21.sw.bb2.i87_crit_edge, %sw.bb21.sw.bb2.i87_crit_edge116
  %conv3.i = trunc i32 %76 to i8
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext %conv3.i) #7
  br label %sw.epilog

sw.bb4.i88:                                       ; preds = %sw.bb21.sw.bb4.i88_crit_edge, %sw.bb21.sw.bb4.i88_crit_edge117
  %80 = trunc i32 %76 to i8
  %conv5.i = and i8 %80, -16
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 3, i8 noundef zeroext %conv5.i) #7
  br label %sw.epilog

sw.bb6.i92:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i89 = getelementptr [5 x [6 x %struct.ov_i2c_regvals]], ptr @setcolors.colors_7660, i32 0, i32 %76
  %81 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i89, align 1
  %val.i.i90 = getelementptr inbounds %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 0, i32 1
  %83 = ptrtoint ptr %val.i.i90 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val.i.i90, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %82, i8 noundef zeroext %84) #7
  %incdec.ptr.i.i91 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 1
  %85 = ptrtoint ptr %incdec.ptr.i.i91 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr.i.i91, align 1
  %val.i.1.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 1, i32 1
  %87 = ptrtoint ptr %val.i.1.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %val.i.1.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %86, i8 noundef zeroext %88) #7
  %incdec.ptr.i.1.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 2
  %89 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %incdec.ptr.i.1.i, align 1
  %val.i.2.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 2, i32 1
  %91 = ptrtoint ptr %val.i.2.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %val.i.2.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %90, i8 noundef zeroext %92) #7
  %incdec.ptr.i.2.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 3
  %93 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %incdec.ptr.i.2.i, align 1
  %val.i.3.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 3, i32 1
  %95 = ptrtoint ptr %val.i.3.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %val.i.3.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %94, i8 noundef zeroext %96) #7
  %incdec.ptr.i.3.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 4
  %97 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %incdec.ptr.i.3.i, align 1
  %val.i.4.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 4, i32 1
  %99 = ptrtoint ptr %val.i.4.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %val.i.4.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %98, i8 noundef zeroext %100) #7
  %incdec.ptr.i.4.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 5
  %101 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %incdec.ptr.i.4.i, align 1
  %val.i.5.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx.i89, i32 5, i32 1
  %103 = ptrtoint ptr %val.i.5.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %val.i.5.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext %102, i8 noundef zeroext %104) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %105 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val24, align 4
  %vflip = getelementptr i8, ptr %1, i32 1036
  %107 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vflip, align 4
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %108, i32 0, i32 22
  %109 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val25, align 4
  %111 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %streaming, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i93 = icmp eq i8 %112, 0
  br i1 %tobool.not.i93, label %sw.bb23.if.end.i_crit_edge, label %if.then.i94

sw.bb23.if.end.i_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i94:                                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext 81, i16 noundef zeroext 15) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i94, %sw.bb23.if.end.i_crit_edge
  %call.i.i95 = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %cmp.i.i96 = icmp slt i32 %call.i.i95, 0
  br i1 %cmp.i.i96, label %if.end.i.i2c_w_mask.exit.i_crit_edge, label %if.end.i.i99

if.end.i.i2c_w_mask.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit.i

if.end.i.i99:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %106, 5
  %mul2.i = shl i32 %110, 4
  %or.i = or i32 %mul2.i, %mul.i
  %conv.i97 = trunc i32 %or.i to i8
  %and17.i.i = and i8 %conv.i97, 48
  %113 = trunc i32 %call.i.i95 to i8
  %114 = and i8 %113, -49
  %conv9.i.i98 = or i8 %114, %and17.i.i
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext %conv9.i.i98) #7
  br label %i2c_w_mask.exit.i

i2c_w_mask.exit.i:                                ; preds = %if.end.i.i99, %if.end.i.i2c_w_mask.exit.i_crit_edge
  %115 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %streaming, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool5.not.i = icmp eq i8 %116, 0
  br i1 %tobool5.not.i, label %i2c_w_mask.exit.i.sw.epilog_crit_edge, label %if.then6.i

i2c_w_mask.exit.i.sw.epilog_crit_edge:            ; preds = %i2c_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then6.i:                                       ; preds = %i2c_w_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext 81, i16 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %is_new27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %117 = ptrtoint ptr %is_new27 to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load28 = load i32, ptr %is_new27, align 4
  %118 = and i32 %bf.load28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool31.not = icmp eq i32 %118, 0
  br i1 %tobool31.not, label %sw.bb26.if.end34_crit_edge, label %if.then32

sw.bb26.if.end34_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %sw.bb26
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %119 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val33, align 4
  %call.i.i100 = tail call fastcc i32 @i2c_r(ptr noundef %add.ptr, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %cmp.i.i101 = icmp slt i32 %call.i.i100, 0
  br i1 %cmp.i.i101, label %if.then32.if.end34_crit_edge, label %if.end.i.i105

if.then32.if.end34_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end.i.i105:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i102 = icmp eq i32 %120, 0
  %conv.i103 = select i1 %tobool.not.i102, i8 0, i8 5
  %121 = trunc i32 %call.i.i100 to i8
  %122 = and i8 %121, -6
  %conv9.i.i104 = or i8 %122, %conv.i103
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i.i104) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end.i.i105, %if.then32.if.end34_crit_edge, %sw.bb26.if.end34_crit_edge
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %123 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool36.not = icmp eq i32 %124, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end34.sw.epilog_crit_edge

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true37:                                  ; preds = %if.end34
  %exposure = getelementptr i8, ptr %1, i32 188
  %125 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %exposure, align 4
  %is_new38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %is_new38 to i32
  call void @__asan_load4_noabort(i32 %127)
  %bf.load39 = load i32, ptr %is_new38, align 4
  %128 = and i32 %bf.load39, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool42.not = icmp eq i32 %128, 0
  br i1 %tobool42.not, label %land.lhs.true37.sw.epilog_crit_edge, label %if.then43

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then43:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  %val45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %126, i32 0, i32 22
  %129 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val45, align 4
  %conv.i107 = trunc i32 %130 to i8
  tail call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 16, i8 noundef zeroext %conv.i107) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then43, %land.lhs.true37.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge, %if.then6.i, %i2c_w_mask.exit.i.sw.epilog_crit_edge, %sw.bb6.i92, %sw.bb4.i88, %sw.bb2.i87, %sw.bb.i86, %sw.bb21.sw.epilog_crit_edge, %if.then17, %land.lhs.true.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge, %if.then.i, %setfreq_i.exit.i.sw.epilog_crit_edge, %sw.bb11.i, %while.body.i.i.sw.epilog_crit_edge, %sw.bb6.i, %sw.bb4.i, %if.end.i.i, %sw.bb2.i.sw.epilog_crit_edge, %sw.bb.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  %131 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %132, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setbrightness(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %conv = sext i8 %1 to i32
  %2 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 14, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge15
    i32 13, label %entry.sw.bb_crit_edge16
    i32 3, label %entry.sw.bb_crit_edge17
    i32 4, label %entry.sw.bb_crit_edge18
    i32 5, label %entry.sw.bb_crit_edge19
    i32 9, label %entry.sw.bb_crit_edge20
    i32 10, label %entry.sw.bb_crit_edge21
    i32 7, label %entry.sw.bb2_crit_edge
    i32 8, label %entry.sw.bb2_crit_edge22
    i32 11, label %sw.bb4
    i32 12, label %sw.bb5
  ]

entry.sw.bb2_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21
  %conv1 = trunc i32 %val to i8
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 6, i8 noundef zeroext %conv1)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge22
  %conv3 = trunc i32 %val to i8
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 6, i8 noundef zeroext %conv3)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [7 x [7 x %struct.ov_i2c_regvals]], ptr @setbrightness.brit_7660, i32 0, i32 %val
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %val.i = getelementptr inbounds %struct.ov_i2c_regvals, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %4, i8 noundef zeroext %6) #7
  %incdec.ptr.i = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 1
  %val.i.1 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 1, i32 1
  %9 = ptrtoint ptr %val.i.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i.1, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %8, i8 noundef zeroext %10) #7
  %incdec.ptr.i.1 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i.1, align 1
  %val.i.2 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 2, i32 1
  %13 = ptrtoint ptr %val.i.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i.2, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %12, i8 noundef zeroext %14) #7
  %incdec.ptr.i.2 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 3
  %15 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.i.2, align 1
  %val.i.3 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 3, i32 1
  %17 = ptrtoint ptr %val.i.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i.3, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %16, i8 noundef zeroext %18) #7
  %incdec.ptr.i.3 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 4
  %19 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.i.3, align 1
  %val.i.4 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 4, i32 1
  %21 = ptrtoint ptr %val.i.4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i.4, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %20, i8 noundef zeroext %22) #7
  %incdec.ptr.i.4 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 5
  %23 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i.4, align 1
  %val.i.5 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 5, i32 1
  %25 = ptrtoint ptr %val.i.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i.5, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %24, i8 noundef zeroext %26) #7
  %incdec.ptr.i.5 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 6
  %27 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.i.5, align 1
  %val.i.6 = getelementptr %struct.ov_i2c_regvals, ptr %arrayidx, i32 6, i32 1
  %29 = ptrtoint ptr %val.i.6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i.6, align 1
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext %28, i8 noundef zeroext %30) #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = trunc i32 %val to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %cmp.i14 = icmp slt i8 %conv6, 0
  %31 = and i8 %conv6, 127
  %sub.i = sub i8 0, %conv6
  %or.i = or i8 %sub.i, -128
  %retval.0.i = select i1 %cmp.i14, i8 %31, i8 %or.i
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 85, i8 noundef zeroext %retval.0.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w9968cf_set_crop_window(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sif = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %sif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sif, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i32 640, i32 352
  %.74 = select i1 %tobool.not, i32 480, i32 288
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 16
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp = icmp eq i8 %3, 7
  br i1 %cmp, label %if.then2, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %freq = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp eq i32 %7, 1
  %.75 = select i1 %cmp3, i32 277, i32 105
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %entry.if.end9_crit_edge
  %start_cropx.0 = phi i32 [ %.75, %if.then2 ], [ 320, %entry.if.end9_crit_edge ]
  %start_cropy.0 = phi i32 [ 37, %if.then2 ], [ 35, %entry.if.end9_crit_edge ]
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 19
  %8 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixfmt, align 8
  %shl = shl i32 %9, 10
  %div = udiv i32 %shl, %.
  %height = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %shl12 = shl i32 %11, 10
  %div13 = udiv i32 %shl12, %.74
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div13)
  %cmp14.not = icmp ult i32 %div, %div13
  br i1 %cmp14.not, label %cond.end.thread, label %cond.true23

cond.end.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %div20 = udiv i32 %shl, %div13
  br label %cond.end30

cond.true23:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %div28 = udiv i32 %shl12, %div
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true23, %cond.end.thread
  %cond77 = phi i32 [ %., %cond.true23 ], [ %div20, %cond.end.thread ]
  %cond31 = phi i32 [ %div28, %cond.true23 ], [ %.74, %cond.end.thread ]
  %conv32 = trunc i32 %. to i16
  %sensor_width = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 18
  %12 = ptrtoint ptr %sensor_width to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv32, ptr %sensor_width, align 2
  %conv33 = trunc i32 %.74 to i16
  %sensor_height = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 19
  %13 = ptrtoint ptr %sensor_height to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv33, ptr %sensor_height, align 8
  %sub = sub i32 %., %cond77
  %div34 = sdiv i32 %sub, 2
  %sub35 = sub i32 %.74, %cond31
  %div36 = sdiv i32 %sub35, 2
  %add = add nsw i32 %div34, %start_cropx.0
  %conv37 = trunc i32 %add to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 16, i16 noundef zeroext %conv37)
  %add38 = add nsw i32 %div36, %start_cropy.0
  %conv39 = trunc i32 %add38 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 17, i16 noundef zeroext %conv39)
  %add41 = add i32 %add, %cond77
  %conv42 = trunc i32 %add41 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 18, i16 noundef zeroext %conv42)
  %add44 = add i32 %add38, %cond31
  %conv45 = trunc i32 %add44 to i16
  tail call fastcc void @reg_w(ptr noundef %sd, i16 noundef zeroext 19, i16 noundef zeroext %conv45)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mode_init_ov_sensor_regs(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %and = and i32 %5, 1
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 16
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sensor, align 1
  %conv = sext i8 %7 to i32
  %8 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %conv, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb36
    i32 14, label %sw.bb81
    i32 6, label %sw.bb85
    i32 7, label %entry.sw.bb92_crit_edge
    i32 8, label %entry.sw.bb92_crit_edge597
    i32 13, label %entry.sw.bb92_crit_edge598
    i32 9, label %entry.sw.bb123_crit_edge
    i32 10, label %entry.sw.bb123_crit_edge599
    i32 12, label %sw.bb139
    i32 3, label %sw.bb174
    i32 4, label %entry.sw.bb178_crit_edge
    i32 5, label %entry.sw.bb178_crit_edge600
    i32 15, label %sw.bb182
  ]

entry.sw.bb178_crit_edge600:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb178

entry.sw.bb178_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb178

entry.sw.bb123_crit_edge599:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

entry.sw.bb123_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb123

entry.sw.bb92_crit_edge598:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb92

entry.sw.bb92_crit_edge597:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb92

entry.sw.bb92_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.tr345 = trunc i32 %and to i8
  %conv1 = shl nuw nsw i8 %and.tr345, 5
  %call.i = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.i2c_w_mask.exit_crit_edge, label %if.end.i

sw.bb.i2c_w_mask.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %9 = trunc i32 %call.i to i8
  %10 = and i8 %9, -33
  %conv9.i = or i8 %10, %conv1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i) #7
  br label %i2c_w_mask.exit

i2c_w_mask.exit:                                  ; preds = %if.end.i, %sw.bb.i2c_w_mask.exit_crit_edge
  %call.i352 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %cmp.i353 = icmp slt i32 %call.i352, 0
  br i1 %cmp.i353, label %i2c_w_mask.exit.i2c_w_mask.exit358_crit_edge, label %if.end.i357

i2c_w_mask.exit.i2c_w_mask.exit358_crit_edge:     ; preds = %i2c_w_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit358

if.end.i357:                                      ; preds = %i2c_w_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = trunc i32 %call.i352 to i8
  %12 = and i8 %11, -33
  %13 = or i8 %12, %conv1
  %conv9.i356 = xor i8 %13, 32
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 40, i8 noundef zeroext %conv9.i356) #7
  br label %i2c_w_mask.exit358

i2c_w_mask.exit358:                               ; preds = %if.end.i357, %i2c_w_mask.exit.i2c_w_mask.exit358_crit_edge
  %conv7 = select i1 %tobool.not, i8 58, i8 32
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 36, i8 noundef zeroext %conv7)
  %conv10 = select i1 %tobool.not, i8 96, i8 48
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 37, i8 noundef zeroext %conv10)
  %call.i359 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %cmp.i360 = icmp slt i32 %call.i359, 0
  br i1 %cmp.i360, label %i2c_w_mask.exit358.i2c_w_mask.exit365_crit_edge, label %if.end.i364

i2c_w_mask.exit358.i2c_w_mask.exit365_crit_edge:  ; preds = %i2c_w_mask.exit358
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit365

if.end.i364:                                      ; preds = %i2c_w_mask.exit358
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = shl nuw nsw i8 %and.tr345, 6
  %14 = trunc i32 %call.i359 to i8
  %15 = and i8 %14, -65
  %conv9.i363 = or i8 %15, %conv13
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 45, i8 noundef zeroext %conv9.i363) #7
  br label %i2c_w_mask.exit365

i2c_w_mask.exit365:                               ; preds = %if.end.i364, %i2c_w_mask.exit358.i2c_w_mask.exit365_crit_edge
  %call.i366 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i366)
  %cmp.i367 = icmp slt i32 %call.i366, 0
  br i1 %cmp.i367, label %i2c_w_mask.exit365.i2c_w_mask.exit371_crit_edge, label %if.end.i370

i2c_w_mask.exit365.i2c_w_mask.exit371_crit_edge:  ; preds = %i2c_w_mask.exit365
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit371

if.end.i370:                                      ; preds = %i2c_w_mask.exit365
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = select i1 %tobool.not, i8 -112, i8 -16
  %16 = trunc i32 %call.i366 to i8
  %17 = and i8 %16, 15
  %conv9.i369 = or i8 %17, %conv16
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 103, i8 noundef zeroext %conv9.i369) #7
  br label %i2c_w_mask.exit371

i2c_w_mask.exit371:                               ; preds = %if.end.i370, %i2c_w_mask.exit365.i2c_w_mask.exit371_crit_edge
  %call.i372 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i372)
  %cmp.i373 = icmp slt i32 %call.i372, 0
  br i1 %cmp.i373, label %i2c_w_mask.exit371.cleanup_crit_edge, label %if.end.i377

i2c_w_mask.exit371.cleanup_crit_edge:             ; preds = %i2c_w_mask.exit371
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i377:                                      ; preds = %i2c_w_mask.exit371
  call void @__sanitizer_cov_trace_pc() #9
  %18 = trunc i32 %call.i372 to i8
  %19 = and i8 %18, -33
  %conv9.i376 = or i8 %19, %conv1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 116, i8 noundef zeroext %conv9.i376) #7
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %frame_rate26 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 14
  %20 = ptrtoint ptr %frame_rate26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %frame_rate26, align 1
  %.592 = select i1 %tobool22.not, i8 10, i8 25
  %.593 = select i1 %tobool22.not, i8 32, i8 96
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %.592)
  %cmp28 = icmp ult i8 %21, %.592
  %spec.select348 = select i1 %cmp28, i8 -127, i8 80
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 17, i8 noundef zeroext %spec.select348)
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %.593)
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  %pixfmt43 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 19
  %22 = ptrtoint ptr %pixfmt43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixfmt43, align 8
  %.594 = select i1 %tobool37.not, i32 2076, i32 1040
  %.595 = select i1 %tobool37.not, i32 256, i32 496
  %.596 = select i1 %tobool37.not, i32 1544, i32 776
  %sub45 = sub i32 %.594, %23
  %div46340 = lshr i32 %sub45, 1
  %add47 = add nuw i32 %div46340, %.595
  %height49 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %height49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height49, align 4
  %sub50 = sub i32 %.596, %25
  %ystart.0 = lshr i32 %sub50, 1
  %pixfmt53 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 19
  %26 = ptrtoint ptr %pixfmt53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixfmt53, align 8
  %add55 = add i32 %27, %add47
  %height57 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %height57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height57, align 4
  %add58 = add i32 %29, %ystart.0
  %call.i379 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %cmp.i380 = icmp slt i32 %call.i379, 0
  br i1 %cmp.i380, label %sw.bb36.i2c_w_mask.exit384_crit_edge, label %if.end.i383

sw.bb36.i2c_w_mask.exit384_crit_edge:             ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit384

if.end.i383:                                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr342 = trunc i32 %and to i8
  %conv61 = shl nuw nsw i8 %and.tr342, 6
  %30 = trunc i32 %call.i379 to i8
  %31 = and i8 %30, 15
  %conv9.i382 = or i8 %31, %conv61
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i382) #7
  br label %i2c_w_mask.exit384

i2c_w_mask.exit384:                               ; preds = %if.end.i383, %sw.bb36.i2c_w_mask.exit384_crit_edge
  %call.i385 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %cmp.i386 = icmp slt i32 %call.i385, 0
  br i1 %cmp.i386, label %i2c_w_mask.exit384.i2c_w_mask.exit391_crit_edge, label %if.end.i390

i2c_w_mask.exit384.i2c_w_mask.exit391_crit_edge:  ; preds = %i2c_w_mask.exit384
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit391

if.end.i390:                                      ; preds = %i2c_w_mask.exit384
  call void @__sanitizer_cov_trace_pc() #9
  %32 = shl i32 %add55, 2
  %shl = and i32 %32, 56
  %33 = lshr i32 %add47, 1
  %and64 = and i32 %33, 7
  %or = or i32 %shl, %and64
  %conv65 = trunc i32 %or to i8
  %34 = trunc i32 %call.i385 to i8
  %35 = and i8 %34, -64
  %conv9.i389 = or i8 %35, %conv65
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 50, i8 noundef zeroext %conv9.i389) #7
  br label %i2c_w_mask.exit391

i2c_w_mask.exit391:                               ; preds = %if.end.i390, %i2c_w_mask.exit384.i2c_w_mask.exit391_crit_edge
  %call.i392 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392)
  %cmp.i393 = icmp slt i32 %call.i392, 0
  br i1 %cmp.i393, label %i2c_w_mask.exit391.i2c_w_mask.exit398_crit_edge, label %if.end.i397

i2c_w_mask.exit391.i2c_w_mask.exit398_crit_edge:  ; preds = %i2c_w_mask.exit391
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit398

if.end.i397:                                      ; preds = %i2c_w_mask.exit391
  call void @__sanitizer_cov_trace_pc() #9
  %36 = shl i32 %add58, 1
  %shl68 = and i32 %36, 12
  %37 = lshr i32 %sub50, 2
  %and70 = and i32 %37, 3
  %or71 = or i32 %shl68, %and70
  %conv72 = trunc i32 %or71 to i8
  %38 = trunc i32 %call.i392 to i8
  %39 = and i8 %38, -16
  %conv9.i396 = or i8 %39, %conv72
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 3, i8 noundef zeroext %conv9.i396) #7
  br label %i2c_w_mask.exit398

i2c_w_mask.exit398:                               ; preds = %if.end.i397, %i2c_w_mask.exit391.i2c_w_mask.exit398_crit_edge
  %40 = lshr i32 %add47, 4
  %conv74 = trunc i32 %40 to i8
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 23, i8 noundef zeroext %conv74)
  %41 = lshr i32 %add55, 4
  %conv76 = trunc i32 %41 to i8
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 24, i8 noundef zeroext %conv76)
  %42 = lshr i32 %sub50, 4
  %conv78 = trunc i32 %42 to i8
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 25, i8 noundef zeroext %conv78)
  %43 = lshr i32 %add58, 3
  %conv80 = trunc i32 %43 to i8
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 26, i8 noundef zeroext %conv80)
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  %call.i399 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %cmp.i400 = icmp slt i32 %call.i399, 0
  br i1 %cmp.i400, label %sw.bb81.i2c_w_mask.exit405_crit_edge, label %if.end.i404

sw.bb81.i2c_w_mask.exit405_crit_edge:             ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit405

if.end.i404:                                      ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr339 = trunc i32 %and to i8
  %conv84 = shl nuw nsw i8 %and.tr339, 5
  %44 = trunc i32 %call.i399 to i8
  %45 = and i8 %44, -33
  %conv9.i403 = or i8 %45, %conv84
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i403) #7
  br label %i2c_w_mask.exit405

i2c_w_mask.exit405:                               ; preds = %if.end.i404, %sw.bb81.i2c_w_mask.exit405_crit_edge
  %call.i406 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i406)
  %cmp.i407 = icmp slt i32 %call.i406, 0
  br i1 %cmp.i407, label %i2c_w_mask.exit405.i2c_w_mask.exit410_crit_edge, label %if.end.i409

i2c_w_mask.exit405.i2c_w_mask.exit410_crit_edge:  ; preds = %i2c_w_mask.exit405
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit410

if.end.i409:                                      ; preds = %i2c_w_mask.exit405
  call void @__sanitizer_cov_trace_pc() #9
  %46 = trunc i32 %call.i406 to i8
  %47 = and i8 %46, -33
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 19, i8 noundef zeroext %47) #7
  br label %i2c_w_mask.exit410

i2c_w_mask.exit410:                               ; preds = %if.end.i409, %i2c_w_mask.exit405.i2c_w_mask.exit410_crit_edge
  %call.i411 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i411)
  %cmp.i412 = icmp slt i32 %call.i411, 0
  br i1 %cmp.i412, label %i2c_w_mask.exit410.i2c_w_mask.exit416_crit_edge, label %if.end.i415

i2c_w_mask.exit410.i2c_w_mask.exit416_crit_edge:  ; preds = %i2c_w_mask.exit410
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit416

if.end.i415:                                      ; preds = %i2c_w_mask.exit410
  call void @__sanitizer_cov_trace_pc() #9
  %48 = trunc i32 %call.i411 to i8
  %49 = and i8 %48, -7
  %conv9.i414 = or i8 %49, 4
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i414) #7
  br label %i2c_w_mask.exit416

i2c_w_mask.exit416:                               ; preds = %if.end.i415, %i2c_w_mask.exit410.i2c_w_mask.exit416_crit_edge
  %call.i417 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i417)
  %cmp.i418 = icmp slt i32 %call.i417, 0
  br i1 %cmp.i418, label %i2c_w_mask.exit416.i2c_w_mask.exit421_crit_edge, label %if.end.i420

i2c_w_mask.exit416.i2c_w_mask.exit421_crit_edge:  ; preds = %i2c_w_mask.exit416
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit421

if.end.i420:                                      ; preds = %i2c_w_mask.exit416
  call void @__sanitizer_cov_trace_pc() #9
  %50 = trunc i32 %call.i417 to i8
  %51 = and i8 %50, -65
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 45, i8 noundef zeroext %51) #7
  br label %i2c_w_mask.exit421

i2c_w_mask.exit421:                               ; preds = %if.end.i420, %i2c_w_mask.exit416.i2c_w_mask.exit421_crit_edge
  %call.i422 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i422)
  %cmp.i423 = icmp slt i32 %call.i422, 0
  br i1 %cmp.i423, label %i2c_w_mask.exit421.sw.epilog_crit_edge, label %if.end.i426

i2c_w_mask.exit421.sw.epilog_crit_edge:           ; preds = %i2c_w_mask.exit421
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i426:                                      ; preds = %i2c_w_mask.exit421
  call void @__sanitizer_cov_trace_pc() #9
  %52 = trunc i32 %call.i422 to i8
  %conv9.i425 = or i8 %52, 32
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 40, i8 noundef zeroext %conv9.i425) #7
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  %call.i428 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i428)
  %cmp.i429 = icmp slt i32 %call.i428, 0
  br i1 %cmp.i429, label %sw.bb85.i2c_w_mask.exit434_crit_edge, label %if.end.i433

sw.bb85.i2c_w_mask.exit434_crit_edge:             ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit434

if.end.i433:                                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr338 = trunc i32 %and to i8
  %conv88 = shl nuw nsw i8 %and.tr338, 5
  %53 = trunc i32 %call.i428 to i8
  %54 = and i8 %53, -33
  %conv9.i432 = or i8 %54, %conv88
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i432) #7
  br label %i2c_w_mask.exit434

i2c_w_mask.exit434:                               ; preds = %if.end.i433, %sw.bb85.i2c_w_mask.exit434_crit_edge
  %conv91 = select i1 %tobool86.not, i8 -98, i8 30
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 53, i8 noundef zeroext %conv91)
  %call.i435 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i435)
  %cmp.i436 = icmp slt i32 %call.i435, 0
  br i1 %cmp.i436, label %i2c_w_mask.exit434.i2c_w_mask.exit439_crit_edge, label %if.end.i438

i2c_w_mask.exit434.i2c_w_mask.exit439_crit_edge:  ; preds = %i2c_w_mask.exit434
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit439

if.end.i438:                                      ; preds = %i2c_w_mask.exit434
  call void @__sanitizer_cov_trace_pc() #9
  %55 = trunc i32 %call.i435 to i8
  %56 = and i8 %55, -33
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 19, i8 noundef zeroext %56) #7
  br label %i2c_w_mask.exit439

i2c_w_mask.exit439:                               ; preds = %if.end.i438, %i2c_w_mask.exit434.i2c_w_mask.exit439_crit_edge
  %call.i440 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i440)
  %cmp.i441 = icmp slt i32 %call.i440, 0
  br i1 %cmp.i441, label %i2c_w_mask.exit439.sw.epilog_crit_edge, label %if.end.i444

i2c_w_mask.exit439.sw.epilog_crit_edge:           ; preds = %i2c_w_mask.exit439
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i444:                                      ; preds = %i2c_w_mask.exit439
  call void @__sanitizer_cov_trace_pc() #9
  %57 = trunc i32 %call.i440 to i8
  %58 = and i8 %57, -7
  %conv9.i443 = or i8 %58, 4
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i443) #7
  br label %sw.epilog

sw.bb92:                                          ; preds = %entry.sw.bb92_crit_edge, %entry.sw.bb92_crit_edge597, %entry.sw.bb92_crit_edge598
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  %and.tr335 = trunc i32 %and to i8
  %conv95 = shl nuw nsw i8 %and.tr335, 5
  %call.i446 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i446)
  %cmp.i447 = icmp slt i32 %call.i446, 0
  br i1 %cmp.i447, label %sw.bb92.i2c_w_mask.exit452_crit_edge, label %if.end.i451

sw.bb92.i2c_w_mask.exit452_crit_edge:             ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit452

if.end.i451:                                      ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #9
  %59 = trunc i32 %call.i446 to i8
  %60 = and i8 %59, -33
  %conv9.i450 = or i8 %60, %conv95
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i450) #7
  br label %i2c_w_mask.exit452

i2c_w_mask.exit452:                               ; preds = %if.end.i451, %sw.bb92.i2c_w_mask.exit452_crit_edge
  %call.i453 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i453)
  %cmp.i454 = icmp slt i32 %call.i453, 0
  br i1 %cmp.i454, label %i2c_w_mask.exit452.i2c_w_mask.exit459_crit_edge, label %if.end.i458

i2c_w_mask.exit452.i2c_w_mask.exit459_crit_edge:  ; preds = %i2c_w_mask.exit452
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit459

if.end.i458:                                      ; preds = %i2c_w_mask.exit452
  call void @__sanitizer_cov_trace_pc() #9
  %61 = trunc i32 %call.i453 to i8
  %62 = and i8 %61, -33
  %63 = or i8 %62, %conv95
  %conv9.i457 = xor i8 %63, 32
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 40, i8 noundef zeroext %conv9.i457) #7
  br label %i2c_w_mask.exit459

i2c_w_mask.exit459:                               ; preds = %if.end.i458, %i2c_w_mask.exit452.i2c_w_mask.exit459_crit_edge
  %conv101 = select i1 %tobool93.not, i8 58, i8 32
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 36, i8 noundef zeroext %conv101)
  %conv104 = select i1 %tobool93.not, i8 96, i8 48
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 37, i8 noundef zeroext %conv104)
  %call.i460 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460)
  %cmp.i461 = icmp slt i32 %call.i460, 0
  br i1 %cmp.i461, label %i2c_w_mask.exit459.i2c_w_mask.exit466_crit_edge, label %if.end.i465

i2c_w_mask.exit459.i2c_w_mask.exit466_crit_edge:  ; preds = %i2c_w_mask.exit459
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit466

if.end.i465:                                      ; preds = %i2c_w_mask.exit459
  call void @__sanitizer_cov_trace_pc() #9
  %conv107 = shl nuw nsw i8 %and.tr335, 6
  %64 = trunc i32 %call.i460 to i8
  %65 = and i8 %64, -65
  %conv9.i464 = or i8 %65, %conv107
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 45, i8 noundef zeroext %conv9.i464) #7
  br label %i2c_w_mask.exit466

i2c_w_mask.exit466:                               ; preds = %if.end.i465, %i2c_w_mask.exit459.i2c_w_mask.exit466_crit_edge
  %call.i467 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i467)
  %cmp.i468 = icmp slt i32 %call.i467, 0
  br i1 %cmp.i468, label %i2c_w_mask.exit466.i2c_w_mask.exit472_crit_edge, label %if.end.i471

i2c_w_mask.exit466.i2c_w_mask.exit472_crit_edge:  ; preds = %i2c_w_mask.exit466
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit472

if.end.i471:                                      ; preds = %i2c_w_mask.exit466
  call void @__sanitizer_cov_trace_pc() #9
  %conv110 = select i1 %tobool93.not, i8 -112, i8 -80
  %66 = trunc i32 %call.i467 to i8
  %67 = and i8 %66, 15
  %conv9.i470 = or i8 %67, %conv110
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 103, i8 noundef zeroext %conv9.i470) #7
  br label %i2c_w_mask.exit472

i2c_w_mask.exit472:                               ; preds = %if.end.i471, %i2c_w_mask.exit466.i2c_w_mask.exit472_crit_edge
  %call.i473 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i473)
  %cmp.i474 = icmp slt i32 %call.i473, 0
  br i1 %cmp.i474, label %i2c_w_mask.exit472.i2c_w_mask.exit479_crit_edge, label %if.end.i478

i2c_w_mask.exit472.i2c_w_mask.exit479_crit_edge:  ; preds = %i2c_w_mask.exit472
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit479

if.end.i478:                                      ; preds = %i2c_w_mask.exit472
  call void @__sanitizer_cov_trace_pc() #9
  %68 = trunc i32 %call.i473 to i8
  %69 = and i8 %68, -33
  %conv9.i477 = or i8 %69, %conv95
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 116, i8 noundef zeroext %conv9.i477) #7
  br label %i2c_w_mask.exit479

i2c_w_mask.exit479:                               ; preds = %if.end.i478, %i2c_w_mask.exit472.i2c_w_mask.exit479_crit_edge
  %call.i480 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i480)
  %cmp.i481 = icmp slt i32 %call.i480, 0
  br i1 %cmp.i481, label %i2c_w_mask.exit479.i2c_w_mask.exit484_crit_edge, label %if.end.i483

i2c_w_mask.exit479.i2c_w_mask.exit484_crit_edge:  ; preds = %i2c_w_mask.exit479
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit484

if.end.i483:                                      ; preds = %i2c_w_mask.exit479
  call void @__sanitizer_cov_trace_pc() #9
  %70 = trunc i32 %call.i480 to i8
  %71 = and i8 %70, -33
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 19, i8 noundef zeroext %71) #7
  br label %i2c_w_mask.exit484

i2c_w_mask.exit484:                               ; preds = %if.end.i483, %i2c_w_mask.exit479.i2c_w_mask.exit484_crit_edge
  %call.i485 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i485)
  %cmp.i486 = icmp slt i32 %call.i485, 0
  br i1 %cmp.i486, label %i2c_w_mask.exit484.i2c_w_mask.exit490_crit_edge, label %if.end.i489

i2c_w_mask.exit484.i2c_w_mask.exit490_crit_edge:  ; preds = %i2c_w_mask.exit484
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit490

if.end.i489:                                      ; preds = %i2c_w_mask.exit484
  call void @__sanitizer_cov_trace_pc() #9
  %72 = trunc i32 %call.i485 to i8
  %73 = and i8 %72, -7
  %conv9.i488 = or i8 %73, 4
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i488) #7
  br label %i2c_w_mask.exit490

i2c_w_mask.exit490:                               ; preds = %if.end.i489, %i2c_w_mask.exit484.i2c_w_mask.exit490_crit_edge
  %74 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %75)
  %cmp116 = icmp eq i8 %75, 13
  br i1 %cmp116, label %if.then118, label %i2c_w_mask.exit490.sw.epilog_crit_edge

i2c_w_mask.exit490.sw.epilog_crit_edge:           ; preds = %i2c_w_mask.exit490
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then118:                                       ; preds = %i2c_w_mask.exit490
  call void @__sanitizer_cov_trace_pc() #9
  %conv121 = select i1 %tobool93.not, i8 -98, i8 30
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 53, i8 noundef zeroext %conv121)
  br label %sw.epilog

sw.bb123:                                         ; preds = %entry.sw.bb123_crit_edge, %entry.sw.bb123_crit_edge599
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool124.not = icmp eq i32 %and, 0
  %and.tr332 = trunc i32 %and to i8
  %conv126 = shl nuw nsw i8 %and.tr332, 5
  %call.i491 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i491)
  %cmp.i492 = icmp slt i32 %call.i491, 0
  br i1 %cmp.i492, label %sw.bb123.i2c_w_mask.exit497_crit_edge, label %if.end.i496

sw.bb123.i2c_w_mask.exit497_crit_edge:            ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit497

if.end.i496:                                      ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #9
  %76 = trunc i32 %call.i491 to i8
  %77 = and i8 %76, -33
  %conv9.i495 = or i8 %77, %conv126
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i495) #7
  br label %i2c_w_mask.exit497

i2c_w_mask.exit497:                               ; preds = %if.end.i496, %sw.bb123.i2c_w_mask.exit497_crit_edge
  %call.i498 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i498)
  %cmp.i499 = icmp slt i32 %call.i498, 0
  br i1 %cmp.i499, label %i2c_w_mask.exit497.i2c_w_mask.exit504_crit_edge, label %if.end.i503

i2c_w_mask.exit497.i2c_w_mask.exit504_crit_edge:  ; preds = %i2c_w_mask.exit497
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit504

if.end.i503:                                      ; preds = %i2c_w_mask.exit497
  call void @__sanitizer_cov_trace_pc() #9
  %78 = trunc i32 %call.i498 to i8
  %79 = and i8 %78, -33
  %80 = or i8 %79, %conv126
  %conv9.i502 = xor i8 %80, 32
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 40, i8 noundef zeroext %conv9.i502) #7
  br label %i2c_w_mask.exit504

i2c_w_mask.exit504:                               ; preds = %if.end.i503, %i2c_w_mask.exit497.i2c_w_mask.exit504_crit_edge
  %call.i505 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i505)
  %cmp.i506 = icmp slt i32 %call.i505, 0
  br i1 %cmp.i506, label %i2c_w_mask.exit504.i2c_w_mask.exit511_crit_edge, label %if.end.i510

i2c_w_mask.exit504.i2c_w_mask.exit511_crit_edge:  ; preds = %i2c_w_mask.exit504
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit511

if.end.i510:                                      ; preds = %i2c_w_mask.exit504
  call void @__sanitizer_cov_trace_pc() #9
  %conv132 = shl nuw nsw i8 %and.tr332, 6
  %81 = trunc i32 %call.i505 to i8
  %82 = and i8 %81, -65
  %conv9.i509 = or i8 %82, %conv132
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 45, i8 noundef zeroext %conv9.i509) #7
  br label %i2c_w_mask.exit511

i2c_w_mask.exit511:                               ; preds = %if.end.i510, %i2c_w_mask.exit504.i2c_w_mask.exit511_crit_edge
  %call.i512 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i512)
  %cmp.i513 = icmp slt i32 %call.i512, 0
  br i1 %cmp.i513, label %i2c_w_mask.exit511.i2c_w_mask.exit517_crit_edge, label %if.end.i516

i2c_w_mask.exit511.i2c_w_mask.exit517_crit_edge:  ; preds = %i2c_w_mask.exit511
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit517

if.end.i516:                                      ; preds = %i2c_w_mask.exit511
  call void @__sanitizer_cov_trace_pc() #9
  %conv135 = select i1 %tobool124.not, i8 -112, i8 -16
  %83 = trunc i32 %call.i512 to i8
  %84 = and i8 %83, 15
  %conv9.i515 = or i8 %84, %conv135
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 103, i8 noundef zeroext %conv9.i515) #7
  br label %i2c_w_mask.exit517

i2c_w_mask.exit517:                               ; preds = %if.end.i516, %i2c_w_mask.exit511.i2c_w_mask.exit517_crit_edge
  %call.i518 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i518)
  %cmp.i519 = icmp slt i32 %call.i518, 0
  br i1 %cmp.i519, label %i2c_w_mask.exit517.i2c_w_mask.exit524_crit_edge, label %if.end.i523

i2c_w_mask.exit517.i2c_w_mask.exit524_crit_edge:  ; preds = %i2c_w_mask.exit517
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit524

if.end.i523:                                      ; preds = %i2c_w_mask.exit517
  call void @__sanitizer_cov_trace_pc() #9
  %85 = trunc i32 %call.i518 to i8
  %86 = and i8 %85, -33
  %conv9.i522 = or i8 %86, %conv126
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 116, i8 noundef zeroext %conv9.i522) #7
  br label %i2c_w_mask.exit524

i2c_w_mask.exit524:                               ; preds = %if.end.i523, %i2c_w_mask.exit517.i2c_w_mask.exit524_crit_edge
  %call.i525 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i525)
  %cmp.i526 = icmp slt i32 %call.i525, 0
  br i1 %cmp.i526, label %i2c_w_mask.exit524.sw.epilog_crit_edge, label %if.end.i529

i2c_w_mask.exit524.sw.epilog_crit_edge:           ; preds = %i2c_w_mask.exit524
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i529:                                      ; preds = %i2c_w_mask.exit524
  call void @__sanitizer_cov_trace_pc() #9
  %87 = trunc i32 %call.i525 to i8
  %conv9.i528 = or i8 %87, 4
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i528) #7
  br label %sw.epilog

sw.bb139:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool140.not = icmp eq i32 %and, 0
  %call.i531 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i531)
  %cmp.i532 = icmp slt i32 %call.i531, 0
  br i1 %cmp.i532, label %sw.bb139.i2c_w_mask.exit537_crit_edge, label %if.end.i536

sw.bb139.i2c_w_mask.exit537_crit_edge:            ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit537

if.end.i536:                                      ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr331 = trunc i32 %and to i8
  %conv142 = shl nuw nsw i8 %and.tr331, 4
  %88 = trunc i32 %call.i531 to i8
  %89 = and i8 %88, -57
  %conv9.i535 = or i8 %89, %conv142
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i535) #7
  br label %i2c_w_mask.exit537

i2c_w_mask.exit537:                               ; preds = %if.end.i536, %sw.bb139.i2c_w_mask.exit537_crit_edge
  %call.i538 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i538)
  %cmp.i539 = icmp slt i32 %call.i538, 0
  br i1 %cmp.i539, label %i2c_w_mask.exit537.i2c_w_mask.exit542_crit_edge, label %if.end.i541

i2c_w_mask.exit537.i2c_w_mask.exit542_crit_edge:  ; preds = %i2c_w_mask.exit537
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit542

if.end.i541:                                      ; preds = %i2c_w_mask.exit537
  call void @__sanitizer_cov_trace_pc() #9
  %90 = trunc i32 %call.i538 to i8
  %91 = and i8 %90, -33
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 19, i8 noundef zeroext %91) #7
  br label %i2c_w_mask.exit542

i2c_w_mask.exit542:                               ; preds = %if.end.i541, %i2c_w_mask.exit537.i2c_w_mask.exit542_crit_edge
  %call.i543 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i543)
  %cmp.i544 = icmp slt i32 %call.i543, 0
  br i1 %cmp.i544, label %i2c_w_mask.exit542.i2c_w_mask.exit548_crit_edge, label %if.end.i547

i2c_w_mask.exit542.i2c_w_mask.exit548_crit_edge:  ; preds = %i2c_w_mask.exit542
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit548

if.end.i547:                                      ; preds = %i2c_w_mask.exit542
  call void @__sanitizer_cov_trace_pc() #9
  %92 = trunc i32 %call.i543 to i8
  %conv9.i546 = or i8 %92, 2
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 19, i8 noundef zeroext %conv9.i546) #7
  br label %i2c_w_mask.exit548

i2c_w_mask.exit548:                               ; preds = %if.end.i547, %i2c_w_mask.exit542.i2c_w_mask.exit548_crit_edge
  %. = select i1 %tobool140.not, i32 158, i32 164
  %.349 = select i1 %tobool140.not, i32 14, i32 28
  %.350 = select i1 %tobool140.not, i8 2, i8 3
  %.351 = select i1 %tobool140.not, i8 122, i8 123
  %93 = lshr i32 %., 3
  %conv148 = trunc i32 %93 to i8
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 23, i8 noundef zeroext %conv148)
  %94 = lshr i32 %.349, 3
  %conv150 = trunc i32 %94 to i8
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 24, i8 noundef zeroext %conv150)
  %call = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 50)
  %and153 = and i32 %call, 192
  %and154 = shl nuw nsw i32 %.349, 3
  %shl155 = and i32 %and154, 48
  %and157 = and i32 %., 6
  %or156 = or i32 %shl155, %and157
  %or158 = or i32 %or156, %and153
  %conv159 = trunc i32 %or158 to i8
  tail call void @msleep(i32 noundef 10) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 50, i8 noundef zeroext %conv159)
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 25, i8 noundef zeroext %.350)
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 26, i8 noundef zeroext %.351)
  %call164 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 3)
  %95 = trunc i32 %call164 to i8
  %96 = and i8 %95, -64
  %conv173 = or i8 %96, 10
  tail call void @msleep(i32 noundef 10) #7
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 3, i8 noundef zeroext %conv173)
  br label %sw.epilog

sw.bb174:                                         ; preds = %entry
  %call.i549 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i549)
  %cmp.i550 = icmp slt i32 %call.i549, 0
  br i1 %cmp.i550, label %sw.bb174.i2c_w_mask.exit555_crit_edge, label %if.end.i554

sw.bb174.i2c_w_mask.exit555_crit_edge:            ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit555

if.end.i554:                                      ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr330 = trunc i32 %and to i8
  %conv177 = shl nuw nsw i8 %and.tr330, 5
  %97 = trunc i32 %call.i549 to i8
  %98 = and i8 %97, -33
  %conv9.i553 = or i8 %98, %conv177
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i553) #7
  br label %i2c_w_mask.exit555

i2c_w_mask.exit555:                               ; preds = %if.end.i554, %sw.bb174.i2c_w_mask.exit555_crit_edge
  %call.i556 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i556)
  %cmp.i557 = icmp slt i32 %call.i556, 0
  br i1 %cmp.i557, label %i2c_w_mask.exit555.i2c_w_mask.exit560_crit_edge, label %if.end.i559

i2c_w_mask.exit555.i2c_w_mask.exit560_crit_edge:  ; preds = %i2c_w_mask.exit555
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit560

if.end.i559:                                      ; preds = %i2c_w_mask.exit555
  call void @__sanitizer_cov_trace_pc() #9
  %99 = trunc i32 %call.i556 to i8
  %100 = and i8 %99, -33
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 19, i8 noundef zeroext %100) #7
  br label %i2c_w_mask.exit560

i2c_w_mask.exit560:                               ; preds = %if.end.i559, %i2c_w_mask.exit555.i2c_w_mask.exit560_crit_edge
  %call.i561 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i561)
  %cmp.i562 = icmp slt i32 %call.i561, 0
  br i1 %cmp.i562, label %i2c_w_mask.exit560.sw.epilog_crit_edge, label %if.end.i565

i2c_w_mask.exit560.sw.epilog_crit_edge:           ; preds = %i2c_w_mask.exit560
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i565:                                      ; preds = %i2c_w_mask.exit560
  call void @__sanitizer_cov_trace_pc() #9
  %101 = trunc i32 %call.i561 to i8
  %102 = and i8 %101, -7
  %conv9.i564 = or i8 %102, 4
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i564) #7
  br label %sw.epilog

sw.bb178:                                         ; preds = %entry.sw.bb178_crit_edge, %entry.sw.bb178_crit_edge600
  %call.i567 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i567)
  %cmp.i568 = icmp slt i32 %call.i567, 0
  br i1 %cmp.i568, label %sw.bb178.i2c_w_mask.exit573_crit_edge, label %if.end.i572

sw.bb178.i2c_w_mask.exit573_crit_edge:            ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit573

if.end.i572:                                      ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr329 = trunc i32 %and to i8
  %conv181 = shl nuw nsw i8 %and.tr329, 5
  %103 = trunc i32 %call.i567 to i8
  %104 = and i8 %103, -33
  %conv9.i571 = or i8 %104, %conv181
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 20, i8 noundef zeroext %conv9.i571) #7
  br label %i2c_w_mask.exit573

i2c_w_mask.exit573:                               ; preds = %if.end.i572, %sw.bb178.i2c_w_mask.exit573_crit_edge
  %call.i574 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574)
  %cmp.i575 = icmp slt i32 %call.i574, 0
  br i1 %cmp.i575, label %i2c_w_mask.exit573.sw.epilog_crit_edge, label %if.end.i578

i2c_w_mask.exit573.sw.epilog_crit_edge:           ; preds = %i2c_w_mask.exit573
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i578:                                      ; preds = %i2c_w_mask.exit573
  call void @__sanitizer_cov_trace_pc() #9
  %105 = trunc i32 %call.i574 to i8
  %106 = and i8 %105, -7
  %conv9.i577 = or i8 %106, 4
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i577) #7
  br label %sw.epilog

sw.bb182:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool183.not = icmp eq i32 %and, 0
  %call.i580 = tail call fastcc i32 @i2c_r(ptr noundef %sd, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i580)
  %cmp.i581 = icmp slt i32 %call.i580, 0
  br i1 %cmp.i581, label %sw.bb182.i2c_w_mask.exit586_crit_edge, label %if.end.i585

sw.bb182.i2c_w_mask.exit586_crit_edge:            ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_w_mask.exit586

if.end.i585:                                      ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #9
  %and.tr = trunc i32 %and to i8
  %conv185 = shl nuw nsw i8 %and.tr, 6
  %107 = trunc i32 %call.i580 to i8
  %108 = and i8 %107, -65
  %conv9.i584 = or i8 %108, %conv185
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 18, i8 noundef zeroext %conv9.i584) #7
  br label %i2c_w_mask.exit586

i2c_w_mask.exit586:                               ; preds = %if.end.i585, %sw.bb182.i2c_w_mask.exit586_crit_edge
  %frame_rate194 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 14
  %109 = ptrtoint ptr %frame_rate194 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %frame_rate194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %110)
  %cmp190 = icmp ult i8 %110, 30
  %cond192 = select i1 %cmp190, ptr @mode_init_ov_sensor_regs.vga_15, ptr @mode_init_ov_sensor_regs.vga_30
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %110)
  %cmp196 = icmp ult i8 %110, 15
  %cond198 = select i1 %cmp196, ptr @mode_init_ov_sensor_regs.sxga_7_5, ptr @mode_init_ov_sensor_regs.sxga_15
  %vals.0 = select i1 %tobool183.not, ptr %cond198, ptr %cond192
  %111 = ptrtoint ptr %vals.0 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %vals.0, align 1
  %val.i = getelementptr inbounds %struct.ov_i2c_regvals, ptr %vals.0, i32 0, i32 1
  %113 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %val.i, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %112, i8 noundef zeroext %114) #7
  %incdec.ptr.i = getelementptr %struct.ov_i2c_regvals, ptr %vals.0, i32 1
  %115 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %incdec.ptr.i, align 1
  %val.i.1 = getelementptr %struct.ov_i2c_regvals, ptr %vals.0, i32 1, i32 1
  %117 = ptrtoint ptr %val.i.1 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %val.i.1, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %116, i8 noundef zeroext %118) #7
  %incdec.ptr.i.1 = getelementptr %struct.ov_i2c_regvals, ptr %vals.0, i32 2
  %119 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %incdec.ptr.i.1, align 1
  %val.i.2 = getelementptr %struct.ov_i2c_regvals, ptr %vals.0, i32 2, i32 1
  %121 = ptrtoint ptr %val.i.2 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %val.i.2, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %120, i8 noundef zeroext %122) #7
  %incdec.ptr.i.2 = getelementptr %struct.ov_i2c_regvals, ptr %vals.0, i32 3
  %123 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %incdec.ptr.i.2, align 1
  %val.i.3 = getelementptr %struct.ov_i2c_regvals, ptr %vals.0, i32 3, i32 1
  %125 = ptrtoint ptr %val.i.3 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %val.i.3, align 1
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext %124, i8 noundef zeroext %126) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i578, %i2c_w_mask.exit573.sw.epilog_crit_edge, %if.end.i565, %i2c_w_mask.exit560.sw.epilog_crit_edge, %i2c_w_mask.exit548, %if.end.i529, %i2c_w_mask.exit524.sw.epilog_crit_edge, %if.then118, %i2c_w_mask.exit490.sw.epilog_crit_edge, %if.end.i444, %i2c_w_mask.exit439.sw.epilog_crit_edge, %if.end.i426, %i2c_w_mask.exit421.sw.epilog_crit_edge
  %clockdiv = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 15
  %127 = ptrtoint ptr %clockdiv to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %clockdiv, align 2
  tail call fastcc void @i2c_w(ptr noundef %sd, i8 noundef zeroext 17, i8 noundef zeroext %128)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %i2c_w_mask.exit586, %i2c_w_mask.exit398, %sw.bb20, %if.end.i377, %i2c_w_mask.exit371.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ov51x_handle_button(ptr nocapture noundef %gspca_dev, i8 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %snapshot_pressed = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %snapshot_pressed, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %state)
  %cmp.not = icmp eq i8 %1, %state
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.i = icmp ne i8 %state, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 212, i32 noundef %lnot.ext.i) #7
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool.not = icmp eq i8 %state, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %snapshot_needs_reset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %snapshot_needs_reset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %snapshot_needs_reset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %state, ptr %snapshot_pressed, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %8 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bridge, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.231)
  switch i8 %9, label %if.else.if.end12_crit_edge [
    i8 0, label %if.else.sw.bb_crit_edge
    i8 1, label %if.else.sw.bb_crit_edge23
    i8 4, label %if.else.sw.bb_crit_edge24
  ]

if.else.sw.bb_crit_edge24:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge23:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge23, %if.else.sw.bb_crit_edge24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool8.not = icmp eq i8 %state, 0
  br i1 %tobool8.not, label %sw.bb.if.end12_crit_edge, label %if.then9

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %snapshot_needs_reset10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %snapshot_needs_reset10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %snapshot_needs_reset10, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %sw.bb.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !265, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !328, !329, !330, !332, !333, !335, !336, !337, !338, !340, !341, !342, !343, !345, !346, !347, !349, !350, !351, !352, !354, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !374, !376, !378, !380, !382, !384, !385, !386, !387, !389, !390, !391, !392, !394, !396, !398, !400, !401, !403, !404, !405, !406, !408, !410, !412, !414, !416, !418, !420, !422, !423, !424, !425, !427, !428, !429, !431, !432, !433, !434, !436, !438, !440, !441, !442, !443, !445, !447, !449, !451, !453, !455, !456, !457, !458, !460, !461, !462, !463, !465}
!llvm.module.flags = !{!466, !467, !468, !469, !470, !471, !472, !473}
!llvm.ident = !{!474}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/ov519.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/ov519.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/ov519.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_ov519__307_5027_sd_driver_init6, !8, !"__initcall__kmod_gspca_ov519__307_5027_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/ov519.c", i32 5027, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @__param_frame_rate, !11, !"__param_frame_rate", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/ov519.c", i32 5029, i32 1}
!12 = !{ptr @__UNIQUE_ID_frame_ratetype308, !11, !"__UNIQUE_ID_frame_ratetype308", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_frame_rate309, !14, !"__UNIQUE_ID_frame_rate309", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/ov519.c", i32 5030, i32 1}
!15 = !{ptr @frame_rate, !16, !"frame_rate", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/ov519.c", i32 43, i32 12}
!17 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/ov519.c", i32 5016, i32 10}
!20 = !{ptr @sd_driver, !21, !"sd_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/ov519.c", i32 5015, i32 26}
!22 = !{ptr @sd_desc, !23, !"sd_desc", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4953, i32 29}
!24 = !{ptr @ov511_vga_mode, !25, !"ov511_vga_mode", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/ov519.c", i32 314, i32 37}
!26 = !{ptr @ov518_vga_mode, !27, !"ov518_vga_mode", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/ov519.c", i32 279, i32 37}
!28 = !{ptr @ov519_vga_mode, !29, !"ov519_vga_mode", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/ov519.c", i32 238, i32 37}
!30 = !{ptr @w9968cf_vga_mode, !31, !"w9968cf_vga_mode", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 26, i32 37}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3307, i32 3}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sd_init._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @sd_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3440, i32 2}
!40 = !{ptr @sd_init._entry.5, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sd_init._entry_ptr.7, !39, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"init_511", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2954, i32 33}
!44 = distinct !{null, !45, !"norm_511", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2964, i32 33}
!46 = distinct !{null, !47, !"norm_511_p", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2974, i32 33}
!48 = distinct !{null, !49, !"compress_511", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2984, i32 33}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2995, i32 2}
!52 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ov511_configure._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ov511_configure._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2071, i32 3}
!57 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @reg_r._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @reg_r._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2074, i32 3}
!62 = !{ptr @reg_r._entry.12, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @reg_r._entry_ptr.14, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ov51x_upload_quan_tables.yQuanTable511, !65, !"yQuanTable511", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2876, i32 29}
!66 = !{ptr @ov51x_upload_quan_tables.uvQuanTable511, !67, !"uvQuanTable511", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2887, i32 29}
!68 = !{ptr @ov51x_upload_quan_tables.yQuanTable518, !69, !"yQuanTable518", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2899, i32 29}
!70 = !{ptr @ov51x_upload_quan_tables.uvQuanTable518, !71, !"uvQuanTable518", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2905, i32 29}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2917, i32 2}
!74 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ov51x_upload_quan_tables._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ov51x_upload_quan_tables._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"init_518", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3021, i32 33}
!79 = distinct !{null, !80, !"norm_518", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3032, i32 33}
!81 = distinct !{null, !82, !"norm_518_p", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3045, i32 33}
!83 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3066, i32 2}
!85 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ov518_configure._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ov518_configure._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"init_519", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3089, i32 33}
!90 = distinct !{null, !91, !"init_fx2", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3110, i32 33}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2550, i32 4}
!94 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @init_ov_sensor._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @init_ov_sensor._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !98, !"i2c_detect_tries", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/ov519.c", i32 47, i32 12}
!99 = !{ptr @.str.21, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2234, i32 4}
!101 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ov511_i2c_r._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ov511_i2c_r._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.24, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2258, i32 4}
!106 = !{ptr @ov511_i2c_r._entry.23, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ov511_i2c_r._entry_ptr.25, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2265, i32 2}
!110 = !{ptr @ov511_i2c_r._entry.26, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ov511_i2c_r._entry_ptr.28, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2324, i32 2}
!114 = !{ptr @.str.30, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ov518_i2c_r._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @ov518_i2c_r._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2107, i32 3}
!119 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @reg_r8._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @reg_r8._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2366, i32 3}
!124 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ovfx2_i2c_r._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @ovfx2_i2c_r._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2369, i32 3}
!129 = !{ptr @ovfx2_i2c_r._entry.35, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ovfx2_i2c_r._entry_ptr.37, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 328, i32 3}
!133 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @w9968cf_i2c_r._entry, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @w9968cf_i2c_r._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.42, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 331, i32 3}
!139 = !{ptr @w9968cf_i2c_r._entry.41, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @w9968cf_i2c_r._entry_ptr.43, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 103, i32 3}
!143 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @w9968cf_write_sb._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @w9968cf_write_sb._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 242, i32 3}
!148 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @w9968cf_smbus_read_ack._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @w9968cf_smbus_read_ack._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 133, i32 3}
!153 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @w9968cf_read_sb._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @w9968cf_read_sb._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.50, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2692, i32 2}
!158 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ov7xx0_configure._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ov7xx0_configure._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2700, i32 3}
!163 = !{ptr @ov7xx0_configure._entry.52, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ov7xx0_configure._entry_ptr.54, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.56, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2709, i32 4}
!167 = !{ptr @ov7xx0_configure._entry.55, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ov7xx0_configure._entry_ptr.57, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2713, i32 4}
!171 = !{ptr @ov7xx0_configure._entry.58, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ov7xx0_configure._entry_ptr.60, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2719, i32 4}
!175 = !{ptr @ov7xx0_configure._entry.61, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ov7xx0_configure._entry_ptr.63, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2722, i32 4}
!179 = !{ptr @ov7xx0_configure._entry.64, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @ov7xx0_configure._entry_ptr.66, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2729, i32 4}
!183 = !{ptr @ov7xx0_configure._entry.67, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @ov7xx0_configure._entry_ptr.69, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2734, i32 4}
!187 = !{ptr @ov7xx0_configure._entry.70, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @ov7xx0_configure._entry_ptr.72, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2740, i32 5}
!191 = !{ptr @ov7xx0_configure._entry.73, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @ov7xx0_configure._entry_ptr.75, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2741, i32 5}
!195 = !{ptr @ov7xx0_configure._entry.76, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @ov7xx0_configure._entry_ptr.78, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2744, i32 5}
!199 = !{ptr @ov7xx0_configure._entry.79, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @ov7xx0_configure._entry_ptr.81, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2748, i32 5}
!203 = !{ptr @ov7xx0_configure._entry.82, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @ov7xx0_configure._entry_ptr.84, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.86, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2752, i32 5}
!207 = !{ptr @ov7xx0_configure._entry.85, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ov7xx0_configure._entry_ptr.87, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2756, i32 5}
!211 = !{ptr @ov7xx0_configure._entry.88, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @ov7xx0_configure._entry_ptr.90, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2760, i32 5}
!215 = !{ptr @ov7xx0_configure._entry.91, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ov7xx0_configure._entry_ptr.93, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2765, i32 4}
!219 = !{ptr @ov7xx0_configure._entry.94, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @ov7xx0_configure._entry_ptr.96, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2769, i32 3}
!223 = !{ptr @ov7xx0_configure._entry.97, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @ov7xx0_configure._entry_ptr.99, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2780, i32 2}
!227 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @ov6xx0_configure._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @ov6xx0_configure._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @ov6xx0_configure._entry.102, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2785, i32 3}
!232 = !{ptr @ov6xx0_configure._entry_ptr.103, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2795, i32 3}
!235 = !{ptr @ov6xx0_configure._entry.104, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ov6xx0_configure._entry_ptr.106, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2799, i32 3}
!239 = !{ptr @ov6xx0_configure._entry.107, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ov6xx0_configure._entry_ptr.109, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2803, i32 3}
!243 = !{ptr @ov6xx0_configure._entry.110, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ov6xx0_configure._entry_ptr.112, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2807, i32 3}
!247 = !{ptr @ov6xx0_configure._entry.113, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @ov6xx0_configure._entry_ptr.115, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2811, i32 3}
!251 = !{ptr @ov6xx0_configure._entry.116, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @ov6xx0_configure._entry_ptr.118, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2814, i32 3}
!255 = !{ptr @ov6xx0_configure._entry.119, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @ov6xx0_configure._entry_ptr.121, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2669, i32 2}
!259 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @ov8xx0_configure._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @ov8xx0_configure._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @ov8xx0_configure._entry.124, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2674, i32 3}
!264 = !{ptr @ov8xx0_configure._entry_ptr.125, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @ov8xx0_configure._entry.126, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2680, i32 3}
!267 = !{ptr @ov8xx0_configure._entry_ptr.127, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2622, i32 3}
!270 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @ov_hires_configure._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @ov_hires_configure._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2626, i32 2}
!275 = !{ptr @ov_hires_configure._entry.130, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @ov_hires_configure._entry_ptr.132, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2636, i32 4}
!279 = !{ptr @ov_hires_configure._entry.133, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @ov_hires_configure._entry_ptr.135, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2640, i32 4}
!283 = !{ptr @ov_hires_configure._entry.136, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @ov_hires_configure._entry_ptr.138, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2644, i32 4}
!287 = !{ptr @ov_hires_configure._entry.139, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ov_hires_configure._entry_ptr.141, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.143, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2651, i32 4}
!291 = !{ptr @ov_hires_configure._entry.142, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @ov_hires_configure._entry_ptr.144, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.146, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2657, i32 2}
!295 = !{ptr @ov_hires_configure._entry.145, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @ov_hires_configure._entry_ptr.147, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @ov511_sif_mode, !298, !"ov511_sif_mode", i1 false, i1 false}
!298 = !{!"../drivers/media/usb/gspca/ov519.c", i32 326, i32 37}
!299 = !{ptr @ov518_sif_mode, !300, !"ov518_sif_mode", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/gspca/ov519.c", i32 291, i32 37}
!301 = !{ptr @ov519_sif_mode, !302, !"ov519_sif_mode", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/gspca/ov519.c", i32 250, i32 37}
!303 = !{ptr @ovfx2_ov2610_mode, !304, !"ovfx2_ov2610_mode", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/gspca/ov519.c", i32 349, i32 37}
!305 = !{ptr @ovfx2_ov3610_mode, !306, !"ovfx2_ov3610_mode", i1 false, i1 false}
!306 = !{!"../drivers/media/usb/gspca/ov519.c", i32 360, i32 37}
!307 = !{ptr @ovfx2_ov9600_mode, !308, !"ovfx2_ov9600_mode", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/gspca/ov519.c", i32 387, i32 37}
!309 = distinct !{null, !310, !"norm_2610", i1 false, i1 false}
!310 = !{!"../drivers/media/usb/gspca/ov519.c", i32 591, i32 36}
!311 = distinct !{null, !312, !"norm_2610ae", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/gspca/ov519.c", i32 595, i32 36}
!313 = !{ptr @norm_3620b, !314, !"norm_3620b", i1 false, i1 false}
!314 = !{!"../drivers/media/usb/gspca/ov519.c", i32 613, i32 36}
!315 = !{ptr @norm_6x20, !316, !"norm_6x20", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1295, i32 36}
!317 = !{ptr @norm_6x30, !318, !"norm_6x30", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1338, i32 36}
!319 = !{ptr @norm_7610, !320, !"norm_7610", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1434, i32 36}
!321 = !{ptr @norm_7620, !322, !"norm_7620", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1464, i32 36}
!323 = distinct !{null, !324, !"norm_7640", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1532, i32 36}
!325 = !{ptr @.str.148, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2178, i32 2}
!327 = !{ptr @.str.149, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @ov511_i2c_w._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @ov511_i2c_w._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @ov511_i2c_w._entry.150, !331, !"_entry", i1 false, i1 false}
!331 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2201, i32 4}
!332 = !{ptr @ov511_i2c_w._entry_ptr.151, !331, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.152, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2284, i32 2}
!335 = !{ptr @.str.153, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @ov518_i2c_w._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @ov518_i2c_w._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.154, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2343, i32 3}
!340 = !{ptr @.str.155, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @ovfx2_i2c_w._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @ovfx2_i2c_w._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.157, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2347, i32 2}
!345 = !{ptr @ovfx2_i2c_w._entry.156, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @ovfx2_i2c_w._entry_ptr.158, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.159, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 294, i32 2}
!349 = !{ptr @.str.160, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @w9968cf_i2c_w._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @w9968cf_i2c_w._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.161, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/usb/gspca/w996Xcf.c", i32 73, i32 3}
!354 = !{ptr @.str.162, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @w9968cf_write_fsb._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @w9968cf_write_fsb._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.163, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2009, i32 3}
!359 = !{ptr @.str.164, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @reg_w._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @reg_w._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.166, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2021, i32 2}
!364 = !{ptr @reg_w._entry.165, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @reg_w._entry_ptr.167, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.169, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2032, i32 3}
!368 = !{ptr @reg_w._entry.168, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @reg_w._entry_ptr.170, !367, !"_entry_ptr", i1 false, i1 false}
!370 = distinct !{null, !371, !"init_519_ov7660", i1 false, i1 false}
!371 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1537, i32 32}
!372 = !{ptr @norm_7660, !373, !"norm_7660", i1 false, i1 false}
!373 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1556, i32 36}
!374 = !{ptr @ov519_set_mode.bridge_ov7660, !375, !"bridge_ov7660", i1 false, i1 false}
!375 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3129, i32 33}
!376 = !{ptr @ov519_set_mode.sensor_ov7660, !377, !"sensor_ov7660", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3137, i32 37}
!378 = distinct !{null, !379, !"sensor_ov7660_2", i1 false, i1 false}
!379 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3141, i32 37}
!380 = !{ptr @ov519_set_fr.fr_tb, !381, !"fr_tb", i1 false, i1 false}
!381 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3173, i32 18}
!382 = !{ptr @.str.171, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2499, i32 2}
!384 = !{ptr @.str.172, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @ov51x_restart._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @ov51x_restart._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.173, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2468, i32 2}
!389 = !{ptr @.str.174, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @ov51x_stop._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @ov51x_stop._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @norm_7670, !393, !"norm_7670", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1699, i32 36}
!394 = !{ptr @norm_8610, !395, !"norm_8610", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1893, i32 36}
!396 = distinct !{null, !397, !"norm_9600", i1 false, i1 false}
!397 = !{!"../drivers/media/usb/gspca/ov519.c", i32 1680, i32 36}
!398 = !{ptr @sd_init_controls._key, !399, !"_key", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4887, i32 2}
!400 = !{ptr @.str.175, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.176, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4940, i32 3}
!403 = !{ptr @.str.177, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @sd_init_controls._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @sd_init_controls._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @valid_controls, !407, !"valid_controls", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/gspca/ov519.c", i32 142, i32 32}
!408 = !{ptr @sd_ctrl_ops, !409, !"sd_ctrl_ops", i1 false, i1 false}
!409 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4876, i32 35}
!410 = !{ptr @setbrightness.brit_7660, !411, !"brit_7660", i1 false, i1 false}
!411 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4509, i32 37}
!412 = !{ptr @setcontrast.contrast_7660, !413, !"contrast_7660", i1 false, i1 false}
!413 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4556, i32 37}
!414 = !{ptr @setcontrast.ctab, !415, !"ctab", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4625, i32 19}
!416 = !{ptr @setcontrast.ctab.178, !417, !"ctab", i1 false, i1 false}
!417 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4635, i32 19}
!418 = !{ptr @setcolors.colors_7660, !419, !"colors_7660", i1 false, i1 false}
!419 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4665, i32 37}
!420 = !{ptr @.str.179, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3475, i32 3}
!422 = !{ptr @.str.180, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @ov511_mode_init_regs._entry, !421, !"_entry", i1 false, i1 false}
!424 = !{ptr @ov511_mode_init_regs._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.181, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3606, i32 3}
!427 = !{ptr @ov518_mode_init_regs._entry, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @ov518_mode_init_regs._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.182, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/usb/gspca/ov519.c", i32 2168, i32 3}
!431 = !{ptr @.str.183, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @ov518_reg_w32._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @ov518_reg_w32._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = distinct !{null, !435, !"mode_init_519_ov7670", i1 false, i1 false}
!435 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3744, i32 33}
!436 = distinct !{null, !437, !"mode_init_519", i1 false, i1 false}
!437 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3767, i32 33}
!438 = !{ptr @.str.184, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/usb/gspca/ov519.c", i32 3883, i32 3}
!440 = !{ptr @.str.185, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @ov519_mode_init_regs._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @ov519_mode_init_regs._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @jpeg_head, !444, !"jpeg_head", i1 false, i1 false}
!444 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!445 = !{ptr @mode_init_ov_sensor_regs.sxga_15, !446, !"sxga_15", i1 false, i1 false}
!446 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4061, i32 38}
!447 = !{ptr @mode_init_ov_sensor_regs.sxga_7_5, !448, !"sxga_7_5", i1 false, i1 false}
!448 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4064, i32 38}
!449 = !{ptr @mode_init_ov_sensor_regs.vga_30, !450, !"vga_30", i1 false, i1 false}
!450 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4067, i32 38}
!451 = !{ptr @mode_init_ov_sensor_regs.vga_15, !452, !"vga_15", i1 false, i1 false}
!452 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4070, i32 38}
!453 = !{ptr @.str.186, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4345, i32 5}
!455 = !{ptr @.str.187, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @ov511_pkt_scan._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @ov511_pkt_scan._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.188, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4396, i32 4}
!460 = !{ptr @.str.189, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @ov518_pkt_scan._entry, !459, !"_entry", i1 false, i1 false}
!462 = !{ptr @ov518_pkt_scan._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @device_table, !464, !"device_table", i1 false, i1 false}
!464 = !{!"../drivers/media/usb/gspca/ov519.c", i32 4972, i32 35}
!465 = !{ptr @__param_str_frame_rate, !11, !"__param_str_frame_rate", i1 false, i1 false}
!466 = !{i32 1, !"wchar_size", i32 2}
!467 = !{i32 1, !"min_enum_size", i32 4}
!468 = !{i32 8, !"branch-target-enforcement", i32 0}
!469 = !{i32 8, !"sign-return-address", i32 0}
!470 = !{i32 8, !"sign-return-address-all", i32 0}
!471 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!472 = !{i32 7, !"uwtable", i32 1}
!473 = !{i32 7, !"frame-pointer", i32 2}
!474 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!475 = !{i8 0, i8 2}
