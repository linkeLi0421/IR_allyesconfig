; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sn9c2028.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sn9c2028.c"
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
%struct.init_command = type { [6 x i8], i8 }
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
%struct.sd = type { %struct.gspca_dev, i8, i16, i32, i8, %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [39 x i8] c"gspca_sn9c2028.author=Theodore Kilgore\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [60 x i8] c"gspca_sn9c2028.description=Sonix SN9C2028 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [59 x i8] c"gspca_sn9c2028.file=drivers/media/usb/gspca/gspca_sn9c2028\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [27 x i8] c"gspca_sn9c2028.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sn9c2028__307_963_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gspca_sn9c2028\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sn9c2028\00", [23 x i8] zeroinitializer }, align 32
@device_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1112, i16 28677, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 28675, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3141, i16 -32767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3141, i16 -32765, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3141, i16 -32760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3141, i16 -32758, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @sd_dqcallback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: SN9C2028 camera detected (vid/pid 0x%04X:0x%04X)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/gspca/sn9c2028.c\00", [61 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Genius Smart 300 camera\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Genius Videocam Live v2\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@sd_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: DC31VC\0A\00", [18 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.13 = internal global ptr @sd_config._entry.11, section ".printk_index", align 4
@sd_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: Spy camera\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.16 = internal global ptr @sd_config._entry.14, section ".printk_index", align 4
@sd_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: CIF camera\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.19 = internal global ptr @sd_config._entry.17, section ".printk_index", align 4
@sd_config._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Mini-Shotz ms-350 camera\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.22 = internal global ptr @sd_config._entry.20, section ".printk_index", align 4
@sd_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Vivitar 3350b type camera\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.25 = internal global ptr @sd_config._entry.23, section ".printk_index", align 4
@cif_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 352, i32 288, i32 1481527123, i32 1, i32 352, i32 76032, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1481527123, i32 1, i32 640, i32 230400, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sn9c2028_read1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gspca_sn9c2028: read1 error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sn9c2028_read1\00", [17 x i8] zeroinitializer }, align 32
@sn9c2028_read1._entry_ptr = internal global ptr @sn9c2028_read1._entry, section ".printk_index", align 4
@sn9c2028_read1._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: read1 response %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@sn9c2028_read1._entry_ptr.30 = internal global ptr @sn9c2028_read1._entry.28, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sn9c2028:310:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@__const.set_gain.genius_vcam_live_gain_cmds = private unnamed_addr constant [1 x %struct.init_command] [%struct.init_command { [6 x i8] c"\1D%\10 \AB\00", i8 0 }], align 1
@sn9c2028_long_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gspca_sn9c2028: long command status read error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sn9c2028_long_command\00", [42 x i8] zeroinitializer }, align 32
@sn9c2028_long_command._entry_ptr = internal global ptr @sn9c2028_long_command._entry, section ".printk_index", align 4
@sn9c2028_read4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gspca_sn9c2028: read4 error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sn9c2028_read4\00", [17 x i8] zeroinitializer }, align 32
@sn9c2028_read4._entry_ptr = internal global ptr @sn9c2028_read4._entry, section ".printk_index", align 4
@sn9c2028_read4._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: read4 response %02x%02x%02x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@sn9c2028_read4._entry_ptr.38 = internal global ptr @sn9c2028_read4._entry.36, section ".printk_index", align 4
@sn9c2028_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: sending command %02x%02x%02x%02x%02x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sn9c2028_command\00", [47 x i8] zeroinitializer }, align 32
@sn9c2028_command._entry_ptr = internal global ptr @sn9c2028_command._entry, section ".printk_index", align 4
@sn9c2028_command._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gspca_sn9c2028: command write [%02x] error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@sn9c2028_command._entry_ptr.43 = internal global ptr @sn9c2028_command._entry.41, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013gspca_sn9c2028: Starting unknown camera, please report this\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@__const.start_genius_cam.genius_start_commands = private unnamed_addr constant [61 x %struct.init_command] [%struct.init_command { [6 x i8] c"\0C\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\16\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\10\00\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01\16\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\12\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\0E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01\22\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\07\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11 \00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11!-\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\22\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11#\03\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11d\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13\91\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\14\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\15 \00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\16\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\17`\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11 \00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11!-\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\22\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11#\03\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11%\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11&\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11'\88\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1108\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\111*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\112*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\113*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\114\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11[\0A\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01(\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\1E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\0E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01b\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\0F\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\0C\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11 \00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11!*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\22\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11#(\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11\04\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13\03\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\14\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\15\E0\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\16\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\17\80\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1C \00*\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1C \00*\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 4\A1\00\00\00", i8 0 }], align 1
@__const.start_genius_videocam_live.genius_vcam_live_start_commands = private unnamed_addr constant [93 x %struct.init_command] [%struct.init_command { [6 x i8] c"\0C\01\00\00\00\00", i8 0 }, %struct.init_command { [6 x i8] c"\16\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\10\00\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01\16\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\12\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\0E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01\22\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\07\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11 \00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11!-\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\22\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11#\03\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11d\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13\91\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\14\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\15 \00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\16\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\17`\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1C \00-\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13 \01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13!\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13\22\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13#\01\01\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13$\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01\16\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\12\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\0E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01\22\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13*\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13+\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\07\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\124\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\134\01\A1\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\135\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\01\04\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\02\92\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11d\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13\91\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\14\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\15 \00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\16\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\17`\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11 \00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11!-\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\22\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11#\03\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11%\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11&\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11'\88\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1108\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\111*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\112*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\113*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\114\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11[\0A\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01(\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\1E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\0E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01b\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\0F\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\0C\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11 \00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11!*\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\22\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11#(\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11\04\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13\03\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\14\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\15\E0\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\16\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\17\80\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1C \00*\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 4\A1\00\00\00", i8 0 }, %struct.init_command { [6 x i8] c"\12'\01\00\00\00", i8 0 }, %struct.init_command { [6 x i8] c"\1B2&\00\00\00", i8 0 }, %struct.init_command { [6 x i8] c"\1D%\10 \AB\00", i8 0 }], align 1
@__const.start_spy_cam.spy_start_commands = private unnamed_addr constant [42 x %struct.init_command] [%struct.init_command { [6 x i8] c"\0C\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13 \01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13!\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13\22\01\04\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13#\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13$\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01\16\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\12\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01h\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13*\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13+\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\07\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\124\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\134\01\A1\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\135\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\02\06\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\03\13\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\04\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\05\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\06\B1\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\07\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\08\0B\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\09\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0A\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0B\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0C\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0D\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0E\04\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0F\04\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\06\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11\06\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\14\02\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1B\02\11\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\13\11\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 4\A1\00\00\00", i8 1 }], align 1
@__const.start_cif_cam.cif_start_commands = private unnamed_addr constant [41 x %struct.init_command] [%struct.init_command { [6 x i8] c"\0C\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1B!\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\17\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\19\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\02\06\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\03Z\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\04'\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\05\01\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\12\14\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\13\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\14\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\15\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\16\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bw\A2\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\06\0F\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\07\14\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\08\0F\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\09\10\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\0E\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\0F\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\12\07\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\10\1F\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\11\01\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\13%\01\16\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\13&\01\12\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\01\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\08\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\06\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1B\04m\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\05\03\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 6\06\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\0E\01\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\12'\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1B\0F\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 6\05\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\10\0F\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\02\06\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\11\01\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 4\A1\00\00\00", i8 1 }], align 1
@__const.start_ms350_cam.ms350_start_commands = private unnamed_addr constant [58 x %struct.init_command] [%struct.init_command { [6 x i8] c"\0C\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\16\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13 \01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13!\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13\22\01\04\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13#\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13$\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01\16\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\12\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01(\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13*\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13+\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\0F\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\0C\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\124\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\134\01\A1\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\135\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\00\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\01p\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\02\05\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\03]\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\04\07\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\05%\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\06\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\07\09\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\08\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\09\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0A\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0B\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0C\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0D\0C\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0E\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\0F\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\10\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\12\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\13c\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\15p\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\18\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\11\11\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01(\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\1E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\09\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01(\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01@\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\0F\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\0C\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1B\02\05\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\11\01\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" \18\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\02\0A\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\11\01\00\00\00", i8 0 }], align 1
@__const.start_vivitar_cam.vivitar_start_commands = private unnamed_addr constant [63 x %struct.init_command] [%struct.init_command { [6 x i8] c"\0C\01\00\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13 \01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13!\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13\22\01\01\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13#\01\01\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13$\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13%\01(\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13&\01\1E\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13'\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13(\01\0A\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13)\01 \00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13*\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13+\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13,\01\02\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13-\01\03\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13.\01\0F\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\13/\01\0C\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\124\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\134\01\A1\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\135\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1B\12\80\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\01w\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\02:\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\12x\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\13\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\14\80\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\154\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\1B\04\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B D\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B#\EE\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B&\A0\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B'\9A\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B(\A0\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B)0\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B*\80\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B+\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B/=\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B0$\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B2\86\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B`\A9\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1BaB\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Be\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bi8\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bo\88\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bp\0B\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bq\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bt!\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bu\86\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1Bv\00\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B}\F3\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\17\1C\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\18\C0\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\19\05\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\1A\F6\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 6\06\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\10&\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\12'\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c"\1Bv\03\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 6\05\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\1B\00?\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c"\12'\01\00\00\00", i8 4 }, %struct.init_command { [6 x i8] c" )0\00\00\00", i8 1 }, %struct.init_command { [6 x i8] c" 4\A1\00\00\00", i8 1 }], align 1
@sn9c2028_sof_marker = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\FF\FF\00\C4\C4\96\00\00\00\00\00\00", [20 x i8] zeroinitializer }, align 32
@sn9c2028_find_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: SOF found, bytes to analyze: %u - Frame starts at byte #%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sn9c2028_find_sof\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/gspca/sn9c2028.h\00", [61 x i8] zeroinitializer }, align 32
@sn9c2028_find_sof._entry_ptr = internal global ptr @sn9c2028_find_sof._entry, section ".printk_index", align 4
@sd_stopN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Camera Stop read failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_stopN\00", [23 x i8] zeroinitializer }, align 32
@sd_stopN._entry_ptr = internal global ptr @sd_stopN._entry, section ".printk_index", align 4
@sd_stopN._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Camera Stop command failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sd_stopN._entry_ptr.53 = internal global ptr @sd_stopN._entry.51, section ".printk_index", align 4
@switch.table.sd_config = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @cif_mode, ptr @cif_mode, ptr @vga_mode, ptr @cif_mode], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 28675, i64 28677, i64 32768, i64 32769, i64 32771, i64 32776, i64 32778]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 16, i64 28675, i64 28677, i64 32769, i64 32771, i64 32776, i64 32778]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 9963795]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 951, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 963, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 952, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 929, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 917, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 171, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 178, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 181, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 184, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 187, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 190, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 193, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 196, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"cif_mode\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 50, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 41, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 92, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 95, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 310, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 299, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 131, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 109, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 113, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 63, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 74, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 829, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"sn9c2028_sof_marker\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 10, i32 28 }
@___asan_gen_.218 = private unnamed_addr constant [38 x i8] c"../drivers/media/usb/gspca/sn9c2028.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 36, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 845, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [38 x i8] c"../drivers/media/usb/gspca/sn9c2028.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 851, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"switch.table.sd_config\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sn9c2028__307_963_sd_driver_init6, ptr @sd_config._entry, ptr @sd_config._entry.11, ptr @sd_config._entry.14, ptr @sd_config._entry.17, ptr @sd_config._entry.20, ptr @sd_config._entry.23, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.13, ptr @sd_config._entry_ptr.16, ptr @sd_config._entry_ptr.19, ptr @sd_config._entry_ptr.22, ptr @sd_config._entry_ptr.25, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_start._entry, ptr @sd_start._entry_ptr, ptr @sd_stopN._entry, ptr @sd_stopN._entry.51, ptr @sd_stopN._entry_ptr, ptr @sd_stopN._entry_ptr.53, ptr @sn9c2028_command._entry, ptr @sn9c2028_command._entry.41, ptr @sn9c2028_command._entry_ptr, ptr @sn9c2028_command._entry_ptr.43, ptr @sn9c2028_find_sof._entry, ptr @sn9c2028_find_sof._entry_ptr, ptr @sn9c2028_long_command._entry, ptr @sn9c2028_long_command._entry_ptr, ptr @sn9c2028_read1._entry, ptr @sn9c2028_read1._entry.28, ptr @sn9c2028_read1._entry_ptr, ptr @sn9c2028_read1._entry_ptr.30, ptr @sn9c2028_read4._entry, ptr @sn9c2028_read4._entry.36, ptr @sn9c2028_read4._entry_ptr, ptr @sn9c2028_read4._entry_ptr.38, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @cif_mode, ptr @vga_mode, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @sd_init_controls._key, ptr @.str.31, ptr @sd_ctrl_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @sn9c2028_sof_marker, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @switch.table.sd_config], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cif_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_read1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_read1._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_long_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_read4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_read4._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_command._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_sof_marker to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn9c2028_find_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 0, i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2632, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %idVendor, align 2
  %conv = zext i16 %2 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %3 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idProduct, align 4
  %conv3 = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %idProduct6 = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %5 = ptrtoint ptr %idProduct6 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct6, align 4
  %model = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %7 = ptrtoint ptr %model to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %model, align 2
  %8 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %do.end5.sw.epilog_crit_edge [
    i16 28677, label %do.body9
    i16 28675, label %do.body25
    i16 -32768, label %do.body41
    i16 -32767, label %do.body57
    i16 -32765, label %do.body73
    i16 -32760, label %do.body89
    i16 -32758, label %do.body105
  ]

do.end5.sw.epilog_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body9:                                         ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10 = icmp sgt i32 %9, 0
  br i1 %cmp10, label %do.end15, label %do.body9.sw.epilog125_crit_edge

do.body9.sw.epilog125_crit_edge:                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %name18 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name18) #9
  br label %sw.epilogthread-pre-split

do.body25:                                        ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26 = icmp sgt i32 %10, 0
  br i1 %cmp26, label %do.end31, label %do.body25.sw.epilog125_crit_edge

do.body25.sw.epilog125_crit_edge:                 ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %name34 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name34) #9
  br label %sw.epilogthread-pre-split

do.body41:                                        ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp42 = icmp sgt i32 %11, 0
  br i1 %cmp42, label %do.end47, label %do.body41.sw.epilog125_crit_edge

do.body41.sw.epilog125_crit_edge:                 ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %name50 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name50) #9
  br label %sw.epilogthread-pre-split

do.body57:                                        ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp58 = icmp sgt i32 %12, 0
  br i1 %cmp58, label %do.end63, label %do.body57.sw.epilog125_crit_edge

do.body57.sw.epilog125_crit_edge:                 ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %name66 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name66) #9
  br label %sw.epilogthread-pre-split

do.body73:                                        ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp74 = icmp sgt i32 %13, 0
  br i1 %cmp74, label %do.end79, label %do.body73.sw.epilog125_crit_edge

do.body73.sw.epilog125_crit_edge:                 ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %name82 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name82) #9
  br label %sw.epilogthread-pre-split

do.body89:                                        ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp90 = icmp sgt i32 %14, 0
  br i1 %cmp90, label %do.end95, label %do.body89.sw.epilog125_crit_edge

do.body89.sw.epilog125_crit_edge:                 ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  %name98 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name98) #9
  br label %sw.epilogthread-pre-split

do.body105:                                       ; preds = %do.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp106 = icmp sgt i32 %15, 0
  br i1 %cmp106, label %do.end111, label %do.body105.do.end119_crit_edge

do.body105.do.end119_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  %name114 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name114) #9
  br label %do.end119

do.end119:                                        ; preds = %do.end111, %do.body105.do.end119_crit_edge
  %input_flags = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %input_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 48, ptr %input_flags, align 4
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %do.end119, %do.end95, %do.end79, %do.end63, %do.end47, %do.end31, %do.end15
  %17 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr = load i16, ptr %model, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %do.end5.sw.epilog_crit_edge
  %18 = phi i16 [ %.pr, %sw.epilogthread-pre-split ], [ %6, %do.end5.sw.epilog_crit_edge ]
  %switch.tableidx = xor i16 %18, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %19 = icmp ult i16 %switch.tableidx, 4
  br i1 %19, label %switch.lookup, label %sw.epilog.sw.epilog125_crit_edge

sw.epilog.sw.epilog125_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog125

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %20 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.sd_config, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog125

sw.epilog125:                                     ; preds = %switch.lookup, %sw.epilog.sw.epilog125_crit_edge, %do.body89.sw.epilog125_crit_edge, %do.body73.sw.epilog125_crit_edge, %do.body57.sw.epilog125_crit_edge, %do.body41.sw.epilog125_crit_edge, %do.body25.sw.epilog125_crit_edge, %do.body9.sw.epilog125_crit_edge
  %vga_mode.sink = phi ptr [ @cif_mode, %do.body41.sw.epilog125_crit_edge ], [ @cif_mode, %do.body57.sw.epilog125_crit_edge ], [ @cif_mode, %do.body73.sw.epilog125_crit_edge ], [ %switch.load, %switch.lookup ], [ @vga_mode, %sw.epilog.sw.epilog125_crit_edge ], [ @vga_mode, %do.body9.sw.epilog125_crit_edge ], [ @vga_mode, %do.body25.sw.epilog125_crit_edge ], [ @vga_mode, %do.body89.sw.epilog125_crit_edge ]
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %22 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %vga_mode.sink, ptr %cam1, align 4
  %nmodes124 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %nmodes124 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %nmodes124, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i) #9
  br label %sn9c2028_read1.exit

do.body6.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp7.i = icmp sgt i32 %6, 5
  br i1 %cmp7.i, label %do.end11.i, label %do.body6.i.sn9c2028_read1.exit_crit_edge

do.body6.i.sn9c2028_read1.exit_crit_edge:         ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sn9c2028_read1.exit

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, i32 noundef %conv.i) #9
  br label %sn9c2028_read1.exit

sn9c2028_read1.exit:                              ; preds = %do.end11.i, %do.body6.i.sn9c2028_read1.exit_crit_edge, %do.end.i
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i7 = shl i32 %14, 8
  %or2.i8 = or i32 %shl.i.i7, -2147483520
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call3.i10 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or2.i8, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %16, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i10)
  %cmp.not.i11 = icmp eq i32 %call3.i10, 1
  br i1 %cmp.not.i11, label %do.body6.i17, label %do.end.i15

do.end.i15:                                       ; preds = %sn9c2028_read1.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i10) #9
  br label %sn9c2028_read1.exit25

do.body6.i17:                                     ; preds = %sn9c2028_read1.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp7.i16 = icmp sgt i32 %17, 5
  br i1 %cmp7.i16, label %do.end11.i21, label %do.body6.i17.sn9c2028_read1.exit25_crit_edge

do.body6.i17.sn9c2028_read1.exit25_crit_edge:     ; preds = %do.body6.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sn9c2028_read1.exit25

do.end11.i21:                                     ; preds = %do.body6.i17
  call void @__sanitizer_cov_trace_pc() #8
  %name.i18 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %conv.i19 = zext i8 %21 to i32
  %call14.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i18, i32 noundef %conv.i19) #9
  br label %sn9c2028_read1.exit25

sn9c2028_read1.exit25:                            ; preds = %do.end11.i21, %do.body6.i17.sn9c2028_read1.exit25_crit_edge, %do.end.i15
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i27 = shl i32 %25, 8
  %or2.i28 = or i32 %shl.i.i27, -2147483520
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call3.i30 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or2.i28, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i30)
  %cmp.not.i31 = icmp eq i32 %call3.i30, 1
  br i1 %cmp.not.i31, label %do.body6.i37, label %do.end.i35

do.end.i35:                                       ; preds = %sn9c2028_read1.exit25
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30)
  %cmp5.i33 = icmp slt i32 %call3.i30, 0
  %spec.select.i34 = select i1 %cmp5.i33, i32 %call3.i30, i32 -5
  br label %sn9c2028_read1.exit45

do.body6.i37:                                     ; preds = %sn9c2028_read1.exit25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp7.i36 = icmp sgt i32 %28, 5
  br i1 %cmp7.i36, label %do.end11.i41, label %do.body6.i37.do.end17.i43_crit_edge

do.body6.i37.do.end17.i43_crit_edge:              ; preds = %do.body6.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i43

do.end11.i41:                                     ; preds = %do.body6.i37
  call void @__sanitizer_cov_trace_pc() #8
  %name.i38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i39 = zext i8 %32 to i32
  %call14.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i38, i32 noundef %conv.i39) #9
  br label %do.end17.i43

do.end17.i43:                                     ; preds = %do.end11.i41, %do.body6.i37.do.end17.i43_crit_edge
  %33 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv20.i42 = zext i8 %36 to i32
  br label %sn9c2028_read1.exit45

sn9c2028_read1.exit45:                            ; preds = %do.end17.i43, %do.end.i35
  %retval.0.i44 = phi i32 [ %spec.select.i34, %do.end.i35 ], [ %conv20.i42, %do.end17.i43 ]
  %37 = tail call i32 @llvm.smin.i32(i32 %retval.0.i44, i32 0)
  ret i32 %37
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.31) #6
  %model = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %model, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28675, i16 %2)
  %cond = icmp eq i16 %2, 28675
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 20, i64 noundef 1, i64 noundef 0) #6
  %3 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %gain, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %vivitar_start_commands.i = alloca [63 x %struct.init_command], align 1
  %ms350_start_commands.i = alloca [58 x %struct.init_command], align 1
  %cif_start_commands.i = alloca [41 x %struct.init_command], align 1
  %spy_start_commands.i = alloca [42 x %struct.init_command], align 1
  %genius_vcam_live_gain_cmds.i.i = alloca [1 x %struct.init_command], align 1
  %genius_vcam_live_start_commands.i = alloca [93 x %struct.init_command], align 1
  %genius_start_commands.i = alloca [61 x %struct.init_command], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sof_read, align 8
  %model = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %model, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %2, label %do.end [
    i16 28677, label %sw.bb
    i16 28675, label %sw.bb1
    i16 -32767, label %sw.bb3
    i16 -32765, label %sw.bb5
    i16 -32760, label %sw.bb7
    i16 -32758, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 427, ptr nonnull %genius_start_commands.i) #6
  %4 = call ptr @memcpy(ptr %genius_start_commands.i, ptr @__const.start_genius_cam.genius_start_commands, i32 427)
  %call.i = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %genius_start_commands.i, i32 noundef 61) #6
  call void @llvm.lifetime.end.p0(i64 427, ptr nonnull %genius_start_commands.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 651, ptr nonnull %genius_vcam_live_start_commands.i) #6
  %5 = call ptr @memcpy(ptr %genius_vcam_live_start_commands.i, ptr @__const.start_genius_videocam_live.genius_vcam_live_start_commands, i32 651)
  %call.i21 = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %genius_vcam_live_start_commands.i, i32 noundef 93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i = icmp slt i32 %call.i21, 0
  br i1 %cmp.i, label %sw.bb1.start_genius_videocam_live.exit_crit_edge, label %if.end.i

sw.bb1.start_genius_videocam_live.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %start_genius_videocam_live.exit

if.end.i:                                         ; preds = %sw.bb1
  %gain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gain.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.start_genius_videocam_live.exit_crit_edge, label %if.then1.i

if.end.i.start_genius_videocam_live.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %start_genius_videocam_live.exit

if.then1.i:                                       ; preds = %if.end.i
  %call3.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %genius_vcam_live_gain_cmds.i.i) #6
  %8 = call ptr @memcpy(ptr %genius_vcam_live_gain_cmds.i.i, ptr @__const.set_gain.genius_vcam_live_gain_cmds, i32 7)
  %streaming.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 17
  %9 = ptrtoint ptr %streaming.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %streaming.i.i, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %if.then1.i.set_gain.exit.i_crit_edge, label %if.end.i.i

if.then1.i.set_gain.exit.i_crit_edge:             ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_gain.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  %11 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %model, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28675, i16 %12)
  %cond.i.i = icmp eq i16 %12, 28675
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end.i.i.set_gain.exit.i_crit_edge

if.end.i.i.set_gain.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_gain.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i32 %call3.i to i8
  %arrayidx2.i.i = getelementptr inbounds [6 x i8], ptr %genius_vcam_live_gain_cmds.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i.i, ptr %arrayidx2.i.i, align 1
  %call.i.i = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %genius_vcam_live_gain_cmds.i.i, i32 noundef 1) #6
  br label %set_gain.exit.i

set_gain.exit.i:                                  ; preds = %sw.bb.i.i, %if.end.i.i.set_gain.exit.i_crit_edge, %if.then1.i.set_gain.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %genius_vcam_live_gain_cmds.i.i) #6
  br label %start_genius_videocam_live.exit

start_genius_videocam_live.exit:                  ; preds = %set_gain.exit.i, %if.end.i.start_genius_videocam_live.exit_crit_edge, %sw.bb1.start_genius_videocam_live.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 651, ptr nonnull %genius_vcam_live_start_commands.i) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 294, ptr nonnull %spy_start_commands.i) #6
  %14 = call ptr @memcpy(ptr %spy_start_commands.i, ptr @__const.start_spy_cam.spy_start_commands, i32 294)
  %call.i22 = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %spy_start_commands.i, i32 noundef 42) #6
  call void @llvm.lifetime.end.p0(i64 294, ptr nonnull %spy_start_commands.i) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 287, ptr nonnull %cif_start_commands.i) #6
  %15 = call ptr @memcpy(ptr %cif_start_commands.i, ptr @__const.start_cif_cam.cif_start_commands, i32 287)
  %call.i23 = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %cif_start_commands.i, i32 noundef 41) #6
  call void @llvm.lifetime.end.p0(i64 287, ptr nonnull %cif_start_commands.i) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 406, ptr nonnull %ms350_start_commands.i) #6
  %16 = call ptr @memcpy(ptr %ms350_start_commands.i, ptr @__const.start_ms350_cam.ms350_start_commands, i32 406)
  %call.i24 = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %ms350_start_commands.i, i32 noundef 58) #6
  call void @llvm.lifetime.end.p0(i64 406, ptr nonnull %ms350_start_commands.i) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 441, ptr nonnull %vivitar_start_commands.i) #6
  %17 = call ptr @memcpy(ptr %vivitar_start_commands.i, ptr @__const.start_vivitar_cam.vivitar_start_commands, i32 441)
  %call.i25 = call fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr noundef nonnull %vivitar_start_commands.i, i32 noundef 63) #6
  call void @llvm.lifetime.end.p0(i64 441, ptr nonnull %vivitar_start_commands.i) #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %start_genius_videocam_live.exit, %sw.bb
  %err_code.0 = phi i32 [ %call.i25, %sw.bb9 ], [ %call.i24, %sw.bb7 ], [ %call.i23, %sw.bb5 ], [ %call.i22, %sw.bb3 ], [ %call.i21, %start_genius_videocam_live.exit ], [ %call.i, %sw.bb ]
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %18 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %avg_lum, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %err_code.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp73.i = icmp sgt i32 %len, 0
  br i1 %cmp73.i, label %for.body.lr.ph.i, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %entry
  %sof_read.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %avg_lum_l.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc44.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.074.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %2 = ptrtoint ptr %sof_read.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sof_read.i, align 8
  %idxprom.i = zext i8 %3 to i32
  %arrayidx1.i = getelementptr [12 x i8], ptr @sn9c2028_sof_marker, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp3.i = icmp eq i8 %1, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp7.i = icmp ugt i8 %3, 5
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add i8 %3, 1
  %6 = ptrtoint ptr %sof_read.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %inc.i, ptr %sof_read.i, align 8
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %3, label %if.then.i.for.inc.i_crit_edge [
    i8 10, label %if.end25.i
    i8 11, label %do.body.i
  ]

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end25.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %avg_lum_l.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %avg_lum_l.i, align 8
  br label %for.inc.i

do.body.i:                                        ; preds = %if.then.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv22.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv22.i, 8
  %13 = ptrtoint ptr %avg_lum_l.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %avg_lum_l.i, align 8
  %conv24.i = zext i8 %14 to i32
  %add.i = or i32 %shl.i, %conv24.i
  %avg_lum.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %15 = ptrtoint ptr %avg_lum.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %avg_lum.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp31.i = icmp sgt i32 %16, 3
  br i1 %cmp31.i, label %do.end.i, label %do.body.i.sn9c2028_find_sof.exit_crit_edge

do.body.i.sn9c2028_find_sof.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sn9c2028_find_sof.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %add35.i = add nuw nsw i32 %i.074.i, 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, i32 noundef %len, i32 noundef %add35.i) #9
  br label %sn9c2028_find_sof.exit

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %sof_read.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sof_read.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end25.i, %if.then.i.for.inc.i_crit_edge
  %inc44.i = add nuw nsw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, %len
  br i1 %exitcond.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

sn9c2028_find_sof.exit:                           ; preds = %do.end.i, %do.body.i.sn9c2028_find_sof.exit_crit_edge
  %18 = ptrtoint ptr %sof_read.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sof_read.i, align 8
  %add.ptr40.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %tobool.not = icmp eq ptr %add.ptr40.i, null
  br i1 %tobool.not, label %sn9c2028_find_sof.exit.if.end6_crit_edge, label %if.then

sn9c2028_find_sof.exit.if.end6_crit_edge:         ; preds = %sn9c2028_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %sn9c2028_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr40.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub, i32 12)
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef %19) #6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef nonnull @sn9c2028_sof_marker, i32 noundef 12) #6
  %sub5 = sub i32 %len, %sub.ptr.sub
  br label %if.end6

if.end6:                                          ; preds = %if.then, %sn9c2028_find_sof.exit.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr40.i, %if.then ], [ %data, %sn9c2028_find_sof.exit.if.end6_crit_edge ], [ %data, %entry.if.end6_crit_edge ], [ %data, %for.inc.i.if.end6_crit_edge ]
  %len.addr.0 = phi i32 [ %sub5, %if.then ], [ %len, %sn9c2028_find_sof.exit.if.end6_crit_edge ], [ %len, %entry.if.end6_crit_edge ], [ %len, %for.inc.i.if.end6_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %5, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 1
  br i1 %cmp.not.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i) #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name) #9
  br label %if.end

do.body6.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp7.i = icmp sgt i32 %6, 5
  br i1 %cmp7.i, label %do.end11.i, label %do.body6.i.do.end13.i_crit_edge

do.body6.i.do.end13.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i, i32 noundef %conv.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end11.i, %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 6
  br i1 %cmp.i, label %do.end.i22, label %if.end.do.end13.i_crit_edge

if.end.do.end13.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end.i22:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name.i20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i20, i32 noundef 20, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i22, %if.end.do.end13.i_crit_edge, %do.body6.i.do.end13.i_crit_edge
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 20, ptr %12, align 1
  %data.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %12, i32 1
  %14 = call ptr @memset(ptr %data.sroa.7.0..sroa_idx, i32 0, i32 5)
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i25 = shl i32 %18, 8
  %or.i = or i32 %shl.i.i25, -2147483648
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call17.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %19, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %do.end9, label %do.end13.i.if.end15_crit_edge

do.end13.i.if.end15_crit_edge:                    ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end9:                                          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv27.i = zext i8 %23 to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv27.i, i32 noundef %call17.i) #9
  %name12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name12) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end9, %do.end13.i.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_dqcallback(ptr nocapture noundef readonly %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %avg_lum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %avg_lum, align 4
  %gain.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gain.i, align 4
  %call.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i = icmp eq i32 %4, -1
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8500, i32 %4)
  %cmp1.i = icmp slt i32 %4, 8500
  br i1 %cmp1.i, label %if.then2.i, label %if.end10.i

if.then2.i:                                       ; preds = %if.end.i
  %conv.i = sext i32 %call.i to i64
  %7 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gain.i, align 4
  %maximum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %maximum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv.i)
  %cmp4.i = icmp eq i64 %10, %conv.i
  br i1 %cmp4.i, label %if.then2.i.cleanup_crit_edge, label %if.end10.thread.i

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.thread.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %call.i, 1
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %14, i32 noundef 0) #6
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %8, i32 noundef %inc.i) #6
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %4)
  %cmp11.i = icmp ugt i32 %4, 10000
  br i1 %cmp11.i, label %if.then13.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13.i:                                      ; preds = %if.end10.i
  %conv14.i = sext i32 %call.i to i64
  %15 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gain.i, align 4
  %minimum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %minimum.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %conv14.i)
  %cmp16.i = icmp eq i64 %18, %conv14.i
  br i1 %cmp16.i, label %if.then13.i.cleanup_crit_edge, label %if.end19.i

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %call.i, -1
  %handler.i.i35.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %handler.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handler.i.i35.i, align 8
  %lock.i.i36.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %lock.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock.i.i36.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %22, i32 noundef 0) #6
  %call.i37.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %16, i32 noundef %dec.i) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end19.i, %if.end10.thread.i
  %handler.i.i.sink.i = phi ptr [ %handler.i.i.i, %if.end10.thread.i ], [ %handler.i.i35.i, %if.end19.i ]
  %23 = ptrtoint ptr %handler.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i.sink.i, align 8
  %lock.i2.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.then13.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %genius_vcam_live_gain_cmds.i12 = alloca [1 x %struct.init_command], align 1
  %genius_vcam_live_gain_cmds.i = alloca [1 x %struct.init_command], align 1
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
  %4 = load i8, ptr %streaming, align 2, !range !125
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963795, label %sw.bb
    i32 9963794, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %genius_vcam_live_gain_cmds.i) #6
  %10 = call ptr @memcpy(ptr %genius_vcam_live_gain_cmds.i, ptr @__const.set_gain.genius_vcam_live_gain_cmds, i32 7)
  %11 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %streaming, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %sw.bb.set_gain.exit_crit_edge, label %if.end.i

sw.bb.set_gain.exit_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_gain.exit

if.end.i:                                         ; preds = %sw.bb
  %model.i = getelementptr i8, ptr %1, i32 1026
  %13 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %model.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28675, i16 %14)
  %cond.i = icmp eq i16 %14, 28675
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.set_gain.exit_crit_edge

if.end.i.set_gain.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_gain.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i = trunc i32 %9 to i8
  %arrayidx2.i = getelementptr inbounds [6 x i8], ptr %genius_vcam_live_gain_cmds.i, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %call.i = call fastcc i32 @run_start_commands(ptr noundef %add.ptr, ptr noundef nonnull %genius_vcam_live_gain_cmds.i, i32 noundef 1) #6
  br label %set_gain.exit

set_gain.exit:                                    ; preds = %sw.bb.i, %if.end.i.set_gain.exit_crit_edge, %sw.bb.set_gain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %genius_vcam_live_gain_cmds.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %gain = getelementptr i8, ptr %1, i32 1040
  %16 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gain, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %genius_vcam_live_gain_cmds.i12) #6
  %20 = call ptr @memcpy(ptr %genius_vcam_live_gain_cmds.i12, ptr @__const.set_gain.genius_vcam_live_gain_cmds, i32 7)
  %21 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %streaming, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i14 = icmp eq i8 %22, 0
  br i1 %tobool.not.i14, label %sw.bb1.set_gain.exit22_crit_edge, label %if.end.i17

sw.bb1.set_gain.exit22_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_gain.exit22

if.end.i17:                                       ; preds = %sw.bb1
  %model.i15 = getelementptr i8, ptr %1, i32 1026
  %23 = ptrtoint ptr %model.i15 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %model.i15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28675, i16 %24)
  %cond.i16 = icmp eq i16 %24, 28675
  br i1 %cond.i16, label %sw.bb.i21, label %if.end.i17.set_gain.exit22_crit_edge

if.end.i17.set_gain.exit22_crit_edge:             ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_gain.exit22

sw.bb.i21:                                        ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i18 = trunc i32 %19 to i8
  %arrayidx2.i19 = getelementptr inbounds [6 x i8], ptr %genius_vcam_live_gain_cmds.i12, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx2.i19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i18, ptr %arrayidx2.i19, align 1
  %call.i20 = call fastcc i32 @run_start_commands(ptr noundef %add.ptr, ptr noundef nonnull %genius_vcam_live_gain_cmds.i12, i32 noundef 1) #6
  br label %set_gain.exit22

set_gain.exit22:                                  ; preds = %sw.bb.i21, %if.end.i17.set_gain.exit22_crit_edge, %sw.bb1.set_gain.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %genius_vcam_live_gain_cmds.i12) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %set_gain.exit22, %set_gain.exit, %if.end.sw.epilog_crit_edge
  %26 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @run_start_commands(ptr noundef %gspca_dev, ptr nocapture noundef readonly %cam_commands, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp52 = icmp sgt i32 %n, 0
  br i1 %cmp52, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev.i.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body

for.cond:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %err_code.054 = phi i32 [ -1, %for.body.lr.ph ], [ %err_code.1, %for.cond.for.body_crit_edge ]
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.init_command, ptr %cam_commands, i32 %i.053
  %to_read = getelementptr %struct.init_command, ptr %cam_commands, i32 %i.053, i32 1
  %0 = ptrtoint ptr %to_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %to_read, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %1, label %for.body.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 1, label %sw.bb2
    i8 0, label %sw.bb7
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %call.i = tail call fastcc i32 @sn9c2028_command(ptr noundef %gspca_dev, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %sn9c2028_read1.exit.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %sn9c2028_read1.exit.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i28, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %7 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i.i31, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or2.i.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp.not.i.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp.not.i.i, label %do.body6.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp5.i.i = icmp slt i32 %call3.i.i, 0
  %spec.select.i.i = select i1 %cmp5.i.i, i32 %call3.i.i, i32 -5
  br label %sn9c2028_read1.exit.i

do.body6.i.i:                                     ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp7.i.i = icmp sgt i32 %9, 5
  br i1 %cmp7.i.i, label %do.end11.i.i, label %do.body6.i.i.do.end17.i.i_crit_edge

do.body6.i.i.do.end17.i.i_crit_edge:              ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i.i

do.end11.i.i:                                     ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i.i31, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i.i = zext i8 %13 to i32
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i40, i32 noundef %conv.i.i) #9
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %do.end11.i.i, %do.body6.i.i.do.end17.i.i_crit_edge
  %14 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i.i31, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv20.i.i = zext i8 %17 to i32
  br label %sn9c2028_read1.exit.i

sn9c2028_read1.exit.i:                            ; preds = %do.end17.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %spec.select.i.i, %do.end.i.i ], [ %conv20.i.i, %do.end17.i.i ]
  %inc.i = add nuw nsw i32 %i.067.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.067.i)
  %cmp1.i = icmp ult i32 %i.067.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i)
  %cmp2.i = icmp slt i32 %retval.0.i.i, 2
  %or.cond.i = select i1 %cmp1.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %sn9c2028_read1.exit.i.for.body.i_crit_edge, label %for.end.i

sn9c2028_read1.exit.i.for.body.i_crit_edge:       ; preds = %sn9c2028_read1.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %sn9c2028_read1.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp4.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %retval.0.i.i) #9
  br label %cleanup

if.end7.i:                                        ; preds = %for.end.i
  %18 = ptrtoint ptr %dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i28, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i33.i = shl i32 %21, 8
  %or2.i34.i = or i32 %shl.i.i33.i, -2147483520
  %22 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i.i31, align 4
  %call3.i36.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or2.i34.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef %23, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i36.i)
  %cmp.not.i37.i = icmp eq i32 %call3.i36.i, 4
  br i1 %cmp.not.i37.i, label %if.end.i.i, label %do.end.i41.i

do.end.i41.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call3.i36.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i36.i)
  %cmp5.i39.i = icmp slt i32 %call3.i36.i, 0
  %spec.select = select i1 %cmp5.i39.i, i32 %call3.i36.i, i32 -5
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp8.i.i = icmp sgt i32 %24, 5
  br i1 %cmp8.i.i, label %do.end12.i.i, label %if.end.i.i.if.end12.i_crit_edge

if.end.i.i.if.end12.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i.i31, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %26, align 1
  %reading.sroa.8.0.extract.shift.i = lshr i32 %28, 8
  %reading.sroa.6.0.extract.shift.i = lshr i32 %28, 16
  %reading.sroa.0.0.extract.shift.i = lshr i32 %28, 24
  %conv15.i.i = and i32 %reading.sroa.6.0.extract.shift.i, 255
  %conv17.i.i = and i32 %reading.sroa.8.0.extract.shift.i, 255
  %conv19.i.i = and i32 %28, 255
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i.i40, i32 noundef %reading.sroa.0.0.extract.shift.i, i32 noundef %conv15.i.i, i32 noundef %conv17.i.i, i32 noundef %conv19.i.i) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end12.i.i, %if.end.i.i.if.end12.i_crit_edge
  %29 = ptrtoint ptr %dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i46.i = shl i32 %32, 8
  %or2.i47.i = or i32 %shl.i.i46.i, -2147483520
  %33 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i.i31, align 4
  %call3.i49.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or2.i47.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %34, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i49.i)
  %cmp.not.i50.i = icmp eq i32 %call3.i49.i, 1
  br i1 %cmp.not.i50.i, label %do.body6.i56.i, label %do.end.i54.i

do.end.i54.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i49.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i49.i)
  %cmp5.i52.i = icmp slt i32 %call3.i49.i, 0
  %spec.select.i53.i = select i1 %cmp5.i52.i, i32 %call3.i49.i, i32 -5
  br label %sn9c2028_read1.exit64.i

do.body6.i56.i:                                   ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp7.i55.i = icmp sgt i32 %35, 5
  br i1 %cmp7.i55.i, label %do.end11.i60.i, label %do.body6.i56.i.do.end17.i62.i_crit_edge

do.body6.i56.i.do.end17.i62.i_crit_edge:          ; preds = %do.body6.i56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i62.i

do.end11.i60.i:                                   ; preds = %do.body6.i56.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i.i31, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %conv.i58.i = zext i8 %39 to i32
  %call14.i59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i40, i32 noundef %conv.i58.i) #9
  br label %do.end17.i62.i

do.end17.i62.i:                                   ; preds = %do.end11.i60.i, %do.body6.i56.i.do.end17.i62.i_crit_edge
  %40 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_buf.i.i31, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv20.i61.i = zext i8 %43 to i32
  br label %sn9c2028_read1.exit64.i

sn9c2028_read1.exit64.i:                          ; preds = %do.end17.i62.i, %do.end.i54.i
  %retval.0.i63.i = phi i32 [ %spec.select.i53.i, %do.end.i54.i ], [ %conv20.i61.i, %do.end17.i62.i ]
  %44 = tail call i32 @llvm.smin.i32(i32 %retval.0.i63.i, i32 0) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  %call.i26 = tail call fastcc i32 @sn9c2028_command(ptr noundef %gspca_dev, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %sw.bb2.cleanup_crit_edge, label %if.end.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  %45 = ptrtoint ptr %dev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i28, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i.i29 = shl i32 %48, 8
  %or2.i.i30 = or i32 %shl.i.i.i29, -2147483520
  %49 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %usb_buf.i.i31, align 4
  %call3.i.i32 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or2.i.i30, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %50, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i32)
  %cmp.not.i.i33 = icmp eq i32 %call3.i.i32, 1
  br i1 %cmp.not.i.i33, label %do.body6.i.i39, label %do.end.i.i37

do.end.i.i37:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call3.i.i32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i32)
  %cmp5.i.i35 = icmp slt i32 %call3.i.i32, 0
  %spec.select.i.i36 = select i1 %cmp5.i.i35, i32 %call3.i.i32, i32 -5
  br label %sn9c2028_read1.exit.i47

do.body6.i.i39:                                   ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cmp7.i.i38 = icmp sgt i32 %51, 5
  br i1 %cmp7.i.i38, label %do.end11.i.i43, label %do.body6.i.i39.do.end17.i.i45_crit_edge

do.body6.i.i39.do.end17.i.i45_crit_edge:          ; preds = %do.body6.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i.i45

do.end11.i.i43:                                   ; preds = %do.body6.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i.i31, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %conv.i.i41 = zext i8 %55 to i32
  %call14.i.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i.i40, i32 noundef %conv.i.i41) #9
  br label %do.end17.i.i45

do.end17.i.i45:                                   ; preds = %do.end11.i.i43, %do.body6.i.i39.do.end17.i.i45_crit_edge
  %56 = ptrtoint ptr %usb_buf.i.i31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i.i31, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv20.i.i44 = zext i8 %59 to i32
  br label %sn9c2028_read1.exit.i47

sn9c2028_read1.exit.i47:                          ; preds = %do.end17.i.i45, %do.end.i.i37
  %retval.0.i.i46 = phi i32 [ %spec.select.i.i36, %do.end.i.i37 ], [ %conv20.i.i44, %do.end17.i.i45 ]
  %60 = tail call i32 @llvm.smin.i32(i32 %retval.0.i.i46, i32 0) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @sn9c2028_command(ptr noundef %gspca_dev, ptr noundef %arrayidx)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sn9c2028_read1.exit.i47, %sn9c2028_read1.exit64.i, %for.body.sw.epilog_crit_edge
  %err_code.1 = phi i32 [ %err_code.054, %for.body.sw.epilog_crit_edge ], [ %call11, %sw.bb7 ], [ %44, %sn9c2028_read1.exit64.i ], [ %60, %sn9c2028_read1.exit.i47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_code.1)
  %cmp12 = icmp slt i32 %err_code.1, 0
  br i1 %cmp12, label %sw.epilog.cleanup_crit_edge, label %for.cond

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %do.end.i41.i, %do.end.i, %sw.bb.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %do.end.i ], [ %spec.select, %do.end.i41.i ], [ 0, %entry.cleanup_crit_edge ], [ %err_code.1, %sw.epilog.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i26, %sw.bb2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sn9c2028_command(ptr noundef %gspca_dev, ptr nocapture noundef readonly %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp = icmp sgt i32 %0, 6
  br i1 %cmp, label %do.end, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %1 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %command, align 1
  %conv = zext i8 %2 to i32
  %arrayidx2 = getelementptr i8, ptr %command, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %arrayidx4 = getelementptr i8, ptr %command, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %arrayidx6 = getelementptr i8, ptr %command, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %arrayidx8 = getelementptr i8, ptr %command, i32 4
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %arrayidx10 = getelementptr i8, ptr %command, i32 5
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11) #9
  br label %do.end13

do.end13:                                         ; preds = %do.end, %entry.do.end13_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %13 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %command, i32 6)
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or = or i32 %shl.i, -2147483648
  %20 = load ptr, ptr %usb_buf, align 4
  %call17 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %20, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv27 = zext i8 %24 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv27, i32 noundef %call17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end23 ], [ 0, %do.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sn9c2028__307_963_sd_driver_init6, !8, !"__initcall__kmod_gspca_sn9c2028__307_963_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 963, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 952, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 951, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 917, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 171, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sd_config._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sd_config._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 178, i32 3}
!25 = !{ptr @sd_config._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_config._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 181, i32 3}
!29 = !{ptr @sd_config._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_config._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 184, i32 3}
!33 = !{ptr @sd_config._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_config._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 187, i32 3}
!37 = !{ptr @sd_config._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_config._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 190, i32 3}
!41 = !{ptr @sd_config._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sd_config._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 193, i32 3}
!45 = !{ptr @sd_config._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sd_config._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 196, i32 3}
!49 = !{ptr @sd_config._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sd_config._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @cif_mode, !52, !"cif_mode", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 50, i32 37}
!53 = !{ptr @vga_mode, !54, !"vga_mode", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 41, i32 37}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 92, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sn9c2028_read1._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sn9c2028_read1._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 95, i32 2}
!62 = !{ptr @sn9c2028_read1._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sn9c2028_read1._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sd_init_controls._key, !65, !"_key", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 310, i32 2}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sd_ctrl_ops, !68, !"sd_ctrl_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 299, i32 35}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 131, i32 3}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sn9c2028_long_command._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sn9c2028_long_command._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 109, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sn9c2028_read4._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sn9c2028_read4._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 113, i32 2}
!81 = !{ptr @sn9c2028_read4._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sn9c2028_read4._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 63, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sn9c2028_command._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @sn9c2028_command._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 74, i32 3}
!90 = !{ptr @sn9c2028_command._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sn9c2028_command._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 829, i32 3}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sd_start._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sd_start._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/sn9c2028.h", i32 36, i32 5}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sn9c2028_find_sof._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @sn9c2028_find_sof._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @sn9c2028_sof_marker, !104, !"sn9c2028_sof_marker", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/sn9c2028.h", i32 10, i32 28}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 845, i32 3}
!107 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @sd_stopN._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @sd_stopN._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 851, i32 3}
!112 = !{ptr @sd_stopN._entry.51, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sd_stopN._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @device_table, !115, !"device_table", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/sn9c2028.c", i32 929, i32 35}
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
