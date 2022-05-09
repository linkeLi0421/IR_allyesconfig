; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/kinect.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/kinect.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sd = type { %struct.gspca_dev, i16, i8, [1024 x i8], [512 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.pkt_hdr = type { [2 x i8], i8, i8, i8, i8, i8, i8, i32 }

@__UNIQUE_ID_author303 = internal constant [62 x i8] c"gspca_kinect.author=Antonio Ospite <ospite@studenti.unina.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [70 x i8] c"gspca_kinect.description=GSPCA/Kinect Sensor Device USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_kinect.file=drivers/media/usb/gspca/gspca_kinect\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_kinect.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_kinect__307_471_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__param_str_depth_mode = internal constant [24 x i8] c"gspca_kinect.depth_mode\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@depth_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_depth_mode = internal constant %struct.kernel_param { ptr @__param_str_depth_mode, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @depth_mode } }, section "__param", align 4
@__UNIQUE_ID_depth_modetype308 = internal constant [38 x i8] c"gspca_kinect.parmtype=depth_mode:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_depth_mode309 = internal constant [45 x i8] c"gspca_kinect.parm=depth_mode:0=video 1=depth\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_kinect\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kinect\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1118, i16 686, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 703, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc_depth = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config_depth, ptr @sd_init, ptr null, ptr null, ptr @sd_start_depth, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_desc_video = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config_video, ptr @sd_init, ptr null, ptr null, ptr @sd_start_video, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN_video, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@depth_camera_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1110454617, i32 1, i32 800, i32 384000, i32 8, i32 66, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Kinect Camera device.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/kinect.c\00", [63 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@write_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Write Reg 0x%04x <= 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_register\00", [17 x i8] zeroinitializer }, align 32
@write_register._entry_ptr = internal global ptr @write_register._entry, section ".printk_index", align 4
@write_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014gspca_kinect: send_cmd returned %d [%04x %04x], 0000 expected\0A\00", [63 x i8] zeroinitializer }, align 32
@write_register._entry_ptr.9 = internal global ptr @write_register._entry.7, section ".printk_index", align 4
@send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013gspca_kinect: send_cmd: Invalid command length (0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send_cmd\00", [23 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr = internal global ptr @send_cmd._entry, section ".printk_index", align 4
@send_cmd._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Control cmd=%04x tag=%04x len=%04x: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.14 = internal global ptr @send_cmd._entry.12, section ".printk_index", align 4
@send_cmd._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013gspca_kinect: send_cmd: Output control transfer failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.17 = internal global ptr @send_cmd._entry.15, section ".printk_index", align 4
@send_cmd._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Control reply: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.20 = internal global ptr @send_cmd._entry.18, section ".printk_index", align 4
@send_cmd._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.4, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013gspca_kinect: send_cmd: Input control transfer failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.23 = internal global ptr @send_cmd._entry.21, section ".printk_index", align 4
@send_cmd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.4, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_kinect: send_cmd: Bad magic %02x %02x\0A\00", [49 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.26 = internal global ptr @send_cmd._entry.24, section ".printk_index", align 4
@send_cmd._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_kinect: send_cmd: Bad cmd %02x != %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.29 = internal global ptr @send_cmd._entry.27, section ".printk_index", align 4
@send_cmd._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.4, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_kinect: send_cmd: Bad tag %04x != %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.32 = internal global ptr @send_cmd._entry.30, section ".printk_index", align 4
@send_cmd._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.11, ptr @.str.4, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_kinect: send_cmd: Bad len %04x != %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.35 = internal global ptr @send_cmd._entry.33, section ".printk_index", align 4
@send_cmd._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.11, ptr @.str.4, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014gspca_kinect: send_cmd: Data buffer is %d bytes long, but got %d bytes\0A\00", [54 x i8] zeroinitializer }, align 32
@send_cmd._entry_ptr.38 = internal global ptr @send_cmd._entry.36, section ".printk_index", align 4
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014gspca_kinect: [Stream %02x] Invalid magic %02x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014gspca_kinect: Packet type not recognized...\0A\00", [49 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.43 = internal global ptr @sd_pkt_scan._entry.41, section ".printk_index", align 4
@video_camera_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1195528775, i32 1, i32 640, i32 307200, i32 8, i32 273, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1498831189, i32 1, i32 1280, i32 614400, i32 8, i32 33, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 1195528775, i32 1, i32 1280, i32 1310720, i32 8, i32 20, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 488, i32 1110454617, i32 1, i32 800, i32 390400, i32 8, i32 322, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 1110454617, i32 1, i32 1600, i32 1638400, i32 8, i32 68, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 459, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"depth_mode\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 26, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 471, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 460, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 440, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"sd_desc_depth\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 426, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"sd_desc_video\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 414, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"depth_camera_mode\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 65, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 269, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 208, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 213, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 132, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 145, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 149, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 156, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 158, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 165, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 170, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 175, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 180, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 186, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 395, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 410, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"video_camera_mode\00", align 1
@___asan_gen_.174 = private constant [36 x i8] c"../drivers/media/usb/gspca/kinect.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 73, i32 37 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_depth_mode309, ptr @__UNIQUE_ID_depth_modetype308, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_kinect__307_471_sd_driver_init6, ptr @__param_depth_mode, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.41, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.43, ptr @send_cmd._entry, ptr @send_cmd._entry.12, ptr @send_cmd._entry.15, ptr @send_cmd._entry.18, ptr @send_cmd._entry.21, ptr @send_cmd._entry.24, ptr @send_cmd._entry.27, ptr @send_cmd._entry.30, ptr @send_cmd._entry.33, ptr @send_cmd._entry.36, ptr @send_cmd._entry_ptr, ptr @send_cmd._entry_ptr.14, ptr @send_cmd._entry_ptr.17, ptr @send_cmd._entry_ptr.20, ptr @send_cmd._entry_ptr.23, ptr @send_cmd._entry_ptr.26, ptr @send_cmd._entry_ptr.29, ptr @send_cmd._entry_ptr.32, ptr @send_cmd._entry_ptr.35, ptr @send_cmd._entry_ptr.38, ptr @write_register._entry, ptr @write_register._entry.7, ptr @write_register._entry_ptr, ptr @write_register._entry_ptr.9, ptr @sd_driver, ptr @depth_mode, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc_depth, ptr @sd_desc_video, ptr @depth_camera_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @video_camera_mode], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @depth_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_depth to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_video to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @depth_camera_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_cmd._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_camera_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
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
  %0 = load i8, ptr @depth_mode, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %sd_desc_video.sd_desc_depth = select i1 %tobool.not, ptr @sd_desc_video, ptr @sd_desc_depth
  %call1 = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull %sd_desc_video.sd_desc_depth, i32 noundef 4152, ptr noundef null) #7
  ret i32 %call1
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
define internal i32 @sd_config_depth(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam_tag = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cam_tag to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %cam_tag, align 8
  %stream_flag = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %stream_flag to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 112, ptr %stream_flag, align 2
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @depth_camera_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %nmodes, align 4
  %xfer_ep = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 33
  %4 = ptrtoint ptr %xfer_ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 130, ptr %xfer_ep, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start_depth(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 261, i16 noundef zeroext 0)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 6, i16 noundef zeroext 0)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 18, i16 noundef zeroext 2)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 19, i16 noundef zeroext 1)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext 30)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 6, i16 noundef zeroext 2)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 23, i16 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %__data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %__data, i32 12
  %sub = add i32 %len, -12
  %stream_flag = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %stream_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_flag, align 2
  %or = or i8 %1, 1
  %or4 = or i8 %1, 2
  %2 = or i8 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp = icmp slt i32 %len, 12
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %4)
  %cmp12.not = icmp eq i8 %4, 82
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx15 = getelementptr [2 x i8], ptr %__data, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %6)
  %cmp17.not = icmp eq i8 %6, 66
  br i1 %cmp17.not, label %if.end28, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %conv21 = zext i8 %1 to i32
  %conv24 = zext i8 %4 to i32
  %arrayidx26 = getelementptr [2 x i8], ptr %__data, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27) #10
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %flag = getelementptr inbounds %struct.pkt_hdr, ptr %__data, i32 0, i32 2
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flag, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %or)
  %cmp31 = icmp eq i8 %10, %or
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %or4)
  %cmp37 = icmp eq i8 %10, %or4
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %cleanup

if.else40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %2)
  %cmp44 = icmp eq i8 %10, %2
  br i1 %cmp44, label %if.then46, label %do.end50

if.then46:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %cleanup

do.end50:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.then46, %if.then39, %if.then33, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN_depth(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 6, i16 noundef zeroext 0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %reply.sroa.0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply.sroa.0)
  %0 = ptrtoint ptr %reply.sroa.0 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reply.sroa.0, align 4
  %reply.sroa.0.2..sroa_idx = getelementptr inbounds i8, ptr %reply.sroa.0, i32 2
  %1 = ptrtoint ptr %reply.sroa.0.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %reply.sroa.0.2..sroa_idx, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp sgt i32 %2, 6
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i16 %reg to i32
  %.pre9 = zext i16 %data to i32
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i16 %reg to i32
  %conv3 = zext i16 %data to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %.pre-phi10 = phi i32 [ %.pre9, %entry.do.end5_crit_edge ], [ %conv3, %do.end ]
  %.pre-phi = phi i32 [ %.pre, %entry.do.end5_crit_edge ], [ %conv, %do.end ]
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %obuf1.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %ibuf2.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %5 = ptrtoint ptr %obuf1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 71, ptr %obuf1.i, align 2
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 77, ptr %arrayidx5.i, align 1
  %cmd6.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 768, ptr %cmd6.i, align 2
  %cam_tag.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %8 = ptrtoint ptr %cam_tag.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cam_tag.i, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #7
  %tag.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %tag.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tag.i, align 2
  %len.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 512, ptr %len.i, align 2
  %add.ptr.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 8
  %13 = shl nuw i32 %.pre-phi10, 16
  %14 = or i32 %13, %.pre-phi
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %add.ptr.i, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %18, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %obuf1.i, i16 noundef zeroext 12, i32 noundef 500) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp10.i = icmp sgt i32 %19, 6
  br i1 %cmp10.i, label %do.end15.i, label %do.end5.do.end24.i_crit_edge

do.end5.do.end24.i_crit_edge:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

do.end15.i:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %cam_tag.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cam_tag.i, align 8
  %conv20.i = zext i16 %21 to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef 3, i32 noundef %conv20.i, i32 noundef 4, i32 noundef %call1.i.i) #10
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end15.i, %do.end5.do.end24.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp25.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp25.i, label %do.end30.i, label %do.end24.i.do.body34.i_crit_edge

do.end24.i.do.body34.i_crit_edge:                 ; preds = %do.end24.i
  br label %do.body34.i

do.end30.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call1.i.i) #10
  br label %cleanup

do.body34.i:                                      ; preds = %do.body34.i.do.body34.i_crit_edge, %do.end24.i.do.body34.i_crit_edge
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 8
  %shl.i.i1.i = shl i32 %23, 8
  %or1.i.i = or i32 %shl.i.i1.i, -2147483520
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or1.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %ibuf2.i, i16 noundef zeroext 512, i32 noundef 500) #7
  %cmp37.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp37.i, label %do.body34.i.do.body34.i_crit_edge, label %do.body40.i

do.body34.i.do.body34.i_crit_edge:                ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34.i

do.body40.i:                                      ; preds = %do.body34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp41.i = icmp sgt i32 %24, 6
  br i1 %cmp41.i, label %do.end46.i, label %do.body40.i.do.end54.i_crit_edge

do.body40.i.do.end54.i_crit_edge:                 ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

do.end46.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  %name49.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name49.i, i32 noundef %call2.i.i) #10
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end46.i, %do.body40.i.do.end54.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call2.i.i)
  %cmp55.i = icmp slt i32 %call2.i.i, 8
  br i1 %cmp55.i, label %do.end60.i, label %if.end65.i

do.end60.i:                                       ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i.i) #10
  br label %cleanup

if.end65.i:                                       ; preds = %do.end54.i
  %sub.i = add nsw i32 %call2.i.i, -8
  %25 = ptrtoint ptr %ibuf2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ibuf2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %26)
  %cmp69.not.i = icmp eq i8 %26, 82
  br i1 %cmp69.not.i, label %lor.lhs.false71.i, label %if.end65.i.do.end80.i_crit_edge

if.end65.i.do.end80.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

lor.lhs.false71.i:                                ; preds = %if.end65.i
  %arrayidx73.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %28)
  %cmp75.not.i = icmp eq i8 %28, 66
  br i1 %cmp75.not.i, label %if.end89.i, label %lor.lhs.false71.i.do.end80.i_crit_edge

lor.lhs.false71.i.do.end80.i_crit_edge:           ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80.i

do.end80.i:                                       ; preds = %lor.lhs.false71.i.do.end80.i_crit_edge, %if.end65.i.do.end80.i_crit_edge
  %conv84.i = zext i8 %26 to i32
  %arrayidx86.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx86.i, align 1
  %conv87.i = zext i8 %30 to i32
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv84.i, i32 noundef %conv87.i) #10
  br label %cleanup

if.end89.i:                                       ; preds = %lor.lhs.false71.i
  %cmd90.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %cmd90.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cmd90.i, align 2
  %33 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cmd6.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp94.not.i = icmp eq i16 %32, %34
  br i1 %cmp94.not.i, label %if.end106.i, label %do.end99.i

do.end99.i:                                       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv93.i = zext i16 %34 to i32
  %conv91.i = zext i16 %32 to i32
  %call105.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv91.i, i32 noundef %conv93.i) #10
  br label %cleanup

if.end106.i:                                      ; preds = %if.end89.i
  %tag107.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %tag107.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tag107.i, align 2
  %37 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tag.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp111.not.i = icmp eq i16 %36, %38
  br i1 %cmp111.not.i, label %if.end123.i, label %do.end116.i

do.end116.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv110.i = zext i16 %38 to i32
  %conv108.i = zext i16 %36 to i32
  %call122.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv108.i, i32 noundef %conv110.i) #10
  br label %cleanup

if.end123.i:                                      ; preds = %if.end106.i
  %len124.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %len124.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len124.i, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #7
  %conv125.i = zext i16 %41 to i32
  %div12623.i = lshr i32 %sub.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div12623.i, i32 %conv125.i)
  %cmp127.not.i = icmp eq i32 %div12623.i, %conv125.i
  br i1 %cmp127.not.i, label %if.end138.i, label %do.end132.i

do.end132.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv125.i, i32 noundef %div12623.i) #10
  br label %cleanup

if.end138.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp139.i = icmp ugt i32 %sub.i, 4
  br i1 %cmp139.i, label %send_cmd.exit.thread, label %send_cmd.exit

send_cmd.exit.thread:                             ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 4, i32 noundef %sub.i) #10
  %add.ptr147.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %add.ptr147.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %add.ptr147.i, align 1
  %44 = ptrtoint ptr %reply.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %reply.sroa.0, align 4
  %45 = ptrtoint ptr %cam_tag.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cam_tag.i, align 8
  %inc.i11 = add i16 %46, 1
  store i16 %inc.i11, ptr %cam_tag.i, align 8
  br label %do.end18

send_cmd.exit:                                    ; preds = %if.end138.i
  %add.ptr148.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 4, i32 8
  %47 = call ptr @memcpy(ptr %reply.sroa.0, ptr %add.ptr148.i, i32 %sub.i)
  %48 = ptrtoint ptr %cam_tag.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cam_tag.i, align 8
  %inc.i = add i16 %49, 1
  store i16 %inc.i, ptr %cam_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp13.not = icmp eq i32 %sub.i, 2
  br i1 %cmp13.not, label %send_cmd.exit.cleanup_crit_edge, label %send_cmd.exit.do.end18_crit_edge

send_cmd.exit.do.end18_crit_edge:                 ; preds = %send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

send_cmd.exit.cleanup_crit_edge:                  ; preds = %send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %send_cmd.exit.do.end18_crit_edge, %send_cmd.exit.thread
  %50 = ptrtoint ptr %reply.sroa.0 to i32
  call void @__asan_load2_noabort(i32 %50)
  %reply.sroa.0.0.reply.sroa.0.0.reply.sroa.0.0. = load i16, ptr %reply.sroa.0, align 4
  %conv21 = zext i16 %reply.sroa.0.0.reply.sroa.0.0.reply.sroa.0.0. to i32
  %51 = ptrtoint ptr %reply.sroa.0.2..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %51)
  %reply.sroa.0.2.reply.sroa.0.2.reply.sroa.0.2. = load i16, ptr %reply.sroa.0.2..sroa_idx, align 2
  %conv23 = zext i16 %reply.sroa.0.2.reply.sroa.0.2.reply.sroa.0.2. to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %sub.i, i32 noundef %conv21, i32 noundef %conv23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %send_cmd.exit.cleanup_crit_edge, %do.end132.i, %do.end116.i, %do.end99.i, %do.end80.i, %do.end60.i, %do.end30.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply.sroa.0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_config_video(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam_tag = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %cam_tag to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %cam_tag, align 8
  %stream_flag = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %stream_flag to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %stream_flag, align 2
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @video_camera_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %nmodes, align 4
  %xfer_ep = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 33
  %4 = ptrtoint ptr %xfer_ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 129, ptr %xfer_ep, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start_video(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 261, i16 noundef zeroext 0)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 5, i16 noundef zeroext 0)
  %and17 = and i32 %5, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %entry.if.end24_crit_edge, label %if.then19

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 19, i16 noundef zeroext 1)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 20, i16 noundef zeroext 30)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 6, i16 noundef zeroext 2)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 6, i16 noundef zeroext 0)
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %entry.if.end24_crit_edge
  %and11 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and1 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool.not, i16 12, i16 25
  %conv25 = select i1 %tobool2.not, i16 0, i16 5
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext %conv, i16 noundef zeroext %conv25)
  %conv27 = select i1 %tobool.not, i16 13, i16 26
  %conv28 = select i1 %tobool7.not, i16 1, i16 2
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext %conv27, i16 noundef zeroext %conv28)
  %conv30 = select i1 %tobool.not, i16 14, i16 27
  %conv31 = select i1 %tobool12.not, i16 15, i16 30
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext %conv30, i16 noundef zeroext %conv31)
  %conv33 = select i1 %tobool.not, i16 1, i16 3
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 5, i16 noundef zeroext %conv33)
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 71, i16 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN_video(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @write_register(ptr noundef %gspca_dev, i16 noundef zeroext 5, i16 noundef zeroext 0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/kinect.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/kinect.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/kinect.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_kinect__307_471_sd_driver_init6, !8, !"__initcall__kmod_gspca_kinect__307_471_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/kinect.c", i32 471, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @__param_depth_mode, !11, !"__param_depth_mode", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/kinect.c", i32 473, i32 1}
!12 = !{ptr @__UNIQUE_ID_depth_modetype308, !11, !"__UNIQUE_ID_depth_modetype308", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_depth_mode309, !14, !"__UNIQUE_ID_depth_mode309", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/kinect.c", i32 474, i32 1}
!15 = !{ptr @depth_mode, !16, !"depth_mode", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/kinect.c", i32 26, i32 13}
!17 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/kinect.c", i32 460, i32 16}
!20 = !{ptr @sd_driver, !21, !"sd_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/kinect.c", i32 459, i32 26}
!22 = !{ptr @sd_desc_depth, !23, !"sd_desc_depth", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/kinect.c", i32 426, i32 29}
!24 = !{ptr @depth_camera_mode, !25, !"depth_camera_mode", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/kinect.c", i32 65, i32 37}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/kinect.c", i32 269, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sd_init._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @sd_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/kinect.c", i32 208, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @write_register._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @write_register._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/kinect.c", i32 213, i32 3}
!39 = !{ptr @write_register._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @write_register._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/kinect.c", i32 132, i32 3}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @send_cmd._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @send_cmd._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/kinect.c", i32 145, i32 2}
!48 = !{ptr @send_cmd._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @send_cmd._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/kinect.c", i32 149, i32 3}
!52 = !{ptr @send_cmd._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @send_cmd._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/kinect.c", i32 156, i32 2}
!56 = !{ptr @send_cmd._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @send_cmd._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/kinect.c", i32 158, i32 3}
!60 = !{ptr @send_cmd._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @send_cmd._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/kinect.c", i32 165, i32 3}
!64 = !{ptr @send_cmd._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @send_cmd._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/kinect.c", i32 170, i32 3}
!68 = !{ptr @send_cmd._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @send_cmd._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/kinect.c", i32 175, i32 3}
!72 = !{ptr @send_cmd._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @send_cmd._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/kinect.c", i32 180, i32 3}
!76 = !{ptr @send_cmd._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @send_cmd._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/kinect.c", i32 186, i32 3}
!80 = !{ptr @send_cmd._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @send_cmd._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/kinect.c", i32 395, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sd_pkt_scan._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @sd_pkt_scan._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/kinect.c", i32 410, i32 3}
!89 = !{ptr @sd_pkt_scan._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sd_pkt_scan._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sd_desc_video, !92, !"sd_desc_video", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/kinect.c", i32 414, i32 29}
!93 = !{ptr @video_camera_mode, !94, !"video_camera_mode", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/kinect.c", i32 73, i32 37}
!95 = !{ptr @device_table, !96, !"device_table", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/kinect.c", i32 440, i32 35}
!97 = !{ptr @__param_str_depth_mode, !11, !"__param_str_depth_mode", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
