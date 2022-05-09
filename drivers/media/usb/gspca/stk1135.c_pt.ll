; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stk1135.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stk1135.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.sensor_val = type { i16, i16 }
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
%struct.sd = type { %struct.gspca_dev, i8, i8, i8, i8, ptr, ptr }
%struct.stk1135_pkt_header = type { i8, i8, i16 }
%struct.v4l2_format = type { i32, %union.anon.104 }
%union.anon.104 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.105, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.105 = type { i8 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.106, [2 x i32] }
%union.anon.106 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [33 x i8] c"gspca_stk1135.author=Ondrej Zary\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [59 x i8] c"gspca_stk1135.description=Syntek STK1135 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_stk1135.file=drivers/media/usb/gspca/gspca_stk1135\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_stk1135.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_stk1135__315_676_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_stk1135\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stk1135\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5967, i16 27185, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @stk1135_dq_callback, ptr null, ptr null, ptr null, ptr null, ptr @stk1135_try_fmt, ptr @stk1135_enum_framesizes, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@stk1135_modes = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9M112\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016gspca_stk1135: Detected sensor type %s (0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/stk1135.c\00", [62 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: reg_w 0x%x:=0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.6, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gspca_stk1135: reg_w 0x%x err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.11 = internal global ptr @reg_w._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sensor_write_8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_stk1135: Sensor write failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sensor_write_8\00", [17 x i8] zeroinitializer }, align 32
@sensor_write_8._entry_ptr = internal global ptr @sensor_write_8._entry, section ".printk_index", align 4
@stk1135_serial_wait_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gspca_stk1135: serial bus timeout: status=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stk1135_serial_wait_ready\00", [38 x i8] zeroinitializer }, align 32
@stk1135_serial_wait_ready._entry_ptr = internal global ptr @stk1135_serial_wait_ready._entry, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: reg_r 0x%x=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gspca_stk1135: reg_r 0x%x err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.20 = internal global ptr @reg_r._entry.18, section ".printk_index", align 4
@sensor_read_8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_stk1135: Sensor read failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sensor_read_8\00", [18 x i8] zeroinitializer }, align 32
@sensor_read_8._entry_ptr = internal global ptr @sensor_read_8._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stk1135:593:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_stk1135: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: camera started alt: 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@stk1135_configure_mt9m112.cfg = internal constant { [123 x %struct.sensor_val], [116 x i8] } { [123 x %struct.sensor_val] [%struct.sensor_val { i16 13, i16 11 }, %struct.sensor_val { i16 13, i16 8 }, %struct.sensor_val { i16 53, i16 34 }, %struct.sensor_val { i16 262, i16 28686 }, %struct.sensor_val { i16 733, i16 6368 }, %struct.sensor_val { i16 543, i16 384 }, %struct.sensor_val { i16 544, i16 -14316 }, %struct.sensor_val { i16 545, i16 -32640 }, %struct.sensor_val { i16 546, i16 -24456 }, %struct.sensor_val { i16 547, i16 -24456 }, %struct.sensor_val { i16 548, i16 24352 }, %struct.sensor_val { i16 552, i16 -5630 }, %struct.sensor_val { i16 553, i16 -31110 }, %struct.sensor_val { i16 606, i16 22860 }, %struct.sensor_val { i16 607, i16 19793 }, %struct.sensor_val { i16 608, i16 2 }, %struct.sensor_val { i16 751, i16 8 }, %struct.sensor_val { i16 754, i16 0 }, %struct.sensor_val { i16 514, i16 238 }, %struct.sensor_val { i16 515, i16 14627 }, %struct.sensor_val { i16 516, i16 1828 }, %struct.sensor_val { i16 521, i16 205 }, %struct.sensor_val { i16 522, i16 147 }, %struct.sensor_val { i16 523, i16 4 }, %struct.sensor_val { i16 524, i16 92 }, %struct.sensor_val { i16 525, i16 217 }, %struct.sensor_val { i16 526, i16 83 }, %struct.sensor_val { i16 527, i16 8 }, %struct.sensor_val { i16 528, i16 145 }, %struct.sensor_val { i16 529, i16 207 }, %struct.sensor_val { i16 533, i16 0 }, %struct.sensor_val { i16 534, i16 0 }, %struct.sensor_val { i16 535, i16 0 }, %struct.sensor_val { i16 536, i16 0 }, %struct.sensor_val { i16 537, i16 0 }, %struct.sensor_val { i16 538, i16 0 }, %struct.sensor_val { i16 539, i16 0 }, %struct.sensor_val { i16 540, i16 0 }, %struct.sensor_val { i16 541, i16 0 }, %struct.sensor_val { i16 542, i16 0 }, %struct.sensor_val { i16 262, i16 -4082 }, %struct.sensor_val { i16 262, i16 28686 }, %struct.sensor_val { i16 384, i16 7 }, %struct.sensor_val { i16 385, i16 -8685 }, %struct.sensor_val { i16 386, i16 -5150 }, %struct.sensor_val { i16 387, i16 246 }, %struct.sensor_val { i16 388, i16 -7916 }, %struct.sensor_val { i16 389, i16 -5411 }, %struct.sensor_val { i16 390, i16 -522 }, %struct.sensor_val { i16 391, i16 -6895 }, %struct.sensor_val { i16 392, i16 -4634 }, %struct.sensor_val { i16 393, i16 -1033 }, %struct.sensor_val { i16 394, i16 -10733 }, %struct.sensor_val { i16 395, i16 -4628 }, %struct.sensor_val { i16 396, i16 -1550 }, %struct.sensor_val { i16 397, i16 0 }, %struct.sensor_val { i16 398, i16 -10219 }, %struct.sensor_val { i16 399, i16 -5654 }, %struct.sensor_val { i16 400, i16 -1551 }, %struct.sensor_val { i16 401, i16 2 }, %struct.sensor_val { i16 402, i16 -8688 }, %struct.sensor_val { i16 403, i16 -4113 }, %struct.sensor_val { i16 404, i16 -1036 }, %struct.sensor_val { i16 405, i16 2 }, %struct.sensor_val { i16 438, i16 3590 }, %struct.sensor_val { i16 439, i16 10003 }, %struct.sensor_val { i16 440, i16 4358 }, %struct.sensor_val { i16 441, i16 10003 }, %struct.sensor_val { i16 442, i16 3075 }, %struct.sensor_val { i16 443, i16 10767 }, %struct.sensor_val { i16 444, i16 4616 }, %struct.sensor_val { i16 445, i16 6678 }, %struct.sensor_val { i16 446, i16 34 }, %struct.sensor_val { i16 447, i16 5386 }, %struct.sensor_val { i16 448, i16 7194 }, %struct.sensor_val { i16 449, i16 45 }, %struct.sensor_val { i16 450, i16 4361 }, %struct.sensor_val { i16 451, i16 5140 }, %struct.sensor_val { i16 452, i16 42 }, %struct.sensor_val { i16 262, i16 29710 }, %struct.sensor_val { i16 339, i16 2819 }, %struct.sensor_val { i16 340, i16 18210 }, %struct.sensor_val { i16 341, i16 -21374 }, %struct.sensor_val { i16 342, i16 -9529 }, %struct.sensor_val { i16 343, i16 -2583 }, %struct.sensor_val { i16 344, i16 -256 }, %struct.sensor_val { i16 476, i16 2819 }, %struct.sensor_val { i16 477, i16 18210 }, %struct.sensor_val { i16 478, i16 -21374 }, %struct.sensor_val { i16 479, i16 -9529 }, %struct.sensor_val { i16 480, i16 -2583 }, %struct.sensor_val { i16 481, i16 -256 }, %struct.sensor_val { i16 314, i16 17152 }, %struct.sensor_val { i16 411, i16 17152 }, %struct.sensor_val { i16 264, i16 384 }, %struct.sensor_val { i16 559, i16 -12032 }, %struct.sensor_val { i16 668, i16 -12032 }, %struct.sensor_val { i16 722, i16 0 }, %struct.sensor_val { i16 716, i16 4 }, %struct.sensor_val { i16 715, i16 1 }, %struct.sensor_val { i16 558, i16 3132 }, %struct.sensor_val { i16 615, i16 4112 }, %struct.sensor_val { i16 101, i16 -24576 }, %struct.sensor_val { i16 102, i16 8195 }, %struct.sensor_val { i16 103, i16 1281 }, %struct.sensor_val { i16 101, i16 8192 }, %struct.sensor_val { i16 5, i16 440 }, %struct.sensor_val { i16 7, i16 216 }, %struct.sensor_val { i16 569, i16 1728 }, %struct.sensor_val { i16 571, i16 1038 }, %struct.sensor_val { i16 570, i16 1728 }, %struct.sensor_val { i16 572, i16 1380 }, %struct.sensor_val { i16 599, i16 520 }, %struct.sensor_val { i16 600, i16 625 }, %struct.sensor_val { i16 601, i16 521 }, %struct.sensor_val { i16 602, i16 625 }, %struct.sensor_val { i16 604, i16 4621 }, %struct.sensor_val { i16 605, i16 5906 }, %struct.sensor_val { i16 612, i16 24092 }, %struct.sensor_val { i16 603, i16 3 }, %struct.sensor_val { i16 566, i16 30736 }, %struct.sensor_val { i16 567, i16 -31996 }, %struct.sensor_val { i16 8, i16 33 }], [116 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: received short packet (less than 4 bytes)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.6, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: received out-of-sequence packet\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.32 = internal global ptr @sd_pkt_scan._entry.30, section ".printk_index", align 4
@sd_stopN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: camera stopped\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_stopN\00", [23 x i8] zeroinitializer }, align 32
@sd_stopN._entry_ptr = internal global ptr @sd_stopN._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963796, i64 9963797]
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 664, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 676, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 665, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 650, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 636, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"stk1135_modes\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 37, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 417, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 420, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 422, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 88, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 90, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 156, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 118, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 61, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 64, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 134, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 593, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 583, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 600, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 463, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 204, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 494, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 510, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [37 x i8] c"../drivers/media/usb/gspca/stk1135.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 479, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_stk1135__315_676_sd_driver_init6, ptr @reg_r._entry, ptr @reg_r._entry.18, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.20, ptr @reg_w._entry, ptr @reg_w._entry.9, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.11, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.30, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.32, ptr @sd_start._entry, ptr @sd_start._entry_ptr, ptr @sd_stopN._entry, ptr @sd_stopN._entry_ptr, ptr @sensor_read_8._entry, ptr @sensor_read_8._entry_ptr, ptr @sensor_write_8._entry, ptr @sensor_write_8._entry_ptr, ptr @stk1135_serial_wait_ready._entry, ptr @stk1135_serial_wait_ready._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @stk1135_modes, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @sd_init_controls._key, ptr @.str.23, ptr @sd_ctrl_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @stk1135_configure_mt9m112.cfg, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1135_modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_write_8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1135_serial_wait_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_read_8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1135_configure_mt9m112.cfg to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
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
  store ptr @stk1135_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.sensor_read.exit_crit_edge, label %if.end.i

entry.sensor_read.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 120, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 6
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 2, i32 noundef 120) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %reg_w.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %call2.i) #10
  br label %sensor_read.exit.sink.split

reg_w.exit:                                       ; preds = %do.end12.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i20 = icmp slt i32 %.pr, 0
  br i1 %cmp.i20, label %reg_w.exit.sensor_read.exit_crit_edge, label %if.end.i26

reg_w.exit.sensor_read.exit_crit_edge:            ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i26:                                       ; preds = %reg_w.exit
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i22 = shl i32 %11, 8
  %or.i23 = or i32 %shl.i.i22, -2147483648
  %call2.i24 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i23, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp3.i25 = icmp sgt i32 %12, 6
  br i1 %cmp3.i25, label %do.end.i29, label %if.end.i26.do.end12.i31_crit_edge

if.end.i26.do.end12.i31_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i31

do.end.i29:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  %name.i27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i27, i32 noundef 0, i32 noundef 32) #10
  br label %do.end12.i31

do.end12.i31:                                     ; preds = %do.end.i29, %if.end.i26.do.end12.i31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i24)
  %cmp13.i30 = icmp slt i32 %call2.i24, 0
  br i1 %cmp13.i30, label %do.end18.i33, label %reg_w.exit34

do.end18.i33:                                     ; preds = %do.end12.i31
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %call2.i24) #10
  br label %sensor_read.exit.sink.split

reg_w.exit34:                                     ; preds = %do.end12.i31
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr181.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr181.pr)
  %cmp.i36 = icmp slt i32 %.pr181.pr, 0
  br i1 %cmp.i36, label %reg_w.exit34.sensor_read.exit_crit_edge, label %if.end.i42

reg_w.exit34.sensor_read.exit_crit_edge:          ; preds = %reg_w.exit34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i42:                                       ; preds = %reg_w.exit34
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i38 = shl i32 %17, 8
  %or.i39 = or i32 %shl.i.i38, -2147483648
  %call2.i40 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i39, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp3.i41 = icmp sgt i32 %18, 6
  br i1 %cmp3.i41, label %do.end.i45, label %if.end.i42.do.end12.i47_crit_edge

if.end.i42.do.end12.i47_crit_edge:                ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i47

do.end.i45:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  %name.i43 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i43, i32 noundef 3, i32 noundef 128) #10
  br label %do.end12.i47

do.end12.i47:                                     ; preds = %do.end.i45, %if.end.i42.do.end12.i47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i40)
  %cmp13.i46 = icmp slt i32 %call2.i40, 0
  br i1 %cmp13.i46, label %do.end18.i49, label %reg_w.exit50

do.end18.i49:                                     ; preds = %do.end12.i47
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 3, i32 noundef %call2.i40) #10
  br label %sensor_read.exit.sink.split

reg_w.exit50:                                     ; preds = %do.end12.i47
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr183.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr183.pr)
  %cmp.i52 = icmp slt i32 %.pr183.pr, 0
  br i1 %cmp.i52, label %reg_w.exit50.sensor_read.exit_crit_edge, label %if.end.i58

reg_w.exit50.sensor_read.exit_crit_edge:          ; preds = %reg_w.exit50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i58:                                       ; preds = %reg_w.exit50
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i54 = shl i32 %23, 8
  %or.i55 = or i32 %shl.i.i54, -2147483648
  %call2.i56 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i55, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp3.i57 = icmp sgt i32 %24, 6
  br i1 %cmp3.i57, label %do.end.i61, label %if.end.i58.do.end12.i63_crit_edge

if.end.i58.do.end12.i63_crit_edge:                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i63

do.end.i61:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  %name.i59 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i59, i32 noundef 5, i32 noundef 0) #10
  br label %do.end12.i63

do.end12.i63:                                     ; preds = %do.end.i61, %if.end.i58.do.end12.i63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i56)
  %cmp13.i62 = icmp slt i32 %call2.i56, 0
  br i1 %cmp13.i62, label %do.end18.i65, label %reg_w.exit66

do.end18.i65:                                     ; preds = %do.end12.i63
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef %call2.i56) #10
  br label %sensor_read.exit.sink.split

reg_w.exit66:                                     ; preds = %do.end12.i63
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr185.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr185.pr.pr)
  %cmp.i68 = icmp slt i32 %.pr185.pr.pr, 0
  br i1 %cmp.i68, label %reg_w.exit66.sensor_read.exit_crit_edge, label %if.end.i74

reg_w.exit66.sensor_read.exit_crit_edge:          ; preds = %reg_w.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i74:                                       ; preds = %reg_w.exit66
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i70 = shl i32 %29, 8
  %or.i71 = or i32 %shl.i.i70, -2147483648
  %call2.i72 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i71, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp3.i73 = icmp sgt i32 %30, 6
  br i1 %cmp3.i73, label %do.end.i77, label %if.end.i74.do.end12.i79_crit_edge

if.end.i74.do.end12.i79_crit_edge:                ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i79

do.end.i77:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  %name.i75 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i75, i32 noundef 7, i32 noundef 3) #10
  br label %do.end12.i79

do.end12.i79:                                     ; preds = %do.end.i77, %if.end.i74.do.end12.i79_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i72)
  %cmp13.i78 = icmp slt i32 %call2.i72, 0
  br i1 %cmp13.i78, label %do.end18.i81, label %reg_w.exit82

do.end18.i81:                                     ; preds = %do.end12.i79
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 7, i32 noundef %call2.i72) #10
  br label %sensor_read.exit.sink.split

reg_w.exit82:                                     ; preds = %do.end12.i79
  %31 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr187.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr187.pr.pr)
  %cmp.i84 = icmp slt i32 %.pr187.pr.pr, 0
  br i1 %cmp.i84, label %reg_w.exit82.sensor_read.exit_crit_edge, label %if.end.i90

reg_w.exit82.sensor_read.exit_crit_edge:          ; preds = %reg_w.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i90:                                       ; preds = %reg_w.exit82
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i86 = shl i32 %35, 8
  %or.i87 = or i32 %shl.i.i86, -2147483648
  %call2.i88 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i87, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp3.i89 = icmp sgt i32 %36, 6
  br i1 %cmp3.i89, label %do.end.i93, label %if.end.i90.do.end12.i95_crit_edge

if.end.i90.do.end12.i95_crit_edge:                ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i95

do.end.i93:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  %name.i91 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i91, i32 noundef 13, i32 noundef 0) #10
  br label %do.end12.i95

do.end12.i95:                                     ; preds = %do.end.i93, %if.end.i90.do.end12.i95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i88)
  %cmp13.i94 = icmp slt i32 %call2.i88, 0
  br i1 %cmp13.i94, label %do.end18.i97, label %reg_w.exit98

do.end18.i97:                                     ; preds = %do.end12.i95
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef %call2.i88) #10
  br label %sensor_read.exit.sink.split

reg_w.exit98:                                     ; preds = %do.end12.i95
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr189.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr189.pr.pr)
  %cmp.i100 = icmp slt i32 %.pr189.pr.pr, 0
  br i1 %cmp.i100, label %reg_w.exit98.sensor_read.exit_crit_edge, label %if.end.i106

reg_w.exit98.sensor_read.exit_crit_edge:          ; preds = %reg_w.exit98
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i106:                                      ; preds = %reg_w.exit98
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i102 = shl i32 %41, 8
  %or.i103 = or i32 %shl.i.i102, -2147483648
  %call2.i104 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i103, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp3.i105 = icmp sgt i32 %42, 6
  br i1 %cmp3.i105, label %do.end.i109, label %if.end.i106.do.end12.i111_crit_edge

if.end.i106.do.end12.i111_crit_edge:              ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i111

do.end.i109:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  %name.i107 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i107, i32 noundef 15, i32 noundef 2) #10
  br label %do.end12.i111

do.end12.i111:                                    ; preds = %do.end.i109, %if.end.i106.do.end12.i111_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i104)
  %cmp13.i110 = icmp slt i32 %call2.i104, 0
  br i1 %cmp13.i110, label %do.end18.i113, label %reg_w.exit114

do.end18.i113:                                    ; preds = %do.end12.i111
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 15, i32 noundef %call2.i104) #10
  br label %sensor_read.exit.sink.split

reg_w.exit114:                                    ; preds = %do.end12.i111
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr191.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr191.pr.pr)
  %cmp.i116 = icmp slt i32 %.pr191.pr.pr, 0
  br i1 %cmp.i116, label %reg_w.exit114.sensor_read.exit_crit_edge, label %if.end.i122

reg_w.exit114.sensor_read.exit_crit_edge:         ; preds = %reg_w.exit114
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i122:                                      ; preds = %reg_w.exit114
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i118 = shl i32 %47, 8
  %or.i119 = or i32 %shl.i.i118, -2147483648
  %call2.i120 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i119, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 512, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %48 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %48)
  %cmp3.i121 = icmp sgt i32 %48, 6
  br i1 %cmp3.i121, label %do.end.i125, label %if.end.i122.do.end12.i127_crit_edge

if.end.i122.do.end12.i127_crit_edge:              ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i127

do.end.i125:                                      ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #9
  %name.i123 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i123, i32 noundef 512, i32 noundef 128) #10
  br label %do.end12.i127

do.end12.i127:                                    ; preds = %do.end.i125, %if.end.i122.do.end12.i127_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i120)
  %cmp13.i126 = icmp slt i32 %call2.i120, 0
  br i1 %cmp13.i126, label %do.end18.i129, label %reg_w.exit130

do.end18.i129:                                    ; preds = %do.end12.i127
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 512, i32 noundef %call2.i120) #10
  br label %sensor_read.exit.sink.split

reg_w.exit130:                                    ; preds = %do.end12.i127
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr193.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr193.pr.pr.pr)
  %cmp.i132 = icmp slt i32 %.pr193.pr.pr.pr, 0
  br i1 %cmp.i132, label %reg_w.exit130.sensor_read.exit_crit_edge, label %if.end.i138

reg_w.exit130.sensor_read.exit_crit_edge:         ; preds = %reg_w.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i138:                                      ; preds = %reg_w.exit130
  %50 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i134 = shl i32 %53, 8
  %or.i135 = or i32 %shl.i.i134, -2147483648
  %call2.i136 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i135, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 512, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %54 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %54)
  %cmp3.i137 = icmp sgt i32 %54, 6
  br i1 %cmp3.i137, label %do.end.i141, label %if.end.i138.do.end12.i143_crit_edge

if.end.i138.do.end12.i143_crit_edge:              ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i143

do.end.i141:                                      ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #9
  %name.i139 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i139, i32 noundef 512, i32 noundef 0) #10
  br label %do.end12.i143

do.end12.i143:                                    ; preds = %do.end.i141, %if.end.i138.do.end12.i143_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i136)
  %cmp13.i142 = icmp slt i32 %call2.i136, 0
  br i1 %cmp13.i142, label %do.end18.i145, label %reg_w.exit146

do.end18.i145:                                    ; preds = %do.end12.i143
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 512, i32 noundef %call2.i136) #10
  br label %sensor_read.exit.sink.split

reg_w.exit146:                                    ; preds = %do.end12.i143
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr195.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr195.pr.pr.pr)
  %cmp.i148 = icmp slt i32 %.pr195.pr.pr.pr, 0
  br i1 %cmp.i148, label %reg_w.exit146.sensor_read.exit_crit_edge, label %if.end.i154

reg_w.exit146.sensor_read.exit_crit_edge:         ; preds = %reg_w.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i154:                                      ; preds = %reg_w.exit146
  %56 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i150 = shl i32 %59, 8
  %or.i151 = or i32 %shl.i.i150, -2147483648
  %call2.i152 = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i151, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 186, i16 noundef zeroext 515, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %60)
  %cmp3.i153 = icmp sgt i32 %60, 6
  br i1 %cmp3.i153, label %do.end.i157, label %if.end.i154.do.end12.i159_crit_edge

if.end.i154.do.end12.i159_crit_edge:              ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i159

do.end.i157:                                      ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #9
  %name.i155 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i155, i32 noundef 515, i32 noundef 186) #10
  br label %do.end12.i159

do.end12.i159:                                    ; preds = %do.end.i157, %if.end.i154.do.end12.i159_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i152)
  %cmp13.i158 = icmp slt i32 %call2.i152, 0
  br i1 %cmp13.i158, label %do.end18.i161, label %reg_w.exit162

do.end18.i161:                                    ; preds = %do.end12.i159
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 515, i32 noundef %call2.i152) #10
  br label %sensor_read.exit.sink.split

reg_w.exit162:                                    ; preds = %do.end12.i159
  %61 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr197.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr197.pr.pr.pr)
  %cmp.i164 = icmp slt i32 %.pr197.pr.pr.pr, 0
  br i1 %cmp.i164, label %reg_w.exit162.sensor_read.exit_crit_edge, label %if.end.i170

reg_w.exit162.sensor_read.exit_crit_edge:         ; preds = %reg_w.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.end.i170:                                      ; preds = %reg_w.exit162
  %62 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i166 = shl i32 %65, 8
  %or.i167 = or i32 %shl.i.i166, -2147483648
  %call2.i168 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i167, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 767, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %66 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %66)
  %cmp3.i169 = icmp sgt i32 %66, 6
  br i1 %cmp3.i169, label %do.end.i173, label %if.end.i170.do.end12.i175_crit_edge

if.end.i170.do.end12.i175_crit_edge:              ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i175

do.end.i173:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #9
  %name.i171 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i171, i32 noundef 767, i32 noundef 0) #10
  br label %do.end12.i175

do.end12.i175:                                    ; preds = %do.end.i173, %if.end.i170.do.end12.i175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i168)
  %cmp13.i174 = icmp slt i32 %call2.i168, 0
  br i1 %cmp13.i174, label %do.end18.i177, label %do.end12.i175.sensor_read.exit_crit_edge

do.end12.i175.sensor_read.exit_crit_edge:         ; preds = %do.end12.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

do.end18.i177:                                    ; preds = %do.end12.i175
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 767, i32 noundef %call2.i168) #10
  br label %sensor_read.exit.sink.split

sensor_read.exit.sink.split:                      ; preds = %do.end18.i177, %do.end18.i161, %do.end18.i145, %do.end18.i129, %do.end18.i113, %do.end18.i97, %do.end18.i81, %do.end18.i65, %do.end18.i49, %do.end18.i33, %do.end18.i
  %call2.i40.sink = phi i32 [ %call2.i40, %do.end18.i49 ], [ %call2.i24, %do.end18.i33 ], [ %call2.i, %do.end18.i ], [ %call2.i104, %do.end18.i113 ], [ %call2.i88, %do.end18.i97 ], [ %call2.i72, %do.end18.i81 ], [ %call2.i56, %do.end18.i65 ], [ %call2.i136, %do.end18.i145 ], [ %call2.i120, %do.end18.i129 ], [ %call2.i152, %do.end18.i161 ], [ %call2.i168, %do.end18.i177 ]
  %67 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call2.i40.sink, ptr %usb_err.i, align 8
  br label %sensor_read.exit

sensor_read.exit:                                 ; preds = %sensor_read.exit.sink.split, %do.end12.i175.sensor_read.exit_crit_edge, %reg_w.exit162.sensor_read.exit_crit_edge, %reg_w.exit146.sensor_read.exit_crit_edge, %reg_w.exit130.sensor_read.exit_crit_edge, %reg_w.exit114.sensor_read.exit_crit_edge, %reg_w.exit98.sensor_read.exit_crit_edge, %reg_w.exit82.sensor_read.exit_crit_edge, %reg_w.exit66.sensor_read.exit_crit_edge, %reg_w.exit50.sensor_read.exit_crit_edge, %reg_w.exit34.sensor_read.exit_crit_edge, %reg_w.exit.sensor_read.exit_crit_edge, %entry.sensor_read.exit_crit_edge
  tail call fastcc void @stk1135_configure_clock(ptr noundef %gspca_dev)
  %sensor_page = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %68 = ptrtoint ptr %sensor_page to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %sensor_page, align 1
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 0) #7
  %69 = ptrtoint ptr %sensor_page to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %sensor_page, align 1
  %call.i.i = tail call fastcc zeroext i8 @sensor_read_8(ptr noundef %gspca_dev, i8 noundef zeroext 0) #7
  %conv.i.i = zext i8 %call.i.i to i16
  %shl.i.i179 = shl nuw i16 %conv.i.i, 8
  %call1.i.i = tail call fastcc zeroext i8 @sensor_read_8(ptr noundef %gspca_dev, i8 noundef zeroext -15) #7
  %conv2.i.i = zext i8 %call1.i.i to i16
  %or.i.i = or i16 %shl.i.i179, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5260, i16 %or.i.i)
  %cond = icmp eq i16 %or.i.i, 5260
  %.str.2..str.3 = select i1 %cond, ptr @.str.2, ptr @.str.3
  %conv = zext i16 %or.i.i to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %.str.2..str.3, i32 noundef %conv) #10
  tail call fastcc void @stk1135_camera_disable(ptr noundef %gspca_dev)
  %70 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %usb_err.i, align 8
  ret i32 %71
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.23) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %1 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %hflip, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %vflip, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 6
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 0, i32 noundef 32) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %do.end12.i.reg_w.exit_crit_edge

do.end12.i.reg_w.exit_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %call2.i) #10
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end18.i, %do.end12.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  tail call fastcc void @stk1135_configure_clock(ptr noundef %gspca_dev)
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i47 = icmp slt i32 %9, 0
  br i1 %cmp.i47, label %reg_w.exit.reg_w.exit125.sink.split_crit_edge, label %if.end.i53

reg_w.exit.reg_w.exit125.sink.split_crit_edge:    ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit125.sink.split

if.end.i53:                                       ; preds = %reg_w.exit
  %dev1.i48 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev1.i48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i48, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i49 = shl i32 %13, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %call2.i51 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i50, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 272, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp3.i52 = icmp sgt i32 %14, 6
  br i1 %cmp3.i52, label %do.end.i56, label %if.end.i53.do.end12.i58_crit_edge

if.end.i53.do.end12.i58_crit_edge:                ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i58

do.end.i56:                                       ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #9
  %name.i54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i54, i32 noundef 272, i32 noundef 0) #10
  br label %do.end12.i58

do.end12.i58:                                     ; preds = %do.end.i56, %if.end.i53.do.end12.i58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i51)
  %cmp13.i57 = icmp slt i32 %call2.i51, 0
  br i1 %cmp13.i57, label %do.end18.i60, label %reg_w.exit61

do.end18.i60:                                     ; preds = %do.end12.i58
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 272, i32 noundef %call2.i51) #10
  br label %reg_w.exit125.sink.split.sink.split

reg_w.exit61:                                     ; preds = %do.end12.i58
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i63 = icmp slt i32 %.pr, 0
  br i1 %cmp.i63, label %reg_w.exit61.reg_w.exit125.sink.split_crit_edge, label %if.end.i69

reg_w.exit61.reg_w.exit125.sink.split_crit_edge:  ; preds = %reg_w.exit61
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit125.sink.split

if.end.i69:                                       ; preds = %reg_w.exit61
  %16 = ptrtoint ptr %dev1.i48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i48, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i65 = shl i32 %19, 8
  %or.i66 = or i32 %shl.i.i65, -2147483648
  %call2.i67 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i66, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 273, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp3.i68 = icmp sgt i32 %20, 6
  br i1 %cmp3.i68, label %do.end.i72, label %if.end.i69.do.end12.i74_crit_edge

if.end.i69.do.end12.i74_crit_edge:                ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i74

do.end.i72:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #9
  %name.i70 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i70, i32 noundef 273, i32 noundef 0) #10
  br label %do.end12.i74

do.end12.i74:                                     ; preds = %do.end.i72, %if.end.i69.do.end12.i74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i67)
  %cmp13.i73 = icmp slt i32 %call2.i67, 0
  br i1 %cmp13.i73, label %do.end18.i76, label %reg_w.exit77

do.end18.i76:                                     ; preds = %do.end12.i74
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 273, i32 noundef %call2.i67) #10
  br label %reg_w.exit125.sink.split.sink.split

reg_w.exit77:                                     ; preds = %do.end12.i74
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr198.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr198.pr)
  %cmp.i79 = icmp slt i32 %.pr198.pr, 0
  br i1 %cmp.i79, label %reg_w.exit77.reg_w.exit125.sink.split_crit_edge, label %if.end.i85

reg_w.exit77.reg_w.exit125.sink.split_crit_edge:  ; preds = %reg_w.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit125.sink.split

if.end.i85:                                       ; preds = %reg_w.exit77
  %22 = ptrtoint ptr %dev1.i48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i48, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i81 = shl i32 %25, 8
  %or.i82 = or i32 %shl.i.i81, -2147483648
  %call2.i83 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i82, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 274, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp3.i84 = icmp sgt i32 %26, 6
  br i1 %cmp3.i84, label %do.end.i88, label %if.end.i85.do.end12.i90_crit_edge

if.end.i85.do.end12.i90_crit_edge:                ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i90

do.end.i88:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  %name.i86 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i86, i32 noundef 274, i32 noundef 0) #10
  br label %do.end12.i90

do.end12.i90:                                     ; preds = %do.end.i88, %if.end.i85.do.end12.i90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i83)
  %cmp13.i89 = icmp slt i32 %call2.i83, 0
  br i1 %cmp13.i89, label %do.end18.i92, label %reg_w.exit93

do.end18.i92:                                     ; preds = %do.end12.i90
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 274, i32 noundef %call2.i83) #10
  br label %reg_w.exit125.sink.split.sink.split

reg_w.exit93:                                     ; preds = %do.end12.i90
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr200.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr200.pr)
  %cmp.i95 = icmp slt i32 %.pr200.pr, 0
  br i1 %cmp.i95, label %reg_w.exit93.reg_w.exit125.sink.split_crit_edge, label %if.end.i101

reg_w.exit93.reg_w.exit125.sink.split_crit_edge:  ; preds = %reg_w.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit125.sink.split

if.end.i101:                                      ; preds = %reg_w.exit93
  %28 = ptrtoint ptr %dev1.i48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i48, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i97 = shl i32 %31, 8
  %or.i98 = or i32 %shl.i.i97, -2147483648
  %call2.i99 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i98, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 275, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp3.i100 = icmp sgt i32 %32, 6
  br i1 %cmp3.i100, label %do.end.i104, label %if.end.i101.do.end12.i106_crit_edge

if.end.i101.do.end12.i106_crit_edge:              ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i106

do.end.i104:                                      ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  %name.i102 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i102, i32 noundef 275, i32 noundef 0) #10
  br label %do.end12.i106

do.end12.i106:                                    ; preds = %do.end.i104, %if.end.i101.do.end12.i106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i99)
  %cmp13.i105 = icmp slt i32 %call2.i99, 0
  br i1 %cmp13.i105, label %do.end18.i108, label %reg_w.exit109

do.end18.i108:                                    ; preds = %do.end12.i106
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 275, i32 noundef %call2.i99) #10
  br label %reg_w.exit125.sink.split.sink.split

reg_w.exit109:                                    ; preds = %do.end12.i106
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr202.pr.pr = load i32, ptr %usb_err.i, align 8
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %34 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pixfmt, align 8
  %height3 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %36 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr202.pr.pr)
  %cmp.i111 = icmp slt i32 %.pr202.pr.pr, 0
  br i1 %cmp.i111, label %reg_w.exit109.reg_w.exit125_crit_edge, label %if.end.i117

reg_w.exit109.reg_w.exit125_crit_edge:            ; preds = %reg_w.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit125

if.end.i117:                                      ; preds = %reg_w.exit109
  %38 = ptrtoint ptr %dev1.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i48, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i113 = shl i32 %41, 8
  %or.i114 = or i32 %shl.i.i113, -2147483648
  %42 = trunc i32 %35 to i16
  %conv.i = and i16 %42, 255
  %call2.i115 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i114, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 276, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %43 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %cmp3.i116 = icmp sgt i32 %43, 6
  br i1 %cmp3.i116, label %do.end.i120, label %if.end.i117.do.end12.i122_crit_edge

if.end.i117.do.end12.i122_crit_edge:              ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i122

do.end.i120:                                      ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #9
  %name.i118 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i = and i32 %35, 255
  %call9.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i118, i32 noundef 276, i32 noundef %conv8.i) #10
  br label %do.end12.i122

do.end12.i122:                                    ; preds = %do.end.i120, %if.end.i117.do.end12.i122_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i115)
  %cmp13.i121 = icmp slt i32 %call2.i115, 0
  br i1 %cmp13.i121, label %reg_w.exit125.thread, label %do.end12.i122.reg_w.exit125_crit_edge

do.end12.i122.reg_w.exit125_crit_edge:            ; preds = %do.end12.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit125

reg_w.exit125.thread:                             ; preds = %do.end12.i122
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 276, i32 noundef %call2.i115) #10
  br label %reg_w.exit195.sink.split

reg_w.exit125.sink.split.sink.split:              ; preds = %do.end18.i108, %do.end18.i92, %do.end18.i76, %do.end18.i60
  %call2.i51.sink = phi i32 [ %call2.i51, %do.end18.i60 ], [ %call2.i83, %do.end18.i92 ], [ %call2.i67, %do.end18.i76 ], [ %call2.i99, %do.end18.i108 ]
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i51.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit125.sink.split

reg_w.exit125.sink.split:                         ; preds = %reg_w.exit125.sink.split.sink.split, %reg_w.exit93.reg_w.exit125.sink.split_crit_edge, %reg_w.exit77.reg_w.exit125.sink.split_crit_edge, %reg_w.exit61.reg_w.exit125.sink.split_crit_edge, %reg_w.exit.reg_w.exit125.sink.split_crit_edge
  %pixfmt203.sink = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %45 = ptrtoint ptr %pixfmt203.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixfmt203.sink, align 8
  %height3204 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %47 = ptrtoint ptr %height3204 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height3204, align 4
  br label %reg_w.exit125

reg_w.exit125:                                    ; preds = %reg_w.exit125.sink.split, %do.end12.i122.reg_w.exit125_crit_edge, %reg_w.exit109.reg_w.exit125_crit_edge
  %.ph = phi i32 [ %37, %do.end12.i122.reg_w.exit125_crit_edge ], [ %37, %reg_w.exit109.reg_w.exit125_crit_edge ], [ %48, %reg_w.exit125.sink.split ]
  %height3208.ph = phi ptr [ %height3, %do.end12.i122.reg_w.exit125_crit_edge ], [ %height3, %reg_w.exit109.reg_w.exit125_crit_edge ], [ %height3204, %reg_w.exit125.sink.split ]
  %.ph209 = phi i32 [ %35, %do.end12.i122.reg_w.exit125_crit_edge ], [ %35, %reg_w.exit109.reg_w.exit125_crit_edge ], [ %46, %reg_w.exit125.sink.split ]
  %pixfmt207.ph = phi ptr [ %pixfmt, %do.end12.i122.reg_w.exit125_crit_edge ], [ %pixfmt, %reg_w.exit109.reg_w.exit125_crit_edge ], [ %pixfmt203.sink, %reg_w.exit125.sink.split ]
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr210 = load i32, ptr %usb_err.i, align 8
  %conv5 = lshr i32 %.ph209, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr210)
  %cmp.i127 = icmp slt i32 %.pr210, 0
  br i1 %cmp.i127, label %reg_w.exit125.reg_w.exit195_crit_edge, label %if.end.i134

reg_w.exit125.reg_w.exit195_crit_edge:            ; preds = %reg_w.exit125
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit195

if.end.i134:                                      ; preds = %reg_w.exit125
  %dev1.i128 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %50 = ptrtoint ptr %dev1.i128 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1.i128, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i129 = shl i32 %53, 8
  %or.i130 = or i32 %shl.i.i129, -2147483648
  %54 = trunc i32 %conv5 to i16
  %conv.i131 = and i16 %54, 255
  %call2.i132 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i130, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i131, i16 noundef zeroext 277, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %55 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %55)
  %cmp3.i133 = icmp sgt i32 %55, 6
  br i1 %cmp3.i133, label %do.end.i138, label %if.end.i134.do.end12.i140_crit_edge

if.end.i134.do.end12.i140_crit_edge:              ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i140

do.end.i138:                                      ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #9
  %name.i135 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i136 = and i32 %conv5, 255
  %call9.i137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i135, i32 noundef 277, i32 noundef %conv8.i136) #10
  br label %do.end12.i140

do.end12.i140:                                    ; preds = %do.end.i138, %if.end.i134.do.end12.i140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i132)
  %cmp13.i139 = icmp slt i32 %call2.i132, 0
  br i1 %cmp13.i139, label %do.end18.i142, label %reg_w.exit143

do.end18.i142:                                    ; preds = %do.end12.i140
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 277, i32 noundef %call2.i132) #10
  br label %reg_w.exit195.sink.split

reg_w.exit143:                                    ; preds = %do.end12.i140
  %56 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr218 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr218)
  %cmp.i145 = icmp slt i32 %.pr218, 0
  br i1 %cmp.i145, label %reg_w.exit143.reg_w.exit195_crit_edge, label %if.end.i152

reg_w.exit143.reg_w.exit195_crit_edge:            ; preds = %reg_w.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit195

if.end.i152:                                      ; preds = %reg_w.exit143
  %57 = ptrtoint ptr %dev1.i128 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1.i128, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i147 = shl i32 %60, 8
  %or.i148 = or i32 %shl.i.i147, -2147483648
  %61 = trunc i32 %.ph to i16
  %conv.i149 = and i16 %61, 255
  %call2.i150 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i148, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i149, i16 noundef zeroext 278, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %62 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp3.i151 = icmp sgt i32 %62, 6
  br i1 %cmp3.i151, label %do.end.i156, label %if.end.i152.do.end12.i158_crit_edge

if.end.i152.do.end12.i158_crit_edge:              ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i158

do.end.i156:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #9
  %name.i153 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i154 = and i32 %.ph, 255
  %call9.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i153, i32 noundef 278, i32 noundef %conv8.i154) #10
  br label %do.end12.i158

do.end12.i158:                                    ; preds = %do.end.i156, %if.end.i152.do.end12.i158_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i150)
  %cmp13.i157 = icmp slt i32 %call2.i150, 0
  br i1 %cmp13.i157, label %do.end18.i160, label %reg_w.exit161

do.end18.i160:                                    ; preds = %do.end12.i158
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 278, i32 noundef %call2.i150) #10
  br label %reg_w.exit195.sink.split

reg_w.exit161:                                    ; preds = %do.end12.i158
  %63 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr228.pr = load i32, ptr %usb_err.i, align 8
  %conv9 = lshr i32 %.ph, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr228.pr)
  %cmp.i163 = icmp slt i32 %.pr228.pr, 0
  br i1 %cmp.i163, label %reg_w.exit161.reg_w.exit195_crit_edge, label %if.end.i170

reg_w.exit161.reg_w.exit195_crit_edge:            ; preds = %reg_w.exit161
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit195

if.end.i170:                                      ; preds = %reg_w.exit161
  %64 = ptrtoint ptr %dev1.i128 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev1.i128, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i165 = shl i32 %67, 8
  %or.i166 = or i32 %shl.i.i165, -2147483648
  %68 = trunc i32 %conv9 to i16
  %conv.i167 = and i16 %68, 255
  %call2.i168 = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i166, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i167, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %69 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %69)
  %cmp3.i169 = icmp sgt i32 %69, 6
  br i1 %cmp3.i169, label %do.end.i174, label %if.end.i170.do.end12.i176_crit_edge

if.end.i170.do.end12.i176_crit_edge:              ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i176

do.end.i174:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #9
  %name.i171 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i172 = and i32 %conv9, 255
  %call9.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i171, i32 noundef 279, i32 noundef %conv8.i172) #10
  br label %do.end12.i176

do.end12.i176:                                    ; preds = %do.end.i174, %if.end.i170.do.end12.i176_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i168)
  %cmp13.i175 = icmp slt i32 %call2.i168, 0
  br i1 %cmp13.i175, label %do.end18.i178, label %reg_w.exit179

do.end18.i178:                                    ; preds = %do.end12.i176
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 279, i32 noundef %call2.i168) #10
  br label %reg_w.exit195.sink.split

reg_w.exit179:                                    ; preds = %do.end12.i176
  %70 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr237.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr237.pr)
  %cmp.i181 = icmp slt i32 %.pr237.pr, 0
  br i1 %cmp.i181, label %reg_w.exit179.reg_w.exit195_crit_edge, label %if.end.i187

reg_w.exit179.reg_w.exit195_crit_edge:            ; preds = %reg_w.exit179
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit195

if.end.i187:                                      ; preds = %reg_w.exit179
  %71 = ptrtoint ptr %dev1.i128 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i128, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i183 = shl i32 %74, 8
  %or.i184 = or i32 %shl.i.i183, -2147483648
  %call2.i185 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or.i184, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 256, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %75 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %cmp3.i186 = icmp sgt i32 %75, 6
  br i1 %cmp3.i186, label %do.end.i190, label %if.end.i187.do.end12.i192_crit_edge

if.end.i187.do.end12.i192_crit_edge:              ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i192

do.end.i190:                                      ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  %name.i188 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i188, i32 noundef 256, i32 noundef 32) #10
  br label %do.end12.i192

do.end12.i192:                                    ; preds = %do.end.i190, %if.end.i187.do.end12.i192_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i185)
  %cmp13.i191 = icmp slt i32 %call2.i185, 0
  br i1 %cmp13.i191, label %do.end18.i194, label %do.end12.i192.reg_w.exit195_crit_edge

do.end12.i192.reg_w.exit195_crit_edge:            ; preds = %do.end12.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit195

do.end18.i194:                                    ; preds = %do.end12.i192
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 256, i32 noundef %call2.i185) #10
  br label %reg_w.exit195.sink.split

reg_w.exit195.sink.split:                         ; preds = %do.end18.i194, %do.end18.i178, %do.end18.i160, %do.end18.i142, %reg_w.exit125.thread
  %call2.i150.sink = phi i32 [ %call2.i150, %do.end18.i160 ], [ %call2.i115, %reg_w.exit125.thread ], [ %call2.i132, %do.end18.i142 ], [ %call2.i168, %do.end18.i178 ], [ %call2.i185, %do.end18.i194 ]
  %height3208216226235243.ph = phi ptr [ %height3208.ph, %do.end18.i160 ], [ %height3, %reg_w.exit125.thread ], [ %height3208.ph, %do.end18.i142 ], [ %height3208.ph, %do.end18.i178 ], [ %height3208.ph, %do.end18.i194 ]
  %pixfmt207217225236242.ph = phi ptr [ %pixfmt207.ph, %do.end18.i160 ], [ %pixfmt, %reg_w.exit125.thread ], [ %pixfmt207.ph, %do.end18.i142 ], [ %pixfmt207.ph, %do.end18.i178 ], [ %pixfmt207.ph, %do.end18.i194 ]
  %76 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call2.i150.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit195

reg_w.exit195:                                    ; preds = %reg_w.exit195.sink.split, %do.end12.i192.reg_w.exit195_crit_edge, %reg_w.exit179.reg_w.exit195_crit_edge, %reg_w.exit161.reg_w.exit195_crit_edge, %reg_w.exit143.reg_w.exit195_crit_edge, %reg_w.exit125.reg_w.exit195_crit_edge
  %height3208216226235243 = phi ptr [ %height3208.ph, %reg_w.exit179.reg_w.exit195_crit_edge ], [ %height3208.ph, %do.end12.i192.reg_w.exit195_crit_edge ], [ %height3208.ph, %reg_w.exit161.reg_w.exit195_crit_edge ], [ %height3208.ph, %reg_w.exit125.reg_w.exit195_crit_edge ], [ %height3208.ph, %reg_w.exit143.reg_w.exit195_crit_edge ], [ %height3208216226235243.ph, %reg_w.exit195.sink.split ]
  %pixfmt207217225236242 = phi ptr [ %pixfmt207.ph, %reg_w.exit179.reg_w.exit195_crit_edge ], [ %pixfmt207.ph, %do.end12.i192.reg_w.exit195_crit_edge ], [ %pixfmt207.ph, %reg_w.exit161.reg_w.exit195_crit_edge ], [ %pixfmt207.ph, %reg_w.exit125.reg_w.exit195_crit_edge ], [ %pixfmt207.ph, %reg_w.exit143.reg_w.exit195_crit_edge ], [ %pixfmt207217225236242.ph, %reg_w.exit195.sink.split ]
  %sensor_page.i.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %sensor_write.exit.i.for.body.i_crit_edge, %reg_w.exit195
  %i.069.i = phi i32 [ 0, %reg_w.exit195 ], [ %inc.i, %sensor_write.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [123 x %struct.sensor_val], ptr @stk1135_configure_mt9m112.cfg, i32 0, i32 %i.069.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.i, align 2
  %val.i = getelementptr [123 x %struct.sensor_val], ptr @stk1135_configure_mt9m112.cfg, i32 0, i32 %i.069.i, i32 1
  %79 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %val.i, align 2
  %81 = lshr i16 %78, 8
  %conv1.i.i = trunc i16 %81 to i8
  %82 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv1.i.i)
  %cmp.not.i.i.i = icmp eq i8 %83, %conv1.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.sensor_write.exit.i_crit_edge, label %if.then.i.i.i

for.body.i.sensor_write.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv1.i.i) #7
  %84 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv1.i.i, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit.i

sensor_write.exit.i:                              ; preds = %if.then.i.i.i, %for.body.i.sensor_write.exit.i_crit_edge
  %conv3.i.i = trunc i16 %78 to i8
  %85 = lshr i16 %80, 8
  %conv1.i.i.i = trunc i16 %85 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext %conv3.i.i, i8 noundef zeroext %conv1.i.i.i) #7
  %conv3.i.i.i = trunc i16 %80 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv3.i.i.i) #7
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 123
  br i1 %exitcond.not.i, label %for.end.i, label %sensor_write.exit.i.for.body.i_crit_edge

sensor_write.exit.i.for.body.i_crit_edge:         ; preds = %sensor_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %sensor_write.exit.i
  %86 = ptrtoint ptr %pixfmt207217225236242 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pixfmt207217225236242, align 8
  %88 = ptrtoint ptr %height3208216226235243 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %height3208216226235243, align 4
  %conv6.i = and i32 %87, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 641, i32 %conv6.i)
  %cmp7.i = icmp ult i32 %conv6.i, 641
  %conv9.i = and i32 %89, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %conv9.i)
  %cmp10.i = icmp ult i32 %conv9.i, 513
  %or.cond.i = select i1 %cmp7.i, i1 %cmp10.i, i1 false
  %90 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %cmp.not.i.i30.i = icmp eq i8 %91, 1
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end.i
  br i1 %cmp.not.i.i30.i, label %if.then.i.sensor_write.exit34.i_crit_edge, label %if.then.i.i31.i

if.then.i.sensor_write.exit34.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit34.i

if.then.i.i31.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 1) #7
  %92 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit34.i

sensor_write.exit34.i:                            ; preds = %if.then.i.i31.i, %if.then.i.sensor_write.exit34.i_crit_edge
  %93 = lshr i32 %87, 8
  %conv1.i.i32.i = trunc i32 %93 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -89, i8 noundef zeroext %conv1.i.i32.i) #7
  %conv3.i.i33.i = trunc i32 %87 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv3.i.i33.i) #7
  %94 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp.not.i.i36.i = icmp eq i8 %95, 1
  br i1 %cmp.not.i.i36.i, label %sensor_write.exit34.i.sensor_write.exit40.i_crit_edge, label %if.then.i.i37.i

sensor_write.exit34.i.sensor_write.exit40.i_crit_edge: ; preds = %sensor_write.exit34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit40.i

if.then.i.i37.i:                                  ; preds = %sensor_write.exit34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 1) #7
  %96 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit40.i

sensor_write.exit40.i:                            ; preds = %if.then.i.i37.i, %sensor_write.exit34.i.sensor_write.exit40.i_crit_edge
  %97 = lshr i32 %89, 8
  %conv1.i.i38.i = trunc i32 %97 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -86, i8 noundef zeroext %conv1.i.i38.i) #7
  %conv3.i.i39.i = trunc i32 %89 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv3.i.i39.i) #7
  %98 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp.not.i.i42.i = icmp eq i8 %99, 0
  br i1 %cmp.not.i.i42.i, label %sensor_write.exit40.i.sensor_write.exit44.i_crit_edge, label %if.then.i.i43.i

sensor_write.exit40.i.sensor_write.exit44.i_crit_edge: ; preds = %sensor_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit44.i

if.then.i.i43.i:                                  ; preds = %sensor_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 0) #7
  %100 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit44.i

sensor_write.exit44.i:                            ; preds = %if.then.i.i43.i, %sensor_write.exit40.i.sensor_write.exit44.i_crit_edge
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -56, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 0) #7
  %101 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %102)
  %cmp.not.i.i46.i = icmp eq i8 %102, 2
  br i1 %cmp.not.i.i46.i, label %sensor_write.exit44.i.stk1135_configure_mt9m112.exit_crit_edge, label %sensor_write.exit44.i.if.end.sink.split.i_crit_edge

sensor_write.exit44.i.if.end.sink.split.i_crit_edge: ; preds = %sensor_write.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

sensor_write.exit44.i.stk1135_configure_mt9m112.exit_crit_edge: ; preds = %sensor_write.exit44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stk1135_configure_mt9m112.exit

if.else.i:                                        ; preds = %for.end.i
  br i1 %cmp.not.i.i30.i, label %if.else.i.sensor_write.exit54.i_crit_edge, label %if.then.i.i51.i

if.else.i.sensor_write.exit54.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit54.i

if.then.i.i51.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 1) #7
  %103 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit54.i

sensor_write.exit54.i:                            ; preds = %if.then.i.i51.i, %if.else.i.sensor_write.exit54.i_crit_edge
  %104 = lshr i32 %87, 8
  %conv1.i.i52.i = trunc i32 %104 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -95, i8 noundef zeroext %conv1.i.i52.i) #7
  %conv3.i.i53.i = trunc i32 %87 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv3.i.i53.i) #7
  %105 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp.not.i.i56.i = icmp eq i8 %106, 1
  br i1 %cmp.not.i.i56.i, label %sensor_write.exit54.i.sensor_write.exit60.i_crit_edge, label %if.then.i.i57.i

sensor_write.exit54.i.sensor_write.exit60.i_crit_edge: ; preds = %sensor_write.exit54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit60.i

if.then.i.i57.i:                                  ; preds = %sensor_write.exit54.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 1) #7
  %107 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit60.i

sensor_write.exit60.i:                            ; preds = %if.then.i.i57.i, %sensor_write.exit54.i.sensor_write.exit60.i_crit_edge
  %108 = lshr i32 %89, 8
  %conv1.i.i58.i = trunc i32 %108 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -92, i8 noundef zeroext %conv1.i.i58.i) #7
  %conv3.i.i59.i = trunc i32 %89 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv3.i.i59.i) #7
  %109 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp.not.i.i62.i = icmp eq i8 %110, 0
  br i1 %cmp.not.i.i62.i, label %sensor_write.exit60.i.sensor_write.exit64.i_crit_edge, label %if.then.i.i63.i

sensor_write.exit60.i.sensor_write.exit64.i_crit_edge: ; preds = %sensor_write.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit64.i

if.then.i.i63.i:                                  ; preds = %sensor_write.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 0) #7
  %111 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %sensor_page.i.i.i, align 1
  br label %sensor_write.exit64.i

sensor_write.exit64.i:                            ; preds = %if.then.i.i63.i, %sensor_write.exit60.i.sensor_write.exit64.i_crit_edge
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -56, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 8) #7
  %112 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sensor_page.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %113)
  %cmp.not.i.i66.i = icmp eq i8 %113, 2
  br i1 %cmp.not.i.i66.i, label %sensor_write.exit64.i.stk1135_configure_mt9m112.exit_crit_edge, label %sensor_write.exit64.i.if.end.sink.split.i_crit_edge

sensor_write.exit64.i.if.end.sink.split.i_crit_edge: ; preds = %sensor_write.exit64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

sensor_write.exit64.i.stk1135_configure_mt9m112.exit_crit_edge: ; preds = %sensor_write.exit64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stk1135_configure_mt9m112.exit

if.end.sink.split.i:                              ; preds = %sensor_write.exit64.i.if.end.sink.split.i_crit_edge, %sensor_write.exit44.i.if.end.sink.split.i_crit_edge
  %.sink70.ph.i = phi i8 [ 0, %sensor_write.exit44.i.if.end.sink.split.i_crit_edge ], [ 4, %sensor_write.exit64.i.if.end.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i8 [ 0, %sensor_write.exit44.i.if.end.sink.split.i_crit_edge ], [ 11, %sensor_write.exit64.i.if.end.sink.split.i_crit_edge ]
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 2) #7
  %114 = ptrtoint ptr %sensor_page.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 2, ptr %sensor_page.i.i.i, align 1
  br label %stk1135_configure_mt9m112.exit

stk1135_configure_mt9m112.exit:                   ; preds = %if.end.sink.split.i, %sensor_write.exit64.i.stk1135_configure_mt9m112.exit_crit_edge, %sensor_write.exit44.i.stk1135_configure_mt9m112.exit_crit_edge
  %.sink70.i = phi i8 [ 0, %sensor_write.exit44.i.stk1135_configure_mt9m112.exit_crit_edge ], [ 4, %sensor_write.exit64.i.stk1135_configure_mt9m112.exit_crit_edge ], [ %.sink70.ph.i, %if.end.sink.split.i ]
  %.sink.i = phi i8 [ 0, %sensor_write.exit44.i.stk1135_configure_mt9m112.exit_crit_edge ], [ 11, %sensor_write.exit64.i.stk1135_configure_mt9m112.exit_crit_edge ], [ %.sink.ph.i, %if.end.sink.split.i ]
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -56, i8 noundef zeroext %.sink70.i) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %.sink.i) #7
  tail call fastcc void @reg_w_mask(ptr noundef %gspca_dev, i16 noundef zeroext 256, i8 noundef zeroext -128, i8 noundef zeroext -128)
  %115 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp = icmp sgt i32 %116, -1
  br i1 %cmp, label %do.body, label %stk1135_configure_mt9m112.exit.if.end23_crit_edge

stk1135_configure_mt9m112.exit.if.end23_crit_edge: ; preds = %stk1135_configure_mt9m112.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.body:                                          ; preds = %stk1135_configure_mt9m112.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %117 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp16 = icmp sgt i32 %117, 2
  br i1 %cmp16, label %do.end, label %do.body.if.end23_crit_edge

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %alt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %118 = ptrtoint ptr %alt to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %alt, align 2
  %conv20 = zext i8 %119 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %conv20) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %do.body.if.end23_crit_edge, %stk1135_configure_mt9m112.exit.if.end23_crit_edge
  %pkt_seq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %120 = ptrtoint ptr %pkt_seq to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %pkt_seq, align 8
  %121 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %usb_err.i, align 8
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp slt i32 %len, 4
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp1 = icmp sgt i32 %0, 4
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %gpio = getelementptr inbounds %struct.stk1135_pkt_header, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %gpio, align 1
  %3 = and i16 %2, 1
  %flip_status = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %flip_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flip_status, align 2, !range !104
  %6 = xor i16 %3, 1
  %7 = zext i8 %5 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %7)
  %cmp11.not = icmp eq i16 %6, %7
  %flip_debounce14 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  br i1 %cmp11.not, label %if.end6.if.end15_crit_edge, label %if.then13

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %flip_debounce14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flip_debounce14, align 1
  %inc = add i8 %9, 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end6.if.end15_crit_edge
  %.sink = phi i8 [ %inc, %if.then13 ], [ 0, %if.end6.if.end15_crit_edge ]
  %10 = ptrtoint ptr %flip_debounce14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %flip_debounce14, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool18.not = icmp sgt i8 %12, -1
  br i1 %tobool18.not, label %if.then19, label %if.end15.if.end46_crit_edge

if.end15.if.end46_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then19:                                        ; preds = %if.end15
  %seq20 = getelementptr inbounds %struct.stk1135_pkt_header, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %seq20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %seq20, align 1
  %15 = and i8 %14, 63
  %pkt_seq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %16 = ptrtoint ptr %pkt_seq to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pkt_seq, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp26.not = icmp eq i8 %15, %17
  br i1 %cmp26.not, label %if.then19.if.end46_crit_edge, label %do.body29

if.then19.if.end46_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.body29:                                        ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp30 = icmp sgt i32 %18, 4
  br i1 %cmp30, label %do.end35, label %do.body29.do.end43_crit_edge

do.body29.do.end43_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %name38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name38) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end35, %do.body29.do.end43_crit_edge
  %19 = ptrtoint ptr %pkt_seq to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %15, ptr %pkt_seq, align 8
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %20 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.then19.if.end46_crit_edge, %if.end15.if.end46_crit_edge
  %pkt_seq47 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %21 = ptrtoint ptr %pkt_seq47 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pkt_seq47, align 8
  %inc48 = add i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc48)
  %cmp51 = icmp ugt i8 %inc48, 63
  %spec.select = select i1 %cmp51, i8 0, i8 %inc48
  %23 = ptrtoint ptr %pkt_seq47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select, ptr %pkt_seq47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp56 = icmp eq i32 %len, 4
  br i1 %cmp56, label %if.end46.cleanup_crit_edge, label %if.end59

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %if.end46
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %tobool63.not = icmp sgt i8 %25, -1
  br i1 %tobool63.not, label %if.end59.if.end65_crit_edge, label %if.then64

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef 0) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end59.if.end65_crit_edge
  %pkt_type.0 = phi i32 [ 1, %if.then64 ], [ 2, %if.end59.if.end65_crit_edge ]
  %skip.0 = phi i32 [ 8, %if.then64 ], [ 4, %if.end59.if.end65_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data, i32 %skip.0
  %sub = sub nsw i32 %len, %skip.0
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %pkt_type.0, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end46.cleanup_crit_edge, %do.end43, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #7
  tail call fastcc void @stk1135_camera_disable(ptr noundef %gspca_dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp sgt i32 %4, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk1135_dq_callback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flip_debounce = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %flip_debounce to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flip_debounce, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %1)
  %cmp = icmp ugt i8 %1, 100
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flip_status = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %flip_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flip_status, align 2, !range !104
  %4 = xor i8 %3, 1
  store i8 %4, ptr %flip_status, align 2
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %5 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hflip, align 4
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %6) #7
  %7 = ptrtoint ptr %flip_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flip_status, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not.i = icmp eq i32 %call, 0
  %lnot.ext.i = zext i1 %tobool1.not.i to i32
  %val.addr.0.i = select i1 %tobool.not.i, i32 %call, i32 %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0.i)
  %tobool2.not.i = icmp eq i32 %val.addr.0.i, 0
  %conv.i = select i1 %tobool2.not.i, i16 0, i16 2
  tail call fastcc void @sensor_write_mask(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext %conv.i, i16 noundef zeroext 2) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %9 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vflip, align 8
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %10) #7
  %11 = ptrtoint ptr %flip_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flip_status, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i11 = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool1.not.i12 = icmp eq i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool2.not5.i = icmp ne i32 %call3, 0
  %tobool2.not.i13 = select i1 %tobool.not.i11, i1 %tobool2.not5.i, i1 %tobool1.not.i12
  %conv.i14 = zext i1 %tobool2.not.i13 to i16
  tail call fastcc void @sensor_write_mask(ptr noundef %gspca_dev, i16 noundef zeroext 32, i16 noundef zeroext %conv.i14, i16 noundef zeroext 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stk1135_try_fmt(ptr nocapture noundef readnone %gspca_dev, ptr nocapture noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt1, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 1280)
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 32)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 1024)
  %and = and i32 %3, 1
  %add = add nuw nsw i32 %and, %3
  %8 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %fmt1, align 4
  %and31 = and i32 %7, 1
  %add34 = add nuw nsw i32 %and31, %7
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add34, ptr %height, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %bytesperline, align 4
  %mul = mul nuw nsw i32 %add34, %add
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %sizeimage, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stk1135_enum_framesizes(ptr nocapture noundef readnone %gspca_dev, ptr nocapture noundef %fsize) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825770306, i32 %3)
  %cmp1.not = icmp eq i32 %3, 825770306
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %5, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1280, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %11 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %step_height, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk1135_configure_clock(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit187_crit_edge, label %if.end.i

entry.reg_w.exit187_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 6
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 768, i32 noundef 18) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %reg_w.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 768, i32 noundef %call2.i) #10
  br label %reg_w.exit187.sink.split

reg_w.exit:                                       ; preds = %do.end12.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i13 = icmp slt i32 %.pr, 0
  br i1 %cmp.i13, label %reg_w.exit.reg_w.exit187_crit_edge, label %if.end.i19

reg_w.exit.reg_w.exit187_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i19:                                       ; preds = %reg_w.exit
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i15 = shl i32 %11, 8
  %or.i16 = or i32 %shl.i.i15, -2147483648
  %call2.i17 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i16, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 65, i16 noundef zeroext 848, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp3.i18 = icmp sgt i32 %12, 6
  br i1 %cmp3.i18, label %do.end.i22, label %if.end.i19.do.end12.i24_crit_edge

if.end.i19.do.end12.i24_crit_edge:                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i24

do.end.i22:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  %name.i20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i20, i32 noundef 848, i32 noundef 65) #10
  br label %do.end12.i24

do.end12.i24:                                     ; preds = %do.end.i22, %if.end.i19.do.end12.i24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i17)
  %cmp13.i23 = icmp slt i32 %call2.i17, 0
  br i1 %cmp13.i23, label %do.end18.i26, label %reg_w.exit27

do.end18.i26:                                     ; preds = %do.end12.i24
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 848, i32 noundef %call2.i17) #10
  br label %reg_w.exit187.sink.split

reg_w.exit27:                                     ; preds = %do.end12.i24
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr189.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr189.pr)
  %cmp.i29 = icmp slt i32 %.pr189.pr, 0
  br i1 %cmp.i29, label %reg_w.exit27.reg_w.exit187_crit_edge, label %if.end.i35

reg_w.exit27.reg_w.exit187_crit_edge:             ; preds = %reg_w.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i35:                                       ; preds = %reg_w.exit27
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i31 = shl i32 %17, 8
  %or.i32 = or i32 %shl.i.i31, -2147483648
  %call2.i33 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i32, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 849, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp3.i34 = icmp sgt i32 %18, 6
  br i1 %cmp3.i34, label %do.end.i38, label %if.end.i35.do.end12.i40_crit_edge

if.end.i35.do.end12.i40_crit_edge:                ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i40

do.end.i38:                                       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  %name.i36 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i36, i32 noundef 849, i32 noundef 0) #10
  br label %do.end12.i40

do.end12.i40:                                     ; preds = %do.end.i38, %if.end.i35.do.end12.i40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i33)
  %cmp13.i39 = icmp slt i32 %call2.i33, 0
  br i1 %cmp13.i39, label %do.end18.i42, label %reg_w.exit43

do.end18.i42:                                     ; preds = %do.end12.i40
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 849, i32 noundef %call2.i33) #10
  br label %reg_w.exit187.sink.split

reg_w.exit43:                                     ; preds = %do.end12.i40
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr191.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr191.pr)
  %cmp.i45 = icmp slt i32 %.pr191.pr, 0
  br i1 %cmp.i45, label %reg_w.exit43.reg_w.exit187_crit_edge, label %if.end.i51

reg_w.exit43.reg_w.exit187_crit_edge:             ; preds = %reg_w.exit43
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i51:                                       ; preds = %reg_w.exit43
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i47 = shl i32 %23, 8
  %or.i48 = or i32 %shl.i.i47, -2147483648
  %call2.i49 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i48, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 850, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp3.i50 = icmp sgt i32 %24, 6
  br i1 %cmp3.i50, label %do.end.i54, label %if.end.i51.do.end12.i56_crit_edge

if.end.i51.do.end12.i56_crit_edge:                ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i56

do.end.i54:                                       ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  %name.i52 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i52, i32 noundef 850, i32 noundef 0) #10
  br label %do.end12.i56

do.end12.i56:                                     ; preds = %do.end.i54, %if.end.i51.do.end12.i56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i49)
  %cmp13.i55 = icmp slt i32 %call2.i49, 0
  br i1 %cmp13.i55, label %do.end18.i58, label %reg_w.exit59

do.end18.i58:                                     ; preds = %do.end12.i56
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 850, i32 noundef %call2.i49) #10
  br label %reg_w.exit187.sink.split

reg_w.exit59:                                     ; preds = %do.end12.i56
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr193.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr193.pr.pr)
  %cmp.i61 = icmp slt i32 %.pr193.pr.pr, 0
  br i1 %cmp.i61, label %reg_w.exit59.reg_w.exit187_crit_edge, label %if.end.i67

reg_w.exit59.reg_w.exit187_crit_edge:             ; preds = %reg_w.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i67:                                       ; preds = %reg_w.exit59
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i63 = shl i32 %29, 8
  %or.i64 = or i32 %shl.i.i63, -2147483648
  %call2.i65 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i64, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 851, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp3.i66 = icmp sgt i32 %30, 6
  br i1 %cmp3.i66, label %do.end.i70, label %if.end.i67.do.end12.i72_crit_edge

if.end.i67.do.end12.i72_crit_edge:                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i72

do.end.i70:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  %name.i68 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i68, i32 noundef 851, i32 noundef 0) #10
  br label %do.end12.i72

do.end12.i72:                                     ; preds = %do.end.i70, %if.end.i67.do.end12.i72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i65)
  %cmp13.i71 = icmp slt i32 %call2.i65, 0
  br i1 %cmp13.i71, label %do.end18.i74, label %reg_w.exit75

do.end18.i74:                                     ; preds = %do.end12.i72
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 851, i32 noundef %call2.i65) #10
  br label %reg_w.exit187.sink.split

reg_w.exit75:                                     ; preds = %do.end12.i72
  %31 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr195.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr195.pr.pr)
  %cmp.i77 = icmp slt i32 %.pr195.pr.pr, 0
  br i1 %cmp.i77, label %reg_w.exit75.reg_w.exit187_crit_edge, label %if.end.i83

reg_w.exit75.reg_w.exit187_crit_edge:             ; preds = %reg_w.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i83:                                       ; preds = %reg_w.exit75
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i79 = shl i32 %35, 8
  %or.i80 = or i32 %shl.i.i79, -2147483648
  %call2.i81 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i80, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp3.i82 = icmp sgt i32 %36, 6
  br i1 %cmp3.i82, label %do.end.i86, label %if.end.i83.do.end12.i88_crit_edge

if.end.i83.do.end12.i88_crit_edge:                ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i88

do.end.i86:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  %name.i84 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i84, i32 noundef 24, i32 noundef 16) #10
  br label %do.end12.i88

do.end12.i88:                                     ; preds = %do.end.i86, %if.end.i83.do.end12.i88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i81)
  %cmp13.i87 = icmp slt i32 %call2.i81, 0
  br i1 %cmp13.i87, label %do.end18.i90, label %reg_w.exit91

do.end18.i90:                                     ; preds = %do.end12.i88
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 24, i32 noundef %call2.i81) #10
  br label %reg_w.exit187.sink.split

reg_w.exit91:                                     ; preds = %do.end12.i88
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr197.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr197.pr.pr)
  %cmp.i93 = icmp slt i32 %.pr197.pr.pr, 0
  br i1 %cmp.i93, label %reg_w.exit91.reg_w.exit187_crit_edge, label %if.end.i99

reg_w.exit91.reg_w.exit187_crit_edge:             ; preds = %reg_w.exit91
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i99:                                       ; preds = %reg_w.exit91
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i95 = shl i32 %41, 8
  %or.i96 = or i32 %shl.i.i95, -2147483648
  %call2.i97 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i96, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 25, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp3.i98 = icmp sgt i32 %42, 6
  br i1 %cmp3.i98, label %do.end.i102, label %if.end.i99.do.end12.i104_crit_edge

if.end.i99.do.end12.i104_crit_edge:               ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i104

do.end.i102:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #9
  %name.i100 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i100, i32 noundef 25, i32 noundef 0) #10
  br label %do.end12.i104

do.end12.i104:                                    ; preds = %do.end.i102, %if.end.i99.do.end12.i104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i97)
  %cmp13.i103 = icmp slt i32 %call2.i97, 0
  br i1 %cmp13.i103, label %do.end18.i106, label %reg_w.exit107

do.end18.i106:                                    ; preds = %do.end12.i104
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 25, i32 noundef %call2.i97) #10
  br label %reg_w.exit187.sink.split

reg_w.exit107:                                    ; preds = %do.end12.i104
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr199.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr199.pr.pr)
  %cmp.i109 = icmp slt i32 %.pr199.pr.pr, 0
  br i1 %cmp.i109, label %reg_w.exit107.reg_w.exit187_crit_edge, label %if.end.i115

reg_w.exit107.reg_w.exit187_crit_edge:            ; preds = %reg_w.exit107
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i115:                                      ; preds = %reg_w.exit107
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i111 = shl i32 %47, 8
  %or.i112 = or i32 %shl.i.i111, -2147483648
  %call2.i113 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i112, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 7, i16 noundef zeroext 27, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %48 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %48)
  %cmp3.i114 = icmp sgt i32 %48, 6
  br i1 %cmp3.i114, label %do.end.i118, label %if.end.i115.do.end12.i120_crit_edge

if.end.i115.do.end12.i120_crit_edge:              ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i120

do.end.i118:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  %name.i116 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i116, i32 noundef 27, i32 noundef 7) #10
  br label %do.end12.i120

do.end12.i120:                                    ; preds = %do.end.i118, %if.end.i115.do.end12.i120_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i113)
  %cmp13.i119 = icmp slt i32 %call2.i113, 0
  br i1 %cmp13.i119, label %do.end18.i122, label %reg_w.exit123

do.end18.i122:                                    ; preds = %do.end12.i120
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 27, i32 noundef %call2.i113) #10
  br label %reg_w.exit187.sink.split

reg_w.exit123:                                    ; preds = %do.end12.i120
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr201.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr201.pr.pr.pr)
  %cmp.i125 = icmp slt i32 %.pr201.pr.pr.pr, 0
  br i1 %cmp.i125, label %reg_w.exit123.reg_w.exit187_crit_edge, label %if.end.i131

reg_w.exit123.reg_w.exit187_crit_edge:            ; preds = %reg_w.exit123
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i131:                                      ; preds = %reg_w.exit123
  %50 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i127 = shl i32 %53, 8
  %or.i128 = or i32 %shl.i.i127, -2147483648
  %call2.i129 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i128, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %54 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %54)
  %cmp3.i130 = icmp sgt i32 %54, 6
  br i1 %cmp3.i130, label %do.end.i134, label %if.end.i131.do.end12.i136_crit_edge

if.end.i131.do.end12.i136_crit_edge:              ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i136

do.end.i134:                                      ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #9
  %name.i132 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i132, i32 noundef 28, i32 noundef 6) #10
  br label %do.end12.i136

do.end12.i136:                                    ; preds = %do.end.i134, %if.end.i131.do.end12.i136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i129)
  %cmp13.i135 = icmp slt i32 %call2.i129, 0
  br i1 %cmp13.i135, label %do.end18.i138, label %reg_w.exit139

do.end18.i138:                                    ; preds = %do.end12.i136
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 28, i32 noundef %call2.i129) #10
  br label %reg_w.exit187.sink.split

reg_w.exit139:                                    ; preds = %do.end12.i136
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr203.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr203.pr.pr.pr)
  %cmp.i141 = icmp slt i32 %.pr203.pr.pr.pr, 0
  br i1 %cmp.i141, label %reg_w.exit139.reg_w.exit187_crit_edge, label %if.end.i147

reg_w.exit139.reg_w.exit187_crit_edge:            ; preds = %reg_w.exit139
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i147:                                      ; preds = %reg_w.exit139
  %56 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i143 = shl i32 %59, 8
  %or.i144 = or i32 %shl.i.i143, -2147483648
  %call2.i145 = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i144, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 128, i16 noundef zeroext 768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %60)
  %cmp3.i146 = icmp sgt i32 %60, 6
  br i1 %cmp3.i146, label %do.end.i150, label %if.end.i147.do.end12.i152_crit_edge

if.end.i147.do.end12.i152_crit_edge:              ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i152

do.end.i150:                                      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #9
  %name.i148 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i148, i32 noundef 768, i32 noundef 128) #10
  br label %do.end12.i152

do.end12.i152:                                    ; preds = %do.end.i150, %if.end.i147.do.end12.i152_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i145)
  %cmp13.i151 = icmp slt i32 %call2.i145, 0
  br i1 %cmp13.i151, label %do.end18.i154, label %reg_w.exit155

do.end18.i154:                                    ; preds = %do.end12.i152
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 768, i32 noundef %call2.i145) #10
  br label %reg_w.exit187.sink.split

reg_w.exit155:                                    ; preds = %do.end12.i152
  %61 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr205.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr205.pr.pr.pr)
  %cmp.i157 = icmp slt i32 %.pr205.pr.pr.pr, 0
  br i1 %cmp.i157, label %reg_w.exit155.reg_w.exit187_crit_edge, label %if.end.i163

reg_w.exit155.reg_w.exit187_crit_edge:            ; preds = %reg_w.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i163:                                      ; preds = %reg_w.exit155
  %62 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i159 = shl i32 %65, 8
  %or.i160 = or i32 %shl.i.i159, -2147483648
  %call2.i161 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i160, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 26, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %66 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %66)
  %cmp3.i162 = icmp sgt i32 %66, 6
  br i1 %cmp3.i162, label %do.end.i166, label %if.end.i163.do.end12.i168_crit_edge

if.end.i163.do.end12.i168_crit_edge:              ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i168

do.end.i166:                                      ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #9
  %name.i164 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i164, i32 noundef 26, i32 noundef 4) #10
  br label %do.end12.i168

do.end12.i168:                                    ; preds = %do.end.i166, %if.end.i163.do.end12.i168_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i161)
  %cmp13.i167 = icmp slt i32 %call2.i161, 0
  br i1 %cmp13.i167, label %do.end18.i170, label %reg_w.exit171

do.end18.i170:                                    ; preds = %do.end12.i168
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 26, i32 noundef %call2.i161) #10
  br label %reg_w.exit187.sink.split

reg_w.exit171:                                    ; preds = %do.end12.i168
  %67 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr207.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr207.pr.pr.pr)
  %cmp.i173 = icmp slt i32 %.pr207.pr.pr.pr, 0
  br i1 %cmp.i173, label %reg_w.exit171.reg_w.exit187_crit_edge, label %if.end.i179

reg_w.exit171.reg_w.exit187_crit_edge:            ; preds = %reg_w.exit171
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

if.end.i179:                                      ; preds = %reg_w.exit171
  %68 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i175 = shl i32 %71, 8
  %or.i176 = or i32 %shl.i.i175, -2147483648
  %call2.i177 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i176, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 31, i16 noundef zeroext 514, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %72 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %72)
  %cmp3.i178 = icmp sgt i32 %72, 6
  br i1 %cmp3.i178, label %do.end.i182, label %if.end.i179.do.end12.i184_crit_edge

if.end.i179.do.end12.i184_crit_edge:              ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i184

do.end.i182:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #9
  %name.i180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i180, i32 noundef 514, i32 noundef 31) #10
  br label %do.end12.i184

do.end12.i184:                                    ; preds = %do.end.i182, %if.end.i179.do.end12.i184_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i177)
  %cmp13.i183 = icmp slt i32 %call2.i177, 0
  br i1 %cmp13.i183, label %do.end18.i186, label %do.end12.i184.reg_w.exit187_crit_edge

do.end12.i184.reg_w.exit187_crit_edge:            ; preds = %do.end12.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit187

do.end18.i186:                                    ; preds = %do.end12.i184
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 514, i32 noundef %call2.i177) #10
  br label %reg_w.exit187.sink.split

reg_w.exit187.sink.split:                         ; preds = %do.end18.i186, %do.end18.i170, %do.end18.i154, %do.end18.i138, %do.end18.i122, %do.end18.i106, %do.end18.i90, %do.end18.i74, %do.end18.i58, %do.end18.i42, %do.end18.i26, %do.end18.i
  %call2.i49.sink = phi i32 [ %call2.i49, %do.end18.i58 ], [ %call2.i33, %do.end18.i42 ], [ %call2.i17, %do.end18.i26 ], [ %call2.i, %do.end18.i ], [ %call2.i113, %do.end18.i122 ], [ %call2.i97, %do.end18.i106 ], [ %call2.i81, %do.end18.i90 ], [ %call2.i65, %do.end18.i74 ], [ %call2.i145, %do.end18.i154 ], [ %call2.i129, %do.end18.i138 ], [ %call2.i161, %do.end18.i170 ], [ %call2.i177, %do.end18.i186 ]
  %73 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call2.i49.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit187

reg_w.exit187:                                    ; preds = %reg_w.exit187.sink.split, %do.end12.i184.reg_w.exit187_crit_edge, %reg_w.exit171.reg_w.exit187_crit_edge, %reg_w.exit155.reg_w.exit187_crit_edge, %reg_w.exit139.reg_w.exit187_crit_edge, %reg_w.exit123.reg_w.exit187_crit_edge, %reg_w.exit107.reg_w.exit187_crit_edge, %reg_w.exit91.reg_w.exit187_crit_edge, %reg_w.exit75.reg_w.exit187_crit_edge, %reg_w.exit59.reg_w.exit187_crit_edge, %reg_w.exit43.reg_w.exit187_crit_edge, %reg_w.exit27.reg_w.exit187_crit_edge, %reg_w.exit.reg_w.exit187_crit_edge, %entry.reg_w.exit187_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk1135_camera_disable(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit24_crit_edge, label %if.end.i

entry.reg_w.exit24_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit24

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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 278, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 6
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 278, i32 noundef 0) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %reg_w.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 278, i32 noundef %call2.i) #10
  br label %reg_w.exit24.sink.split

reg_w.exit:                                       ; preds = %do.end12.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i10 = icmp slt i32 %.pr, 0
  br i1 %cmp.i10, label %reg_w.exit.reg_w.exit24_crit_edge, label %if.end.i16

reg_w.exit.reg_w.exit24_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit24

if.end.i16:                                       ; preds = %reg_w.exit
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i12 = shl i32 %11, 8
  %or.i13 = or i32 %shl.i.i12, -2147483648
  %call2.i14 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i13, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 279, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp3.i15 = icmp sgt i32 %12, 6
  br i1 %cmp3.i15, label %do.end.i19, label %if.end.i16.do.end12.i21_crit_edge

if.end.i16.do.end12.i21_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i21

do.end.i19:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %name.i17 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i17, i32 noundef 279, i32 noundef 0) #10
  br label %do.end12.i21

do.end12.i21:                                     ; preds = %do.end.i19, %if.end.i16.do.end12.i21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14)
  %cmp13.i20 = icmp slt i32 %call2.i14, 0
  br i1 %cmp13.i20, label %do.end18.i23, label %do.end12.i21.reg_w.exit24_crit_edge

do.end12.i21.reg_w.exit24_crit_edge:              ; preds = %do.end12.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit24

do.end18.i23:                                     ; preds = %do.end12.i21
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 279, i32 noundef %call2.i14) #10
  br label %reg_w.exit24.sink.split

reg_w.exit24.sink.split:                          ; preds = %do.end18.i23, %do.end18.i
  %call2.i.sink = phi i32 [ %call2.i, %do.end18.i ], [ %call2.i14, %do.end18.i23 ]
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit24

reg_w.exit24:                                     ; preds = %reg_w.exit24.sink.split, %do.end12.i21.reg_w.exit24_crit_edge, %reg_w.exit.reg_w.exit24_crit_edge, %entry.reg_w.exit24_crit_edge
  tail call fastcc void @reg_w_mask(ptr noundef %gspca_dev, i16 noundef zeroext 256, i8 noundef zeroext 0, i8 noundef zeroext -128)
  tail call fastcc void @sensor_write_mask(ptr noundef %gspca_dev, i16 noundef zeroext 13, i16 noundef zeroext 4, i16 noundef zeroext 12)
  tail call fastcc void @reg_w_mask(ptr noundef %gspca_dev, i16 noundef zeroext 26, i8 noundef zeroext 0, i8 noundef zeroext 1)
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i26 = icmp slt i32 %15, 0
  br i1 %cmp.i26, label %reg_w.exit24.reg_w.exit88_crit_edge, label %if.end.i32

reg_w.exit24.reg_w.exit88_crit_edge:              ; preds = %reg_w.exit24
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit88

if.end.i32:                                       ; preds = %reg_w.exit24
  %dev1.i27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev1.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i27, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i28 = shl i32 %19, 8
  %or.i29 = or i32 %shl.i.i28, -2147483648
  %call2.i30 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i29, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp3.i31 = icmp sgt i32 %20, 6
  br i1 %cmp3.i31, label %do.end.i35, label %if.end.i32.do.end12.i37_crit_edge

if.end.i32.do.end12.i37_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i37

do.end.i35:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  %name.i33 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i33, i32 noundef 768, i32 noundef 0) #10
  br label %do.end12.i37

do.end12.i37:                                     ; preds = %do.end.i35, %if.end.i32.do.end12.i37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i30)
  %cmp13.i36 = icmp slt i32 %call2.i30, 0
  br i1 %cmp13.i36, label %do.end18.i39, label %reg_w.exit40

do.end18.i39:                                     ; preds = %do.end12.i37
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 768, i32 noundef %call2.i30) #10
  br label %reg_w.exit88.sink.split

reg_w.exit40:                                     ; preds = %do.end12.i37
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr90 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr90)
  %cmp.i42 = icmp slt i32 %.pr90, 0
  br i1 %cmp.i42, label %reg_w.exit40.reg_w.exit88_crit_edge, label %if.end.i48

reg_w.exit40.reg_w.exit88_crit_edge:              ; preds = %reg_w.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit88

if.end.i48:                                       ; preds = %reg_w.exit40
  %22 = ptrtoint ptr %dev1.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i27, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i44 = shl i32 %25, 8
  %or.i45 = or i32 %shl.i.i44, -2147483648
  %call2.i46 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i45, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 25, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp3.i47 = icmp sgt i32 %26, 6
  br i1 %cmp3.i47, label %do.end.i51, label %if.end.i48.do.end12.i53_crit_edge

if.end.i48.do.end12.i53_crit_edge:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i53

do.end.i51:                                       ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  %name.i49 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i49, i32 noundef 25, i32 noundef 32) #10
  br label %do.end12.i53

do.end12.i53:                                     ; preds = %do.end.i51, %if.end.i48.do.end12.i53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i46)
  %cmp13.i52 = icmp slt i32 %call2.i46, 0
  br i1 %cmp13.i52, label %do.end18.i55, label %reg_w.exit56

do.end18.i55:                                     ; preds = %do.end12.i53
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 25, i32 noundef %call2.i46) #10
  br label %reg_w.exit88.sink.split

reg_w.exit56:                                     ; preds = %do.end12.i53
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr92.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr92.pr)
  %cmp.i58 = icmp slt i32 %.pr92.pr, 0
  br i1 %cmp.i58, label %reg_w.exit56.reg_w.exit88_crit_edge, label %if.end.i64

reg_w.exit56.reg_w.exit88_crit_edge:              ; preds = %reg_w.exit56
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit88

if.end.i64:                                       ; preds = %reg_w.exit56
  %28 = ptrtoint ptr %dev1.i27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i27, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i60 = shl i32 %31, 8
  %or.i61 = or i32 %shl.i.i60, -2147483648
  %call2.i62 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i61, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp3.i63 = icmp sgt i32 %32, 6
  br i1 %cmp3.i63, label %do.end.i67, label %if.end.i64.do.end12.i69_crit_edge

if.end.i64.do.end12.i69_crit_edge:                ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i69

do.end.i67:                                       ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #9
  %name.i65 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i65, i32 noundef 24, i32 noundef 0) #10
  br label %do.end12.i69

do.end12.i69:                                     ; preds = %do.end.i67, %if.end.i64.do.end12.i69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i62)
  %cmp13.i68 = icmp slt i32 %call2.i62, 0
  br i1 %cmp13.i68, label %do.end18.i71, label %reg_w.exit72

do.end18.i71:                                     ; preds = %do.end12.i69
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 24, i32 noundef %call2.i62) #10
  br label %reg_w.exit88.sink.split

reg_w.exit72:                                     ; preds = %do.end12.i69
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr94.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr94.pr)
  %cmp.i74 = icmp slt i32 %.pr94.pr, 0
  br i1 %cmp.i74, label %reg_w.exit72.reg_w.exit88_crit_edge, label %if.end.i80

reg_w.exit72.reg_w.exit88_crit_edge:              ; preds = %reg_w.exit72
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit88

if.end.i80:                                       ; preds = %reg_w.exit72
  %34 = ptrtoint ptr %dev1.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i27, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i76 = shl i32 %37, 8
  %or.i77 = or i32 %shl.i.i76, -2147483648
  %call2.i78 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i77, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 73, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %38)
  %cmp3.i79 = icmp sgt i32 %38, 6
  br i1 %cmp3.i79, label %do.end.i83, label %if.end.i80.do.end12.i85_crit_edge

if.end.i80.do.end12.i85_crit_edge:                ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i85

do.end.i83:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  %name.i81 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i81, i32 noundef 0, i32 noundef 73) #10
  br label %do.end12.i85

do.end12.i85:                                     ; preds = %do.end.i83, %if.end.i80.do.end12.i85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i78)
  %cmp13.i84 = icmp slt i32 %call2.i78, 0
  br i1 %cmp13.i84, label %do.end18.i87, label %do.end12.i85.reg_w.exit88_crit_edge

do.end12.i85.reg_w.exit88_crit_edge:              ; preds = %do.end12.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit88

do.end18.i87:                                     ; preds = %do.end12.i85
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %call2.i78) #10
  br label %reg_w.exit88.sink.split

reg_w.exit88.sink.split:                          ; preds = %do.end18.i87, %do.end18.i71, %do.end18.i55, %do.end18.i39
  %call2.i46.sink = phi i32 [ %call2.i46, %do.end18.i55 ], [ %call2.i30, %do.end18.i39 ], [ %call2.i62, %do.end18.i71 ], [ %call2.i78, %do.end18.i87 ]
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call2.i46.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit88

reg_w.exit88:                                     ; preds = %reg_w.exit88.sink.split, %do.end12.i85.reg_w.exit88_crit_edge, %reg_w.exit72.reg_w.exit88_crit_edge, %reg_w.exit56.reg_w.exit88_crit_edge, %reg_w.exit40.reg_w.exit88_crit_edge, %reg_w.exit24.reg_w.exit88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit38_crit_edge, label %if.end.i

entry.reg_w.exit38_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit38

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
  %conv.i = zext i8 %addr to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 516, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 6
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i = zext i8 %addr to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 516, i32 noundef %conv8.i) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %reg_w.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 516, i32 noundef %call2.i) #10
  br label %reg_w.exit38.sink.split

reg_w.exit:                                       ; preds = %do.end12.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i6 = icmp slt i32 %.pr, 0
  br i1 %cmp.i6, label %reg_w.exit.reg_w.exit38_crit_edge, label %if.end.i13

reg_w.exit.reg_w.exit38_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit38

if.end.i13:                                       ; preds = %reg_w.exit
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i8 = shl i32 %11, 8
  %or.i9 = or i32 %shl.i.i8, -2147483648
  %conv.i10 = zext i8 %data to i16
  %call2.i11 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i9, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i10, i16 noundef zeroext 517, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp3.i12 = icmp sgt i32 %12, 6
  br i1 %cmp3.i12, label %do.end.i17, label %if.end.i13.do.end12.i19_crit_edge

if.end.i13.do.end12.i19_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i19

do.end.i17:                                       ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #9
  %name.i14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i15 = zext i8 %data to i32
  %call9.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i14, i32 noundef 517, i32 noundef %conv8.i15) #10
  br label %do.end12.i19

do.end12.i19:                                     ; preds = %do.end.i17, %if.end.i13.do.end12.i19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i11)
  %cmp13.i18 = icmp slt i32 %call2.i11, 0
  br i1 %cmp13.i18, label %do.end18.i21, label %reg_w.exit22

do.end18.i21:                                     ; preds = %do.end12.i19
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 517, i32 noundef %call2.i11) #10
  br label %reg_w.exit38.sink.split

reg_w.exit22:                                     ; preds = %do.end12.i19
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr40.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr40.pr)
  %cmp.i24 = icmp slt i32 %.pr40.pr, 0
  br i1 %cmp.i24, label %reg_w.exit22.reg_w.exit38_crit_edge, label %if.end.i30

reg_w.exit22.reg_w.exit38_crit_edge:              ; preds = %reg_w.exit22
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit38

if.end.i30:                                       ; preds = %reg_w.exit22
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i26 = shl i32 %17, 8
  %or.i27 = or i32 %shl.i.i26, -2147483648
  %call2.i28 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i27, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 512, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp3.i29 = icmp sgt i32 %18, 6
  br i1 %cmp3.i29, label %do.end.i33, label %if.end.i30.do.end12.i35_crit_edge

if.end.i30.do.end12.i35_crit_edge:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i35

do.end.i33:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %name.i31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i31, i32 noundef 512, i32 noundef 1) #10
  br label %do.end12.i35

do.end12.i35:                                     ; preds = %do.end.i33, %if.end.i30.do.end12.i35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i28)
  %cmp13.i34 = icmp slt i32 %call2.i28, 0
  br i1 %cmp13.i34, label %do.end18.i37, label %do.end12.i35.reg_w.exit38_crit_edge

do.end12.i35.reg_w.exit38_crit_edge:              ; preds = %do.end12.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit38

do.end18.i37:                                     ; preds = %do.end12.i35
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 512, i32 noundef %call2.i28) #10
  br label %reg_w.exit38.sink.split

reg_w.exit38.sink.split:                          ; preds = %do.end18.i37, %do.end18.i21, %do.end18.i
  %call2.i.sink = phi i32 [ %call2.i, %do.end18.i ], [ %call2.i11, %do.end18.i21 ], [ %call2.i28, %do.end18.i37 ]
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit38

reg_w.exit38:                                     ; preds = %reg_w.exit38.sink.split, %do.end12.i35.reg_w.exit38_crit_edge, %reg_w.exit22.reg_w.exit38_crit_edge, %reg_w.exit.reg_w.exit38_crit_edge, %entry.reg_w.exit38_crit_edge
  %call = tail call fastcc i32 @stk1135_serial_wait_ready(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %reg_w.exit38.if.end_crit_edge, label %do.end

reg_w.exit38.if.end_crit_edge:                    ; preds = %reg_w.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %reg_w.exit38
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %reg_w.exit38.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk1135_serial_wait_ready(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond3.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond3.do.body_crit_edge ]
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %do.body.reg_r.exit_crit_edge, label %if.end.i

do.body.reg_r.exit_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r.exit

if.end.i:                                         ; preds = %do.body
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 513, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp4.i = icmp sgt i32 %8, 5
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv8.i = zext i8 %12 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef 513, i32 noundef %conv8.i) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp13.i = icmp slt i32 %call3.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %if.end23.i

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 513, i32 noundef %call3.i) #10
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

if.end23.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %phi.cast = zext i8 %17 to i32
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %if.end23.i, %do.end18.i, %do.body.reg_r.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end18.i ], [ %phi.cast, %if.end23.i ], [ 0, %do.body.reg_r.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 501, i32 %i.0)
  %exitcond = icmp eq i32 %i.0, 501
  br i1 %exitcond, label %do.end, label %do.cond3

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %retval.0.i) #10
  br label %cleanup

do.cond3:                                         ; preds = %reg_r.exit
  %inc = add nuw nsw i32 %i.0, 1
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and6 = and i32 %retval.0.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = or i1 %tobool.not, %tobool7.not
  br i1 %or.cond, label %do.cond3.do.body_crit_edge, label %do.cond3.cleanup_crit_edge

do.cond3.cleanup_crit_edge:                       ; preds = %do.cond3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond3.do.body_crit_edge:                       ; preds = %do.cond3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %do.cond3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.cond3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sensor_read_8(ptr noundef %gspca_dev, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit21_crit_edge, label %if.end.i

entry.reg_w.exit21_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit21

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
  %conv.i = zext i8 %addr to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 520, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp3.i = icmp sgt i32 %6, 6
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8.i = zext i8 %addr to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef 520, i32 noundef %conv8.i) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %reg_w.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 520, i32 noundef %call2.i) #10
  br label %reg_w.exit21.sink.split

reg_w.exit:                                       ; preds = %do.end12.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i7 = icmp slt i32 %.pr, 0
  br i1 %cmp.i7, label %reg_w.exit.reg_w.exit21_crit_edge, label %if.end.i13

reg_w.exit.reg_w.exit21_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit21

if.end.i13:                                       ; preds = %reg_w.exit
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i9 = shl i32 %11, 8
  %or.i10 = or i32 %shl.i.i9, -2147483648
  %call2.i11 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i10, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 512, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp3.i12 = icmp sgt i32 %12, 6
  br i1 %cmp3.i12, label %do.end.i16, label %if.end.i13.do.end12.i18_crit_edge

if.end.i13.do.end12.i18_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i18

do.end.i16:                                       ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #9
  %name.i14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call9.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i14, i32 noundef 512, i32 noundef 32) #10
  br label %do.end12.i18

do.end12.i18:                                     ; preds = %do.end.i16, %if.end.i13.do.end12.i18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i11)
  %cmp13.i17 = icmp slt i32 %call2.i11, 0
  br i1 %cmp13.i17, label %do.end18.i20, label %do.end12.i18.reg_w.exit21_crit_edge

do.end12.i18.reg_w.exit21_crit_edge:              ; preds = %do.end12.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit21

do.end18.i20:                                     ; preds = %do.end12.i18
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 512, i32 noundef %call2.i11) #10
  br label %reg_w.exit21.sink.split

reg_w.exit21.sink.split:                          ; preds = %do.end18.i20, %do.end18.i
  %call2.i.sink = phi i32 [ %call2.i, %do.end18.i ], [ %call2.i11, %do.end18.i20 ]
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit21

reg_w.exit21:                                     ; preds = %reg_w.exit21.sink.split, %do.end12.i18.reg_w.exit21_crit_edge, %reg_w.exit.reg_w.exit21_crit_edge, %entry.reg_w.exit21_crit_edge
  %call = tail call fastcc i32 @stk1135_serial_wait_ready(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %reg_w.exit21
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %return

if.end:                                           ; preds = %reg_w.exit21
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i23 = icmp slt i32 %15, 0
  br i1 %cmp.i23, label %if.end.return_crit_edge, label %if.end.i26

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i26:                                       ; preds = %if.end
  %dev1.i24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %dev1.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i24, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i25 = shl i32 %19, 8
  %or2.i = or i32 %shl.i.i25, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 521, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp4.i = icmp sgt i32 %22, 5
  br i1 %cmp4.i, label %do.end.i30, label %if.end.i26.do.end12.i32_crit_edge

if.end.i26.do.end12.i32_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i32

do.end.i30:                                       ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  %name.i27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %conv8.i28 = zext i8 %26 to i32
  %call9.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i27, i32 noundef 521, i32 noundef %conv8.i28) #10
  br label %do.end12.i32

do.end12.i32:                                     ; preds = %do.end.i30, %if.end.i26.do.end12.i32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp13.i31 = icmp slt i32 %call3.i, 0
  br i1 %cmp13.i31, label %do.end18.i34, label %if.end23.i

do.end18.i34:                                     ; preds = %do.end12.i32
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 521, i32 noundef %call3.i) #10
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %return

if.end23.i:                                       ; preds = %do.end12.i32
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  br label %return

return:                                           ; preds = %if.end23.i, %do.end18.i34, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i8 [ 0, %do.end ], [ 0, %do.end18.i34 ], [ %31, %if.end23.i ], [ 0, %if.end.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w_mask(ptr noundef %gspca_dev, i16 noundef zeroext %index, i8 noundef zeroext %val, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp4.i = icmp sgt i32 %8, 5
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.i = zext i16 %index to i32
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv8.i = zext i8 %12 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv8.i) #10
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.end.i, %if.end.i.do.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp13.i = icmp slt i32 %call3.i, 0
  br i1 %cmp13.i, label %do.end18.i, label %reg_r.exit

do.end18.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i = zext i16 %index to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv20.i, i32 noundef %call3.i) #10
  br label %reg_w.exit.sink.split

reg_r.exit:                                       ; preds = %do.end12.i
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %usb_err.i, align 8
  %neg = xor i8 %mask, -1
  %and = and i8 %16, %neg
  %and410 = and i8 %mask, %val
  %or = or i8 %and, %and410
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i12 = icmp slt i32 %.pr, 0
  br i1 %cmp.i12, label %reg_r.exit.reg_w.exit_crit_edge, label %if.end.i16

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i16:                                       ; preds = %reg_r.exit
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i14 = shl i32 %21, 8
  %or.i = or i32 %shl.i.i14, -2147483648
  %conv.i15 = zext i8 %or to i16
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv.i15, i16 noundef zeroext %index, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp3.i = icmp sgt i32 %22, 6
  br i1 %cmp3.i, label %do.end.i20, label %if.end.i16.do.end12.i22_crit_edge

if.end.i16.do.end12.i22_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i22

do.end.i20:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %name.i17 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i = zext i16 %index to i32
  %conv8.i18 = zext i8 %or to i32
  %call9.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i17, i32 noundef %conv7.i, i32 noundef %conv8.i18) #10
  br label %do.end12.i22

do.end12.i22:                                     ; preds = %do.end.i20, %if.end.i16.do.end12.i22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp13.i21 = icmp slt i32 %call2.i, 0
  br i1 %cmp13.i21, label %do.end18.i25, label %do.end12.i22.reg_w.exit_crit_edge

do.end12.i22.reg_w.exit_crit_edge:                ; preds = %do.end12.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end18.i25:                                     ; preds = %do.end12.i22
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i23 = zext i16 %index to i32
  %call21.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv20.i23, i32 noundef %call2.i) #10
  br label %reg_w.exit.sink.split

reg_w.exit.sink.split:                            ; preds = %do.end18.i25, %do.end18.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end18.i ], [ %call2.i, %do.end18.i25 ]
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exit.sink.split, %do.end12.i22.reg_w.exit_crit_edge, %reg_r.exit.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sensor_write_mask(ptr noundef %gspca_dev, i16 noundef zeroext %reg, i16 noundef zeroext %val, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_page.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %sensor_page.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor_page.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not.i.i = icmp eq i8 %1, 0
  br i1 %cmp.not.i.i, label %entry.sensor_read.exit_crit_edge, label %if.then.i.i

entry.sensor_read.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_read.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext 0) #7
  %2 = ptrtoint ptr %sensor_page.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sensor_page.i.i, align 1
  br label %sensor_read.exit

sensor_read.exit:                                 ; preds = %if.then.i.i, %entry.sensor_read.exit_crit_edge
  %conv3.i = trunc i16 %reg to i8
  %call.i.i = tail call fastcc zeroext i8 @sensor_read_8(ptr noundef %gspca_dev, i8 noundef zeroext %conv3.i) #7
  %call1.i.i = tail call fastcc zeroext i8 @sensor_read_8(ptr noundef %gspca_dev, i8 noundef zeroext -15) #7
  %3 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %3 to i8
  %4 = ptrtoint ptr %sensor_page.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor_page.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv1.i)
  %cmp.not.i.i12 = icmp eq i8 %5, %conv1.i
  br i1 %cmp.not.i.i12, label %sensor_read.exit.sensor_write.exit_crit_edge, label %if.then.i.i13

sensor_read.exit.sensor_write.exit_crit_edge:     ; preds = %sensor_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sensor_write.exit

if.then.i.i13:                                    ; preds = %sensor_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -16, i8 noundef zeroext 0) #7
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv1.i) #7
  %6 = ptrtoint ptr %sensor_page.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %sensor_page.i.i, align 1
  br label %sensor_write.exit

sensor_write.exit:                                ; preds = %if.then.i.i13, %sensor_read.exit.sensor_write.exit_crit_edge
  %conv.i.i = zext i8 %call.i.i to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %conv2.i.i = zext i8 %call1.i.i to i16
  %or.i.i = or i16 %shl.i.i, %conv2.i.i
  %neg = xor i16 %mask, -1
  %and = and i16 %or.i.i, %neg
  %and410 = and i16 %mask, %val
  %or = or i16 %and, %and410
  %7 = lshr i16 %or, 8
  %conv1.i.i = trunc i16 %7 to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext %conv3.i, i8 noundef zeroext %conv1.i.i) #7
  %conv3.i.i = trunc i16 %or to i8
  tail call fastcc void @sensor_write_8(ptr noundef %gspca_dev, i8 noundef zeroext -15, i8 noundef zeroext %conv3.i.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

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
  %4 = load i8, ptr %streaming, align 2, !range !104
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %flip_status.i = getelementptr i8, ptr %1, i32 1026
  %10 = ptrtoint ptr %flip_status.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flip_status.i, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  %lnot.ext.i = zext i1 %tobool1.not.i to i32
  %val.addr.0.i = select i1 %tobool.not.i, i32 %9, i32 %lnot.ext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0.i)
  %tobool2.not.i = icmp eq i32 %val.addr.0.i, 0
  %conv.i = select i1 %tobool2.not.i, i16 0, i16 2
  tail call fastcc void @sensor_write_mask(ptr noundef %add.ptr, i16 noundef zeroext 32, i16 noundef zeroext %conv.i, i16 noundef zeroext 2) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val2, align 4
  %flip_status.i11 = getelementptr i8, ptr %1, i32 1026
  %14 = ptrtoint ptr %flip_status.i11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flip_status.i11, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i12 = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i13 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not5.i = icmp ne i32 %13, 0
  %tobool2.not.i14 = select i1 %tobool.not.i12, i1 %tobool2.not5.i, i1 %tobool1.not.i13
  %conv.i15 = zext i1 %tobool2.not.i14 to i16
  tail call fastcc void @sensor_write_mask(ptr noundef %add.ptr, i16 noundef zeroext 32, i16 noundef zeroext %conv.i15, i16 noundef zeroext 1) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_stk1135__315_676_sd_driver_init6, !8, !"__initcall__kmod_gspca_stk1135__315_676_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 676, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 665, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 664, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 636, i32 29}
!17 = !{ptr @stk1135_modes, !18, !"stk1135_modes", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 37, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 417, i32 17}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 420, i32 17}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 422, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sd_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @sd_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 88, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @reg_w._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @reg_w._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 90, i32 3}
!36 = !{ptr @reg_w._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @reg_w._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 156, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sensor_write_8._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sensor_write_8._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 118, i32 4}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @stk1135_serial_wait_ready._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @stk1135_serial_wait_ready._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 61, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @reg_r._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @reg_r._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 64, i32 3}
!55 = !{ptr @reg_r._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @reg_r._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 134, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sensor_read_8._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sensor_read_8._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @sd_init_controls._key, !63, !"_key", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 593, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 600, i32 3}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sd_init_controls._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sd_init_controls._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @sd_ctrl_ops, !71, !"sd_ctrl_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 583, i32 35}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 463, i32 3}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sd_start._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_start._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @stk1135_configure_mt9m112.cfg, !78, !"cfg", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 204, i32 33}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 494, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sd_pkt_scan._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sd_pkt_scan._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 510, i32 4}
!86 = !{ptr @sd_pkt_scan._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sd_pkt_scan._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 479, i32 2}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sd_stopN._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @sd_stopN._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @device_table, !94, !"device_table", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/stk1135.c", i32 650, i32 35}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
