; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca561.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca561.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
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
%struct.sd = type { %struct.gspca_dev, %struct.anon.108, ptr, i8, i8, i8 }
%struct.anon.108 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca561.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_spca561.description=GSPCA/SPCA561 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_spca561.file=drivers/media/usb/gspca/gspca_spca561\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_spca561.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca561__307_911_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_spca561\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spca561\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [17 x %struct.usb_device_id], [104 x i8] } { [17 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16410, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1054, i16 16443, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 28676, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1121, i16 2069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1133, i16 2344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2346, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2347, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2348, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2349, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2350, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2351, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1276, i16 1377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1547, i16 -24575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4349, i16 32336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -21555, i16 -12818, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sd_desc_12a, ptr @sd_desc_72a], [24 x i8] zeroinitializer }, align 32
@sd_desc_12a = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init_12a, ptr @sd_init_controls_12a, ptr null, ptr @sd_start_12a, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@sd_desc_72a = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init_72a, ptr @sd_init_controls_72a, ptr null, ptr @sd_start_72a, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Bad vendor / product from device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/spca561.c\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sif_012a_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1196573255, i32 1, i32 160, i32 19200, i32 8, i32 3, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 1196573255, i32 1, i32 176, i32 25344, i32 8, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825636179, i32 1, i32 320, i32 38400, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 825636179, i32 1, i32 352, i32 50688, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sif_072a_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1196573255, i32 1, i32 160, i32 19200, i32 8, i32 3, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 1196573255, i32 1, i32 176, i32 25344, i32 8, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1196573255, i32 1, i32 320, i32 76800, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1196573255, i32 1, i32 352, i32 101376, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_init_12a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Chip revision: 012a\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_init_12a\00", [20 x i8] zeroinitializer }, align 32
@sd_init_12a._entry_ptr = internal global ptr @sd_init_12a._entry, section ".printk_index", align 4
@spca561_161rev12A_data1 = internal constant { [7 x [2 x i16]], [36 x i8] } { [7 x [2 x i16]] [[2 x i16] [i16 41, i16 -32488], [2 x i16] [i16 8, i16 -32492], [2 x i16] [i16 14, i16 -32494], [2 x i16] [i16 0, i16 -32510], [2 x i16] [i16 146, i16 -30716], [2 x i16] [i16 4, i16 -30718], [2 x i16] zeroinitializer], [36 x i8] zeroinitializer }, align 32
@Pb100_1map8300 = internal constant { [10 x [2 x i16]], [56 x i8] } { [10 x [2 x i16]] [[2 x i16] [i16 -31968, i16 13060], [2 x i16] [i16 -31997, i16 293], [2 x i16] [i16 -31996, i16 361], [2 x i16] [i16 -31960, i16 11], [2 x i16] [i16 -31940, i16 1], [2 x i16] [i16 -31953, i16 6404], [2 x i16] [i16 -31993, i16 170], [2 x i16] [i16 -31999, i16 3], [2 x i16] [i16 -31998, i16 14], [2 x i16] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@spca561_161rev12A_data2 = internal constant { [36 x [2 x i16]], [48 x i8] } { [36 x [2 x i16]] [[2 x i16] [i16 33, i16 -32488], [2 x i16] [i16 16, i16 -31488], [2 x i16] [i16 7, i16 -31231], [2 x i16] [i16 7, i16 -31230], [2 x i16] [i16 4, i16 -31487], [2 x i16] [i16 7, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 144, i16 -31228], [2 x i16] [i16 0, i16 -31227], [2 x i16] [i16 176, i16 -31229], [2 x i16] [i16 7, i16 -31231], [2 x i16] [i16 7, i16 -31230], [2 x i16] [i16 0, i16 -31216], [2 x i16] [i16 0, i16 -31215], [2 x i16] [i16 0, i16 -31214], [2 x i16] [i16 0, i16 -31213], [2 x i16] [i16 67, i16 -31212], [2 x i16] [i16 64, i16 -31211], [2 x i16] [i16 113, i16 -31210], [2 x i16] [i16 64, i16 -31209], [2 x i16] [i16 12, i16 -31200], [2 x i16] [i16 200, i16 -31183], [2 x i16] [i16 200, i16 -31180], [2 x i16] [i16 35, i16 -31179], [2 x i16] [i16 31, i16 -31178], [2 x i16] [i16 221, i16 -31177], [2 x i16] [i16 225, i16 -31176], [2 x i16] [i16 29, i16 -31175], [2 x i16] [i16 33, i16 -31174], [2 x i16] [i16 227, i16 -31173], [2 x i16] [i16 223, i16 -31172], [2 x i16] [i16 240, i16 -31483], [2 x i16] [i16 50, i16 -31478], [2 x i16] [i16 41, i16 -32488], [2 x i16] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@reg_w_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: reg write: 0x%02x:0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_val\00", [22 x i8] zeroinitializer }, align 32
@reg_w_val._entry_ptr = internal global ptr @reg_w_val._entry, section ".printk_index", align 4
@reg_w_val._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_spca561: reg write: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@reg_w_val._entry_ptr.11 = internal global ptr @reg_w_val._entry.9, section ".printk_index", align 4
@sd_init_controls_12a._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spca561:794:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls_12a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_spca561: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_init_controls_12a\00", [43 x i8] zeroinitializer }, align 32
@sd_init_controls_12a._entry_ptr = internal global ptr @sd_init_controls_12a._entry, section ".printk_index", align 4
@__const.setexposure.table = private unnamed_addr constant [5 x i32] [i32 0, i32 450, i32 550, i32 625, i32 2372], align 4
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Short SOF packet, ignoring\0A\0A\0A\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_init_72a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Chip revision: 072a\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_init_72a\00", [20 x i8] zeroinitializer }, align 32
@sd_init_72a._entry_ptr = internal global ptr @sd_init_72a._entry, section ".printk_index", align 4
@rev72a_reset = internal constant { [4 x [2 x i16]], [16 x i8] } { [4 x [2 x i16]] [[2 x i16] [i16 0, i16 -32492], [2 x i16] [i16 1, i16 -32492], [2 x i16] [i16 0, i16 -32494], [2 x i16] zeroinitializer], [16 x i8] zeroinitializer }, align 32
@rev72a_init_data1 = internal constant { [7 x [2 x i16]], [36 x i8] } { [7 x [2 x i16]] [[2 x i16] [i16 3, i16 -30975], [2 x i16] [i16 1, i16 -30973], [2 x i16] [i16 17, i16 -32488], [2 x i16] [i16 1, i16 -32488], [2 x i16] [i16 146, i16 -30716], [2 x i16] [i16 16, i16 -30718], [2 x i16] zeroinitializer], [36 x i8] zeroinitializer }, align 32
@rev72a_init_data2 = internal constant { [30 x [2 x i16]], [40 x i8] } { [30 x [2 x i16]] [[2 x i16] [i16 24, i16 -31231], [2 x i16] [i16 0, i16 -31230], [2 x i16] [i16 96, i16 -31228], [2 x i16] [i16 2, i16 -31227], [2 x i16] [i16 0, i16 -31229], [2 x i16] [i16 2, i16 -31141], [2 x i16] [i16 0, i16 -31137], [2 x i16] [i16 176, i16 -31139], [2 x i16] [i16 144, i16 -31138], [2 x i16] [i16 224, i16 -31738], [2 x i16] [i16 0, i16 -31136], [2 x i16] [i16 2, i16 -32255], [2 x i16] [i16 8, i16 -32256], [2 x i16] [i16 1, i16 -32256], [2 x i16] [i16 0, i16 -31215], [2 x i16] [i16 253, i16 -31214], [2 x i16] [i16 3, i16 -31213], [2 x i16] [i16 0, i16 -31212], [2 x i16] [i16 53, i16 -31151], [2 x i16] [i16 64, i16 -31150], [2 x i16] [i16 95, i16 -31149], [2 x i16] [i16 64, i16 -31148], [2 x i16] [i16 2, i16 -31486], [2 x i16] [i16 17, i16 -30718], [2 x i16] [i16 135, i16 -30976], [2 x i16] [i16 129, i16 -30974], [2 x i16] [i16 0, i16 -31488], [2 x i16] [i16 2, i16 -31141], [2 x i16] [i16 3, i16 -31140], [2 x i16] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@sd_init_controls_72a._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spca561:817:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_init_controls_72a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.20, ptr @.str.4, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sd_init_controls_72a\00", [43 x i8] zeroinitializer }, align 32
@sd_init_controls_72a._entry_ptr = internal global ptr @sd_init_controls_72a._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 9963776, i64 9963777, i64 9963779, i64 9963793, i64 9963794, i64 9963795]
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 899, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 911, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 900, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 867, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 861, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"sd_desc_12a\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 836, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"sd_desc_72a\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 848, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 415, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"sif_012a_mode\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 44, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"sif_072a_mode\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 67, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 437, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"spca561_161rev12A_data1\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 219, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"Pb100_1map8300\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 197, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"spca561_161rev12A_data2\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 228, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 284, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 287, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 794, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 785, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 805, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 714, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 443, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"rev72a_reset\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 116, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"rev72a_init_data1\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 122, i32 20 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"rev72a_init_data2\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 146, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 817, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [37 x i8] c"../drivers/media/usb/gspca/spca561.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 828, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca561__307_911_sd_driver_init6, ptr @reg_w_val._entry, ptr @reg_w_val._entry.9, ptr @reg_w_val._entry_ptr, ptr @reg_w_val._entry_ptr.11, ptr @sd_config._entry, ptr @sd_config._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_12a._entry, ptr @sd_init_12a._entry_ptr, ptr @sd_init_72a._entry, ptr @sd_init_72a._entry_ptr, ptr @sd_init_controls_12a._entry, ptr @sd_init_controls_12a._entry_ptr, ptr @sd_init_controls_72a._entry, ptr @sd_init_controls_72a._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sd_desc_12a, ptr @sd_desc_72a, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sif_012a_mode, ptr @sif_072a_mode, ptr @.str.5, ptr @.str.6, ptr @spca561_161rev12A_data1, ptr @Pb100_1map8300, ptr @spca561_161rev12A_data2, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @sd_init_controls_12a._key, ptr @.str.12, ptr @sd_ctrl_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rev72a_reset, ptr @rev72a_init_data1, ptr @rev72a_init_data2, ptr @sd_init_controls_72a._key, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_12a to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_72a to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_012a_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_072a_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_12a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca561_161rev12A_data1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Pb100_1map8300 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca561_161rev12A_data2 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_val._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls_12a._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls_12a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_72a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev72a_reset to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev72a_init_data1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev72a_init_data2 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls_72a._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls_72a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
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
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @sd_desc, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef %3, i32 noundef 2624, ptr noundef null) #5
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
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i64 = shl i32 %13, 8
  %or2.i65 = or i32 %shl.i.i64, -2147483520
  %call3.i67 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or2.i65, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32507, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv3 = zext i8 %9 to i32
  %or = or i32 %shl, %conv3
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i69 = shl i32 %21, 8
  %or2.i70 = or i32 %shl.i.i69, -2147483520
  %call3.i72 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or2.i70, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32506, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  %22 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i74 = shl i32 %29, 8
  %or2.i75 = or i32 %shl.i.i74, -2147483520
  %call3.i77 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or2.i75, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32505, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #5
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %30 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idVendor, align 2
  %conv15 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv15)
  %cmp.not = icmp eq i32 %or, %conv15
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %32 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv9 = zext i8 %35 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %conv11 = zext i8 %25 to i32
  %or12 = or i32 %shl10, %conv11
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %36 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %idProduct, align 4
  %conv18 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or12, i32 %conv18)
  %cmp19.not = icmp eq i32 %or12, %conv18
  br i1 %cmp19.not, label %if.end27, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp21 = icmp sgt i32 %38, 0
  br i1 %cmp21, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #8
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %cam28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %needs_full_bandwidth = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 9
  %39 = ptrtoint ptr %needs_full_bandwidth to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %needs_full_bandwidth, align 1
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %40 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %driver_info, align 4
  %conv29 = trunc i32 %41 to i8
  %chip_revision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %42 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv29, ptr %chip_revision, align 1
  %conv31 = and i32 %41, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31)
  %cmp32 = icmp eq i32 %conv31, 0
  %spec.select = select i1 %cmp32, ptr @sif_012a_mode, ptr @sif_072a_mode
  %43 = ptrtoint ptr %cam28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %spec.select, ptr %cam28, align 4
  %44 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %44, align 4
  %expo12a = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %46 = ptrtoint ptr %expo12a to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %expo12a, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_12a(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @spca561_161rev12A_data1) #5
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end2
  %sensormap.addr.016.i.i = phi ptr [ @Pb100_1map8300, %do.end2 ], [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr [2 x i16], ptr %sensormap.addr.016.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx1.i.i, align 2
  %conv.i.i = trunc i16 %2 to i8
  %3 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i.i, ptr %4, align 1
  %6 = load i16, ptr %arrayidx1.i.i, align 2
  %7 = lshr i16 %6, 8
  %conv5.i.i = trunc i16 %7 to i8
  %8 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx7.i.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv5.i.i, ptr %arrayidx7.i.i, align 1
  %10 = ptrtoint ptr %sensormap.addr.016.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sensormap.addr.016.i.i, align 2
  %12 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i.i = shl i32 %15, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %11, ptr noundef %16, i16 noundef zeroext 2, i32 noundef 500) #5
  %incdec.ptr.i.i = getelementptr [2 x i16], ptr %sensormap.addr.016.i.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %incdec.ptr.i.i, align 2
  %tobool.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i, label %init_161rev12A.exit, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

init_161rev12A.exit:                              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @spca561_161rev12A_data2) #5
  %19 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %20, align 1
  %22 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx7.i10.i = getelementptr i8, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx7.i10.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx7.i10.i, align 1
  %24 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i11.i = shl i32 %27, 8
  %or.i.i12.i = or i32 %shl.i.i.i11.i, -2147483648
  %28 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i13.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i.i12.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31943, ptr noundef %28, i16 noundef zeroext 2, i32 noundef 500) #5
  %29 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -86, ptr %30, align 1
  %32 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx7.i10.1.i = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx7.i10.1.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx7.i10.1.i, align 1
  %34 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i.i11.1.i = shl i32 %37, 8
  %or.i.i12.1.i = or i32 %shl.i.i.i11.1.i, -2147483648
  %38 = load ptr, ptr %usb_buf.i.i, align 4
  %call2.i.i13.1.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i.i12.1.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31993, ptr noundef %38, i16 noundef zeroext 2, i32 noundef 500) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls_12a(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @sd_init_controls_12a._key, ptr noundef nonnull @.str.12) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963779, i64 noundef 1, i64 noundef 127, i64 noundef 1, i64 noundef 64) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 1, i64 noundef 2372, i64 noundef 1, i64 noundef 700) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 63) #5
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start_12a(ptr noundef %gspca_dev) #2 align 64 {
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
  %conv = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %conv, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = trunc i32 %5 to i8
  %conv2 = or i8 %6, 16
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %conv2 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i = icmp sgt i32 %11, 6
  br i1 %cmp.i, label %do.end.i, label %if.then.do.end9.i_crit_edge

if.then.do.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i = zext i8 %conv2 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 34048, i32 noundef %conv6.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end9.i.if.end.sink.split_crit_edge, label %do.end9.i.if.end_crit_edge

do.end9.i.if.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end9.i.if.end.sink.split_crit_edge:            ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %dev1.i23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev1.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i23, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i24 = shl i32 %15, 8
  %or.i25 = or i32 %shl.i.i24, -2147483648
  %16 = trunc i32 %5 to i16
  %conv.i26 = and i16 %16, 255
  %call2.i27 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i25, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i26, i16 noundef zeroext -31488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp.i28 = icmp sgt i32 %17, 6
  br i1 %cmp.i28, label %do.end.i32, label %if.else.do.end9.i34_crit_edge

if.else.do.end9.i34_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i34

do.end.i32:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %name.i29 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i30 = and i32 %5, 255
  %call7.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i29, i32 noundef 34048, i32 noundef %conv6.i30) #8
  br label %do.end9.i34

do.end9.i34:                                      ; preds = %do.end.i32, %if.else.do.end9.i34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i27)
  %cmp10.i33 = icmp slt i32 %call2.i27, 0
  br i1 %cmp10.i33, label %do.end9.i34.if.end.sink.split_crit_edge, label %do.end9.i34.if.end_crit_edge

do.end9.i34.if.end_crit_edge:                     ; preds = %do.end9.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end9.i34.if.end.sink.split_crit_edge:          ; preds = %do.end9.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %do.end9.i34.if.end.sink.split_crit_edge, %do.end9.i.if.end.sink.split_crit_edge
  %call2.i27.sink = phi i32 [ %call2.i, %do.end9.i.if.end.sink.split_crit_edge ], [ %call2.i27, %do.end9.i34.if.end.sink.split_crit_edge ]
  %call17.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i27.sink) #8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %do.end9.i34.if.end_crit_edge, %do.end9.i.if.end_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -86, ptr %19, align 1
  %21 = load ptr, ptr %usb_buf, align 4
  %arrayidx6 = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx6, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i38 = shl i32 %26, 8
  %or.i39 = or i32 %shl.i.i38, -2147483648
  %27 = load ptr, ptr %usb_buf, align 4
  %call2.i40 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i39, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31993, ptr noundef %27, i16 noundef zeroext 2, i32 noundef 500) #5
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i42 = shl i32 %31, 8
  %or.i43 = or i32 %shl.i.i42, -2147483648
  %call2.i44 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i43, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 138, i16 noundef zeroext -30976, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp.i45 = icmp sgt i32 %32, 6
  br i1 %cmp.i45, label %do.end.i48, label %if.end.do.end9.i50_crit_edge

if.end.do.end9.i50_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i50

do.end.i48:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name.i46 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i46, i32 noundef 34560, i32 noundef 138) #8
  br label %do.end9.i50

do.end9.i50:                                      ; preds = %do.end.i48, %if.end.do.end9.i50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i44)
  %cmp10.i49 = icmp slt i32 %call2.i44, 0
  br i1 %cmp10.i49, label %do.end15.i52, label %do.end9.i50.reg_w_val.exit53_crit_edge

do.end9.i50.reg_w_val.exit53_crit_edge:           ; preds = %do.end9.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit53

do.end15.i52:                                     ; preds = %do.end9.i50
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i44) #8
  br label %reg_w_val.exit53

reg_w_val.exit53:                                 ; preds = %do.end15.i52, %do.end9.i50.reg_w_val.exit53_crit_edge
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i55 = shl i32 %36, 8
  %or.i56 = or i32 %shl.i.i55, -2147483648
  %call2.i57 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i56, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 62, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp.i58 = icmp sgt i32 %37, 6
  br i1 %cmp.i58, label %do.end.i61, label %reg_w_val.exit53.do.end9.i63_crit_edge

reg_w_val.exit53.do.end9.i63_crit_edge:           ; preds = %reg_w_val.exit53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i63

do.end.i61:                                       ; preds = %reg_w_val.exit53
  call void @__sanitizer_cov_trace_pc() #7
  %name.i59 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i59, i32 noundef 33042, i32 noundef 62) #8
  br label %do.end9.i63

do.end9.i63:                                      ; preds = %do.end.i61, %reg_w_val.exit53.do.end9.i63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i57)
  %cmp10.i62 = icmp slt i32 %call2.i57, 0
  br i1 %cmp10.i62, label %do.end15.i65, label %do.end9.i63.reg_w_val.exit66_crit_edge

do.end9.i63.reg_w_val.exit66_crit_edge:           ; preds = %do.end9.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit66

do.end15.i65:                                     ; preds = %do.end9.i63
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i57) #8
  br label %reg_w_val.exit66

reg_w_val.exit66:                                 ; preds = %do.end15.i65, %do.end9.i63.reg_w_val.exit66_crit_edge
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i68 = shl i32 %41, 8
  %or.i69 = or i32 %shl.i.i68, -2147483648
  %call2.i70 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i69, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext -31477, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp.i71 = icmp sgt i32 %42, 6
  br i1 %cmp.i71, label %do.end.i74, label %reg_w_val.exit66.do.end9.i76_crit_edge

reg_w_val.exit66.do.end9.i76_crit_edge:           ; preds = %reg_w_val.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i76

do.end.i74:                                       ; preds = %reg_w_val.exit66
  call void @__sanitizer_cov_trace_pc() #7
  %name.i72 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i72, i32 noundef 34059, i32 noundef 3) #8
  br label %do.end9.i76

do.end9.i76:                                      ; preds = %do.end.i74, %reg_w_val.exit66.do.end9.i76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i70)
  %cmp10.i75 = icmp slt i32 %call2.i70, 0
  br i1 %cmp10.i75, label %do.end15.i78, label %do.end9.i76.reg_w_val.exit79_crit_edge

do.end9.i76.reg_w_val.exit79_crit_edge:           ; preds = %do.end9.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit79

do.end15.i78:                                     ; preds = %do.end9.i76
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i70) #8
  br label %reg_w_val.exit79

reg_w_val.exit79:                                 ; preds = %do.end15.i78, %do.end9.i76.reg_w_val.exit79_crit_edge
  %43 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 -7912789360716546048, ptr %44, align 1
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i81 = shl i32 %49, 8
  %or.i82 = or i32 %shl.i.i81, -2147483648
  %50 = load ptr, ptr %usb_buf, align 4
  %call2.i84 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i82, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31855, ptr noundef %50, i16 noundef zeroext 8, i32 noundef 500) #5
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i86 = shl i32 %54, 8
  %or.i87 = or i32 %shl.i.i86, -2147483648
  %55 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_buf, align 4
  %call2.i89 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i87, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31856, ptr noundef %56, i16 noundef zeroext 8, i32 noundef 500) #5
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i91 = shl i32 %60, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %call2.i93 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i92, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32492, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %61 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %cmp.i94 = icmp sgt i32 %61, 6
  br i1 %cmp.i94, label %do.end.i97, label %reg_w_val.exit79.do.end9.i99_crit_edge

reg_w_val.exit79.do.end9.i99_crit_edge:           ; preds = %reg_w_val.exit79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i99

do.end.i97:                                       ; preds = %reg_w_val.exit79
  call void @__sanitizer_cov_trace_pc() #7
  %name.i95 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i95, i32 noundef 33044, i32 noundef 0) #8
  br label %do.end9.i99

do.end9.i99:                                      ; preds = %do.end.i97, %reg_w_val.exit79.do.end9.i99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i93)
  %cmp10.i98 = icmp slt i32 %call2.i93, 0
  br i1 %cmp10.i98, label %do.end15.i101, label %do.end9.i99.reg_w_val.exit102_crit_edge

do.end9.i99.reg_w_val.exit102_crit_edge:          ; preds = %do.end9.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit102

do.end15.i101:                                    ; preds = %do.end9.i99
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i93) #8
  br label %reg_w_val.exit102

reg_w_val.exit102:                                ; preds = %do.end15.i101, %do.end9.i99.reg_w_val.exit102_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dec = add i32 %len, -1
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.epilog [
    i8 0, label %sw.bb
    i8 -1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp = icmp slt i32 %dec, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #8
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %3 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 212, i32 noundef 1) #5
  %9 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %11 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %12, i32 noundef 1, i32 noundef 212, i32 noundef 0) #5
  %13 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %arrayidx8 = getelementptr i8, ptr %data, i32 2
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8, align 1
  %17 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not = icmp eq i8 %17, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %incdec.ptr, i32 noundef %dec) #5
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %chip_revision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %18 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp14 = icmp eq i8 %19, 0
  %len.addr.0.v = select i1 %cmp14, i32 -21, i32 -17
  %len.addr.0 = add i32 %len.addr.0.v, %len
  %data.addr.0.v = select i1 %cmp14, i32 21, i32 17
  %data.addr.0 = getelementptr i8, ptr %data, i32 %data.addr.0.v
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %incdec.ptr, i32 noundef %dec) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.else, %if.then12, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_revision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chip_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 14, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.i = icmp sgt i32 %6, 6
  br i1 %cmp.i, label %do.end.i, label %if.then.do.end9.i_crit_edge

if.then.do.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 33042, i32 noundef 14) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i6 = shl i32 %10, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call2.i8 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i7, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext -32492, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i9 = icmp sgt i32 %11, 6
  br i1 %cmp.i9, label %do.end.i12, label %reg_w_val.exit.do.end9.i14_crit_edge

reg_w_val.exit.do.end9.i14_crit_edge:             ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i14

do.end.i12:                                       ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i10, i32 noundef 33044, i32 noundef 8) #8
  br label %do.end9.i14

do.end9.i14:                                      ; preds = %do.end.i12, %reg_w_val.exit.do.end9.i14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %cmp10.i13 = icmp slt i32 %call2.i8, 0
  br i1 %cmp10.i13, label %do.end9.i14.if.end.sink.split_crit_edge, label %do.end9.i14.if.end_crit_edge

do.end9.i14.if.end_crit_edge:                     ; preds = %do.end9.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end9.i14.if.end.sink.split_crit_edge:          ; preds = %do.end9.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %call2.i21 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp.i22 = icmp sgt i32 %12, 6
  br i1 %cmp.i22, label %do.end.i25, label %if.else.do.end9.i27_crit_edge

if.else.do.end9.i27_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i27

do.end.i25:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %name.i23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i23, i32 noundef 33042, i32 noundef 32) #8
  br label %do.end9.i27

do.end9.i27:                                      ; preds = %do.end.i25, %if.else.do.end9.i27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21)
  %cmp10.i26 = icmp slt i32 %call2.i21, 0
  br i1 %cmp10.i26, label %do.end9.i27.if.end.sink.split_crit_edge, label %do.end9.i27.if.end_crit_edge

do.end9.i27.if.end_crit_edge:                     ; preds = %do.end9.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end9.i27.if.end.sink.split_crit_edge:          ; preds = %do.end9.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %do.end9.i27.if.end.sink.split_crit_edge, %do.end9.i14.if.end.sink.split_crit_edge
  %call2.i21.sink = phi i32 [ %call2.i8, %do.end9.i14.if.end.sink.split_crit_edge ], [ %call2.i21, %do.end9.i27.if.end.sink.split_crit_edge ]
  %call17.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i21.sink) #8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %do.end9.i27.if.end_crit_edge, %do.end9.i14.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_vector(ptr noundef %gspca_dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx113 = getelementptr [2 x i16], ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx113, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not14 = icmp eq i16 %1, 0
  br i1 %cmp.not14, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.body

while.body:                                       ; preds = %reg_w_val.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i16 [ %1, %while.body.lr.ph ], [ %11, %reg_w_val.exit.while.body_crit_edge ]
  %i.015 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %reg_w_val.exit.while.body_crit_edge ]
  %arrayidx = getelementptr [2 x i16], ptr %data, i32 %i.015
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = and i16 %4, 255
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext %2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i = icmp sgt i32 %9, 6
  br i1 %cmp.i, label %do.end.i, label %while.body.do.end9.i_crit_edge

while.body.do.end9.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i16 %2 to i32
  %conv6.i = zext i16 %conv.i to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %conv5.i, i32 noundef %conv6.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %while.body.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  %inc = add i32 %i.015, 1
  %arrayidx1 = getelementptr [2 x i16], ptr %data, i32 %inc, i32 1
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx1, align 2
  %cmp.not = icmp eq i16 %11, 0
  br i1 %cmp.not, label %reg_w_val.exit.while.end_crit_edge, label %reg_w_val.exit.while.body_crit_edge

reg_w_val.exit.while.body_crit_edge:              ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

reg_w_val.exit.while.end_crit_edge:               ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %reg_w_val.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

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
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !103
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963779, label %sw.bb4
    i32 9963793, label %sw.bb6
    i32 9963795, label %sw.bb8
    i32 9963794, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %chip_revision.i = getelementptr i8, ptr %1, i32 1037
  %10 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  %..i = select i1 %cmp.i, i16 -31216, i16 -31215
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i = shl i32 %15, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %16 = trunc i32 %9 to i16
  %conv.i.i = and i16 %16, 255
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %..i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp.i.i = icmp sgt i32 %17, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.do.end9.i.i_crit_edge

sw.bb.do.end9.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv5.i.i = zext i16 %..i to i32
  %conv6.i.i = and i32 %9, 255
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i.i, i32 noundef %conv5.i.i, i32 noundef %conv6.i.i) #8
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %sw.bb.do.end9.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp10.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp10.i.i, label %do.end15.i.i, label %do.end9.i.i.reg_w_val.exit.i_crit_edge

do.end9.i.i.reg_w_val.exit.i_crit_edge:           ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit.i

do.end15.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i.i) #8
  br label %reg_w_val.exit.i

reg_w_val.exit.i:                                 ; preds = %do.end15.i.i, %do.end9.i.i.reg_w_val.exit.i_crit_edge
  %add6.i = add nuw nsw i16 %..i, 1
  %18 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i28.i = shl i32 %21, 8
  %or.i29.i = or i32 %shl.i.i28.i, -2147483648
  %call2.i31.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i29.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %add6.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp.i32.i = icmp sgt i32 %22, 6
  br i1 %cmp.i32.i, label %do.end.i37.i, label %reg_w_val.exit.i.do.end9.i39.i_crit_edge

reg_w_val.exit.i.do.end9.i39.i_crit_edge:         ; preds = %reg_w_val.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i39.i

do.end.i37.i:                                     ; preds = %reg_w_val.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i33.i = getelementptr i8, ptr %1, i32 -168
  %conv5.i34.i = zext i16 %add6.i to i32
  %conv6.i35.i = and i32 %9, 255
  %call7.i36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i33.i, i32 noundef %conv5.i34.i, i32 noundef %conv6.i35.i) #8
  br label %do.end9.i39.i

do.end9.i39.i:                                    ; preds = %do.end.i37.i, %reg_w_val.exit.i.do.end9.i39.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31.i)
  %cmp10.i38.i = icmp slt i32 %call2.i31.i, 0
  br i1 %cmp10.i38.i, label %do.end15.i41.i, label %do.end9.i39.i.reg_w_val.exit42.i_crit_edge

do.end9.i39.i.reg_w_val.exit42.i_crit_edge:       ; preds = %do.end9.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit42.i

do.end15.i41.i:                                   ; preds = %do.end9.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i31.i) #8
  br label %reg_w_val.exit42.i

reg_w_val.exit42.i:                               ; preds = %do.end15.i41.i, %do.end9.i39.i.reg_w_val.exit42.i_crit_edge
  %add10.i = or i16 %..i, 2
  %23 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i44.i = shl i32 %26, 8
  %or.i45.i = or i32 %shl.i.i44.i, -2147483648
  %call2.i47.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i45.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %add10.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp.i48.i = icmp sgt i32 %27, 6
  br i1 %cmp.i48.i, label %do.end.i53.i, label %reg_w_val.exit42.i.do.end9.i55.i_crit_edge

reg_w_val.exit42.i.do.end9.i55.i_crit_edge:       ; preds = %reg_w_val.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i55.i

do.end.i53.i:                                     ; preds = %reg_w_val.exit42.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i49.i = getelementptr i8, ptr %1, i32 -168
  %conv5.i50.i = zext i16 %add10.i to i32
  %conv6.i51.i = and i32 %9, 255
  %call7.i52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i49.i, i32 noundef %conv5.i50.i, i32 noundef %conv6.i51.i) #8
  br label %do.end9.i55.i

do.end9.i55.i:                                    ; preds = %do.end.i53.i, %reg_w_val.exit42.i.do.end9.i55.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i47.i)
  %cmp10.i54.i = icmp slt i32 %call2.i47.i, 0
  br i1 %cmp10.i54.i, label %do.end15.i57.i, label %do.end9.i55.i.reg_w_val.exit58.i_crit_edge

do.end9.i55.i.reg_w_val.exit58.i_crit_edge:       ; preds = %do.end9.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit58.i

do.end15.i57.i:                                   ; preds = %do.end9.i55.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i47.i) #8
  br label %reg_w_val.exit58.i

reg_w_val.exit58.i:                               ; preds = %do.end15.i57.i, %do.end9.i55.i.reg_w_val.exit58.i_crit_edge
  %narrow.i = add nuw nsw i16 %..i, 3
  %28 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i60.i = shl i32 %31, 8
  %or.i61.i = or i32 %shl.i.i60.i, -2147483648
  %call2.i63.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i61.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %narrow.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp.i64.i = icmp sgt i32 %32, 6
  br i1 %cmp.i64.i, label %do.end.i69.i, label %reg_w_val.exit58.i.do.end9.i71.i_crit_edge

reg_w_val.exit58.i.do.end9.i71.i_crit_edge:       ; preds = %reg_w_val.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i71.i

do.end.i69.i:                                     ; preds = %reg_w_val.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i65.i = getelementptr i8, ptr %1, i32 -168
  %conv5.i66.i = zext i16 %narrow.i to i32
  %conv6.i67.i = and i32 %9, 255
  %call7.i68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i65.i, i32 noundef %conv5.i66.i, i32 noundef %conv6.i67.i) #8
  br label %do.end9.i71.i

do.end9.i71.i:                                    ; preds = %do.end.i69.i, %reg_w_val.exit58.i.do.end9.i71.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63.i)
  %cmp10.i70.i = icmp slt i32 %call2.i63.i, 0
  br i1 %cmp10.i70.i, label %do.end15.i73.i, label %do.end9.i71.i.sw.epilog_crit_edge

do.end9.i71.i.sw.epilog_crit_edge:                ; preds = %do.end9.i71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end15.i73.i:                                   ; preds = %do.end9.i71.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i63.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hue = getelementptr i8, ptr %1, i32 1028
  %33 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hue, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val2, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val3, align 4
  tail call fastcc void @setwhite(ptr noundef %add.ptr, i32 noundef %36, i32 noundef %38)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val5, align 4
  tail call fastcc void @setwhite(ptr noundef %add.ptr, i32 noundef %40, i32 noundef 0)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 450, i32 %42)
  %cmp1.not.i = icmp sgt i32 %42, 450
  br i1 %cmp1.not.i, label %for.cond.1.i, label %sw.bb6._crit_edge

sw.bb6._crit_edge:                                ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %45

for.cond.1.i:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %42)
  %cmp1.not.1.i = icmp ugt i32 %42, 550
  br i1 %cmp1.not.1.i, label %for.cond.2.i, label %for.cond.1.i.if.then.thread.i_crit_edge

for.cond.1.i.if.then.thread.i_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.thread.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %42)
  %cmp1.not.2.i = icmp ugt i32 %42, 625
  br i1 %cmp1.not.2.i, label %for.cond.3.i, label %for.cond.2.i.if.then.thread.i_crit_edge

for.cond.2.i.if.then.thread.i_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.thread.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2372, i32 %42)
  %cmp1.not.3.i = icmp ugt i32 %42, 2372
  br i1 %cmp1.not.3.i, label %for.cond.3.i.setexposure.exit_crit_edge, label %for.cond.3.i.if.then.thread.i_crit_edge

for.cond.3.i.if.then.thread.i_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.thread.i

for.cond.3.i.setexposure.exit_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %setexposure.exit

if.then.thread.i:                                 ; preds = %for.cond.3.i.if.then.thread.i_crit_edge, %for.cond.2.i.if.then.thread.i_crit_edge, %for.cond.1.i.if.then.thread.i_crit_edge
  %i.0.lcssa22.ph.i = phi i32 [ 1, %for.cond.1.i.if.then.thread.i_crit_edge ], [ 2, %for.cond.2.i.if.then.thread.i_crit_edge ], [ 3, %for.cond.3.i.if.then.thread.i_crit_edge ]
  %arrayidx225.i = getelementptr [5 x i32], ptr @__const.setexposure.table, i32 0, i32 %i.0.lcssa22.ph.i
  %43 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx225.i, align 4
  %sub26.i = add nuw nsw i32 %42, 300
  %add427.i = sub i32 %sub26.i, %44
  br label %45

45:                                               ; preds = %if.then.thread.i, %sw.bb6._crit_edge
  %i.0.lcssa2228.i = phi i32 [ %i.0.lcssa22.ph.i, %if.then.thread.i ], [ 0, %sw.bb6._crit_edge ]
  %46 = phi i32 [ %add427.i, %if.then.thread.i ], [ %42, %sw.bb6._crit_edge ]
  %shl.i = shl nuw nsw i32 %i.0.lcssa2228.i, 11
  %or.i = or i32 %46, %shl.i
  br label %setexposure.exit

setexposure.exit:                                 ; preds = %45, %for.cond.3.i.setexposure.exit_crit_edge
  %expo.1.i = phi i32 [ %or.i, %45 ], [ 0, %for.cond.3.i.setexposure.exit_crit_edge ]
  %conv.i = trunc i32 %expo.1.i to i8
  %usb_buf.i = getelementptr i8, ptr %1, i32 204
  %47 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i, ptr %48, align 1
  %50 = lshr i32 %expo.1.i, 8
  %conv7.i = trunc i32 %50 to i8
  %51 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %51, i32 1
  %52 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv7.i, ptr %arrayidx9.i, align 1
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i.i30 = shl i32 %56, 8
  %or.i.i31 = or i32 %shl.i.i.i30, -2147483648
  %57 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i32 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i.i31, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31991, ptr noundef %57, i16 noundef zeroext 2, i32 noundef 500) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %58 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %59)
  %cmp.i33 = icmp slt i32 %59, 64
  br i1 %cmp.i33, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i34 = trunc i32 %59 to i8
  br label %setgain.exit

if.else.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %59)
  %cmp1.i = icmp ult i32 %59, 128
  %div24.lhs.trunc.i = trunc i32 %59 to i8
  br i1 %cmp1.i, label %if.then3.i, label %if.else7.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %div242528.i = lshr i8 %div24.lhs.trunc.i, 1
  %conv4.i = or i8 %div242528.i, 64
  br label %setgain.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = lshr i8 %div24.lhs.trunc.i, 2
  %conv10.i = or i8 %60, -64
  br label %setgain.exit

setgain.exit:                                     ; preds = %if.else7.i, %if.then3.i, %if.then.i
  %conv4.sink.i = phi i8 [ %conv4.i, %if.then3.i ], [ %conv10.i, %if.else7.i ], [ %conv.i34, %if.then.i ]
  %usb_buf5.i = getelementptr i8, ptr %1, i32 204
  %61 = ptrtoint ptr %usb_buf5.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf5.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv4.sink.i, ptr %62, align 1
  %64 = load ptr, ptr %usb_buf5.i, align 4
  %arrayidx15.i = getelementptr i8, ptr %64, i32 1
  %65 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx15.i, align 1
  %dev.i.i35 = getelementptr i8, ptr %1, i32 -100
  %66 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i35, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i.i36 = shl i32 %69, 8
  %or.i.i37 = or i32 %shl.i.i.i36, -2147483648
  %70 = load ptr, ptr %usb_buf5.i, align 4
  %call2.i.i38 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i.i37, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -31947, ptr noundef %70, i16 noundef zeroext 2, i32 noundef 500) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %71 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -1, i8 13
  %73 = getelementptr i8, ptr %1, i32 1038
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %spec.select.i, ptr %73, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %setgain.exit, %setexposure.exit, %sw.bb4, %sw.bb1, %do.end15.i73.i, %do.end9.i71.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %75 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %76, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setwhite(ptr noundef %gspca_dev, i32 noundef %white, i32 noundef %contrast) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %white, 3
  %div = sdiv i32 %mul, 8
  %0 = trunc i32 %div to i8
  %conv = add i8 %0, 32
  %mul1 = mul i32 %white, 5
  %div2.neg = sdiv i32 %mul1, -8
  %1 = trunc i32 %div2.neg to i8
  %conv3 = add i8 %1, -112
  %chip_revision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = trunc i32 %contrast to i8
  %5 = add i8 %4, -32
  %conv9 = add i8 %0, %4
  %conv13 = add i8 %5, %conv3
  %conv15 = add i8 %4, 32
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %conv15 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31150, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp.i = icmp sgt i32 %10, 6
  br i1 %cmp.i, label %do.end.i, label %if.else.do.end9.i_crit_edge

if.else.do.end9.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i = zext i8 %conv15 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 34386, i32 noundef %conv6.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.else.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i33 = shl i32 %14, 8
  %or.i34 = or i32 %shl.i.i33, -2147483648
  %call2.i36 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i34, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -31148, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.i37 = icmp sgt i32 %15, 6
  br i1 %cmp.i37, label %do.end.i41, label %reg_w_val.exit.do.end9.i43_crit_edge

reg_w_val.exit.do.end9.i43_crit_edge:             ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i43

do.end.i41:                                       ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i39 = zext i8 %conv15 to i32
  %call7.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i38, i32 noundef 34388, i32 noundef %conv6.i39) #8
  br label %do.end9.i43

do.end9.i43:                                      ; preds = %do.end.i41, %reg_w_val.exit.do.end9.i43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i36)
  %cmp10.i42 = icmp slt i32 %call2.i36, 0
  br i1 %cmp10.i42, label %do.end15.i45, label %do.end9.i43.if.end_crit_edge

do.end9.i43.if.end_crit_edge:                     ; preds = %do.end9.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end15.i45:                                     ; preds = %do.end9.i43
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i36) #8
  br label %if.end

if.end:                                           ; preds = %do.end15.i45, %do.end9.i43.if.end_crit_edge, %entry.if.end_crit_edge
  %blue.0 = phi i8 [ %conv3, %entry.if.end_crit_edge ], [ %conv13, %do.end9.i43.if.end_crit_edge ], [ %conv13, %do.end15.i45 ]
  %red.0 = phi i8 [ %conv, %entry.if.end_crit_edge ], [ %conv9, %do.end9.i43.if.end_crit_edge ], [ %conv9, %do.end15.i45 ]
  %reg.0 = phi i16 [ -31212, %entry.if.end_crit_edge ], [ -31151, %do.end9.i43.if.end_crit_edge ], [ -31151, %do.end15.i45 ]
  %dev1.i47 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i47, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i48 = shl i32 %19, 8
  %or.i49 = or i32 %shl.i.i48, -2147483648
  %conv.i50 = zext i8 %red.0 to i16
  %call2.i51 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i49, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i50, i16 noundef zeroext %reg.0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp.i52 = icmp sgt i32 %20, 6
  br i1 %cmp.i52, label %do.end.i56, label %if.end.do.end9.i58_crit_edge

if.end.do.end9.i58_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i58

do.end.i56:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name.i53 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv5.i = zext i16 %reg.0 to i32
  %conv6.i54 = zext i8 %red.0 to i32
  %call7.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i53, i32 noundef %conv5.i, i32 noundef %conv6.i54) #8
  br label %do.end9.i58

do.end9.i58:                                      ; preds = %do.end.i56, %if.end.do.end9.i58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i51)
  %cmp10.i57 = icmp slt i32 %call2.i51, 0
  br i1 %cmp10.i57, label %do.end15.i60, label %do.end9.i58.reg_w_val.exit61_crit_edge

do.end9.i58.reg_w_val.exit61_crit_edge:           ; preds = %do.end9.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit61

do.end15.i60:                                     ; preds = %do.end9.i58
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i51) #8
  br label %reg_w_val.exit61

reg_w_val.exit61:                                 ; preds = %do.end15.i60, %do.end9.i58.reg_w_val.exit61_crit_edge
  %21 = or i16 %reg.0, 2
  %22 = ptrtoint ptr %dev1.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i47, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i63 = shl i32 %25, 8
  %or.i64 = or i32 %shl.i.i63, -2147483648
  %conv.i65 = zext i8 %blue.0 to i16
  %call2.i66 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i64, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i65, i16 noundef zeroext %21, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp.i67 = icmp sgt i32 %26, 6
  br i1 %cmp.i67, label %do.end.i72, label %reg_w_val.exit61.do.end9.i74_crit_edge

reg_w_val.exit61.do.end9.i74_crit_edge:           ; preds = %reg_w_val.exit61
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i74

do.end.i72:                                       ; preds = %reg_w_val.exit61
  call void @__sanitizer_cov_trace_pc() #7
  %name.i68 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv5.i69 = zext i16 %21 to i32
  %conv6.i70 = zext i8 %blue.0 to i32
  %call7.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i68, i32 noundef %conv5.i69, i32 noundef %conv6.i70) #8
  br label %do.end9.i74

do.end9.i74:                                      ; preds = %do.end.i72, %reg_w_val.exit61.do.end9.i74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i66)
  %cmp10.i73 = icmp slt i32 %call2.i66, 0
  br i1 %cmp10.i73, label %do.end15.i76, label %do.end9.i74.reg_w_val.exit77_crit_edge

do.end9.i74.reg_w_val.exit77_crit_edge:           ; preds = %do.end9.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit77

do.end15.i76:                                     ; preds = %do.end9.i74
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i66) #8
  br label %reg_w_val.exit77

reg_w_val.exit77:                                 ; preds = %do.end15.i76, %do.end9.i74.reg_w_val.exit77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_72a(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @rev72a_reset)
  tail call void @msleep(i32 noundef 200) #5
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @rev72a_init_data1)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 13, i16 noundef zeroext 1) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 24, i16 noundef zeroext 2) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 357, i16 noundef zeroext 4) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 5) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 170, i16 noundef zeroext 7) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 5380, i16 noundef zeroext 32) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 57) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext 53) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 4169, i16 noundef zeroext 9) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 11, i16 noundef zeroext 40) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 15, i16 noundef zeroext 59) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 60) #5
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @rev72a_init_data2)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 289, i16 noundef zeroext 3) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 357, i16 noundef zeroext 4) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 5) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 6) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 10) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 4193, i16 noundef zeroext 9) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext 53) #5
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 48, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i = icmp sgt i32 %5, 6
  br i1 %cmp.i, label %do.end.i, label %do.end2.do.end9.i_crit_edge

do.end2.do.end9.i_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 33042, i32 noundef 48) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.end2.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls_72a(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls_72a._key, ptr noundef nonnull @.str.19) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 32) #5
  %1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %1, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963779, i64 noundef 1, i64 noundef 127, i64 noundef 1, i64 noundef 64) #5
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %hue, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 32) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
  %autogain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %4 = ptrtoint ptr %autogain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %autogain, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start_72a(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @rev72a_reset)
  tail call void @msleep(i32 noundef 200) #5
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @rev72a_init_data1)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 13, i16 noundef zeroext 1) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 24, i16 noundef zeroext 2) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 357, i16 noundef zeroext 4) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 33, i16 noundef zeroext 5) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 170, i16 noundef zeroext 7) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 5380, i16 noundef zeroext 32) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 57) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext 53) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 4169, i16 noundef zeroext 9) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 11, i16 noundef zeroext 40) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 15, i16 noundef zeroext 59) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 60) #5
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
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 2171429, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %Clck.0 = select i1 %6, i8 %switch.masked, i8 39
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %Clck.0 to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -30976, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i = icmp sgt i32 %11, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end9.i_crit_edge

entry.do.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i = zext i8 %Clck.0 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 34560, i32 noundef %conv6.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %entry.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i24 = shl i32 %15, 8
  %or.i25 = or i32 %shl.i.i24, -2147483648
  %call2.i26 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i25, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 129, i16 noundef zeroext -30974, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.i27 = icmp sgt i32 %16, 6
  br i1 %cmp.i27, label %do.end.i30, label %reg_w_val.exit.do.end9.i32_crit_edge

reg_w_val.exit.do.end9.i32_crit_edge:             ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i32

do.end.i30:                                       ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i28, i32 noundef 34562, i32 noundef 129) #8
  br label %do.end9.i32

do.end9.i32:                                      ; preds = %do.end.i30, %reg_w_val.exit.do.end9.i32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26)
  %cmp10.i31 = icmp slt i32 %call2.i26, 0
  br i1 %cmp10.i31, label %do.end15.i34, label %do.end9.i32.reg_w_val.exit35_crit_edge

do.end9.i32.reg_w_val.exit35_crit_edge:           ; preds = %do.end9.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit35

do.end15.i34:                                     ; preds = %do.end9.i32
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i26) #8
  br label %reg_w_val.exit35

reg_w_val.exit35:                                 ; preds = %do.end15.i34, %do.end9.i32.reg_w_val.exit35_crit_edge
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i37 = shl i32 %20, 8
  %or.i38 = or i32 %shl.i.i37, -2147483648
  %21 = trunc i32 %5 to i16
  %conv.i39 = and i16 %21, 255
  %call2.i40 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i38, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i39, i16 noundef zeroext -31488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp.i41 = icmp sgt i32 %22, 6
  br i1 %cmp.i41, label %do.end.i45, label %reg_w_val.exit35.do.end9.i47_crit_edge

reg_w_val.exit35.do.end9.i47_crit_edge:           ; preds = %reg_w_val.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i47

do.end.i45:                                       ; preds = %reg_w_val.exit35
  call void @__sanitizer_cov_trace_pc() #7
  %name.i42 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i43 = and i32 %5, 255
  %call7.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i42, i32 noundef 34048, i32 noundef %conv6.i43) #8
  br label %do.end9.i47

do.end9.i47:                                      ; preds = %do.end.i45, %reg_w_val.exit35.do.end9.i47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i40)
  %cmp10.i46 = icmp slt i32 %call2.i40, 0
  br i1 %cmp10.i46, label %do.end15.i49, label %do.end9.i47.reg_w_val.exit50_crit_edge

do.end9.i47.reg_w_val.exit50_crit_edge:           ; preds = %do.end9.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit50

do.end15.i49:                                     ; preds = %do.end9.i47
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i40) #8
  br label %reg_w_val.exit50

reg_w_val.exit50:                                 ; preds = %do.end15.i49, %do.end9.i47.reg_w_val.exit50_crit_edge
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 289, i16 noundef zeroext 3) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 357, i16 noundef zeroext 4) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 47, i16 noundef zeroext 5) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 6) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 10) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 4193, i16 noundef zeroext 9) #5
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext 53) #5
  %23 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %hue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hue, align 4
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %25) #5
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 8
  %call6 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %27) #5
  tail call fastcc void @setwhite(ptr noundef %gspca_dev, i32 noundef %call, i32 noundef %call6)
  %autogain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %28 = ptrtoint ptr %autogain to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %autogain, align 8
  %call7 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i57 = icmp eq i32 %call7, 0
  %spec.select.i = select i1 %tobool.not.i57, i8 -1, i8 13
  %30 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select.i, ptr %30, align 2
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i59 = shl i32 %35, 8
  %or.i60 = or i32 %shl.i.i59, -2147483648
  %call2.i61 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i60, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 48, i16 noundef zeroext -32494, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp.i62 = icmp sgt i32 %36, 6
  br i1 %cmp.i62, label %do.end.i65, label %reg_w_val.exit50.do.end9.i67_crit_edge

reg_w_val.exit50.do.end9.i67_crit_edge:           ; preds = %reg_w_val.exit50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i67

do.end.i65:                                       ; preds = %reg_w_val.exit50
  call void @__sanitizer_cov_trace_pc() #7
  %name.i63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i63, i32 noundef 33042, i32 noundef 48) #8
  br label %do.end9.i67

do.end9.i67:                                      ; preds = %do.end.i65, %reg_w_val.exit50.do.end9.i67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i61)
  %cmp10.i66 = icmp slt i32 %call2.i61, 0
  br i1 %cmp10.i66, label %do.end15.i69, label %do.end9.i67.reg_w_val.exit70_crit_edge

do.end9.i67.reg_w_val.exit70_crit_edge:           ; preds = %do.end9.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit70

do.end15.i69:                                     ; preds = %do.end9.i67
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i61) #8
  br label %reg_w_val.exit70

reg_w_val.exit70:                                 ; preds = %do.end15.i69, %do.end9.i67.reg_w_val.exit70_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %0 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ag_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp slt i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add nsw i8 %1, -1
  %2 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dec, ptr %ag_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %ag_cnt, align 2
  %chip_revision = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %4 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cond = icmp eq i8 %5, 1
  br i1 %cond, label %sw.bb, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -31199, ptr noundef %11, i16 noundef zeroext 1, i32 noundef 500) #5
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i106 = shl i32 %19, 8
  %or2.i107 = or i32 %shl.i.i106, -2147483520
  %call3.i109 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i107, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -31198, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 500) #5
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i111 = shl i32 %27, 8
  %or2.i112 = or i32 %shl.i.i111, -2147483520
  %call3.i114 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or2.i112, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -31197, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #5
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i116 = shl i32 %35, 8
  %or2.i117 = or i32 %shl.i.i116, -2147483520
  %call3.i119 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or2.i117, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -31196, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #5
  %36 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %conv16 = zext i8 %23 to i32
  %mul = mul nuw nsw i32 %conv16, 77
  %conv17 = zext i8 %15 to i32
  %conv18 = zext i8 %39 to i32
  %add = add nuw nsw i32 %conv18, %conv17
  %mul19 = mul nuw nsw i32 %add, 75
  %conv21 = zext i8 %31 to i32
  %mul22 = mul nuw nsw i32 %conv21, 29
  %add20 = add nuw nsw i32 %mul22, %mul
  %add23 = add nuw nsw i32 %add20, %mul19
  %40 = add nsw i32 %add23, -33536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10496, i32 %40)
  %41 = icmp ult i32 %40, -10496
  br i1 %41, label %if.then33, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %42 = lshr i32 %add23, 8
  %call = tail call fastcc i32 @i2c_read(ptr noundef %gspca_dev, i16 noundef zeroext 9)
  %and = and i32 %call, 2047
  %call34 = tail call fastcc i32 @i2c_read(ptr noundef %gspca_dev, i16 noundef zeroext 53)
  %sub36 = sub nsw i32 110, %42
  %shr38 = ashr i32 %sub36, 4
  %add39 = add nsw i32 %and, %shr38
  %div.lhs.trunc = trunc i32 %sub36 to i16
  %div120 = sdiv i16 %div.lhs.trunc, 50
  %div.sext = sext i16 %div120 to i32
  %add42 = add i32 %call34, %div.sext
  %43 = tail call i32 @llvm.smax.i32(i32 %add42, i32 3)
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 63)
  %45 = trunc i32 %44 to i16
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext %45, i16 noundef zeroext 53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 598, i32 %add39)
  %cmp52 = icmp sgt i32 %add39, 598
  %46 = tail call i32 @llvm.smax.i32(i32 %add39, i32 3)
  %47 = trunc i32 %46 to i16
  %phi.cast104 = or i16 %47, 2048
  %expotimes.0 = select i1 %cmp52, i16 2646, i16 %phi.cast104
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext %expotimes.0, i16 noundef zeroext 9)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write(ptr noundef %gspca_dev, i16 noundef zeroext %value, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
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
  %conv.i = and i16 %reg, 255
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -30719, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end9.i_crit_edge

entry.do.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i = zext i16 %conv.i to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 34817, i32 noundef %conv6.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %entry.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i11 = shl i32 %8, 8
  %or.i12 = or i32 %shl.i.i11, -2147483648
  %conv.i13 = and i16 %value, 255
  %call2.i14 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i12, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i13, i16 noundef zeroext -30715, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i15 = icmp sgt i32 %9, 6
  br i1 %cmp.i15, label %do.end.i19, label %reg_w_val.exit.do.end9.i21_crit_edge

reg_w_val.exit.do.end9.i21_crit_edge:             ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i21

do.end.i19:                                       ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i16 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i17 = zext i16 %conv.i13 to i32
  %call7.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i16, i32 noundef 34821, i32 noundef %conv6.i17) #8
  br label %do.end9.i21

do.end9.i21:                                      ; preds = %do.end.i19, %reg_w_val.exit.do.end9.i21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14)
  %cmp10.i20 = icmp slt i32 %call2.i14, 0
  br i1 %cmp10.i20, label %do.end15.i23, label %do.end9.i21.reg_w_val.exit24_crit_edge

do.end9.i21.reg_w_val.exit24_crit_edge:           ; preds = %do.end9.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit24

do.end15.i23:                                     ; preds = %do.end9.i21
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i14) #8
  br label %reg_w_val.exit24

reg_w_val.exit24:                                 ; preds = %do.end15.i23, %do.end9.i21.reg_w_val.exit24_crit_edge
  %10 = lshr i16 %value, 8
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i26 = shl i32 %14, 8
  %or.i27 = or i32 %shl.i.i26, -2147483648
  %call2.i29 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i27, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %10, i16 noundef zeroext -30720, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.i30 = icmp sgt i32 %15, 6
  br i1 %cmp.i30, label %do.end.i34, label %reg_w_val.exit24.do.end9.i36_crit_edge

reg_w_val.exit24.do.end9.i36_crit_edge:           ; preds = %reg_w_val.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i36

do.end.i34:                                       ; preds = %reg_w_val.exit24
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i16 %10 to i32
  %name.i31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i31, i32 noundef 34816, i32 noundef %conv3) #8
  br label %do.end9.i36

do.end9.i36:                                      ; preds = %do.end.i34, %reg_w_val.exit24.do.end9.i36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29)
  %cmp10.i35 = icmp slt i32 %call2.i29, 0
  br i1 %cmp10.i35, label %do.end15.i38, label %do.end9.i36.reg_w_val.exit39_crit_edge

do.end9.i36.reg_w_val.exit39_crit_edge:           ; preds = %do.end9.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit39

do.end15.i38:                                     ; preds = %do.end9.i36
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i29) #8
  br label %reg_w_val.exit39

reg_w_val.exit39:                                 ; preds = %do.end15.i38, %do.end9.i36.reg_w_val.exit39_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %reg_w_val.exit39
  %retry.0 = phi i32 [ 60, %reg_w_val.exit39 ], [ %dec, %if.end.do.body_crit_edge ]
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i40 = shl i32 %19, 8
  %or2.i = or i32 %shl.i.i40, -2147483520
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -30717, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #5
  %22 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  tail call void @msleep(i32 noundef 10) #5
  %dec = add nsw i32 %retry.0, -1
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_read(ptr noundef %gspca_dev, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 146, i16 noundef zeroext -30716, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end9.i_crit_edge

entry.do.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 34820, i32 noundef 146) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %entry.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp10.i = icmp slt i32 %call2.i, 0
  br i1 %cmp10.i, label %do.end15.i, label %do.end9.i.reg_w_val.exit_crit_edge

do.end9.i.reg_w_val.exit_crit_edge:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit

do.end15.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i) #8
  br label %reg_w_val.exit

reg_w_val.exit:                                   ; preds = %do.end15.i, %do.end9.i.reg_w_val.exit_crit_edge
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i2 = shl i32 %8, 8
  %or.i3 = or i32 %shl.i.i2, -2147483648
  %conv.i = and i16 %reg, 255
  %call2.i4 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i3, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext -30719, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp.i5 = icmp sgt i32 %9, 6
  br i1 %cmp.i5, label %do.end.i8, label %reg_w_val.exit.do.end9.i10_crit_edge

reg_w_val.exit.do.end9.i10_crit_edge:             ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i10

do.end.i8:                                        ; preds = %reg_w_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i6 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i = zext i16 %conv.i to i32
  %call7.i7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i6, i32 noundef 34817, i32 noundef %conv6.i) #8
  br label %do.end9.i10

do.end9.i10:                                      ; preds = %do.end.i8, %reg_w_val.exit.do.end9.i10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i4)
  %cmp10.i9 = icmp slt i32 %call2.i4, 0
  br i1 %cmp10.i9, label %do.end15.i12, label %do.end9.i10.reg_w_val.exit13_crit_edge

do.end9.i10.reg_w_val.exit13_crit_edge:           ; preds = %do.end9.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit13

do.end15.i12:                                     ; preds = %do.end9.i10
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i4) #8
  br label %reg_w_val.exit13

reg_w_val.exit13:                                 ; preds = %do.end15.i12, %do.end9.i10.reg_w_val.exit13_crit_edge
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i15 = shl i32 %13, 8
  %or.i16 = or i32 %shl.i.i15, -2147483648
  %call2.i17 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i16, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext -30718, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i18 = icmp sgt i32 %14, 6
  br i1 %cmp.i18, label %do.end.i21, label %reg_w_val.exit13.do.end9.i23_crit_edge

reg_w_val.exit13.do.end9.i23_crit_edge:           ; preds = %reg_w_val.exit13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i23

do.end.i21:                                       ; preds = %reg_w_val.exit13
  call void @__sanitizer_cov_trace_pc() #7
  %name.i19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i19, i32 noundef 34818, i32 noundef 17) #8
  br label %do.end9.i23

do.end9.i23:                                      ; preds = %do.end.i21, %reg_w_val.exit13.do.end9.i23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i17)
  %cmp10.i22 = icmp slt i32 %call2.i17, 0
  br i1 %cmp10.i22, label %do.end15.i25, label %do.end9.i23.reg_w_val.exit26_crit_edge

do.end9.i23.reg_w_val.exit26_crit_edge:           ; preds = %do.end9.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w_val.exit26

do.end15.i25:                                     ; preds = %do.end9.i23
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call2.i17) #8
  br label %reg_w_val.exit26

reg_w_val.exit26:                                 ; preds = %do.end15.i25, %do.end9.i23.reg_w_val.exit26_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %reg_w_val.exit26
  %retry.0 = phi i32 [ 60, %reg_w_val.exit26 ], [ %dec, %if.end.do.body_crit_edge ]
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i27 = shl i32 %18, 8
  %or2.i = or i32 %shl.i.i27, -2147483520
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -30717, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #5
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i29 = shl i32 %28, 8
  %or2.i30 = or i32 %shl.i.i29, -2147483520
  %call3.i32 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or2.i30, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -30720, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #5
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i34 = shl i32 %36, 8
  %or2.i35 = or i32 %shl.i.i34, -2147483520
  %call3.i37 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or2.i35, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -30715, ptr noundef %30, i16 noundef zeroext 1, i32 noundef 500) #5
  %conv5 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %37 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %conv8 = zext i8 %40 to i32
  %or9 = or i32 %shl, %conv8
  br label %cleanup

if.end:                                           ; preds = %do.body
  tail call void @msleep(i32 noundef 10) #5
  %dec = add nsw i32 %retry.0, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %or9, %if.then ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca561.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca561.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca561.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca561__307_911_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca561__307_911_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca561.c", i32 911, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca561.c", i32 900, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca561.c", i32 899, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca561.c", i32 861, i32 30}
!17 = !{ptr @sd_desc_12a, !18, !"sd_desc_12a", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca561.c", i32 836, i32 29}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca561.c", i32 415, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_config._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_config._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sif_012a_mode, !26, !"sif_012a_mode", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/spca561.c", i32 44, i32 37}
!27 = !{ptr @sif_072a_mode, !28, !"sif_072a_mode", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/spca561.c", i32 67, i32 37}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/spca561.c", i32 437, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sd_init_12a._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @sd_init_12a._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/spca561.c", i32 284, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @reg_w_val._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @reg_w_val._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/spca561.c", i32 287, i32 3}
!41 = !{ptr @reg_w_val._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @reg_w_val._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @spca561_161rev12A_data1, !44, !"spca561_161rev12A_data1", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/spca561.c", i32 219, i32 20}
!45 = !{ptr @Pb100_1map8300, !46, !"Pb100_1map8300", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/spca561.c", i32 197, i32 20}
!47 = !{ptr @spca561_161rev12A_data2, !48, !"spca561_161rev12A_data2", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/spca561.c", i32 228, i32 20}
!49 = distinct !{null, !50, !"Pb100_2map8300", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/spca561.c", i32 212, i32 20}
!51 = !{ptr @sd_init_controls_12a._key, !52, !"_key", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/spca561.c", i32 794, i32 2}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/spca561.c", i32 805, i32 3}
!56 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sd_init_controls_12a._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sd_init_controls_12a._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @sd_ctrl_ops, !60, !"sd_ctrl_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/spca561.c", i32 785, i32 35}
!61 = distinct !{null, !62, !"Reg8391", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/spca561.c", i32 560, i32 20}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/spca561.c", i32 714, i32 4}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sd_pkt_scan._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sd_pkt_scan._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @sd_desc_72a, !69, !"sd_desc_72a", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/spca561.c", i32 848, i32 29}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/spca561.c", i32 443, i32 2}
!72 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sd_init_72a._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sd_init_72a._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @rev72a_reset, !76, !"rev72a_reset", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/spca561.c", i32 116, i32 18}
!77 = !{ptr @rev72a_init_data1, !78, !"rev72a_init_data1", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/spca561.c", i32 122, i32 20}
!79 = distinct !{null, !80, !"rev72a_init_sensor1", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/spca561.c", i32 131, i32 18}
!81 = !{ptr @rev72a_init_data2, !82, !"rev72a_init_data2", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/spca561.c", i32 146, i32 20}
!83 = distinct !{null, !84, !"rev72a_init_sensor2", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/spca561.c", i32 184, i32 18}
!85 = !{ptr @sd_init_controls_72a._key, !86, !"_key", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/spca561.c", i32 817, i32 2}
!87 = !{ptr @.str.19, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.20, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/spca561.c", i32 828, i32 3}
!90 = !{ptr @sd_init_controls_72a._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sd_init_controls_72a._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @device_table, !93, !"device_table", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/spca561.c", i32 867, i32 35}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
