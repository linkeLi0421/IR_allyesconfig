; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/etoms.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/etoms.c"
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
%struct.sd = type { %struct.gspca_dev, i8, i8, i8 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [65 x i8] c"gspca_etoms.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [48 x i8] c"gspca_etoms.description=Etoms USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_etoms.file=drivers/media/usb/gspca/gspca_etoms\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_etoms.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_etoms__307_782_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_etoms\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"etoms\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4140, i16 24913, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4140, i16 25169, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 825770306, i32 1, i32 176, i32 25344, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 825770306, i32 1, i32 352, i32 101376, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 825770306, i32 1, i32 320, i32 76800, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@Et_init1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Open Init1 ET\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Et_init1\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/etoms.c\00", [32 x i8] zeroinitializer }, align 32
@Et_init1._entry_ptr = internal global ptr @Et_init1._entry, section ".printk_index", align 4
@Et_init1._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Open mode %d Compression %d\0A\00", [61 x i8] zeroinitializer }, align 32
@Et_init1._entry_ptr.7 = internal global ptr @Et_init1._entry.5, section ".printk_index", align 4
@I2c2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\08\08\08\08\0D", [27 x i8] zeroinitializer }, align 32
@I2c3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\12\05", [30 x i8] zeroinitializer }, align 32
@I2c4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\08", [30 x i8] zeroinitializer }, align 32
@GainRGBG = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\80\80\80\80\00\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_r: buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: reg read [%02x] -> %02x ..\0A\00", [62 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.12 = internal global ptr @reg_r._entry.10, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_etoms: reg_w: buffer overflow\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: reg write [%02x] = %02x..\0A\00", [63 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.17 = internal global ptr @reg_w._entry.15, section ".printk_index", align 4
@__const.setcolors.I2cc = private unnamed_addr constant [5 x i8] c"\05\02\02\05\0D", align 1
@Et_init2.FormLine = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\84\03\14\F4\01\05", [26 x i8] zeroinitializer }, align 32
@Et_init2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Open Init2 ET\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Et_init2\00", [23 x i8] zeroinitializer }, align 32
@Et_init2._entry_ptr = internal global ptr @Et_init2._entry, section ".printk_index", align 4
@et_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: timeout video on/off\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"et_video\00", [23 x i8] zeroinitializer }, align 32
@et_video._entry_ptr = internal global ptr @et_video._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"etoms:724:(hdl)->_lock\00", [41 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_etoms: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@__const.setcontrast.RGBG = private unnamed_addr constant [6 x i8] c"\80\80\80\80\00\00", align 1
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: header packet found datalength %d !!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: G %d R %d G %d B %d\00", [38 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.29 = internal global ptr @sd_pkt_scan._entry.27, section ".printk_index", align 4
@do_autogain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Etoms luma G %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_autogain\00", [20 x i8] zeroinitializer }, align 32
@do_autogain._entry_ptr = internal global ptr @do_autogain._entry, section ".printk_index", align 4
@do_autogain._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Etoms Gbright %d\0A\00", [40 x i8] zeroinitializer }, align 32
@do_autogain._entry_ptr.34 = internal global ptr @do_autogain._entry.32, section ".printk_index", align 4
@Et_getgainG._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Etoms gain G %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Et_getgainG\00", [20 x i8] zeroinitializer }, align 32
@Et_getgainG._entry_ptr = internal global ptr @Et_getgainG._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963794]
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 770, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 782, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 771, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 754, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 742, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 44, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 31, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 444, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 456, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"I2c2\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 140, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant [5 x i8] c"I2c3\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 142, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"I2c4\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 144, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"GainRGBG\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 138, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 154, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 164, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 191, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 194, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"FormLine\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 270, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 272, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 263, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 724, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 714, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 735, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 667, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 669, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 646, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 650, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [35 x i8] c"../drivers/media/usb/gspca/etoms.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 597, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @Et_getgainG._entry, ptr @Et_getgainG._entry_ptr, ptr @Et_init1._entry, ptr @Et_init1._entry.5, ptr @Et_init1._entry_ptr, ptr @Et_init1._entry_ptr.7, ptr @Et_init2._entry, ptr @Et_init2._entry_ptr, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_etoms__307_782_sd_driver_init6, ptr @do_autogain._entry, ptr @do_autogain._entry.32, ptr @do_autogain._entry_ptr, ptr @do_autogain._entry_ptr.34, ptr @et_video._entry, ptr @et_video._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry.10, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.12, ptr @reg_w._entry, ptr @reg_w._entry.15, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.17, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.27, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.29, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sif_mode, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @I2c2, ptr @I2c3, ptr @I2c4, ptr @GainRGBG, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @Et_init2.FormLine, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @sd_init_controls._key, ptr @.str.22, ptr @sd_ctrl_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Et_init1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Et_init1._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @I2c2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @I2c3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @I2c4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GainRGBG to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Et_init2.FormLine to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Et_init2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @et_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_autogain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_autogain._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Et_getgainG._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %1 to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %sensor, align 1
  %conv3 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp = icmp eq i32 %conv3, 0
  %spec.select = select i1 %cmp, ptr @sif_mode, ptr @vga_mode
  %spec.select13 = select i1 %cmp, i8 2, i8 1
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %3 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %cam1, align 4
  %4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select13, ptr %4, align 4
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ag_cnt, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @Et_init1(ptr noundef %gspca_dev)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @Et_init2(ptr noundef %gspca_dev)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %5, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  tail call fastcc void @et_video(ptr noundef %gspca_dev, i32 noundef 0)
  ret i32 0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.22) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 1, i64 noundef 127, i64 noundef 1, i64 noundef 63) #6
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #9
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @Et_init1(ptr noundef %gspca_dev)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @Et_init2(ptr noundef %gspca_dev)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %autogain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %autogain.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autogain.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -1, i8 13
  %4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select.i, ptr %4, align 2
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %8 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %9, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %13 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 500) #6
  tail call fastcc void @et_video(ptr noundef %gspca_dev, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 63
  %and3 = shl nuw nsw i32 %conv, 2
  %shl = and i32 %and3, 768
  %arrayidx4 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %or = or i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %and)
  %cmp = icmp eq i32 %and, 63
  br i1 %cmp, label %do.body, label %if.end36

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp7 = icmp sgt i32 %4, 3
  br i1 %cmp7, label %do.body13, label %do.body.do.end35_crit_edge

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

do.body13:                                        ; preds = %do.body
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %or) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp14 = icmp sgt i32 %.pr, 3
  br i1 %cmp14, label %do.end19, label %do.body13.do.end35_crit_edge

do.body13.do.end35_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24 = getelementptr i8, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %6 to i32
  %arrayidx26 = getelementptr i8, ptr %data, i32 3
  %7 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %8 to i32
  %arrayidx28 = getelementptr i8, ptr %data, i32 4
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %10 to i32
  %arrayidx30 = getelementptr i8, ptr %data, i32 5
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %12 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31) #9
  br label %do.end35

do.end35:                                         ; preds = %do.end19, %do.body13.do.end35_crit_edge, %do.body.do.end35_crit_edge
  %add.ptr = getelementptr i8, ptr %data, i32 30
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %or) #6
  br label %cleanup

if.end36:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr38 = getelementptr i8, ptr %data, i32 8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr38, i32 noundef %or) #6
  br label %cleanup

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %13 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then37, %do.end35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @et_video(ptr noundef %gspca_dev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %gain.addr.i = alloca i8, align 1
  %i2cflags.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ag_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp slt i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %ag_cnt, align 2
  %sensor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %4 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7.Et_getgainG.exit_crit_edge

if.end7.Et_getgainG.exit_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %Et_getgainG.exit

if.then.i:                                        ; preds = %if.end7
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2.i = icmp sgt i32 %6, 1
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.do.end9.i_crit_edge

if.then.i.do.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv6.i = zext i8 %10 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i, i32 noundef %conv6.i) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %if.then.i.do.end9.i_crit_edge
  %usb_buf10.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf10.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %phi.cast172 = zext i8 %14 to i32
  br label %Et_getgainG.exit

Et_getgainG.exit:                                 ; preds = %do.end9.i, %if.end7.Et_getgainG.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast172, %do.end9.i ], [ 31, %if.end7.Et_getgainG.exit_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %18, 8
  %or4.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i168 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %19 = ptrtoint ptr %usb_buf.i168 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i168, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 57, ptr noundef %20, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp7.i = icmp sgt i32 %21, 5
  br i1 %cmp7.i, label %do.end12.i, label %Et_getgainG.exit.reg_r.exit_crit_edge

Et_getgainG.exit.reg_r.exit_crit_edge:            ; preds = %Et_getgainG.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end12.i:                                       ; preds = %Et_getgainG.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %usb_buf.i168 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i168, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv19.i = zext i8 %25 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i, i32 noundef 57, i32 noundef %conv19.i) #9
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end12.i, %Et_getgainG.exit.reg_r.exit_crit_edge
  %26 = ptrtoint ptr %usb_buf.i168 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i168, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv10 = zext i8 %29 to i32
  %arrayidx12 = getelementptr i8, ptr %27, i32 3
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %31 to i32
  %add = add nuw nsw i32 %conv13, %conv10
  %32 = lshr i32 %add, 1
  %arrayidx16 = getelementptr i8, ptr %27, i32 1
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr i8, ptr %27, i32 2
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %34 to i32
  %sub24 = mul nuw nsw i32 %conv19, 232
  %37 = lshr i32 %sub24, 10
  %38 = lshr i8 %36, 3
  %add38 = mul nuw nsw i32 %32, 672
  %39 = lshr i32 %add38, 10
  %conv44 = zext i8 %38 to i32
  %add43 = add nuw nsw i32 %37, %conv44
  %add45 = add nuw nsw i32 %add43, %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %40 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp65 = icmp sgt i32 %40, 3
  br i1 %cmp65, label %do.end, label %reg_r.exit.do.end73_crit_edge

reg_r.exit.do.end73_crit_edge:                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %add45) #9
  br label %do.end73

do.end73:                                         ; preds = %do.end, %reg_r.exit.do.end73_crit_edge
  %41 = add nsw i32 %add45, -149
  call void @__sanitizer_cov_trace_const_cmp4(i32 -41, i32 %41)
  %42 = icmp ult i32 %41, -41
  br i1 %42, label %if.then86, label %do.end73.cleanup_crit_edge

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then86:                                        ; preds = %do.end73
  %sub89 = sub nsw i32 128, %add45
  %shr91 = ashr i32 %sub89, 4
  %add92 = add nsw i32 %shr91, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add92)
  %cmp93 = icmp sgt i32 %add92, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add92)
  %cmp97 = icmp slt i32 %add92, 4
  %phi.cast = trunc i32 %add92 to i8
  %spec.select = select i1 %cmp97, i8 3, i8 %phi.cast
  %cond104 = select i1 %cmp93, i8 31, i8 %spec.select
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %43 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp108 = icmp sgt i32 %43, 3
  br i1 %cmp108, label %do.end113, label %if.then86.do.end121_crit_edge

if.then86.do.end121_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end121

do.end113:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  %conv106 = zext i8 %cond104 to i32
  %name116 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name116, i32 noundef %conv106) #9
  br label %do.end121

do.end121:                                        ; preds = %do.end113, %if.then86.do.end121_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %gain.addr.i)
  %44 = ptrtoint ptr %gain.addr.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %cond104, ptr %gain.addr.i, align 1
  %45 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp.i170 = icmp eq i8 %46, 0
  br i1 %cmp.i170, label %if.then.i171, label %do.end121.Et_setgainG.exit_crit_edge

do.end121.Et_setgainG.exit_crit_edge:             ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %Et_setgainG.exit

if.then.i171:                                     ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2cflags.i) #6
  %47 = ptrtoint ptr %i2cflags.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %i2cflags.i, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, ptr noundef nonnull %i2cflags.i, i32 noundef 1, i8 noundef zeroext 3) #6
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 14, ptr noundef nonnull %gain.addr.i, i32 noundef 1, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2cflags.i) #6
  br label %Et_setgainG.exit

Et_setgainG.exit:                                 ; preds = %if.then.i171, %do.end121.Et_setgainG.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %gain.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %Et_setgainG.exit, %do.end73.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @Et_init1(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %I2cc.i = alloca [5 x i8], align 1
  %i2cflags.i = alloca i8, align 1
  %value = alloca i8, align 1
  %I2c0 = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %I2c0) #6
  %0 = ptrtoint ptr %I2c0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 725648459108974848, ptr %I2c0, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 7, ptr %5, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i116 = shl i32 %13, 8
  %or4.i = or i32 %shl.i.i116, -2147483520
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp7.i = icmp sgt i32 %16, 5
  br i1 %cmp7.i, label %do.end12.i, label %do.end3.reg_r.exit_crit_edge

do.end3.reg_r.exit_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end12.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv19.i = zext i8 %20 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i, i32 noundef 6, i32 noundef %conv19.i) #9
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end12.i, %do.end3.reg_r.exit_crit_edge
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %24, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %22, align 8
  %shl.i.i120 = shl i32 %27, 8
  %or.i121 = or i32 %shl.i.i120, -2147483648
  %28 = load ptr, ptr %usb_buf.i, align 4
  %call3.i122 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i121, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #6
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i, align 4
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %32, align 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %30, align 8
  %shl.i.i125 = shl i32 %35, 8
  %or.i126 = or i32 %shl.i.i125, -2147483648
  %36 = load ptr, ptr %usb_buf.i, align 4
  %call3.i127 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i126, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #6
  %37 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1.i, align 4
  %39 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_buf.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %40, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %38, align 8
  %shl.i.i130 = shl i32 %43, 8
  %or.i131 = or i32 %shl.i.i130, -2147483648
  %44 = load ptr, ptr %usb_buf.i, align 4
  %call3.i132 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i131, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %44, i16 noundef zeroext 1, i32 noundef 500) #6
  %45 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i, align 4
  %47 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 25, ptr %48, align 1
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %46, align 8
  %shl.i.i135 = shl i32 %51, 8
  %or.i136 = or i32 %shl.i.i135, -2147483648
  %52 = load ptr, ptr %usb_buf.i, align 4
  %call3.i137 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i136, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %52, i16 noundef zeroext 1, i32 noundef 500) #6
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %53 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %55 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %56 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %54, i32 %conv, i32 7
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not = icmp eq i32 %58, 0
  %. = select i1 %tobool.not, i8 2, i8 3
  %59 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %., ptr %value, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp7 = icmp sgt i32 %60, 2
  br i1 %cmp7, label %do.end12, label %reg_r.exit.do.end27_crit_edge

reg_r.exit.do.end27_crit_edge:                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end27

do.end12:                                         ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv23 = zext i8 %. to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15, i32 noundef %58, i32 noundef %conv23) #9
  br label %do.end27

do.end27:                                         ; preds = %do.end12, %reg_r.exit.do.end27_crit_edge
  %61 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1.i, align 4
  %63 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_buf.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %., ptr %64, align 1
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %62, align 8
  %shl.i.i140 = shl i32 %67, 8
  %or.i141 = or i32 %shl.i.i140, -2147483648
  %68 = load ptr, ptr %usb_buf.i, align 4
  %call3.i142 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i141, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %68, i16 noundef zeroext 1, i32 noundef 500) #6
  %69 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1.i, align 4
  %71 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 29, ptr %72, align 1
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %70, align 8
  %shl.i.i145 = shl i32 %75, 8
  %or.i146 = or i32 %shl.i.i145, -2147483648
  %76 = load ptr, ptr %usb_buf.i, align 4
  %call3.i147 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or.i146, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 19, ptr noundef %76, i16 noundef zeroext 1, i32 noundef 500) #6
  %77 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1.i, align 4
  %79 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb_buf.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %80, align 1
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %78, align 8
  %shl.i.i150 = shl i32 %83, 8
  %or.i151 = or i32 %shl.i.i150, -2147483648
  %84 = load ptr, ptr %usb_buf.i, align 4
  %call3.i152 = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i151, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef %84, i16 noundef zeroext 1, i32 noundef 500) #6
  %85 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev1.i, align 4
  %87 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %usb_buf.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %88, align 1
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %86, align 8
  %shl.i.i155 = shl i32 %91, 8
  %or.i156 = or i32 %shl.i.i155, -2147483648
  %92 = load ptr, ptr %usb_buf.i, align 4
  %call3.i157 = tail call i32 @usb_control_msg(ptr noundef %86, i32 noundef %or.i156, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 29, ptr noundef %92, i16 noundef zeroext 1, i32 noundef 500) #6
  %93 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1.i, align 4
  %95 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_buf.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %96, align 1
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %94, align 8
  %shl.i.i160 = shl i32 %99, 8
  %or.i161 = or i32 %shl.i.i160, -2147483648
  %100 = load ptr, ptr %usb_buf.i, align 4
  %call3.i162 = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i161, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef %100, i16 noundef zeroext 1, i32 noundef 500) #6
  %101 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev1.i, align 4
  %103 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %usb_buf.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -1, ptr %104, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %102, align 8
  %shl.i.i165 = shl i32 %107, 8
  %or.i166 = or i32 %shl.i.i165, -2147483648
  %108 = load ptr, ptr %usb_buf.i, align 4
  %call3.i167 = tail call i32 @usb_control_msg(ptr noundef %102, i32 noundef %or.i166, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 31, ptr noundef %108, i16 noundef zeroext 1, i32 noundef 500) #6
  %109 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev1.i, align 4
  %111 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %usb_buf.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 53, ptr %112, align 1
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %110, align 8
  %shl.i.i170 = shl i32 %115, 8
  %or.i171 = or i32 %shl.i.i170, -2147483648
  %116 = load ptr, ptr %usb_buf.i, align 4
  %call3.i172 = tail call i32 @usb_control_msg(ptr noundef %110, i32 noundef %or.i171, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef %116, i16 noundef zeroext 1, i32 noundef 500) #6
  %117 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev1.i, align 4
  %119 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %usb_buf.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %120, align 1
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %118, align 8
  %shl.i.i175 = shl i32 %123, 8
  %or.i176 = or i32 %shl.i.i175, -2147483648
  %124 = load ptr, ptr %usb_buf.i, align 4
  %call3.i177 = tail call i32 @usb_control_msg(ptr noundef %118, i32 noundef %or.i176, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %124, i16 noundef zeroext 1, i32 noundef 500) #6
  %125 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev1.i, align 4
  %127 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %usb_buf.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %128, align 1
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %126, align 8
  %shl.i.i180 = shl i32 %131, 8
  %or.i181 = or i32 %shl.i.i180, -2147483648
  %132 = load ptr, ptr %usb_buf.i, align 4
  %call3.i182 = tail call i32 @usb_control_msg(ptr noundef %126, i32 noundef %or.i181, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 34, ptr noundef %132, i16 noundef zeroext 1, i32 noundef 500) #6
  %133 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev1.i, align 4
  %135 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usb_buf.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -9, ptr %136, align 1
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %134, align 8
  %shl.i.i185 = shl i32 %139, 8
  %or.i186 = or i32 %shl.i.i185, -2147483648
  %140 = load ptr, ptr %usb_buf.i, align 4
  %call3.i187 = tail call i32 @usb_control_msg(ptr noundef %134, i32 noundef %or.i186, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef %140, i16 noundef zeroext 1, i32 noundef 500) #6
  %141 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev1.i, align 4
  %143 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %usb_buf.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -1, ptr %144, align 1
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %142, align 8
  %shl.i.i190 = shl i32 %147, 8
  %or.i191 = or i32 %shl.i.i190, -2147483648
  %148 = load ptr, ptr %usb_buf.i, align 4
  %call3.i192 = tail call i32 @usb_control_msg(ptr noundef %142, i32 noundef %or.i191, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef %148, i16 noundef zeroext 1, i32 noundef 500) #6
  %149 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev1.i, align 4
  %151 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_buf.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 7, ptr %152, align 1
  %154 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %150, align 8
  %shl.i.i195 = shl i32 %155, 8
  %or.i196 = or i32 %shl.i.i195, -2147483648
  %156 = load ptr, ptr %usb_buf.i, align 4
  %call3.i197 = tail call i32 @usb_control_msg(ptr noundef %150, i32 noundef %or.i196, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 37, ptr noundef %156, i16 noundef zeroext 1, i32 noundef 500) #6
  %157 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev1.i, align 4
  %159 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %usb_buf.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -128, ptr %160, align 1
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %158, align 8
  %shl.i.i200 = shl i32 %163, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %164 = load ptr, ptr %usb_buf.i, align 4
  %call3.i202 = tail call i32 @usb_control_msg(ptr noundef %158, i32 noundef %or.i201, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef %164, i16 noundef zeroext 1, i32 noundef 500) #6
  %165 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev1.i, align 4
  %167 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %usb_buf.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -128, ptr %168, align 1
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %166, align 8
  %shl.i.i205 = shl i32 %171, 8
  %or.i206 = or i32 %shl.i.i205, -2147483648
  %172 = load ptr, ptr %usb_buf.i, align 4
  %call3.i207 = tail call i32 @usb_control_msg(ptr noundef %166, i32 noundef %or.i206, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 78, ptr noundef %172, i16 noundef zeroext 1, i32 noundef 500) #6
  %173 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev1.i, align 4
  %175 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %usb_buf.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -128, ptr %176, align 1
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %174, align 8
  %shl.i.i210 = shl i32 %179, 8
  %or.i211 = or i32 %shl.i.i210, -2147483648
  %180 = load ptr, ptr %usb_buf.i, align 4
  %call3.i212 = tail call i32 @usb_control_msg(ptr noundef %174, i32 noundef %or.i211, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 79, ptr noundef %180, i16 noundef zeroext 1, i32 noundef 500) #6
  %181 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev1.i, align 4
  %183 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %usb_buf.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -128, ptr %184, align 1
  %186 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %182, align 8
  %shl.i.i215 = shl i32 %187, 8
  %or.i216 = or i32 %shl.i.i215, -2147483648
  %188 = load ptr, ptr %usb_buf.i, align 4
  %call3.i217 = tail call i32 @usb_control_msg(ptr noundef %182, i32 noundef %or.i216, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 80, ptr noundef %188, i16 noundef zeroext 1, i32 noundef 500) #6
  %189 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev1.i, align 4
  %191 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %usb_buf.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %192, align 1
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %190, align 8
  %shl.i.i220 = shl i32 %195, 8
  %or.i221 = or i32 %shl.i.i220, -2147483648
  %196 = load ptr, ptr %usb_buf.i, align 4
  %call3.i222 = tail call i32 @usb_control_msg(ptr noundef %190, i32 noundef %or.i221, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef %196, i16 noundef zeroext 1, i32 noundef 500) #6
  %197 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev1.i, align 4
  %199 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %usb_buf.i, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %200, align 1
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %198, align 8
  %shl.i.i225 = shl i32 %203, 8
  %or.i226 = or i32 %shl.i.i225, -2147483648
  %204 = load ptr, ptr %usb_buf.i, align 4
  %call3.i227 = tail call i32 @usb_control_msg(ptr noundef %198, i32 noundef %or.i226, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 82, ptr noundef %204, i16 noundef zeroext 1, i32 noundef 500) #6
  %205 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev1.i, align 4
  %207 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %usb_buf.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -16, ptr %208, align 1
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %206, align 8
  %shl.i.i230 = shl i32 %211, 8
  %or.i231 = or i32 %shl.i.i230, -2147483648
  %212 = load ptr, ptr %usb_buf.i, align 4
  %call3.i232 = tail call i32 @usb_control_msg(ptr noundef %206, i32 noundef %or.i231, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 104, ptr noundef %212, i16 noundef zeroext 1, i32 noundef 500) #6
  %213 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev1.i, align 4
  %215 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %usb_buf.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 86, ptr %216, align 1
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %214, align 8
  %shl.i.i235 = shl i32 %219, 8
  %or.i236 = or i32 %shl.i.i235, -2147483648
  %220 = load ptr, ptr %usb_buf.i, align 4
  %call3.i237 = tail call i32 @usb_control_msg(ptr noundef %214, i32 noundef %or.i236, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 105, ptr noundef %220, i16 noundef zeroext 1, i32 noundef 500) #6
  %221 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev1.i, align 4
  %223 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %usb_buf.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 5, ptr %224, align 1
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %222, align 8
  %shl.i.i240 = shl i32 %227, 8
  %or.i241 = or i32 %shl.i.i240, -2147483648
  %228 = load ptr, ptr %usb_buf.i, align 4
  %call3.i242 = tail call i32 @usb_control_msg(ptr noundef %222, i32 noundef %or.i241, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 106, ptr noundef %228, i16 noundef zeroext 1, i32 noundef 500) #6
  %229 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev1.i, align 4
  %231 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %usb_buf.i, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 96, ptr %232, align 1
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %230, align 8
  %shl.i.i245 = shl i32 %235, 8
  %or.i246 = or i32 %shl.i.i245, -2147483648
  %236 = load ptr, ptr %usb_buf.i, align 4
  %call3.i247 = tail call i32 @usb_control_msg(ptr noundef %230, i32 noundef %or.i246, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 107, ptr noundef %236, i16 noundef zeroext 1, i32 noundef 500) #6
  %237 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev1.i, align 4
  %239 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %usb_buf.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 32, ptr %240, align 1
  %242 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %238, align 8
  %shl.i.i250 = shl i32 %243, 8
  %or.i251 = or i32 %shl.i.i250, -2147483648
  %244 = load ptr, ptr %usb_buf.i, align 4
  %call3.i252 = tail call i32 @usb_control_msg(ptr noundef %238, i32 noundef %or.i251, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 108, ptr noundef %244, i16 noundef zeroext 1, i32 noundef 500) #6
  %245 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev1.i, align 4
  %247 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %usb_buf.i, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 80, ptr %248, align 1
  %250 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %246, align 8
  %shl.i.i255 = shl i32 %251, 8
  %or.i256 = or i32 %shl.i.i255, -2147483648
  %252 = load ptr, ptr %usb_buf.i, align 4
  %call3.i257 = tail call i32 @usb_control_msg(ptr noundef %246, i32 noundef %or.i256, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 109, ptr noundef %252, i16 noundef zeroext 1, i32 noundef 500) #6
  %253 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev1.i, align 4
  %255 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %usb_buf.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 -122, ptr %256, align 1
  %258 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %254, align 8
  %shl.i.i260 = shl i32 %259, 8
  %or.i261 = or i32 %shl.i.i260, -2147483648
  %260 = load ptr, ptr %usb_buf.i, align 4
  %call3.i262 = tail call i32 @usb_control_msg(ptr noundef %254, i32 noundef %or.i261, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 110, ptr noundef %260, i16 noundef zeroext 1, i32 noundef 500) #6
  %261 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev1.i, align 4
  %263 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %usb_buf.i, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %264, align 1
  %266 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %262, align 8
  %shl.i.i265 = shl i32 %267, 8
  %or.i266 = or i32 %shl.i.i265, -2147483648
  %268 = load ptr, ptr %usb_buf.i, align 4
  %call3.i267 = tail call i32 @usb_control_msg(ptr noundef %262, i32 noundef %or.i266, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 111, ptr noundef %268, i16 noundef zeroext 1, i32 noundef 500) #6
  %269 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dev1.i, align 4
  %271 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %usb_buf.i, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -122, ptr %272, align 1
  %274 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %270, align 8
  %shl.i.i270 = shl i32 %275, 8
  %or.i271 = or i32 %shl.i.i270, -2147483648
  %276 = load ptr, ptr %usb_buf.i, align 4
  %call3.i272 = tail call i32 @usb_control_msg(ptr noundef %270, i32 noundef %or.i271, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef %276, i16 noundef zeroext 1, i32 noundef 500) #6
  %277 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dev1.i, align 4
  %279 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %usb_buf.i, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 20, ptr %280, align 1
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %278, align 8
  %shl.i.i275 = shl i32 %283, 8
  %or.i276 = or i32 %shl.i.i275, -2147483648
  %284 = load ptr, ptr %usb_buf.i, align 4
  %call3.i277 = tail call i32 @usb_control_msg(ptr noundef %278, i32 noundef %or.i276, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 113, ptr noundef %284, i16 noundef zeroext 1, i32 noundef 500) #6
  %285 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev1.i, align 4
  %287 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %usb_buf.i, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %288, align 1
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %286, align 8
  %shl.i.i280 = shl i32 %291, 8
  %or.i281 = or i32 %shl.i.i280, -2147483648
  %292 = load ptr, ptr %usb_buf.i, align 4
  %call3.i282 = tail call i32 @usb_control_msg(ptr noundef %286, i32 noundef %or.i281, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 114, ptr noundef %292, i16 noundef zeroext 1, i32 noundef 500) #6
  %293 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev1.i, align 4
  %295 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %usb_buf.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 0, ptr %296, align 1
  %298 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %294, align 8
  %shl.i.i285 = shl i32 %299, 8
  %or.i286 = or i32 %shl.i.i285, -2147483648
  %300 = load ptr, ptr %usb_buf.i, align 4
  %call3.i287 = tail call i32 @usb_control_msg(ptr noundef %294, i32 noundef %or.i286, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 115, ptr noundef %300, i16 noundef zeroext 1, i32 noundef 500) #6
  %301 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev1.i, align 4
  %303 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %usb_buf.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 0, ptr %304, align 1
  %306 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %302, align 8
  %shl.i.i290 = shl i32 %307, 8
  %or.i291 = or i32 %shl.i.i290, -2147483648
  %308 = load ptr, ptr %usb_buf.i, align 4
  %call3.i292 = tail call i32 @usb_control_msg(ptr noundef %302, i32 noundef %or.i291, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 116, ptr noundef %308, i16 noundef zeroext 1, i32 noundef 500) #6
  %309 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev1.i, align 4
  %311 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %usb_buf.i, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 10, ptr %312, align 1
  %314 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %310, align 8
  %shl.i.i295 = shl i32 %315, 8
  %or.i296 = or i32 %shl.i.i295, -2147483648
  %316 = load ptr, ptr %usb_buf.i, align 4
  %call3.i297 = tail call i32 @usb_control_msg(ptr noundef %310, i32 noundef %or.i296, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 117, ptr noundef %316, i16 noundef zeroext 1, i32 noundef 500) #6
  %317 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev1.i, align 4
  %319 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %usb_buf.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 4, ptr %320, align 1
  %322 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %318, align 8
  %shl.i.i300 = shl i32 %323, 8
  %or.i301 = or i32 %shl.i.i300, -2147483648
  %324 = load ptr, ptr %usb_buf.i, align 4
  %call3.i302 = tail call i32 @usb_control_msg(ptr noundef %318, i32 noundef %or.i301, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 140, ptr noundef %324, i16 noundef zeroext 1, i32 noundef 500) #6
  %325 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dev1.i, align 4
  %327 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %usb_buf.i, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 1, ptr %328, align 1
  %330 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %326, align 8
  %shl.i.i305 = shl i32 %331, 8
  %or.i306 = or i32 %shl.i.i305, -2147483648
  %332 = load ptr, ptr %usb_buf.i, align 4
  %call3.i307 = tail call i32 @usb_control_msg(ptr noundef %326, i32 noundef %or.i306, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %332, i16 noundef zeroext 1, i32 noundef 500) #6
  %333 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cam, align 4
  %335 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %curr_mode, align 1
  %conv31 = zext i8 %336 to i32
  %priv33 = getelementptr %struct.v4l2_pix_format, ptr %334, i32 %conv31, i32 7
  %337 = ptrtoint ptr %priv33 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %priv33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool34.not = icmp eq i32 %338, 0
  br i1 %tobool34.not, label %if.else43, label %if.then35

if.then35:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %339 = ptrtoint ptr %I2c0 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 6, ptr %I2c0, align 8
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 2, ptr noundef nonnull %I2c0, i32 noundef 8, i8 noundef zeroext 1)
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 9, ptr noundef nonnull @I2c2, i32 noundef 5, i8 noundef zeroext 1)
  br label %if.end51

if.else43:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %I2c0 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 10, ptr %I2c0, align 8
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 2, ptr noundef nonnull %I2c0, i32 noundef 8, i8 noundef zeroext 1)
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 9, ptr noundef nonnull @I2c2, i32 noundef 5, i8 noundef zeroext 1)
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.then35
  %storemerge = phi i8 [ 6, %if.then35 ], [ 10, %if.else43 ]
  %341 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %storemerge, ptr %value, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 2, ptr noundef nonnull %value, i32 noundef 1, i8 noundef zeroext 1)
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 3, ptr noundef nonnull @I2c3, i32 noundef 2, i8 noundef zeroext 1)
  %342 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 4, ptr %value, align 1
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 14, ptr noundef nonnull %value, i32 noundef 1, i8 noundef zeroext 1)
  tail call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 7, ptr noundef nonnull @I2c4, i32 noundef 2, i8 noundef zeroext 1)
  %343 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %345 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %345)
  %cmp4.i = icmp sgt i32 %345, 6
  br i1 %cmp4.i, label %do.end9.i, label %if.end51.reg_w.exit_crit_edge

if.end51.reg_w.exit_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end9.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef 77, i32 noundef 128) #9
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %if.end51.reg_w.exit_crit_edge
  %346 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %usb_buf.i, align 4
  %348 = call ptr @memcpy(ptr %347, ptr @GainRGBG, i32 6)
  %349 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %344, align 8
  %shl.i.i310 = shl i32 %350, 8
  %or.i311 = or i32 %shl.i.i310, -2147483648
  %351 = load ptr, ptr %usb_buf.i, align 4
  %call20.i312 = tail call i32 @usb_control_msg(ptr noundef %344, i32 noundef %or.i311, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef %351, i16 noundef zeroext 6, i32 noundef 500) #6
  %sensor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %352 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %cmp.i = icmp eq i8 %353, 0
  br i1 %cmp.i, label %if.then.i, label %reg_w.exit.getcolors.exit_crit_edge

reg_w.exit.getcolors.exit_crit_edge:              ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %getcolors.exit

if.then.i:                                        ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 12) #6
  %354 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %usb_buf.i, align 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %355, align 1
  %358 = and i8 %357, 15
  br label %getcolors.exit

getcolors.exit:                                   ; preds = %if.then.i, %reg_w.exit.getcolors.exit_crit_edge
  %retval.0.i = phi i8 [ %358, %if.then.i ], [ 0, %reg_w.exit.getcolors.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %I2cc.i) #6
  %359 = call ptr @memcpy(ptr %I2cc.i, ptr @__const.setcolors.I2cc, i32 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2cflags.i) #6
  %360 = ptrtoint ptr %i2cflags.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 1, ptr %i2cflags.i, align 1
  %arrayidx.i = getelementptr inbounds [5 x i8], ptr %I2cc.i, i32 0, i32 3
  %361 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %retval.0.i, ptr %arrayidx.i, align 1
  %conv1.i = xor i8 %retval.0.i, 15
  %362 = ptrtoint ptr %I2cc.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv1.i, ptr %I2cc.i, align 1
  %363 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %cmp.i315 = icmp eq i8 %364, 0
  br i1 %cmp.i315, label %if.then.i316, label %getcolors.exit.setcolors.exit_crit_edge

getcolors.exit.setcolors.exit_crit_edge:          ; preds = %getcolors.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %setcolors.exit

if.then.i316:                                     ; preds = %getcolors.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 19, ptr noundef nonnull %i2cflags.i, i32 noundef 1, i8 noundef zeroext 3) #6
  call fastcc void @i2c_w(ptr noundef %gspca_dev, i8 noundef zeroext 9, ptr noundef nonnull %I2cc.i, i32 noundef 5, i8 noundef zeroext 1) #6
  br label %setcolors.exit

setcolors.exit:                                   ; preds = %if.then.i316, %getcolors.exit.setcolors.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2cflags.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %I2cc.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %I2c0) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @Et_init2(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 47, ptr %4, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %8 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %8, i16 noundef zeroext 1, i32 noundef 500) #6
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %12, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 8
  %shl.i.i92 = shl i32 %15, 8
  %or.i93 = or i32 %shl.i.i92, -2147483648
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call3.i94 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i93, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef %16, i16 noundef zeroext 1, i32 noundef 500) #6
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i96 = shl i32 %20, 8
  %or4.i = or i32 %shl.i.i96, -2147483520
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp7.i = icmp sgt i32 %23, 5
  br i1 %cmp7.i, label %do.end12.i, label %do.end3.reg_r.exit_crit_edge

do.end3.reg_r.exit_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end12.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv19.i = zext i8 %27 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i, i32 noundef 6, i32 noundef %conv19.i) #9
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end12.i, %do.end3.reg_r.exit_crit_edge
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i, align 4
  %30 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 20, ptr %31, align 1
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %29, align 8
  %shl.i.i100 = shl i32 %34, 8
  %or.i101 = or i32 %shl.i.i100, -2147483648
  %35 = load ptr, ptr %usb_buf.i, align 4
  %call3.i102 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i101, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %35, i16 noundef zeroext 1, i32 noundef 500) #6
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i, align 4
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 27, ptr %39, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %37, align 8
  %shl.i.i105 = shl i32 %42, 8
  %or.i106 = or i32 %shl.i.i105, -2147483648
  %43 = load ptr, ptr %usb_buf.i, align 4
  %call3.i107 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i106, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %43, i16 noundef zeroext 1, i32 noundef 500) #6
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %44 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %46 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %47 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %45, i32 %conv, i32 7
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  %. = select i1 %tobool.not, i8 2, i8 3
  %50 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1.i, align 4
  %52 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %., ptr %53, align 1
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %51, align 8
  %shl.i.i110 = shl i32 %56, 8
  %or.i111 = or i32 %shl.i.i110, -2147483648
  %57 = load ptr, ptr %usb_buf.i, align 4
  %call3.i112 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i111, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %57, i16 noundef zeroext 1, i32 noundef 500) #6
  %58 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i, align 4
  %60 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 31, ptr %61, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %59, align 8
  %shl.i.i115 = shl i32 %64, 8
  %or.i116 = or i32 %shl.i.i115, -2147483648
  %65 = load ptr, ptr %usb_buf.i, align 4
  %call3.i117 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i116, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 19, ptr noundef %65, i16 noundef zeroext 1, i32 noundef 500) #6
  %66 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i, align 4
  %68 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb_buf.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %69, align 1
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %67, align 8
  %shl.i.i120 = shl i32 %72, 8
  %or.i121 = or i32 %shl.i.i120, -2147483648
  %73 = load ptr, ptr %usb_buf.i, align 4
  %call3.i122 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i121, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef %73, i16 noundef zeroext 1, i32 noundef 500) #6
  %74 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i, align 4
  %76 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %77, align 1
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %75, align 8
  %shl.i.i125 = shl i32 %80, 8
  %or.i126 = or i32 %shl.i.i125, -2147483648
  %81 = load ptr, ptr %usb_buf.i, align 4
  %call3.i127 = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i126, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 29, ptr noundef %81, i16 noundef zeroext 1, i32 noundef 500) #6
  %82 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i, align 4
  %84 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %85, align 1
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %83, align 8
  %shl.i.i130 = shl i32 %88, 8
  %or.i131 = or i32 %shl.i.i130, -2147483648
  %89 = load ptr, ptr %usb_buf.i, align 4
  %call3.i132 = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i131, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef %89, i16 noundef zeroext 1, i32 noundef 500) #6
  %90 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1.i, align 4
  %92 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_buf.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %93, align 1
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %91, align 8
  %shl.i.i135 = shl i32 %96, 8
  %or.i136 = or i32 %shl.i.i135, -2147483648
  %97 = load ptr, ptr %usb_buf.i, align 4
  %call3.i137 = tail call i32 @usb_control_msg(ptr noundef %91, i32 noundef %or.i136, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 31, ptr noundef %97, i16 noundef zeroext 1, i32 noundef 500) #6
  %98 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1.i, align 4
  %100 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_buf.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 53, ptr %101, align 1
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %99, align 8
  %shl.i.i140 = shl i32 %104, 8
  %or.i141 = or i32 %shl.i.i140, -2147483648
  %105 = load ptr, ptr %usb_buf.i, align 4
  %call3.i142 = tail call i32 @usb_control_msg(ptr noundef %99, i32 noundef %or.i141, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef %105, i16 noundef zeroext 1, i32 noundef 500) #6
  %106 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev1.i, align 4
  %108 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %usb_buf.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %109, align 1
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %107, align 8
  %shl.i.i145 = shl i32 %112, 8
  %or.i146 = or i32 %shl.i.i145, -2147483648
  %113 = load ptr, ptr %usb_buf.i, align 4
  %call3.i147 = tail call i32 @usb_control_msg(ptr noundef %107, i32 noundef %or.i146, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %113, i16 noundef zeroext 1, i32 noundef 500) #6
  %114 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev1.i, align 4
  %116 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb_buf.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %117, align 1
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %115, align 8
  %shl.i.i150 = shl i32 %120, 8
  %or.i151 = or i32 %shl.i.i150, -2147483648
  %121 = load ptr, ptr %usb_buf.i, align 4
  %call3.i152 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %or.i151, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 34, ptr noundef %121, i16 noundef zeroext 1, i32 noundef 500) #6
  %122 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev1.i, align 4
  %124 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usb_buf.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -1, ptr %125, align 1
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %123, align 8
  %shl.i.i155 = shl i32 %128, 8
  %or.i156 = or i32 %shl.i.i155, -2147483648
  %129 = load ptr, ptr %usb_buf.i, align 4
  %call3.i157 = tail call i32 @usb_control_msg(ptr noundef %123, i32 noundef %or.i156, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef %129, i16 noundef zeroext 1, i32 noundef 500) #6
  %130 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev1.i, align 4
  %132 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %usb_buf.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %133, align 1
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %131, align 8
  %shl.i.i160 = shl i32 %136, 8
  %or.i161 = or i32 %shl.i.i160, -2147483648
  %137 = load ptr, ptr %usb_buf.i, align 4
  %call3.i162 = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or.i161, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef %137, i16 noundef zeroext 1, i32 noundef 500) #6
  %138 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev1.i, align 4
  %140 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %usb_buf.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 15, ptr %141, align 1
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %139, align 8
  %shl.i.i165 = shl i32 %144, 8
  %or.i166 = or i32 %shl.i.i165, -2147483648
  %145 = load ptr, ptr %usb_buf.i, align 4
  %call3.i167 = tail call i32 @usb_control_msg(ptr noundef %139, i32 noundef %or.i166, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 37, ptr noundef %145, i16 noundef zeroext 1, i32 noundef 500) #6
  %146 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev1.i, align 4
  %148 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %usb_buf.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 17, ptr %149, align 1
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %147, align 8
  %shl.i.i170 = shl i32 %152, 8
  %or.i171 = or i32 %shl.i.i170, -2147483648
  %153 = load ptr, ptr %usb_buf.i, align 4
  %call3.i172 = tail call i32 @usb_control_msg(ptr noundef %147, i32 noundef %or.i171, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef %153, i16 noundef zeroext 1, i32 noundef 500) #6
  %154 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev1.i, align 4
  %156 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %usb_buf.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 64, ptr %157, align 1
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %155, align 8
  %shl.i.i175 = shl i32 %160, 8
  %or.i176 = or i32 %shl.i.i175, -2147483648
  %161 = load ptr, ptr %usb_buf.i, align 4
  %call3.i177 = tail call i32 @usb_control_msg(ptr noundef %155, i32 noundef %or.i176, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 49, ptr noundef %161, i16 noundef zeroext 1, i32 noundef 500) #6
  %162 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev1.i, align 4
  %164 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %usb_buf.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %165, align 1
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %163, align 8
  %shl.i.i180 = shl i32 %168, 8
  %or.i181 = or i32 %shl.i.i180, -2147483648
  %169 = load ptr, ptr %usb_buf.i, align 4
  %call3.i182 = tail call i32 @usb_control_msg(ptr noundef %163, i32 noundef %or.i181, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 50, ptr noundef %169, i16 noundef zeroext 1, i32 noundef 500) #6
  %170 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev1.i, align 4
  %172 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %usb_buf.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %173, align 1
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %171, align 8
  %shl.i.i185 = shl i32 %176, 8
  %or.i186 = or i32 %shl.i.i185, -2147483648
  %177 = load ptr, ptr %usb_buf.i, align 4
  %call3.i187 = tail call i32 @usb_control_msg(ptr noundef %171, i32 noundef %or.i186, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef %177, i16 noundef zeroext 1, i32 noundef 500) #6
  %178 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev1.i, align 4
  %180 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %usb_buf.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %181, align 1
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %179, align 8
  %shl.i.i190 = shl i32 %184, 8
  %or.i191 = or i32 %shl.i.i190, -2147483648
  %185 = load ptr, ptr %usb_buf.i, align 4
  %call3.i192 = tail call i32 @usb_control_msg(ptr noundef %179, i32 noundef %or.i191, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 53, ptr noundef %185, i16 noundef zeroext 1, i32 noundef 500) #6
  %186 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev1.i, align 4
  %188 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %usb_buf.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %189, align 1
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %187, align 8
  %shl.i.i195 = shl i32 %192, 8
  %or.i196 = or i32 %shl.i.i195, -2147483648
  %193 = load ptr, ptr %usb_buf.i, align 4
  %call3.i197 = tail call i32 @usb_control_msg(ptr noundef %187, i32 noundef %or.i196, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 54, ptr noundef %193, i16 noundef zeroext 1, i32 noundef 500) #6
  %194 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev1.i, align 4
  %196 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %usb_buf.i, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %197, align 1
  %199 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %195, align 8
  %shl.i.i200 = shl i32 %200, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %201 = load ptr, ptr %usb_buf.i, align 4
  %call3.i202 = tail call i32 @usb_control_msg(ptr noundef %195, i32 noundef %or.i201, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 55, ptr noundef %201, i16 noundef zeroext 1, i32 noundef 500) #6
  %202 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev1.i, align 4
  %204 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %usb_buf.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -128, ptr %205, align 1
  %207 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %203, align 8
  %shl.i.i205 = shl i32 %208, 8
  %or.i206 = or i32 %shl.i.i205, -2147483648
  %209 = load ptr, ptr %usb_buf.i, align 4
  %call3.i207 = tail call i32 @usb_control_msg(ptr noundef %203, i32 noundef %or.i206, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef %209, i16 noundef zeroext 1, i32 noundef 500) #6
  %210 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev1.i, align 4
  %212 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %usb_buf.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -128, ptr %213, align 1
  %215 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %211, align 8
  %shl.i.i210 = shl i32 %216, 8
  %or.i211 = or i32 %shl.i.i210, -2147483648
  %217 = load ptr, ptr %usb_buf.i, align 4
  %call3.i212 = tail call i32 @usb_control_msg(ptr noundef %211, i32 noundef %or.i211, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 78, ptr noundef %217, i16 noundef zeroext 1, i32 noundef 500) #6
  %218 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev1.i, align 4
  %220 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %usb_buf.i, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -128, ptr %221, align 1
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %219, align 8
  %shl.i.i215 = shl i32 %224, 8
  %or.i216 = or i32 %shl.i.i215, -2147483648
  %225 = load ptr, ptr %usb_buf.i, align 4
  %call3.i217 = tail call i32 @usb_control_msg(ptr noundef %219, i32 noundef %or.i216, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 79, ptr noundef %225, i16 noundef zeroext 1, i32 noundef 500) #6
  %226 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev1.i, align 4
  %228 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %usb_buf.i, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -128, ptr %229, align 1
  %231 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %227, align 8
  %shl.i.i220 = shl i32 %232, 8
  %or.i221 = or i32 %shl.i.i220, -2147483648
  %233 = load ptr, ptr %usb_buf.i, align 4
  %call3.i222 = tail call i32 @usb_control_msg(ptr noundef %227, i32 noundef %or.i221, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 80, ptr noundef %233, i16 noundef zeroext 1, i32 noundef 500) #6
  %234 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev1.i, align 4
  %236 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %usb_buf.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %237, align 1
  %239 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %235, align 8
  %shl.i.i225 = shl i32 %240, 8
  %or.i226 = or i32 %shl.i.i225, -2147483648
  %241 = load ptr, ptr %usb_buf.i, align 4
  %call3.i227 = tail call i32 @usb_control_msg(ptr noundef %235, i32 noundef %or.i226, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef %241, i16 noundef zeroext 1, i32 noundef 500) #6
  %242 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev1.i, align 4
  %244 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %usb_buf.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %245, align 1
  %247 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %243, align 8
  %shl.i.i230 = shl i32 %248, 8
  %or.i231 = or i32 %shl.i.i230, -2147483648
  %249 = load ptr, ptr %usb_buf.i, align 4
  %call3.i232 = tail call i32 @usb_control_msg(ptr noundef %243, i32 noundef %or.i231, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 82, ptr noundef %249, i16 noundef zeroext 1, i32 noundef 500) #6
  %250 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev1.i, align 4
  %252 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %usb_buf.i, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 -128, ptr %253, align 1
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %251, align 8
  %shl.i.i235 = shl i32 %256, 8
  %or.i236 = or i32 %shl.i.i235, -2147483648
  %257 = load ptr, ptr %usb_buf.i, align 4
  %call3.i237 = tail call i32 @usb_control_msg(ptr noundef %251, i32 noundef %or.i236, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 97, ptr noundef %257, i16 noundef zeroext 1, i32 noundef 500) #6
  %258 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev1.i, align 4
  %260 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %usb_buf.i, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 2, ptr %261, align 1
  %263 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %259, align 8
  %shl.i.i240 = shl i32 %264, 8
  %or.i241 = or i32 %shl.i.i240, -2147483648
  %265 = load ptr, ptr %usb_buf.i, align 4
  %call3.i242 = tail call i32 @usb_control_msg(ptr noundef %259, i32 noundef %or.i241, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 98, ptr noundef %265, i16 noundef zeroext 1, i32 noundef 500) #6
  %266 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev1.i, align 4
  %268 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %usb_buf.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 3, ptr %269, align 1
  %271 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %267, align 8
  %shl.i.i245 = shl i32 %272, 8
  %or.i246 = or i32 %shl.i.i245, -2147483648
  %273 = load ptr, ptr %usb_buf.i, align 4
  %call3.i247 = tail call i32 @usb_control_msg(ptr noundef %267, i32 noundef %or.i246, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 99, ptr noundef %273, i16 noundef zeroext 1, i32 noundef 500) #6
  %274 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev1.i, align 4
  %276 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %usb_buf.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 20, ptr %277, align 1
  %279 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %275, align 8
  %shl.i.i250 = shl i32 %280, 8
  %or.i251 = or i32 %shl.i.i250, -2147483648
  %281 = load ptr, ptr %usb_buf.i, align 4
  %call3.i252 = tail call i32 @usb_control_msg(ptr noundef %275, i32 noundef %or.i251, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 100, ptr noundef %281, i16 noundef zeroext 1, i32 noundef 500) #6
  %282 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev1.i, align 4
  %284 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %usb_buf.i, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 14, ptr %285, align 1
  %287 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %283, align 8
  %shl.i.i255 = shl i32 %288, 8
  %or.i256 = or i32 %shl.i.i255, -2147483648
  %289 = load ptr, ptr %usb_buf.i, align 4
  %call3.i257 = tail call i32 @usb_control_msg(ptr noundef %283, i32 noundef %or.i256, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 101, ptr noundef %289, i16 noundef zeroext 1, i32 noundef 500) #6
  %290 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev1.i, align 4
  %292 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %usb_buf.i, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 2, ptr %293, align 1
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %291, align 8
  %shl.i.i260 = shl i32 %296, 8
  %or.i261 = or i32 %shl.i.i260, -2147483648
  %297 = load ptr, ptr %usb_buf.i, align 4
  %call3.i262 = tail call i32 @usb_control_msg(ptr noundef %291, i32 noundef %or.i261, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 102, ptr noundef %297, i16 noundef zeroext 1, i32 noundef 500) #6
  %298 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev1.i, align 4
  %300 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %usb_buf.i, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 2, ptr %301, align 1
  %303 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %299, align 8
  %shl.i.i265 = shl i32 %304, 8
  %or.i266 = or i32 %shl.i.i265, -2147483648
  %305 = load ptr, ptr %usb_buf.i, align 4
  %call3.i267 = tail call i32 @usb_control_msg(ptr noundef %299, i32 noundef %or.i266, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 103, ptr noundef %305, i16 noundef zeroext 1, i32 noundef 500) #6
  %306 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev1.i, align 4
  %308 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %usb_buf.i, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 -113, ptr %309, align 1
  %311 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %307, align 8
  %shl.i.i270 = shl i32 %312, 8
  %or.i271 = or i32 %shl.i.i270, -2147483648
  %313 = load ptr, ptr %usb_buf.i, align 4
  %call3.i272 = tail call i32 @usb_control_msg(ptr noundef %307, i32 noundef %or.i271, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 104, ptr noundef %313, i16 noundef zeroext 1, i32 noundef 500) #6
  %314 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev1.i, align 4
  %316 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %usb_buf.i, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 105, ptr %317, align 1
  %319 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %315, align 8
  %shl.i.i275 = shl i32 %320, 8
  %or.i276 = or i32 %shl.i.i275, -2147483648
  %321 = load ptr, ptr %usb_buf.i, align 4
  %call3.i277 = tail call i32 @usb_control_msg(ptr noundef %315, i32 noundef %or.i276, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 105, ptr noundef %321, i16 noundef zeroext 1, i32 noundef 500) #6
  %322 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev1.i, align 4
  %324 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %usb_buf.i, align 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 13, ptr %325, align 1
  %327 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %323, align 8
  %shl.i.i280 = shl i32 %328, 8
  %or.i281 = or i32 %shl.i.i280, -2147483648
  %329 = load ptr, ptr %usb_buf.i, align 4
  %call3.i282 = tail call i32 @usb_control_msg(ptr noundef %323, i32 noundef %or.i281, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 106, ptr noundef %329, i16 noundef zeroext 1, i32 noundef 500) #6
  %330 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dev1.i, align 4
  %332 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %usb_buf.i, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 -128, ptr %333, align 1
  %335 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %331, align 8
  %shl.i.i285 = shl i32 %336, 8
  %or.i286 = or i32 %shl.i.i285, -2147483648
  %337 = load ptr, ptr %usb_buf.i, align 4
  %call3.i287 = tail call i32 @usb_control_msg(ptr noundef %331, i32 noundef %or.i286, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 107, ptr noundef %337, i16 noundef zeroext 1, i32 noundef 500) #6
  %338 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev1.i, align 4
  %340 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %usb_buf.i, align 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 -32, ptr %341, align 1
  %343 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %339, align 8
  %shl.i.i290 = shl i32 %344, 8
  %or.i291 = or i32 %shl.i.i290, -2147483648
  %345 = load ptr, ptr %usb_buf.i, align 4
  %call3.i292 = tail call i32 @usb_control_msg(ptr noundef %339, i32 noundef %or.i291, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 108, ptr noundef %345, i16 noundef zeroext 1, i32 noundef 500) #6
  %346 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev1.i, align 4
  %348 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %usb_buf.i, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 96, ptr %349, align 1
  %351 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %347, align 8
  %shl.i.i295 = shl i32 %352, 8
  %or.i296 = or i32 %shl.i.i295, -2147483648
  %353 = load ptr, ptr %usb_buf.i, align 4
  %call3.i297 = tail call i32 @usb_control_msg(ptr noundef %347, i32 noundef %or.i296, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 109, ptr noundef %353, i16 noundef zeroext 1, i32 noundef 500) #6
  %354 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %dev1.i, align 4
  %356 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %usb_buf.i, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 -122, ptr %357, align 1
  %359 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %355, align 8
  %shl.i.i300 = shl i32 %360, 8
  %or.i301 = or i32 %shl.i.i300, -2147483648
  %361 = load ptr, ptr %usb_buf.i, align 4
  %call3.i302 = tail call i32 @usb_control_msg(ptr noundef %355, i32 noundef %or.i301, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 110, ptr noundef %361, i16 noundef zeroext 1, i32 noundef 500) #6
  %362 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev1.i, align 4
  %364 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %usb_buf.i, align 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 1, ptr %365, align 1
  %367 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %363, align 8
  %shl.i.i305 = shl i32 %368, 8
  %or.i306 = or i32 %shl.i.i305, -2147483648
  %369 = load ptr, ptr %usb_buf.i, align 4
  %call3.i307 = tail call i32 @usb_control_msg(ptr noundef %363, i32 noundef %or.i306, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 111, ptr noundef %369, i16 noundef zeroext 1, i32 noundef 500) #6
  %370 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dev1.i, align 4
  %372 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %usb_buf.i, align 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 38, ptr %373, align 1
  %375 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %371, align 8
  %shl.i.i310 = shl i32 %376, 8
  %or.i311 = or i32 %shl.i.i310, -2147483648
  %377 = load ptr, ptr %usb_buf.i, align 4
  %call3.i312 = tail call i32 @usb_control_msg(ptr noundef %371, i32 noundef %or.i311, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef %377, i16 noundef zeroext 1, i32 noundef 500) #6
  %378 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dev1.i, align 4
  %380 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %usb_buf.i, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 122, ptr %381, align 1
  %383 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %379, align 8
  %shl.i.i315 = shl i32 %384, 8
  %or.i316 = or i32 %shl.i.i315, -2147483648
  %385 = load ptr, ptr %usb_buf.i, align 4
  %call3.i317 = tail call i32 @usb_control_msg(ptr noundef %379, i32 noundef %or.i316, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 113, ptr noundef %385, i16 noundef zeroext 1, i32 noundef 500) #6
  %386 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dev1.i, align 4
  %388 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %usb_buf.i, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 1, ptr %389, align 1
  %391 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %387, align 8
  %shl.i.i320 = shl i32 %392, 8
  %or.i321 = or i32 %shl.i.i320, -2147483648
  %393 = load ptr, ptr %usb_buf.i, align 4
  %call3.i322 = tail call i32 @usb_control_msg(ptr noundef %387, i32 noundef %or.i321, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 114, ptr noundef %393, i16 noundef zeroext 1, i32 noundef 500) #6
  %394 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %dev1.i, align 4
  %396 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %usb_buf.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 0, ptr %397, align 1
  %399 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %395, align 8
  %shl.i.i325 = shl i32 %400, 8
  %or.i326 = or i32 %shl.i.i325, -2147483648
  %401 = load ptr, ptr %usb_buf.i, align 4
  %call3.i327 = tail call i32 @usb_control_msg(ptr noundef %395, i32 noundef %or.i326, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 115, ptr noundef %401, i16 noundef zeroext 1, i32 noundef 500) #6
  %402 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %dev1.i, align 4
  %404 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %usb_buf.i, align 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 24, ptr %405, align 1
  %407 = ptrtoint ptr %403 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %403, align 8
  %shl.i.i330 = shl i32 %408, 8
  %or.i331 = or i32 %shl.i.i330, -2147483648
  %409 = load ptr, ptr %usb_buf.i, align 4
  %call3.i332 = tail call i32 @usb_control_msg(ptr noundef %403, i32 noundef %or.i331, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 116, ptr noundef %409, i16 noundef zeroext 1, i32 noundef 500) #6
  %410 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev1.i, align 4
  %412 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %usb_buf.i, align 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 15, ptr %413, align 1
  %415 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %411, align 8
  %shl.i.i335 = shl i32 %416, 8
  %or.i336 = or i32 %shl.i.i335, -2147483648
  %417 = load ptr, ptr %usb_buf.i, align 4
  %call3.i337 = tail call i32 @usb_control_msg(ptr noundef %411, i32 noundef %or.i336, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 117, ptr noundef %417, i16 noundef zeroext 1, i32 noundef 500) #6
  %418 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev1.i, align 4
  %420 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %usb_buf.i, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 32, ptr %421, align 1
  %423 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %419, align 8
  %shl.i.i340 = shl i32 %424, 8
  %or.i341 = or i32 %shl.i.i340, -2147483648
  %425 = load ptr, ptr %usb_buf.i, align 4
  %call3.i342 = tail call i32 @usb_control_msg(ptr noundef %419, i32 noundef %or.i341, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 138, ptr noundef %425, i16 noundef zeroext 1, i32 noundef 500) #6
  %426 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %dev1.i, align 4
  %428 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %usb_buf.i, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 15, ptr %429, align 1
  %431 = ptrtoint ptr %427 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %427, align 8
  %shl.i.i345 = shl i32 %432, 8
  %or.i346 = or i32 %shl.i.i345, -2147483648
  %433 = load ptr, ptr %usb_buf.i, align 4
  %call3.i347 = tail call i32 @usb_control_msg(ptr noundef %427, i32 noundef %or.i346, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 141, ptr noundef %433, i16 noundef zeroext 1, i32 noundef 500) #6
  %434 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %dev1.i, align 4
  %436 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %usb_buf.i, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 8, ptr %437, align 1
  %439 = ptrtoint ptr %435 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %435, align 8
  %shl.i.i350 = shl i32 %440, 8
  %or.i351 = or i32 %shl.i.i350, -2147483648
  %441 = load ptr, ptr %usb_buf.i, align 4
  %call3.i352 = tail call i32 @usb_control_msg(ptr noundef %435, i32 noundef %or.i351, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 142, ptr noundef %441, i16 noundef zeroext 1, i32 noundef 500) #6
  %442 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev1.i, align 4
  %444 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %usb_buf.i, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 8, ptr %445, align 1
  %447 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %443, align 8
  %shl.i.i355 = shl i32 %448, 8
  %or.i356 = or i32 %shl.i.i355, -2147483648
  %449 = load ptr, ptr %usb_buf.i, align 4
  %call3.i357 = tail call i32 @usb_control_msg(ptr noundef %443, i32 noundef %or.i356, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %449, i16 noundef zeroext 1, i32 noundef 500) #6
  %450 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dev1.i, align 4
  %452 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %usb_buf.i, align 4
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 3, ptr %453, align 1
  %455 = ptrtoint ptr %451 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %451, align 8
  %shl.i.i360 = shl i32 %456, 8
  %or.i361 = or i32 %shl.i.i360, -2147483648
  %457 = load ptr, ptr %usb_buf.i, align 4
  %call3.i362 = tail call i32 @usb_control_msg(ptr noundef %451, i32 noundef %or.i361, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %457, i16 noundef zeroext 1, i32 noundef 500) #6
  %458 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dev1.i, align 4
  %460 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %usb_buf.i, align 4
  %462 = ptrtoint ptr %461 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 -1, ptr %461, align 1
  %463 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %459, align 8
  %shl.i.i365 = shl i32 %464, 8
  %or.i366 = or i32 %shl.i.i365, -2147483648
  %465 = load ptr, ptr %usb_buf.i, align 4
  %call3.i367 = tail call i32 @usb_control_msg(ptr noundef %459, i32 noundef %or.i366, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 129, ptr noundef %465, i16 noundef zeroext 1, i32 noundef 500) #6
  %466 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dev1.i, align 4
  %468 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %usb_buf.i, align 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 0, ptr %469, align 1
  %471 = ptrtoint ptr %467 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %467, align 8
  %shl.i.i370 = shl i32 %472, 8
  %or.i371 = or i32 %shl.i.i370, -2147483648
  %473 = load ptr, ptr %usb_buf.i, align 4
  %call3.i372 = tail call i32 @usb_control_msg(ptr noundef %467, i32 noundef %or.i371, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %473, i16 noundef zeroext 1, i32 noundef 500) #6
  %474 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dev1.i, align 4
  %476 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %usb_buf.i, align 4
  %478 = ptrtoint ptr %477 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 -1, ptr %477, align 1
  %479 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %475, align 8
  %shl.i.i375 = shl i32 %480, 8
  %or.i376 = or i32 %shl.i.i375, -2147483648
  %481 = load ptr, ptr %usb_buf.i, align 4
  %call3.i377 = tail call i32 @usb_control_msg(ptr noundef %475, i32 noundef %or.i376, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 129, ptr noundef %481, i16 noundef zeroext 1, i32 noundef 500) #6
  %482 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %dev1.i, align 4
  %484 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %usb_buf.i, align 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 32, ptr %485, align 1
  %487 = ptrtoint ptr %483 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %483, align 8
  %shl.i.i380 = shl i32 %488, 8
  %or.i381 = or i32 %shl.i.i380, -2147483648
  %489 = load ptr, ptr %usb_buf.i, align 4
  %call3.i382 = tail call i32 @usb_control_msg(ptr noundef %483, i32 noundef %or.i381, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %489, i16 noundef zeroext 1, i32 noundef 500) #6
  %490 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dev1.i, align 4
  %492 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %usb_buf.i, align 4
  %494 = ptrtoint ptr %493 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 1, ptr %493, align 1
  %495 = ptrtoint ptr %491 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %491, align 8
  %shl.i.i385 = shl i32 %496, 8
  %or.i386 = or i32 %shl.i.i385, -2147483648
  %497 = load ptr, ptr %usb_buf.i, align 4
  %call3.i387 = tail call i32 @usb_control_msg(ptr noundef %491, i32 noundef %or.i386, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %497, i16 noundef zeroext 1, i32 noundef 500) #6
  %498 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %dev1.i, align 4
  %500 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %usb_buf.i, align 4
  %502 = ptrtoint ptr %501 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 0, ptr %501, align 1
  %503 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %499, align 8
  %shl.i.i390 = shl i32 %504, 8
  %or.i391 = or i32 %shl.i.i390, -2147483648
  %505 = load ptr, ptr %usb_buf.i, align 4
  %call3.i392 = tail call i32 @usb_control_msg(ptr noundef %499, i32 noundef %or.i391, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %505, i16 noundef zeroext 1, i32 noundef 500) #6
  %506 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %dev1.i, align 4
  %508 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %usb_buf.i, align 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 8, ptr %509, align 1
  %511 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %507, align 8
  %shl.i.i395 = shl i32 %512, 8
  %or.i396 = or i32 %shl.i.i395, -2147483648
  %513 = load ptr, ptr %usb_buf.i, align 4
  %call3.i397 = tail call i32 @usb_control_msg(ptr noundef %507, i32 noundef %or.i396, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %513, i16 noundef zeroext 1, i32 noundef 500) #6
  %514 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %cam, align 4
  %516 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %curr_mode, align 1
  %conv9 = zext i8 %517 to i32
  %priv11 = getelementptr %struct.v4l2_pix_format, ptr %515, i32 %conv9, i32 7
  %518 = ptrtoint ptr %priv11 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %priv11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %519)
  %tobool12.not = icmp eq i32 %519, 0
  %value.1 = select i1 %tobool12.not, i8 30, i8 4
  %520 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %dev1.i, align 4
  %522 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %usb_buf.i, align 4
  %524 = ptrtoint ptr %523 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %value.1, ptr %523, align 1
  %525 = ptrtoint ptr %521 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %521, align 8
  %shl.i.i400 = shl i32 %526, 8
  %or.i401 = or i32 %shl.i.i400, -2147483648
  %527 = load ptr, ptr %usb_buf.i, align 4
  %call3.i402 = tail call i32 @usb_control_msg(ptr noundef %521, i32 noundef %or.i401, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %527, i16 noundef zeroext 1, i32 noundef 500) #6
  %528 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %530 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %530)
  %cmp4.i = icmp sgt i32 %530, 6
  br i1 %cmp4.i, label %do.end9.i, label %reg_r.exit.reg_w.exit_crit_edge

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end9.i:                                        ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef 98, i32 noundef 132) #9
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %reg_r.exit.reg_w.exit_crit_edge
  %531 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %usb_buf.i, align 4
  %533 = call ptr @memcpy(ptr %532, ptr @Et_init2.FormLine, i32 6)
  %534 = ptrtoint ptr %529 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %529, align 8
  %shl.i.i405 = shl i32 %535, 8
  %or.i406 = or i32 %shl.i.i405, -2147483648
  %536 = load ptr, ptr %usb_buf.i, align 4
  %call20.i407 = tail call i32 @usb_control_msg(ptr noundef %529, i32 noundef %or.i406, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 98, ptr noundef %536, i16 noundef zeroext 6, i32 noundef 500) #6
  %537 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %dev1.i, align 4
  %539 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %usb_buf.i, align 4
  %541 = ptrtoint ptr %540 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 71, ptr %540, align 1
  %542 = ptrtoint ptr %538 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %538, align 8
  %shl.i.i410 = shl i32 %543, 8
  %or.i411 = or i32 %shl.i.i410, -2147483648
  %544 = load ptr, ptr %usb_buf.i, align 4
  %call3.i412 = tail call i32 @usb_control_msg(ptr noundef %538, i32 noundef %or.i411, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 129, ptr noundef %544, i16 noundef zeroext 1, i32 noundef 500) #6
  %545 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dev1.i, align 4
  %547 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %usb_buf.i, align 4
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 64, ptr %548, align 1
  %550 = ptrtoint ptr %546 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %546, align 8
  %shl.i.i415 = shl i32 %551, 8
  %or.i416 = or i32 %shl.i.i415, -2147483648
  %552 = load ptr, ptr %usb_buf.i, align 4
  %call3.i417 = tail call i32 @usb_control_msg(ptr noundef %546, i32 noundef %or.i416, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %552, i16 noundef zeroext 1, i32 noundef 500) #6
  %553 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %dev1.i, align 4
  %555 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %usb_buf.i, align 4
  %557 = ptrtoint ptr %556 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 48, ptr %556, align 1
  %558 = ptrtoint ptr %554 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %554, align 8
  %shl.i.i420 = shl i32 %559, 8
  %or.i421 = or i32 %shl.i.i420, -2147483648
  %560 = load ptr, ptr %usb_buf.i, align 4
  %call3.i422 = tail call i32 @usb_control_msg(ptr noundef %554, i32 noundef %or.i421, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 129, ptr noundef %560, i16 noundef zeroext 1, i32 noundef 500) #6
  %561 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %dev1.i, align 4
  %563 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %usb_buf.i, align 4
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 32, ptr %564, align 1
  %566 = ptrtoint ptr %562 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %562, align 8
  %shl.i.i425 = shl i32 %567, 8
  %or.i426 = or i32 %shl.i.i425, -2147483648
  %568 = load ptr, ptr %usb_buf.i, align 4
  %call3.i427 = tail call i32 @usb_control_msg(ptr noundef %562, i32 noundef %or.i426, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %568, i16 noundef zeroext 1, i32 noundef 500) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @et_video(ptr noundef %gspca_dev, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %conv = select i1 %tobool.not, i8 0, i8 16
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #6
  %name15.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %reg_r.exit.i.while.cond.i_crit_edge, %entry
  %retry.0.i = phi i32 [ 10, %entry ], [ %dec.i, %reg_r.exit.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.i)
  %tobool.not.i = icmp eq i32 %retry.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end_crit_edge, label %while.body.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %retry.0.i, -1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or4.i.i = or i32 %shl.i.i.i, -2147483520
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or4.i.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp7.i.i = icmp sgt i32 %14, 5
  br i1 %cmp7.i.i, label %do.end12.i.i, label %while.body.i.reg_r.exit.i_crit_edge

while.body.i.reg_r.exit.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit.i

do.end12.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv19.i.i = zext i8 %18 to i32
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i.i, i32 noundef 1, i32 noundef %conv19.i.i) #9
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end12.i.i, %while.body.i.reg_r.exit.i_crit_edge
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %cmp.not.i = icmp eq i8 %22, 0
  br i1 %cmp.not.i, label %reg_r.exit.i.while.cond.i_crit_edge, label %do.end

reg_r.exit.i.while.cond.i_crit_edge:              ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

do.end:                                           ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name15.i.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %while.cond.i.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_w(ptr nocapture noundef readonly %gspca_dev, i8 noundef zeroext %reg, ptr nocapture noundef readonly %buffer, i32 noundef %len, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %3, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 137, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #6
  %8 = and i8 %mode, 3
  %len.tr = trunc i32 %len to i8
  %9 = shl i8 %len.tr, 4
  %10 = and i8 %9, 112
  %conv2 = or i8 %10, %8
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2, ptr %14, align 1
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 8
  %shl.i.i3 = shl i32 %17, 8
  %or.i4 = or i32 %shl.i.i3, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i5 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i4, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 138, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %reg, ptr %22, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 8
  %shl.i.i8 = shl i32 %25, 8
  %or.i9 = or i32 %shl.i.i8, -2147483648
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call3.i10 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i9, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 136, ptr noundef %26, i16 noundef zeroext 1, i32 noundef 500) #6
  %dec16 = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec16)
  %cmp17 = icmp sgt i32 %dec16, -1
  br i1 %cmp17, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dec19 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec16, %entry.while.body_crit_edge ]
  %len.addr.018 = phi i32 [ %dec19, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %27 = trunc i32 %len.addr.018 to i16
  %conv4 = add i16 %27, 127
  %arrayidx = getelementptr i8, ptr %buffer, i32 %dec19
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %32 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %29, ptr %33, align 1
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %31, align 8
  %shl.i.i13 = shl i32 %36, 8
  %or.i14 = or i32 %shl.i.i13, -2147483648
  %37 = load ptr, ptr %usb_buf.i, align 4
  %call3.i15 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i14, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext %conv4, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #6
  %dec = add nsw i32 %dec19, -1
  %cmp = icmp sgt i32 %dec19, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %3, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 137, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #6
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 17, ptr %11, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 8
  %shl.i.i3 = shl i32 %14, 8
  %or.i4 = or i32 %shl.i.i3, -2147483648
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i5 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i4, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 138, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #6
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %reg, ptr %19, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %shl.i.i8 = shl i32 %22, 8
  %or.i9 = or i32 %shl.i.i8, -2147483648
  %23 = load ptr, ptr %usb_buf.i, align 4
  %call3.i10 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i9, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 136, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #6
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i, align 4
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %27, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 8
  %shl.i.i13 = shl i32 %30, 8
  %or.i14 = or i32 %shl.i.i13, -2147483648
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call3.i15 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i14, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 139, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #6
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %34 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %35, align 1
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %33, align 8
  %shl.i.i18 = shl i32 %38, 8
  %or.i19 = or i32 %shl.i.i18, -2147483648
  %39 = load ptr, ptr %usb_buf.i, align 4
  %call3.i20 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i19, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 139, ptr noundef %39, i16 noundef zeroext 1, i32 noundef 500) #6
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i22 = shl i32 %43, 8
  %or4.i = or i32 %shl.i.i22, -2147483520
  %44 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %46 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp7.i = icmp sgt i32 %46, 5
  br i1 %cmp7.i, label %do.end12.i, label %entry.reg_r.exit_crit_edge

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv19.i = zext i8 %50 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i, i32 noundef 128, i32 noundef %conv19.i) #9
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end12.i, %entry.reg_r.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %I2cc.i = alloca [5 x i8], align 1
  %i2cflags.i = alloca i8, align 1
  %RGBG.sroa.6.i = alloca [5 x i8], align 1
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
  %4 = load i8, ptr %streaming, align 2, !range !113
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
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb3
    i32 9963794, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv1.i = trunc i32 %9 to i8
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %12 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv1.i, ptr %13, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %17 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef %17, i16 noundef zeroext 1, i32 noundef 500) #6
  %18 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i.i, align 4
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv1.i, ptr %21, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %19, align 8
  %shl.i.i.1.i = shl i32 %24, 8
  %or.i.1.i = or i32 %shl.i.i.1.i, -2147483648
  %25 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.1.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i.1.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 53, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #6
  %26 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i.i, align 4
  %28 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv1.i, ptr %29, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 8
  %shl.i.i.2.i = shl i32 %32, 8
  %or.i.2.i = or i32 %shl.i.i.2.i, -2147483648
  %33 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.2.i = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i.2.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 54, ptr noundef %33, i16 noundef zeroext 1, i32 noundef 500) #6
  %34 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i.i, align 4
  %36 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv1.i, ptr %37, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %35, align 8
  %shl.i.i.3.i = shl i32 %40, 8
  %or.i.3.i = or i32 %shl.i.i.3.i, -2147483648
  %41 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.3.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i.3.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 55, ptr noundef %41, i16 noundef zeroext 1, i32 noundef 500) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %42 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %RGBG.sroa.6.i)
  %44 = call ptr @memcpy(ptr %RGBG.sroa.6.i, ptr getelementptr inbounds ([6 x i8], ptr @__const.setcontrast.RGBG, i32 0, i32 1), i32 5)
  %45 = trunc i32 %43 to i8
  %46 = zext i8 %45 to i32
  %47 = call ptr @memset(ptr %RGBG.sroa.6.i, i32 %46, i32 3)
  %dev1.i.i21 = getelementptr i8, ptr %1, i32 -100
  %48 = ptrtoint ptr %dev1.i.i21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i.i21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %50)
  %cmp4.i.i = icmp sgt i32 %50, 6
  br i1 %cmp4.i.i, label %do.end9.i.i, label %sw.bb1.setcontrast.exit_crit_edge

sw.bb1.setcontrast.exit_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %setcontrast.exit

do.end9.i.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv12.i.i = and i32 %43, 255
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 77, i32 noundef %conv12.i.i) #9
  br label %setcontrast.exit

setcontrast.exit:                                 ; preds = %do.end9.i.i, %sw.bb1.setcontrast.exit_crit_edge
  %usb_buf.i.i22 = getelementptr i8, ptr %1, i32 204
  %51 = ptrtoint ptr %usb_buf.i.i22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb_buf.i.i22, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %45, ptr %52, align 1
  %RGBG.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %52, i32 1
  %54 = call ptr @memcpy(ptr %RGBG.sroa.6.0..sroa_idx.i, ptr %RGBG.sroa.6.i, i32 5)
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %49, align 8
  %shl.i.i.i23 = shl i32 %56, 8
  %or.i.i24 = or i32 %shl.i.i.i23, -2147483648
  %57 = load ptr, ptr %usb_buf.i.i22, align 4
  %call20.i.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i.i24, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 77, ptr noundef %57, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %RGBG.sroa.6.i)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %58 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val4, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %I2cc.i) #6
  %60 = call ptr @memcpy(ptr %I2cc.i, ptr @__const.setcolors.I2cc, i32 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2cflags.i) #6
  %61 = ptrtoint ptr %i2cflags.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %i2cflags.i, align 1
  %conv.i = trunc i32 %59 to i8
  %arrayidx.i = getelementptr inbounds [5 x i8], ptr %I2cc.i, i32 0, i32 3
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i25 = sub i8 15, %conv.i
  %63 = ptrtoint ptr %I2cc.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv1.i25, ptr %I2cc.i, align 1
  %sensor.i = getelementptr i8, ptr %1, i32 1025
  %64 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sensor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp.i = icmp eq i8 %65, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb3.setcolors.exit_crit_edge

sw.bb3.setcolors.exit_crit_edge:                  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %setcolors.exit

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2cflags.i, i32 noundef 1, i8 noundef zeroext 3) #6
  call fastcc void @i2c_w(ptr noundef %add.ptr, i8 noundef zeroext 9, ptr noundef nonnull %I2cc.i, i32 noundef 5, i8 noundef zeroext 1) #6
  br label %setcolors.exit

setcolors.exit:                                   ; preds = %if.then.i, %sw.bb3.setcolors.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2cflags.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %I2cc.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %66 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val6, align 4
  %conv = trunc i32 %67 to i8
  %autogain = getelementptr i8, ptr %1, i32 1024
  %68 = ptrtoint ptr %autogain to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv, ptr %autogain, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not.i = icmp eq i8 %conv, 0
  %spec.select.i = select i1 %tobool.not.i, i8 -1, i8 13
  %69 = getelementptr i8, ptr %1, i32 1026
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %spec.select.i, ptr %69, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %setcolors.exit, %setcontrast.exit, %sw.bb, %if.end.sw.epilog_crit_edge
  %71 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %72, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/etoms.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/etoms.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/etoms.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_etoms__307_782_sd_driver_init6, !8, !"__initcall__kmod_gspca_etoms__307_782_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/etoms.c", i32 782, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/etoms.c", i32 771, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/etoms.c", i32 770, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/etoms.c", i32 742, i32 29}
!17 = !{ptr @sif_mode, !18, !"sif_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/etoms.c", i32 44, i32 37}
!19 = !{ptr @vga_mode, !20, !"vga_mode", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/etoms.c", i32 31, i32 37}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/etoms.c", i32 444, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @Et_init1._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @Et_init1._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/etoms.c", i32 456, i32 2}
!29 = !{ptr @Et_init1._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @Et_init1._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/etoms.c", i32 154, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @reg_r._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @reg_r._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/etoms.c", i32 164, i32 2}
!38 = !{ptr @reg_r._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @reg_r._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @I2c2, !41, !"I2c2", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/etoms.c", i32 140, i32 19}
!42 = !{ptr @I2c3, !43, !"I2c3", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/etoms.c", i32 142, i32 19}
!44 = !{ptr @I2c4, !45, !"I2c4", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/etoms.c", i32 144, i32 19}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/etoms.c", i32 191, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @reg_w._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @reg_w._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/etoms.c", i32 194, i32 2}
!53 = !{ptr @reg_w._entry.15, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @reg_w._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @GainRGBG, !56, !"GainRGBG", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/etoms.c", i32 138, i32 19}
!57 = !{ptr @Et_init2.FormLine, !58, !"FormLine", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/etoms.c", i32 270, i32 20}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/etoms.c", i32 272, i32 2}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @Et_init2._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @Et_init2._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/etoms.c", i32 263, i32 3}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @et_video._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @et_video._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @sd_init_controls._key, !70, !"_key", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/etoms.c", i32 724, i32 2}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/etoms.c", i32 735, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sd_init_controls._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_init_controls._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @sd_ctrl_ops, !78, !"sd_ctrl_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/etoms.c", i32 714, i32 35}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/etoms.c", i32 667, i32 3}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sd_pkt_scan._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sd_pkt_scan._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/etoms.c", i32 669, i32 3}
!86 = !{ptr @sd_pkt_scan._entry.27, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sd_pkt_scan._entry_ptr.29, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/etoms.c", i32 646, i32 2}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @do_autogain._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @do_autogain._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/etoms.c", i32 650, i32 3}
!95 = !{ptr @do_autogain._entry.32, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @do_autogain._entry_ptr.34, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/etoms.c", i32 597, i32 3}
!99 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @Et_getgainG._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @Et_getgainG._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @device_table, !103, !"device_table", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/gspca/etoms.c", i32 754, i32 35}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i8 0, i8 2}
