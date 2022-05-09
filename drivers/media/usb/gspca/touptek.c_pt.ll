; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/touptek.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/touptek.c"
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
%struct.sd = type { %struct.gspca_dev, i32, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [35 x i8] c"gspca_touptek.author=John McMaster\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [78 x i8] c"gspca_touptek.description=ToupTek UCMOS / Amscope MU microscope camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_touptek.file=drivers/media/usb/gspca/gspca_touptek\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_touptek.license=GPL\00", section ".modinfo", align 1
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr null, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_gspca_touptek__307_726_sd_mod_init6 = internal global ptr @sd_mod_init, section ".initcall6.init", align 4
@__exitcall_sd_mod_exit = internal global ptr @sd_mod_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"touptek\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1351, i16 26625, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 800, i32 600, i32 1195528775, i32 1, i32 800, i32 480000, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1600, i32 1200, i32 1195528775, i32 1, i32 1600, i32 1920000, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 3264, i32 2448, i32 1195528775, i32 1, i32 3264, i32 7990272, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"touptek:626:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Could not initialize controls\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/touptek.c\00", [62 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setexposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Invalid width %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setexposure\00", [20 x i8] zeroinitializer }, align 32
@setexposure._entry_ptr = internal global ptr @setexposure._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@setexposure._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: exposure: 0x%04X ms\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@setexposure._entry_ptr.9 = internal global ptr @setexposure._entry.7, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: reg_w bReq=0x0B, bReqT=0xC0, wVal=0x%04X, wInd=0x%04X\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: rc=%d, ret={0x%02x}\0A\00", [37 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.14 = internal global ptr @reg_w._entry.12, section ".printk_index", align 4
@reg_w._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: Failed reg_w(0x0B, 0xC0, 0x%04X, 0x%04X) w/ rc %d\0A\00", [39 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.17 = internal global ptr @reg_w._entry.15, section ".printk_index", align 4
@reg_w._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: Bad reply to reg_w(0x0B, 0xC0, 0x%04X, 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.20 = internal global ptr @reg_w._entry.18, section ".printk_index", align 4
@val_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: reply has error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"val_reply\00", [22 x i8] zeroinitializer }, align 32
@val_reply._entry_ptr = internal global ptr @val_reply._entry, section ".printk_index", align 4
@val_reply._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Bad reply size %d\0A\00", [39 x i8] zeroinitializer }, align 32
@val_reply._entry_ptr.25 = internal global ptr @val_reply._entry.23, section ".printk_index", align 4
@val_reply._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Bad reply 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@val_reply._entry_ptr.28 = internal global ptr @val_reply._entry.26, section ".printk_index", align 4
@setggain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: gain G1/G2 (0x%04X): 0x%04X (src 0x%04X)\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setggain\00", [23 x i8] zeroinitializer }, align 32
@setggain._entry_ptr = internal global ptr @setggain._entry, section ".printk_index", align 4
@setbgain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Truncating blue 0x%04X w/ value 0x%04X\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setbgain\00", [23 x i8] zeroinitializer }, align 32
@setbgain._entry_ptr = internal global ptr @setbgain._entry, section ".printk_index", align 4
@setbgain._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: gain B (0x%04X): 0x%04X w/ source 0x%04X\0A\0A\00", [47 x i8] zeroinitializer }, align 32
@setbgain._entry_ptr.35 = internal global ptr @setbgain._entry.33, section ".printk_index", align 4
@setrgain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Truncating gain 0x%04X w/ value 0x%04X\0A\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setrgain\00", [23 x i8] zeroinitializer }, align 32
@setrgain._entry_ptr = internal global ptr @setrgain._entry, section ".printk_index", align 4
@setrgain._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: gain R (0x%04X): 0x%04X w / source 0x%04X\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@setrgain._entry_ptr.40 = internal global ptr @setrgain._entry.38, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Failed configure\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: configure()\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"configure\00", [22 x i8] zeroinitializer }, align 32
@configure._entry_ptr = internal global ptr @configure._entry, section ".printk_index", align 4
@configure._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: failed key req\0A\00", [42 x i8] zeroinitializer }, align 32
@configure._entry_ptr.47 = internal global ptr @configure._entry.45, section ".printk_index", align 4
@configure._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.4, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to replay packet 176 w/ rc %d\0A\00", [52 x i8] zeroinitializer }, align 32
@configure._entry_ptr.50 = internal global ptr @configure._entry.48, section ".printk_index", align 4
@configure._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.4, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to replay packet 178 w/ rc %d\0A\00", [52 x i8] zeroinitializer }, align 32
@configure._entry_ptr.53 = internal global ptr @configure._entry.51, section ".printk_index", align 4
@configure._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.4, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to replay packet 180 w/ rc %d\0A\00", [52 x i8] zeroinitializer }, align 32
@configure._entry_ptr.56 = internal global ptr @configure._entry.54, section ".printk_index", align 4
@configure._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.4, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: failed to replay final packet w/ rc %d\0A\00", [50 x i8] zeroinitializer }, align 32
@configure._entry_ptr.59 = internal global ptr @configure._entry.57, section ".printk_index", align 4
@configure._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.4, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Configure complete\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@configure._entry_ptr.62 = internal global ptr @configure._entry.60, section ".printk_index", align 4
@configure_encrypted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Encrypted begin, w = %u\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"configure_encrypted\00", [44 x i8] zeroinitializer }, align 32
@configure_encrypted._entry_ptr = internal global ptr @configure_encrypted._entry, section ".printk_index", align 4
@configure_encrypted._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Encrypted end\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@configure_encrypted._entry_ptr.67 = internal global ptr @configure_encrypted._entry.65, section ".printk_index", align 4
@configure_wh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: configure_wh\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"configure_wh\00", [19 x i8] zeroinitializer }, align 32
@configure_wh._entry_ptr = internal global ptr @configure_wh._entry, section ".printk_index", align 4
@configure_wh._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.4, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: bad width %u\0A\00", [44 x i8] zeroinitializer }, align 32
@configure_wh._entry_ptr.74 = internal global ptr @configure_wh._entry.72, section ".printk_index", align 4
@configure_wh._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.4, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_wh._entry_ptr.76 = internal global ptr @configure_wh._entry.75, section ".printk_index", align 4
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: finish frame sz %u/%u w/ len %u\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: abort frame sz %u/%u w/ len %u\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.81 = internal global ptr @sd_pkt_scan._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_touptek\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 800, i64 1600, i64 3264]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 9963790, i64 9963791, i64 9963793, i64 9963795]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 800, i64 1600, i64 3264]
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 701, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 702, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 657, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 647, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 157, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 626, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 616, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 640, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 248, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 252, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 208, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 213, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 215, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 221, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 189, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 193, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 197, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 280, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 296, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 301, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 315, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 320, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 544, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 435, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 453, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 470, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 478, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 486, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 509, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 514, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 419, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 427, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 330, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 366, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 386, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 562, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 567, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private constant [37 x i8] c"../drivers/media/usb/gspca/touptek.c\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 716, i32 8 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_mod_exit, ptr @__initcall__kmod_gspca_touptek__307_726_sd_mod_init6, ptr @configure._entry, ptr @configure._entry.45, ptr @configure._entry.48, ptr @configure._entry.51, ptr @configure._entry.54, ptr @configure._entry.57, ptr @configure._entry.60, ptr @configure._entry_ptr, ptr @configure._entry_ptr.47, ptr @configure._entry_ptr.50, ptr @configure._entry_ptr.53, ptr @configure._entry_ptr.56, ptr @configure._entry_ptr.59, ptr @configure._entry_ptr.62, ptr @configure_encrypted._entry, ptr @configure_encrypted._entry.65, ptr @configure_encrypted._entry_ptr, ptr @configure_encrypted._entry_ptr.67, ptr @configure_wh._entry, ptr @configure_wh._entry.72, ptr @configure_wh._entry.75, ptr @configure_wh._entry_ptr, ptr @configure_wh._entry_ptr.74, ptr @configure_wh._entry_ptr.76, ptr @reg_w._entry, ptr @reg_w._entry.12, ptr @reg_w._entry.15, ptr @reg_w._entry.18, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.14, ptr @reg_w._entry_ptr.17, ptr @reg_w._entry_ptr.20, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_mod_exit, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.79, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.81, ptr @sd_start._entry, ptr @sd_start._entry_ptr, ptr @setbgain._entry, ptr @setbgain._entry.33, ptr @setbgain._entry_ptr, ptr @setbgain._entry_ptr.35, ptr @setexposure._entry, ptr @setexposure._entry.7, ptr @setexposure._entry_ptr, ptr @setexposure._entry_ptr.9, ptr @setggain._entry, ptr @setggain._entry_ptr, ptr @setrgain._entry, ptr @setrgain._entry.38, ptr @setrgain._entry_ptr, ptr @setrgain._entry_ptr.40, ptr @val_reply._entry, ptr @val_reply._entry.23, ptr @val_reply._entry.26, ptr @val_reply._entry_ptr, ptr @val_reply._entry_ptr.25, ptr @val_reply._entry_ptr.28, ptr @sd_driver, ptr @.str, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @sd_init_controls._key, ptr @.str.1, ptr @sd_ctrl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.73, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setexposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setexposure._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_reply._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_reply._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setggain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setbgain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setbgain._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setrgain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setrgain._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_encrypted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_encrypted._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_wh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_wh._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_wh._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str.82) #7
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %nmodes, align 4
  %no_urb_create = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %no_urb_create to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %no_urb_create, align 1
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %bulk_nurbs, align 2
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16384, ptr %bulk_size, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %5 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bulk, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.1) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 800, i64 noundef 1, i64 noundef 350) #7
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %exposure, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 511, i64 noundef 1, i64 noundef 128) #7
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %gain, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 80) #7
  %blue = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %3 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %blue, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 295) #7
  %red = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %red, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #10
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %this_f = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %this_f to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %this_f, align 8
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %1 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp sgt i32 %3, 2
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name.i) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or6.i = or i32 %shl.i.i, -2147483520
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or6.i, i8 noundef zeroext 22, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %2, i16 noundef zeroext 2, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i.i, i32 noundef %call7.i) #10
  br label %do.end12.i

if.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i)
  %cmp1.not.i.i = icmp eq i32 %call7.i, 1
  br i1 %cmp1.not.i.i, label %if.end10.i.i, label %do.end4.i.i

do.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name7.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name7.i.i, i32 noundef %call7.i) #10
  br label %do.end12.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp11.not.i.i = icmp eq i8 %9, 8
  br i1 %cmp11.not.i.i, label %if.end18.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %9 to i32
  %name18.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name18.i.i, i32 noundef %conv.i.i) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end15.i.i, %do.end4.i.i, %do.end.i.i
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name15.i) #10
  br label %cleanup.sink.split

if.end18.i:                                       ; preds = %if.end10.i.i
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i138.i = shl i32 %13, 8
  %or22.i = or i32 %shl.i138.i, -2147483648
  %call23.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or22.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end34.i

do.end28.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %name31.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name31.i, i32 noundef %call23.i) #10
  br label %cleanup.sink.split

if.end34.i:                                       ; preds = %if.end18.i
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i139.i = shl i32 %17, 8
  %or38.i = or i32 %shl.i139.i, -2147483648
  %call39.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or38.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %do.end44.i, label %if.end50.i

do.end44.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %name47.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name47.i, i32 noundef %call39.i) #10
  br label %cleanup.sink.split

if.end50.i:                                       ; preds = %if.end34.i
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i140.i = shl i32 %21, 8
  %or54.i = or i32 %shl.i140.i, -2147483648
  %call55.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or54.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %do.end60.i, label %if.end66.i

do.end60.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %name63.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name63.i, i32 noundef %call55.i) #10
  br label %cleanup.sink.split

if.end66.i:                                       ; preds = %if.end50.i
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %usb_err.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i141.i = icmp sgt i32 %23, 2
  br i1 %cmp.i141.i, label %do.end.i144.i, label %if.end66.i.do.end2.i.i_crit_edge

if.end66.i.do.end2.i.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2.i.i

do.end.i144.i:                                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i142.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %pixfmt.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %24 = ptrtoint ptr %pixfmt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixfmt.i.i, align 8
  %call.i143.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name.i142.i, i32 noundef %25) #10
  br label %do.end2.i.i

do.end2.i.i:                                      ; preds = %do.end.i144.i, %if.end66.i.do.end2.i.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 256, i16 noundef zeroext 259) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 256) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 256, i16 noundef zeroext 260) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 4, i16 noundef zeroext 768) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 770) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 8, i16 noundef zeroext 776) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 778) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 4, i16 noundef zeroext 772) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 64, i16 noundef zeroext 774) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 260) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 256, i16 noundef zeroext 260) #7
  %pixfmt.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %26 = ptrtoint ptr %pixfmt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixfmt.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i22.i.i = icmp sgt i32 %28, 2
  br i1 %cmp.i22.i.i, label %do.end.i.i.i, label %do.end2.i.i.do.end3.i.i.i_crit_edge

do.end2.i.i.do.end3.i.i.i_crit_edge:              ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i.i

do.end.i.i.i:                                     ; preds = %do.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i.i.i) #10
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end.i.i.i, %do.end2.i.i.do.end3.i.i.i_crit_edge
  %29 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end14.i.i.i [
    i32 800, label %do.body.i.preheader.i.i.i
    i32 1600, label %if.then31.i.i.i
    i32 3264, label %if.then35.i.i.i
  ]

do.body.i.preheader.i.i.i:                        ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 96, i16 noundef zeroext 836) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 3289, i16 noundef zeroext 840) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 54, i16 noundef zeroext 838) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2447, i16 noundef zeroext 842) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1991, i16 noundef zeroext 12352) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 1024) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext 1028) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 800, i16 noundef zeroext 844) #7
  %height.c81.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %height.c81.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.c81.i.i.i, align 4
  %conv24.c82.i.i.i = trunc i32 %31 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv24.c82.i.i.i, i16 noundef zeroext 846) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 900, i16 noundef zeroext 12298) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2400, i16 noundef zeroext 12300) #7
  br label %configure_wh.exit.i.i

do.end14.i.i.i:                                   ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name17.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call19.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name17.i.i.i, i32 noundef %27) #10
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -22, ptr %usb_err.i, align 8
  br label %configure_wh.exit.i.i

if.then31.i.i.i:                                  ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 156, i16 noundef zeroext 836) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 3353, i16 noundef zeroext 840) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 104, i16 noundef zeroext 838) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2501, i16 noundef zeroext 842) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1731, i16 noundef zeroext 12352) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 1024) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext 1028) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1600, i16 noundef zeroext 844) #7
  %height.c.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %height.c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height.c.i.i.i, align 4
  %conv24.c.i.i.i = trunc i32 %34 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv24.c.i.i.i, i16 noundef zeroext 846) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1600, i16 noundef zeroext 12298) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 4000, i16 noundef zeroext 12300) #7
  br label %configure_wh.exit.i.i

if.then35.i.i.i:                                  ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 232, i16 noundef zeroext 836) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 3495, i16 noundef zeroext 840) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 158, i16 noundef zeroext 838) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2605, i16 noundef zeroext 842) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 577, i16 noundef zeroext 12352) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 1024) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext 1028) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 3264, i16 noundef zeroext 844) #7
  %height.c78.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %35 = ptrtoint ptr %height.c78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.c78.i.i.i, align 4
  %conv24.c79.i.i.i = trunc i32 %36 to i16
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %conv24.c79.i.i.i, i16 noundef zeroext 846) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2891, i16 noundef zeroext 12298) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 8000, i16 noundef zeroext 12300) #7
  br label %configure_wh.exit.i.i

configure_wh.exit.i.i:                            ; preds = %if.then35.i.i.i, %if.then31.i.i.i, %do.end14.i.i.i, %do.body.i.preheader.i.i.i
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 260) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 769, i16 noundef zeroext 12718) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 2053, i16 noundef zeroext 12388) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 113, i16 noundef zeroext 12656) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 4318, i16 noundef zeroext 12314) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 256) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 16, i16 noundef zeroext 774) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 256, i16 noundef zeroext 260) #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 260) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp4.i.i = icmp sgt i32 %37, 2
  br i1 %cmp4.i.i, label %do.end7.i.i, label %configure_wh.exit.i.i.configure_encrypted.exit.i_crit_edge

configure_wh.exit.i.i.configure_encrypted.exit.i_crit_edge: ; preds = %configure_wh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %configure_encrypted.exit.i

do.end7.i.i:                                      ; preds = %configure_wh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name10.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name10.i.i) #10
  br label %configure_encrypted.exit.i

configure_encrypted.exit.i:                       ; preds = %do.end7.i.i, %configure_wh.exit.i.i.configure_encrypted.exit.i_crit_edge
  %38 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool68.not.i = icmp eq i32 %39, 0
  br i1 %tobool68.not.i, label %if.end71.i, label %configure.exit

if.end71.i:                                       ; preds = %configure_encrypted.exit.i
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i145.i = shl i32 %43, 8
  %or75.i = or i32 %shl.i145.i, -2147483648
  %call76.i = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or75.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %do.end81.i, label %do.body88.i

do.end81.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  %name84.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name84.i, i32 noundef %call76.i) #10
  br label %cleanup.sink.split

do.body88.i:                                      ; preds = %if.end71.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp89.i = icmp sgt i32 %44, 2
  br i1 %cmp89.i, label %do.body88.i.cleanup.sink.split_crit_edge, label %do.body88.i.cleanup_crit_edge

do.body88.i.cleanup_crit_edge:                    ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body88.i.cleanup.sink.split_crit_edge:         ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

configure.exit:                                   ; preds = %configure_encrypted.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp slt i32 %39, 0
  br i1 %cmp, label %configure.exit.cleanup.sink.split_crit_edge, label %configure.exit.cleanup_crit_edge

configure.exit.cleanup_crit_edge:                 ; preds = %configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

configure.exit.cleanup.sink.split_crit_edge:      ; preds = %configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %configure.exit.cleanup.sink.split_crit_edge, %do.body88.i.cleanup.sink.split_crit_edge, %do.end81.i, %do.end60.i, %do.end44.i, %do.end28.i, %do.end12.i
  %.str.61.sink = phi ptr [ @.str.61, %do.body88.i.cleanup.sink.split_crit_edge ], [ @.str.41, %do.end81.i ], [ @.str.41, %do.end60.i ], [ @.str.41, %do.end44.i ], [ @.str.41, %do.end28.i ], [ @.str.41, %do.end12.i ], [ @.str.41, %configure.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.body88.i.cleanup.sink.split_crit_edge ], [ %call76.i, %do.end81.i ], [ %call55.i, %do.end60.i ], [ %call39.i, %do.end44.i ], [ %call23.i, %do.end28.i ], [ -5, %do.end12.i ], [ %39, %configure.exit.cleanup.sink.split_crit_edge ]
  %name96.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.61.sink, ptr noundef %name96.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %configure.exit.cleanup_crit_edge, %do.body88.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %configure.exit.cleanup_crit_edge ], [ 0, %do.body88.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %len)
  %cmp.not = icmp eq i32 %len, 16384
  %this_f31 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %this_f31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %this_f31, align 8
  br i1 %cmp.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %1, %len
  %sizeimage = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 5
  %2 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp1 = icmp eq i32 %add, %3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef %len) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp3 = icmp sgt i32 %4, 3
  br i1 %cmp3, label %if.then2.if.end28.sink.split_crit_edge, label %if.then2.if.end38_crit_edge

if.then2.if.end38_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then2.if.end28.sink.split_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split

if.else:                                          ; preds = %if.then
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 0, ptr noundef null, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp12 = icmp sgt i32 %5, 3
  br i1 %cmp12, label %if.else.if.end28.sink.split_crit_edge, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else.if.end28.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else.if.end28.sink.split_crit_edge, %if.then2.if.end28.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.77, %if.then2.if.end28.sink.split_crit_edge ], [ @.str.80, %if.else.if.end28.sink.split_crit_edge ]
  %name19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %this_f31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %this_f31, align 8
  %8 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sizeimage, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.80.sink, ptr noundef %name19, i32 noundef %7, i32 noundef %9, i32 noundef %len) #10
  br label %if.end38

if.else30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32 = icmp eq i32 %1, 0
  %. = select i1 %cmp32, i32 1, i32 2
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %., ptr noundef %data, i32 noundef 16384) #7
  %10 = ptrtoint ptr %this_f31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this_f31, align 8
  %add37 = add i32 %11, 16384
  br label %if.end38

if.end38:                                         ; preds = %if.else30, %if.end28.sink.split, %if.else.if.end38_crit_edge, %if.then2.if.end38_crit_edge
  %add37.sink = phi i32 [ %add37, %if.else30 ], [ 0, %if.end28.sink.split ], [ 0, %if.else.if.end38_crit_edge ], [ 0, %if.then2.if.end38_crit_edge ]
  %12 = ptrtoint ptr %this_f31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add37.sink, ptr %this_f31, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

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
  %4 = load i8, ptr %streaming, align 2, !range !179
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963793, label %sw.bb
    i32 9963795, label %sw.bb1
    i32 9963791, label %sw.bb3
    i32 9963790, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %pixfmt.i = getelementptr i8, ptr %1, i32 240
  %10 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixfmt.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %11, label %do.end.i [
    i32 800, label %if.then.i
    i32 1600, label %if.then3.i
    i32 3264, label %if.then9.i
  ]

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul i32 %9, 5
  br label %do.body15.i

if.then3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %mul4.i = mul i32 %9, 3
  br label %do.body15.i

if.then9.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %mul10.i = mul i32 %9, 3
  %div.i = sdiv i32 %mul10.i, 2
  br label %do.body15.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef %11) #10
  %13 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -22, ptr %usb_err, align 8
  br label %sw.epilog

do.body15.i:                                      ; preds = %if.then9.i, %if.then3.i, %if.then.i
  %value.0.in.i = phi i32 [ %mul.i, %if.then.i ], [ %mul4.i, %if.then3.i ], [ %div.i, %if.then9.i ]
  %value.0.i = trunc i32 %value.0.in.i to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp16.i = icmp sgt i32 %14, 2
  br i1 %cmp16.i, label %do.end21.i, label %do.body15.i.do.end30.i_crit_edge

do.body15.i.do.end30.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  %name24.i = getelementptr i8, ptr %1, i32 -168
  %conv26.i = and i32 %value.0.in.i, 65535
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name24.i, i32 noundef %conv26.i) #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i, %do.body15.i.do.end30.i_crit_edge
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext %value.0.i, i16 noundef zeroext 12306) #7
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext %value.0.i, i16 noundef zeroext 12306) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %gain = getelementptr i8, ptr %1, i32 192
  %15 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gain, align 8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val2, align 4
  %conv = trunc i32 %18 to i16
  %conv.i = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv)
  %cmp.i.i = icmp ult i16 %conv, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %conv.i, 4096
  br label %gainify.exit.i

if.else.i.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv)
  %cmp1.i.i = icmp ult i16 %conv, 256
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else4.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div111215.i.i = lshr i32 %conv.i, 1
  %or3.i.i = or i32 %div111215.i.i, 4224
  br label %gainify.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div51314.i.i = lshr i32 %conv.i, 2
  %or6.i.i = or i32 %div51314.i.i, 4480
  br label %gainify.exit.i

gainify.exit.i:                                   ; preds = %if.else4.i.i, %if.then2.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ %or3.i.i, %if.then2.i.i ], [ %or6.i.i, %if.else4.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.i = icmp sgt i32 %19, 2
  br i1 %cmp.i, label %do.end.i41, label %gainify.exit.i.setggain.exit_crit_edge

gainify.exit.i.setggain.exit_crit_edge:           ; preds = %gainify.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setggain.exit

do.end.i41:                                       ; preds = %gainify.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i40 = getelementptr i8, ptr %1, i32 -168
  %conv4.i = and i32 %retval.0.i.i, 65535
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i40, i32 noundef 12374, i32 noundef %conv4.i, i32 noundef %conv.i) #10
  br label %setggain.exit

setggain.exit:                                    ; preds = %do.end.i41, %gainify.exit.i.setggain.exit_crit_edge
  %conv1.i = trunc i32 %retval.0.i.i to i16
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext %conv1.i, i16 noundef zeroext 12374) #7
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext %conv1.i, i16 noundef zeroext 12380) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val4, align 4
  %blue = getelementptr i8, ptr %1, i32 1028
  %22 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blue, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %val5, align 4
  %25 = load ptr, ptr %blue, align 4
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val7, align 4
  %gain9 = getelementptr i8, ptr %1, i32 192
  %28 = ptrtoint ptr %gain9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gain9, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val10, align 4
  %conv11 = trunc i32 %31 to i16
  %conv.i42 = and i32 %31, 65535
  %conv2.i = and i32 %27, 65535
  %mul.i43 = mul nuw i32 %conv.i42, %conv2.i
  %div.i44 = udiv i32 %mul.i43, 511
  %32 = trunc i32 %div.i44 to i16
  %conv3.i = add i16 %32, %conv11
  %conv4.i45 = zext i16 %conv3.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %conv3.i)
  %cmp.i46 = icmp ugt i16 %conv3.i, 511
  br i1 %cmp.i46, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %sw.bb3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %33 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp6.i = icmp sgt i32 %33, 2
  br i1 %cmp6.i, label %do.end.i49, label %do.body.i.if.else4.i.i60_crit_edge

do.body.i.if.else4.i.i60_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4.i.i60

do.end.i49:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i47 = getelementptr i8, ptr %1, i32 -168
  %call.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i47, i32 noundef 511, i32 noundef %conv4.i45) #10
  br label %if.else4.i.i60

if.end13.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv3.i)
  %cmp.i.i50 = icmp ult i16 %conv3.i, 128
  br i1 %cmp.i.i50, label %if.then.i.i52, label %if.else.i.i54

if.then.i.i52:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i51 = or i32 %conv4.i45, 4096
  br label %gainify.exit.i62

if.else.i.i54:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv3.i)
  %cmp1.i.i53 = icmp ult i16 %conv3.i, 256
  br i1 %cmp1.i.i53, label %if.then2.i.i57, label %if.else.i.i54.if.else4.i.i60_crit_edge

if.else.i.i54.if.else4.i.i60_crit_edge:           ; preds = %if.else.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4.i.i60

if.then2.i.i57:                                   ; preds = %if.else.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  %div111215.i.i55 = lshr i32 %conv4.i45, 1
  %or3.i.i56 = or i32 %div111215.i.i55, 4224
  br label %gainify.exit.i62

if.else4.i.i60:                                   ; preds = %if.else.i.i54.if.else4.i.i60_crit_edge, %do.end.i49, %do.body.i.if.else4.i.i60_crit_edge
  %conv144548.i = phi i32 [ %conv4.i45, %if.else.i.i54.if.else4.i.i60_crit_edge ], [ 511, %do.body.i.if.else4.i.i60_crit_edge ], [ 511, %do.end.i49 ]
  %div51314.i.i58 = lshr i32 %conv144548.i, 2
  %or6.i.i59 = or i32 %div51314.i.i58, 4480
  br label %gainify.exit.i62

gainify.exit.i62:                                 ; preds = %if.else4.i.i60, %if.then2.i.i57, %if.then.i.i52
  %retval.0.i.i61 = phi i32 [ %or.i.i51, %if.then.i.i52 ], [ %or3.i.i56, %if.then2.i.i57 ], [ %or6.i.i59, %if.else4.i.i60 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %34 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp18.i = icmp sgt i32 %34, 2
  br i1 %cmp18.i, label %do.end23.i, label %gainify.exit.i62.setbgain.exit_crit_edge

gainify.exit.i62.setbgain.exit_crit_edge:         ; preds = %gainify.exit.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %setbgain.exit

do.end23.i:                                       ; preds = %gainify.exit.i62
  call void @__sanitizer_cov_trace_pc() #9
  %name26.i = getelementptr i8, ptr %1, i32 -168
  %conv28.i = and i32 %retval.0.i.i61, 65535
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name26.i, i32 noundef 12376, i32 noundef %conv28.i, i32 noundef %conv2.i) #10
  br label %setbgain.exit

setbgain.exit:                                    ; preds = %do.end23.i, %gainify.exit.i62.setbgain.exit_crit_edge
  %conv16.i = trunc i32 %retval.0.i.i61 to i16
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext %conv16.i, i16 noundef zeroext 12376) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val13, align 4
  %red = getelementptr i8, ptr %1, i32 1032
  %37 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %red, align 8
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %val14, align 4
  %40 = load ptr, ptr %red, align 8
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val16, align 4
  %gain18 = getelementptr i8, ptr %1, i32 192
  %43 = ptrtoint ptr %gain18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gain18, align 8
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val19, align 4
  %conv20 = trunc i32 %46 to i16
  %conv.i63 = and i32 %46, 65535
  %conv2.i64 = and i32 %42, 65535
  %mul.i65 = mul nuw i32 %conv.i63, %conv2.i64
  %div.i66 = udiv i32 %mul.i65, 511
  %47 = trunc i32 %div.i66 to i16
  %conv3.i67 = add i16 %47, %conv20
  %conv4.i68 = zext i16 %conv3.i67 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %conv3.i67)
  %cmp.i69 = icmp ugt i16 %conv3.i67, 511
  br i1 %cmp.i69, label %do.body.i71, label %if.end13.i76

do.body.i71:                                      ; preds = %sw.bb12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %48 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp6.i70 = icmp sgt i32 %48, 2
  br i1 %cmp6.i70, label %do.end.i74, label %do.body.i71.if.else4.i.i87_crit_edge

do.body.i71.if.else4.i.i87_crit_edge:             ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4.i.i87

do.end.i74:                                       ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #9
  %name.i72 = getelementptr i8, ptr %1, i32 -168
  %call.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i72, i32 noundef 511, i32 noundef %conv4.i68) #10
  br label %if.else4.i.i87

if.end13.i76:                                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv3.i67)
  %cmp.i.i75 = icmp ult i16 %conv3.i67, 128
  br i1 %cmp.i.i75, label %if.then.i.i78, label %if.else.i.i80

if.then.i.i78:                                    ; preds = %if.end13.i76
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i77 = or i32 %conv4.i68, 4096
  br label %gainify.exit.i90

if.else.i.i80:                                    ; preds = %if.end13.i76
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %conv3.i67)
  %cmp1.i.i79 = icmp ult i16 %conv3.i67, 256
  br i1 %cmp1.i.i79, label %if.then2.i.i83, label %if.else.i.i80.if.else4.i.i87_crit_edge

if.else.i.i80.if.else4.i.i87_crit_edge:           ; preds = %if.else.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4.i.i87

if.then2.i.i83:                                   ; preds = %if.else.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  %div111215.i.i81 = lshr i32 %conv4.i68, 1
  %or3.i.i82 = or i32 %div111215.i.i81, 4224
  br label %gainify.exit.i90

if.else4.i.i87:                                   ; preds = %if.else.i.i80.if.else4.i.i87_crit_edge, %do.end.i74, %do.body.i71.if.else4.i.i87_crit_edge
  %conv144548.i84 = phi i32 [ %conv4.i68, %if.else.i.i80.if.else4.i.i87_crit_edge ], [ 511, %do.body.i71.if.else4.i.i87_crit_edge ], [ 511, %do.end.i74 ]
  %div51314.i.i85 = lshr i32 %conv144548.i84, 2
  %or6.i.i86 = or i32 %div51314.i.i85, 4480
  br label %gainify.exit.i90

gainify.exit.i90:                                 ; preds = %if.else4.i.i87, %if.then2.i.i83, %if.then.i.i78
  %retval.0.i.i88 = phi i32 [ %or.i.i77, %if.then.i.i78 ], [ %or3.i.i82, %if.then2.i.i83 ], [ %or6.i.i86, %if.else4.i.i87 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp18.i89 = icmp sgt i32 %49, 2
  br i1 %cmp18.i89, label %do.end23.i94, label %gainify.exit.i90.setrgain.exit_crit_edge

gainify.exit.i90.setrgain.exit_crit_edge:         ; preds = %gainify.exit.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %setrgain.exit

do.end23.i94:                                     ; preds = %gainify.exit.i90
  call void @__sanitizer_cov_trace_pc() #9
  %name26.i91 = getelementptr i8, ptr %1, i32 -168
  %conv28.i92 = and i32 %retval.0.i.i88, 65535
  %call30.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name26.i91, i32 noundef 12378, i32 noundef %conv28.i92, i32 noundef %conv2.i64) #10
  br label %setrgain.exit

setrgain.exit:                                    ; preds = %do.end23.i94, %gainify.exit.i90.setrgain.exit_crit_edge
  %conv16.i95 = trunc i32 %retval.0.i.i88 to i16
  tail call fastcc void @reg_w(ptr noundef %add.ptr, i16 noundef zeroext %conv16.i95, i16 noundef zeroext 12378) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %setrgain.exit, %setbgain.exit, %setggain.exit, %do.end30.i, %do.end.i, %if.end.sw.epilog_crit_edge
  %50 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %51, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %value, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp sgt i32 %2, 6
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i16 %value to i32
  %conv2 = zext i16 %index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv, i32 noundef %conv2) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or7 = or i32 %shl.i, -2147483520
  %call8 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or7, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %1, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp10 = icmp sgt i32 %7, 6
  br i1 %cmp10, label %do.end15, label %do.end4.do.end24_crit_edge

do.end4.do.end24_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end15:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %name18 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv20 = zext i8 %9 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name18, i32 noundef %call8, i32 noundef %conv20) #10
  br label %do.end24

do.end24:                                         ; preds = %do.end15, %do.end4.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp25 = icmp slt i32 %call8, 0
  br i1 %cmp25, label %do.end30, label %if.end.i

do.end30:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %name33 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv35 = zext i16 %value to i32
  %conv36 = zext i16 %index to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name33, i32 noundef %conv35, i32 noundef %conv36, i32 noundef %call8) #10
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp1.not.i = icmp eq i32 %call8, 1
  br i1 %cmp1.not.i, label %if.end10.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name7.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name7.i, i32 noundef %call8) #10
  br label %do.end43

if.end10.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %11)
  %cmp11.not.i = icmp eq i8 %11, 8
  br i1 %cmp11.not.i, label %if.end10.i.cleanup_crit_edge, label %do.end15.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %11 to i32
  %name18.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name18.i, i32 noundef %conv.i) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end15.i, %do.end4.i
  %name46 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv48 = zext i16 %value to i32
  %conv49 = zext i16 %index to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name46, i32 noundef %conv48, i32 noundef %conv49) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end43, %do.end30
  %.sink = phi i32 [ -5, %do.end43 ], [ %call8, %do.end30 ]
  %usb_err51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %12 = ptrtoint ptr %usb_err51 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %usb_err51, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !148, !150, !152, !153, !154, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/touptek.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/touptek.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/touptek.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_touptek__307_726_sd_mod_init6, !8, !"__initcall__kmod_gspca_touptek__307_726_sd_mod_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/touptek.c", i32 726, i32 1}
!9 = !{ptr @__exitcall_sd_mod_exit, !10, !"__exitcall_sd_mod_exit", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/gspca/touptek.c", i32 727, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/touptek.c", i32 702, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/touptek.c", i32 701, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/touptek.c", i32 647, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/touptek.c", i32 157, i32 37}
!19 = !{ptr @sd_init_controls._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/touptek.c", i32 626, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/touptek.c", i32 640, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sd_init_controls._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @sd_init_controls._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sd_ctrl_ops, !29, !"sd_ctrl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/touptek.c", i32 616, i32 35}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/touptek.c", i32 248, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @setexposure._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @setexposure._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/touptek.c", i32 252, i32 2}
!37 = !{ptr @setexposure._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @setexposure._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/touptek.c", i32 208, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @reg_w._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @reg_w._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/touptek.c", i32 213, i32 2}
!46 = !{ptr @reg_w._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @reg_w._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/touptek.c", i32 215, i32 3}
!50 = !{ptr @reg_w._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @reg_w._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/touptek.c", i32 221, i32 3}
!54 = !{ptr @reg_w._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @reg_w._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/touptek.c", i32 189, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @val_reply._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @val_reply._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/touptek.c", i32 193, i32 3}
!63 = !{ptr @val_reply._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @val_reply._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/touptek.c", i32 197, i32 3}
!67 = !{ptr @val_reply._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @val_reply._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/touptek.c", i32 280, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @setggain._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @setggain._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/touptek.c", i32 296, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @setbgain._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @setbgain._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/touptek.c", i32 301, i32 2}
!81 = !{ptr @setbgain._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @setbgain._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/touptek.c", i32 315, i32 3}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @setrgain._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @setrgain._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/touptek.c", i32 320, i32 2}
!90 = !{ptr @setrgain._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @setrgain._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/touptek.c", i32 544, i32 3}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sd_start._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sd_start._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/touptek.c", i32 435, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @configure._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @configure._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/gspca/touptek.c", i32 453, i32 3}
!104 = !{ptr @configure._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @configure._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/gspca/touptek.c", i32 470, i32 3}
!108 = !{ptr @configure._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @configure._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/touptek.c", i32 478, i32 3}
!112 = !{ptr @configure._entry.51, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @configure._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/touptek.c", i32 486, i32 3}
!116 = !{ptr @configure._entry.54, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @configure._entry_ptr.56, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/touptek.c", i32 509, i32 3}
!120 = !{ptr @configure._entry.57, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @configure._entry_ptr.59, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/touptek.c", i32 514, i32 2}
!124 = !{ptr @configure._entry.60, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @configure._entry_ptr.62, !123, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"reg_init_begin", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/touptek.c", i32 395, i32 26}
!128 = distinct !{null, !129, !"reg_init_end", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/gspca/touptek.c", i32 408, i32 26}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/touptek.c", i32 419, i32 2}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @configure_encrypted._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @configure_encrypted._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/gspca/touptek.c", i32 427, i32 2}
!137 = !{ptr @configure_encrypted._entry.65, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @configure_encrypted._entry_ptr.67, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/gspca/touptek.c", i32 330, i32 2}
!141 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @configure_wh._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @configure_wh._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !145, !"reg_init_res", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/gspca/touptek.c", i32 333, i32 27}
!146 = distinct !{null, !147, !"reg_init_res", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/touptek.c", i32 344, i32 27}
!148 = distinct !{null, !149, !"reg_init_res", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/gspca/touptek.c", i32 355, i32 27}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/gspca/touptek.c", i32 366, i32 3}
!152 = !{ptr @configure_wh._entry.72, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @configure_wh._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @configure_wh._entry.75, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/gspca/touptek.c", i32 386, i32 3}
!156 = !{ptr @configure_wh._entry_ptr.76, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/gspca/touptek.c", i32 562, i32 4}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @sd_pkt_scan._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @sd_pkt_scan._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/gspca/touptek.c", i32 567, i32 4}
!164 = !{ptr @sd_pkt_scan._entry.79, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sd_pkt_scan._entry_ptr.81, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @device_table, !167, !"device_table", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/gspca/touptek.c", i32 657, i32 35}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/gspca/touptek.c", i32 716, i32 8}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i8 0, i8 2}
