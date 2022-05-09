; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/nw80x.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/nw80x.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.sd = type { %struct.gspca_dev, i32, i8, i8, i8, i8, i8 }
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

@__UNIQUE_ID_author303 = internal constant [64 x i8] c"gspca_nw80x.author=Jean-Francois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [48 x i8] c"gspca_nw80x.description=NW80x USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_nw80x.file=drivers/media/usb/gspca/gspca_nw80x\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_nw80x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_nw80x__307_2089_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__param_str_webcam = internal constant [19 x i8] c"gspca_nw80x.webcam\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@webcam = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_webcam = internal constant %struct.kernel_param { ptr @__param_str_webcam, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @webcam } }, section "__param", align 4
@__UNIQUE_ID_webcamtype308 = internal constant [32 x i8] c"gspca_nw80x.parmtype=webcam:int\00", section ".modinfo", align 1
@__UNIQUE_ID_webcam309 = internal constant [310 x i8] c"gspca_nw80x.parm=webcam:Webcam type\0A0: generic\0A1: Trust 120 SpaceCam\0A2: other Trust 120 SpaceCam\0A3: Conceptronic Video Pro\0A4: D-link dru-350c\0A5: Plustek Opticam 500U\0A6: Panasonic GP-KR651US\0A7: iRez Kritter\0A8: Mustek Wcam 300 mini\0A9: Scalar USB Microscope M2 (Proscope)\0A10: Divio Chicony TwinkleCam\0A11: DVC-V6\0A\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_nw80x\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nw80x\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [10 x %struct.usb_device_id], [48 x i8] } { [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1133, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1282, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1323, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1375, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1701, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1701, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1701, i16 -10240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1726, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1832, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: et31x110 sensor type %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/nw80x.c\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@webcam_chip = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\00\00\02\02\01\02\02\02\02\00\02\01\02", [18 x i8] zeroinitializer }, align 32
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_nw80x: Bad webcam type %d for NW80%d\0A\00", [50 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Bridge nw80%d - type: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@cif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1279742026, i32 1, i32 320, i32 38400, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1279742026, i32 1, i32 352, i32 50688, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1279742026, i32 1, i32 320, i32 38400, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1279742026, i32 1, i32 640, i32 115200, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: SET 00 0000 %04x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: SET 00 0000 %04x %02x %02x ...\0A\00", [58 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.15 = internal global ptr @reg_w._entry.13, section ".printk_index", align 4
@reg_w._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 1552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gspca_nw80x: reg_w err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.18 = internal global ptr @reg_w._entry.16, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gspca_nw80x: reg_r err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: GET 00 0000 %04x %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.23 = internal global ptr @reg_r._entry.21, section ".printk_index", align 4
@reg_r._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.4, i32 1588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: GET 00 0000 %04x %02x %02x ..\0A\00", [59 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.26 = internal global ptr @reg_r._entry.24, section ".printk_index", align 4
@spacecam_init = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\04\05\01\01\04\04\01\01\04\06\01\04\04\04\03\00\00\00\05\05\01\00\00\00\00", [39 x i8] zeroinitializer }, align 32
@nw800_init = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\04\05\01a\04\04\01\01\04\06\01\04\04\04\03\00\00\00\05\05\01\00\00\00\00", [39 x i8] zeroinitializer }, align 32
@proscope_init = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\04\05\01!\04\04\01\01\00\00\00", [21 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nw80x:2005:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 2034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_nw80x: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@webcam_start = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @nw800_start, ptr @spacecam_start, ptr @spacecam2_start, ptr @cvideopro_start, ptr @dlink_start, ptr @ds3303_start, ptr @kr651_start_1, ptr @kritter_start, ptr @mustek_start, ptr @proscope_start_1, ptr @twinkle_start, ptr @dvcv6_start, ptr @nw801_start_1, ptr @nw802_start], [40 x i8] zeroinitializer }, align 32
@nw801_start_qvga = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\02\00\10<P\9E<P\00\00\00\00x\18\0B\06\A2\86x\02\0F\01k\10\1A\01\15\00\00\01\1E\10\00\01/\10\8C\08\00\00?\01\00\00\EF\00\10\11\08)\00\18\01\1F\00\D2\00\00\00\00", [36 x i8] zeroinitializer }, align 32
@nw801_start_vga = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\02\00\10x\A0\97x\A0\00\00\00\00\F0\18\0B\06b\82\F0\02\0F\01\D5\10\1A\01\15\00\00\01\0E\10\00\01\22\10\8C\08\00\00\7F\02\00\00\DF\01\10\11\08Q\000\02=\00\A4\01\00\00\00", [36 x i8] zeroinitializer }, align 32
@nw801_start_2 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\10\04\01\1A\10\19\01\09\10$\06\C0\00?\02\00\01\00\03\02\92\03\00\1D\04\F2\00$\07\00{\01\CF\10\94\01\07\05\05\01\01\05\04\01\01\10\0E\01\08\10H\11\007Uk}\8D\9B\A8\B4\BF\CA\D4\DD\E6\EF\F0\F0\10\03\01\00\10\0F\02\0C\0C\10\03\01\08\10H\11\007Uk}\8D\9B\A8\B4\BF\CA\D4\DD\E6\EF\F0\F0\10\0B\01\0B\10\0D\01\0B\10\0C\01\1F\05\06\01\03\00\00\00", [39 x i8] zeroinitializer }, align 32
@kr651_start_qvga = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\02\00\11<P\9E<P\00\00\00\00x?\10\02\F2\8Fx@\10\1A\01\03\10\00\01\AC\10\85\08\00\00?\01\00\00\EF\00\10\1B\02\00\00\10\11\08)\00\18\01\1F\00\D2\00\10\1D\06\E0\00\0C\00R\00\10\1D\02(\01\00\00\00", [56 x i8] zeroinitializer }, align 32
@kr651_start_vga = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\02\00\11x\A0\8Cx\A0\00\00\00\00\F00\03\01\82\82\98\80\10\1A\01\03\10\00\01\A0\10\85\08\00\00\7F\02\00\00\DF\01\10\1B\02\00\00\10\11\08Q\000\02=\00\A4\01\10\1D\06\E0\00\0C\00R\00\10\1D\02h\00", [59 x i8] zeroinitializer }, align 32
@kr651_start_2 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\10\0E\01\08\10A\11\00\11<\\t\88\99\A8\B7\C4\D0\DC\DC\DC\DC\DC\DC\10\03\01\00\10\0F\02\0C\0C\10\03\01\0C\10A\11\00\11<\\t\88\99\A8\B7\C4\D0\DC\DC\DC\DC\DC\DC\10\0B\01\10\10\0D\01\10\10\0C\01-\04\06\01\03\04\04\01\00\00\00\00", [48 x i8] zeroinitializer }, align 32
@proscope_start_qvga = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\02\00\11<P\9E<P\00\00\00\00x?\10\02\F2\8Fx@\10\1A\01\06\00\03\02\F9\02\10\85\08\00\00?\01\00\00\EF\00\10\1B\02\00\00\10\11\08\00\00?\01\00\00\EF\00\10\1D\08\C0\0D\01 \02\E8\03\00\10\0E\01\10\00\00\00", [54 x i8] zeroinitializer }, align 32
@proscope_start_vga = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\00\03\02\F9\02\10\85\08\00\00\7F\02\00\00\DF\01\02\00\11x\A0\8Cx\A0\00\00\00\00\F0\16\00\00\82\84\00\80\10\1A\01\06\10\00\01\A1\10\1B\02\00\00\10\1D\08\C0\0D\01 \02\E8\03\00\10\11\08\00\00\7F\02\00\00\DF\01\10\0E\01\10\10A\11\00\10Qn\83\93\A1\AE\B9\C3\CC\D4\DD\E4\EB\F2\F9\10\03\01\00\00\00\00", [58 x i8] zeroinitializer }, align 32
@proscope_start_2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\10\0F\02\0C\0C\10\03\01\0C\10A\11\00\10Qn\83\93\A1\AE\B9\C3\CC\D4\DD\E4\EB\F2\F9\10\0B\01\0B\10\0D\01\10\10\0C\01\1B\04\06\01\03\04\05\01!\04\04\01\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@nw800_start = internal constant { [1086 x i8], [258 x i8] } { [1086 x i8] c"\04\06\01\C0\00\00@\10C\00\B4\01\10\00O\EF\0E\00t\01\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00>\00$\03>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\A0H\C3\02\88\0Ch\00\00\00\00\00\A8\06\00\08\002\01\01\00\16\00\04\00K\00v\00\86\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00a\C0\05\00\06\E8\00\00\00  \06\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\83\02 \00\13\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1D\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00-\00b\01$\01b\01$\01 \01`\01\00\00\04\04\01\FF\04\06\01\C4\04\06\01\C0\00\00@\10C\00\B4\01\10\00O\EF\0E\00t\01\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00>\00$\03>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\A0H\C3\02\88\0Ch\00\00\00\00\00\A8\06\00\08\002\01\01\00\16\00\04\00K\00v\00\86\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00a\C0\05\00\06\E8\00\00\00  \06\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\83\02 \00\13\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1D\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00-\00b\01$\01b\01$\01 \01`\01\00\00\02\00\11HX\9EHX\00\00\00\00\846\05\01\F2\86e@\00\80\01\A0\10\1A\01\00\00\91\02l\01\00\03\02\C8\01\10\1A\01\00\10\00\01\83\10\8F\0Cb\01$\01b\01$\01 \01`\01\10\85\08\00\00_\01\00\00\1F\01\10\1B\02i\00\10\11\08\00\00_\01\00\00\1F\01\05\02\01\02\06\00\02\04\D9\05\05\01 \05\05\01!\10\0E\01\08\10A\11\00\08!=Rcu\83\91\9E\AA\B6\C1\CC\D6\E0\EA\10\03\01\00\10\0F\02\13\13\10\03\01\14\10A\11\00\08!=Rcu\83\91\9E\AA\B6\C1\CC\D6\E0\EA\10\0B\01\14\10\0D\01 \10\0C\014\04\06\01\C3\04\04\01\00\05\02\01\02\06\00\02\00H\05\05\01 \05\05\01!\00\00\00", [258 x i8] zeroinitializer }, align 32
@spacecam_start = internal constant { [605 x i8], [131 x i8] } { [605 x i8] c"\04\06\01D\00\00@\10C\00\B4\01\10\00O\EF\0E\00t\01\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00>\00$\03>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\A0H\C3\02\88\0Ch\00\00\00\00\00\A8\06\00\08\002\01\01\00\16\00\04\00K\00|\00\80\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00\00\00\05\00\06\E0\00\00\00\00\00\06\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\83\02 \00\11\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1D\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00-\00b\01$\01b\01$\01 \01`\01\00\00\04\06\01\C0\10\85\08\00\00_\01\00\00\1F\01\02\00\11HX\9EHX\00\00\00\00\846\05\01\F2\86e@\00\80\01\A0\10\1A\01\00\00\91\022\01\00\03\02\08\02\10\00\01\83\10\8F\0Cb\01$\01b\01$\01 \01`\01\10\11\08\00\00_\01\00\00\1F\01\10\0E\01\08\10A\11\00d\99\C0\E2\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\10\03\01\00\10\0F\02\13\13\10\03\01\06\10A\11\00d\99\C0\E2\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\10\0B\01\08\10\0D\01\10\10\0C\01\1F\04\06\01\C3\04\05\01@\04\04\01@\00\00\00", [131 x i8] zeroinitializer }, align 32
@spacecam2_start = internal constant { [666 x i8], [166 x i8] } { [666 x i8] c"\04\06\01D\04\06\01\00\00\00@\14\83\00\BA\01\10\00O\EF\00\00`\00\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\06\00\FC\01>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\B8H\0F\04\88\14h\00\00\00\00\00\A8\01\00\03\00$\01\01\00\16\00\04\00K\00v\00\86\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00a\00\05\00\06\E0\00\00\00\00\00\06\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\80\02 \00\13\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1D\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\00\01b\01$\01b\01$\01 \01`\01\00\00\10\85\08\00\00_\01\00\00\1F\01\04\04\01@\04\04\01\00\FF@\0C\02\0C\12\07\00\00\00\05\00\00\05\05\FF@\02\11\06\FF@\02\14\00\FF@\02\13\01\02\00\11HX\9EHX\00\00\00\00\846\05\01\F2\86e@\FF@\02\02\0C\FF@\02\0F\00\FF@\02\13\01\10\00\01\01\10\8F\0Cb\01$\01b\01$\01 \01`\01\FF@\02\05\0F\FF@\02\13\01\FF@\07\09\0B\0F\05\05\0F\00\FF@\03\12\04\01\10\11\08\00\00_\01\00\00\1F\01\10\0E\01\08\10A\11\00\17?i{\8C\9A\A7\B3\BF\C9\D3\DD\E6\EF\F7\F9\10\03\01\00\10\0F\02\13\13\10\03\01\06\10A\11\00\17?i{\8C\9A\A7\B3\BF\C9\D3\DD\E6\EF\F7\F9\10\0B\01\11\10\0D\01\10\10\0C\01\14\04\06\01\03\04\05\01a\04\04\01\00\00\00\00", [166 x i8] zeroinitializer }, align 32
@cvideopro_start = internal constant { [551 x i8], [153 x i8] } { [551 x i8] c"\04\06\01\04\00\00@T\96\98\F9\02\18\00L\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\0B\00\1B\00\C8\00\F4\05\B4\00\CC\00\01\00\01\00\01\00\01\00\01\00\01\00\A2\00\C6\00`\00\C6\00\01\00\01\00\01\00\01\00@@\00\AE\00\D2\00\AE\00\D2\00\01\00\01\00\01\00\01\00\A8\00\C0\00f\00\C0\00\01\00\01\00\01\00\01\00\0A\00T\00\0A\00T\00\10\006\00\D2\00\EE\00\00\00\00\00\00\00\F6\00]\00\C7\00~\000\00\80\1F\98C?\0D\88 \80?G\AF\00\00\A8\08\00\11\00\0C\02\0C\00\1C\00\94\00\10\06$\00J\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00\FF\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A0\02\80\00\12\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\E0\00\0C\00R\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0F\05\82\02\E4\01@\01\F0\00@\01\F0\00\02\00\11<P\8C<P\00\00\00\00x??\06\F2\8F\F0@\10\1A\01\03\10\00\01\AC\10\85\08\00\00?\01\00\00\EF\00\10\1B\02;\01\10\11\08a\00\E0\00I\00\A8\00\10\1F\06\01 \02\E8\03\00\10\1D\02@\06\10\0E\01\08\10A\11\00\0FFbv\86\94\A0\AB\B6\BF\C8\CF\D7\DC\DC\DC\10\03\01\00\10\0F\02\12\12\10\03\01\0C\10A\11\00\0FFbv\86\94\A0\AB\B6\BF\C8\CF\D7\DC\DC\DC\10\0B\01\09\10\0D\01\10\10\0C\01/\04\06\01\03\04\04\01\00\00\00\00", [153 x i8] zeroinitializer }, align 32
@dlink_start = internal constant { [552 x i8], [152 x i8] } { [552 x i8] c"\04\06\01\04\00\00@\10\00\00\92\03\10\00M\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\CE\00\F4\05>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\B4o?\0F\88 h\00\00\00\00\00\A8\08\00\11\00\0C\02\01\00\16\00\94\00\10\06\10\006\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00!\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A1\02\80\00\12\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\C0\00\14\02\00\01\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0F\01\82\02\E4\01@\01\F0\00@\01\F0\00\02\00\11<P\9E<P\00\00\00\00x?\10\02\F2\8Fx@\10\1A\01\00\10\00\01\AD\00\00\01\08\10\85\08\00\00?\01\00\00\EF\00\10\1B\02\00\00\10\11\08Q\00\F0\00=\00\B4\00\10\1D\08@\06\01 \02\E8\03\00\10\0E\01 \10A\11\00\07\1E8M`p\7F\8E\9B\A8\B4\BF\CA\D5\DF\EA\10\03\01\00\10\0F\02\11\11\10\03\01\10\10A\11\00\07\1E8M`p\7F\8E\9B\A8\B4\BF\CA\D5\DF\EA\10\0B\01\19\10\0D\01\10\10\0C\01\1E\04\06\01\03\04\04\01\00\00\00\00", [152 x i8] zeroinitializer }, align 32
@ds3303_start = internal constant { [561 x i8], [143 x i8] } { [561 x i8] c"\05\06\01\04\00\00@\16\00\00\F9\02\11\00\0E\01\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\CE\00\F4\05>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\22\B4o?\0F\88 \08\00\00\00\00\00\A9\A8\1F\00\0D\02\07\00\01\00\19\00\F2\00\18\06\10\06\10\006\00\02\00\12\03\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82P@ \03\00\03\03\00\00\05\00\07\01\10\00\00\00\FF\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@/\02\80\00\12\00\00\00\00\00\00\10\1F\10\08\0A\0AQ\00\F1\00<\00\B4\00\01\15\FD\07=\00\00\00\00\00\00\8C\04\01 \02\00\03\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\10@@\EE\1C\1C\E9\FC\10\80\80\00-FXgt\7F\88\94\9D\A6\AE\B5\BD\C4\CB\D1\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222C\10\80\22Tdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\00?\01\00\00\EF\00\02\0A\82\02\E4\01@\01\F0\00@\01\F0\00\02\00\11<P\9E<P\00\00\00\00x??\00\F2\8F\81@\10\1A\01\15\10\00\01/\10\8C\08\00\00?\01\00\00\EF\00\10\1B\02\00\00\10\11\08a\00\E0\00I\00\A8\00\10&\06\01 \02\E8\03\00\10$\02@\06\10\0E\01\08\10H\11\00\15@g\84\9D\B2\C6\D6\E7\F6\F9\F9\F9\F9\F9\F9\10\03\01\00\10\0F\02\16\16\10\03\01\0C\10H\11\00\15@g\84\9D\B2\C6\D6\E7\F6\F9\F9\F9\F9\F9\F9\10\0B\01&\10\0D\01\10\10\0C\01\1C\05\06\01\03\05\04\01\00\00\00\00", [143 x i8] zeroinitializer }, align 32
@kr651_start_1 = internal constant { [405 x i8], [107 x i8] } { [405 x i8] c"\04\06\01\04\00\00@D\96\98\F9\02\18\00H\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\0B\00\1B\00\C8\00\F4\05\B4\00\CC\00\01\00\01\00\01\00\01\00\01\00\01\00\A2\00\C6\00`\00\C6\00\01\00\01\00\01\00\01\00@@\00\AE\00\D2\00\AE\00\D2\00\01\00\01\00\01\00\01\00\A8\00\C0\00f\00\C0\00\01\00\01\00\01\00\01\00\0A\00T\00\0A\00T\00\10\006\00\D2\00\EE\00\00\00\00\00\00\00\F6\00]\00\C7\00~\000\00\80\1F\18C?\0D\88 \80?G\AF\00\00\A8\08\00\11\00\0C\02\0C\00\1C\00\94\00\10\06$\00J\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\02\00\00\04\00\07\01\10\00\00\00!\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A0\02\80\00\12\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\E0\00\0C\00R\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0F\05\82\02\E4\01@\01\F0\00@\01\F0\00\00\00\00", [107 x i8] zeroinitializer }, align 32
@kritter_start = internal constant { [551 x i8], [153 x i8] } { [551 x i8] c"\04\06\01\06\00\00@D\96\98\94\03\18\00H\0F\1E\00\0C\02\01\00\19\00\01\00\19\00\01\00\19\00\0B\00\1B\00\0A\01(\07\B4\00\CC\00\01\00\01\00\01\00\01\00\01\00\01\00\A2\00\C6\00`\00\C6\00\01\00\01\00\01\00\01\00@@\00\AE\00\D2\00\AE\00\D2\00\01\00\01\00\01\00\01\00\A8\00\C0\00f\00\C0\00\01\00\01\00\01\00\01\00\0A\00T\00\0A\00T\00\10\006\00\D2\00\EE\00\00\00\00\00\00\00\F6\00]\00\0E\00~\000\00\80\1F\18C?\0D\88 \80?G\AF\00\00\A8\08\00\11\00\0B\02\0C\00\1C\00\94\00\10\06$\00J\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\02\00\00\04\00\07\01\10\00\00\00\FF\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A0\02\80\00\12\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\E0\00\0C\00R\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\00\05\82\02\E4\01@\01\F0\00@\01\F0\00\02\00\11<P\8C<P\00\00\00\00x??\06\F2\8F\F0@\10\1A\01\03\10\00\01\AF\10\85\08\00\00?\01\00\00\EF\00\10\1B\02;\01\10\11\08a\00\E0\00I\00\A8\00\10\1D\06\E0\00\0C\00R\00\10\1D\02\00\00\10\0E\01\08\10A\11\00\0D6N`o{\86\90\98\A1\A9\B1\B7\BE\C4\CB\10\03\01\00\10\0F\02\0D\0D\10\03\01\02\10A\11\00\0D6N`o{\86\90\98\A1\A9\B1\B7\BE\C4\CB\10\0B\01\17\10\0D\01\10\10\0C\01\1E\04\06\01\03\04\04\01\00\00\00\00", [153 x i8] zeroinitializer }, align 32
@mustek_start = internal constant { [552 x i8], [152 x i8] } { [552 x i8] c"\04\06\01\04\00\00@\10\00\00\92\03\10\00M\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\CE\00\F4\05>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\B4o?\0F\88 h\00\00\00\00\00\A8\08\00\11\00\0C\02\01\00\16\00\94\00\10\06\FC\05\0C\06\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00!\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A1\02\80\00\13\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\C0\00\14\02\00\01\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0E\01\82\02\E4\01@\01\F0\00@\01\F0\00\02\00\11<P\9E<P\00\00\00\00x?\10\02\F2\8Fx@\10\1A\01\00\10\00\01\AD\00\00\01\08\10\85\08\00\00?\01\00\00\EF\00\10\1B\02\00\00\10\11\08\00\00?\01\00\00\EF\00\10\1D\08\00 \00 \00 \00 \10\0E\01\0F\10A\11\00\0F)Jdz\8C\9E\AD\BA\C7\D3\DE\E8\F1\F9\FF\10\0F\02\11\11\10\03\01\0C\10A\11\00\0F)Jdz\8C\9E\AD\BA\C7\D3\DE\E8\F1\F9\FF\10\0B\01\1C\10\0D\01\1A\10\0C\014\04\05\01a\04\04\01@\04\06\01\03\00\00\00", [152 x i8] zeroinitializer }, align 32
@proscope_start_1 = internal constant { [405 x i8], [107 x i8] } { [405 x i8] c"\04\06\01\04\00\00@\10\01\00\F9\02\10\00\04\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\08\00\17\00\CE\00\F4\05>\00\86\00>\00\86\00\CE\00\F8\03>\00\86\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00\B6\00n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\F6\034\04\F6\034\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\E8\00>\00\AA\00\88\00.\00\80\1F\B4o\1F\0F\08 \A8\00\00\00\00\00\A8\08\00\11\00\0C\02\01\00\19\00\94\00\10\06\10\006\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00!\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\AD\02\80\00\12\00\00\00\00\00\00\10\1F\10\08\0A\0AQ\00\F1\00<\00\B4\00I\13\00\00\8C\04\01 \02\00\03\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00-FXgt\7F\88\94\9D\A6\AE\B5\BD\C4\CB\D1\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00?\01\00\00\EF\00\09\05\82\02\E4\01@\01\F0\00@\01\F0\00\00\00\00", [107 x i8] zeroinitializer }, align 32
@twinkle_start = internal constant { [686 x i8], [178 x i8] } { [686 x i8] c"\04\06\01D\04\06\01\00\00\00@\14\83\00\BA\01\10\00O\EF\00\00`\00\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\06\00\FC\01>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\B8H\0F\04\88\14h\00\00\00\00\00\A8\01\00\03\00$\01\01\00\16\00\04\00K\00v\00\86\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00a\00\05\00\06\E0\00\00\00\00\00\06\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\80\02 \00\11\00\00\00\00\00\00\10\10\10\08\08\08\00\00\00\00\00\00\00\00I\13\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\10\00 \10\06\F7\EE\1C\1C\E9\FC\00\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1D\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\00\01b\01$\01b\01$\01 \01`\01\00\00\10\85\08\00\00_\01\00\00\1F\01\04\04\01\10\04\04\01\00\04\05\01a\04\04\01\01\FF@\0C\02\0C\12\07\00\00\00\00\00\00\00\0A\FF@\02\11\06\FF@\02\14\00\FF@\02\13\01\FF@\02\07\01\02\00\11HX\9EHX\00\00\00\00\846\05\01\F2\86e@\FF@\02\02\0C\FF@\02\13\01\10\00\01\01\10\8F\0Cb\01$\01b\01$\01 \01`\01\FF@\02\05\0F\FF@\02\13\01\FF@\08\08\04\0B\01\01\02\00\17\FF@\03\12\00\01\10\11\08\00\00_\01\00\00\1F\01\FF@\02\12\00\FF@\02\0E\00\FF@\02\11\06\10A\11\00\17?i{\8C\9A\A7\B3\BF\C9\D3\DD\E6\EF\F7\F9\10\03\01\00\10\0F\02\0C\0C\10\03\01\06\10A\11\00\17?i{\8C\9A\A7\B3\BF\C9\D3\DD\E6\EF\F7\F9\10\0B\01\19\10\0D\01\10\10\0C\01\0D\04\06\01\03\04\05\01a\04\04\01A\00\00\00", [178 x i8] zeroinitializer }, align 32
@dvcv6_start = internal constant { [585 x i8], [151 x i8] } { [585 x i8] c"\04\06\01\06\00\00@T\96\98\F9\02\18\00L\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\0B\00\1B\00\C8\00\F4\05\B4\00\CC\00\01\00\01\00\01\00\01\00\01\00\01\00\A2\00\C6\00`\00\C6\00\01\00\01\00\01\00\01\00@@\00\AE\00\D2\00\AE\00\D2\00\01\00\01\00\01\00\01\00\A8\00\C0\00f\00\C0\00\01\00\01\00\01\00\01\00\0A\00T\00\0A\00T\00\10\006\00\D2\00\EE\00\00\00\00\00\00\00\F6\00]\00\C7\00~\000\00\80\1F\98C?\0D\88 \80?G\AF\00\00\A8\08\00\11\00\0C\02\0C\00\1C\00\94\00\10\06$\00J\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00\FF\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A0\02\80\00\12\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\00\00\E0\00\0C\00R\00\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0F\05\82\02\E4\01@\01\F0\00@\01\F0\00\00\03\02\94\03\00\1D\04\0A\01(\07\00{\02\E0\00\10\8D\01\00\00\09\04\1E\00\0C\02\00\91\02\0B\02\10\00\01\AF\02\00\11<P\8F<P\00\00\00\00x??\06\F2\8F\F0@\10\1A\01\02\10\00\01\AF\10\85\08\00\00?\01\00\00\EF\00\10\1B\02\07\01\10\11\08a\00\E0\00I\00\A8\00\10\1F\06\01 \02\E8\03\00\10\1D\02@\06\10\0E\01\08\10A\11\00\0FTo\82\91\9F\AA\B4\BD\C5\CD\D5\DB\DC\DC\DC\10\03\01\00\10\0F\02\12\12\10\03\01\11\10A\11\00\0FTo\82\91\9F\AA\B4\BD\C5\CD\D5\DB\DC\DC\DC\10\0B\01\16\10\0D\01\10\10\0C\01\1A\04\06\01\03\04\04\01\00", [151 x i8] zeroinitializer }, align 32
@nw801_start_1 = internal constant { [415 x i8], [97 x i8] } { [415 x i8] c"\05\06\01\04\00\00@\0E\00\00\F9\02\11\00\0E\01\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\CE\00\F4\05>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\22\B4o?\0F\88 \08\00\00\00\00\00i\A8\1F\00\0D\02\07\00\01\00\19\00\F2\00\18\06\10\06\10\006\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\00\00\00\05\00\07\01\10\00\00\00\00\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\22\02\80\00\1E\00\00\00\00\00\00\0A\15\08\08\0A\0A\00\00\00\00\00\00\00\00\015\FD\07=\00\00\00\00\00\00\C0\00\14\02\00\01\00\00@\00\00\00@\00\00\00@ \10\06\00\00\00\00 \10\06\F7\10@@\EE\1C\1C\E9\FC\10\80\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222C\10\80\22Tdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0E\00\82\02\E4\01@\01\F0\00@\01\F0\00\00\00\00", [97 x i8] zeroinitializer }, align 32
@nw802_start = internal constant { [552 x i8], [152 x i8] } { [552 x i8] c"\04\06\01\04\00\00@\10\00\00\F9\02\10\00M\0F\1F\00\0D\02\01\00\19\00\01\00\19\00\01\00\19\00\01\00\19\00\CE\00\F4\05>\00\86\00>\00\86\00>\00\86\00\01\00\01\00V\00\9E\00V\00\9E\00V\00\9E\00\01\00\01\00@@\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00n\00\B6\00n\00x\04n\00\B6\00\01\00\01\00\CA\03F\04\CA\03F\04\10\006\00\D2\00\EE\00\00\00\00\00>\00\F0\00>\00\AA\00\88\00.\00\80\1F\B4o?\0F\88 h\00\00\00\00\00\A8\08\00\11\00\0C\02\01\00\16\00\94\00\10\06\08\00\18\00\02\00\12x\A0\9Ex\A0\00\00\00\00\F0\18\0B\06b\82\A0@ \03\00\03\03\00\00\04\00\07\01\10\00\00\00!\00\06\00\02\09\99\08\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00@\A1\02\80\00\1D\00\00\00\00\00\00\10\10\10\08\0A\0A\00\00\00\00\00\00\00\00I\13\FF\01\C0\00\14\02\00\01\00\00 \00\00\00 \00\00\00 \10\08\03\00\00\00\00 \10\06\F7\EE\1C\1C\E9\FC\10\80\10@@\80\00\055^x\8B\99\A4\AE\B5\BC\C1\C6\C9\CC\CF\D0\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\00\11\222CTdt\84\94\A4\B3\10\80\1B\C3\D2\E2\F1\FF\00\00\00\00\00\00\00\00\0E\05\82\02\E4\01@\01\F0\00@\01\F0\00\02\00\11<P\9E<P\00\00\00\00x?\10\02\F2\8Fx@\10\1A\01\00\10\00\01\AD\00\00\01\08\10\85\08\00\00?\01\00\00\EF\00\10\1B\02\00\00\10\11\08Q\00\F0\00=\00\B4\00\10\1D\08\00\A0\00\A0\00\A0\00\A0\10\0E\01'\10A\11\00\0E5Obq\7F\8B\96\A0\A9\B2\BB\C3\CA\D2\D8\10\03\01\00\10\0F\02\14\14\10\03\01\0C\10A\11\00\11\222CTdt\84\94\A4\B3\C3\D2\E2\F1\FF\10\0B\01\10\10\0D\01\11\10\0C\01\1C\04\06\01\03\04\04\01\00\00\00\00", [152 x i8] zeroinitializer }, align 32
@switch.table.sd_config = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\02\01\01\02\01\01\02", [25 x i8] zeroinitializer }, align 32
@switch.table.sd_stopN = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01\01\FF!\FF\FF\FF\FF\01\01\FF", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 6, i64 7, i64 11, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 9, i64 12]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 9963793, i64 9963794]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 6, i64 7, i64 11, i64 12]
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2077, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"webcam\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 20, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2089, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2078, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2055, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2043, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1762, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"webcam_chip\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 59, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1780, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1785, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"cif_mode\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 133, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 143, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1537, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1540, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1552, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1573, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1583, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1586, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"spacecam_init\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 517, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"nw800_init\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 164, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"proscope_init\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1215, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2005, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1995, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 2034, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"webcam_start\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1508, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"nw801_start_qvga\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 383, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"nw801_start_vga\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 395, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"nw801_start_2\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 406, i32 17 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"kr651_start_qvga\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1010, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"kr651_start_vga\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1023, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"kr651_start_2\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1035, i32 17 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"proscope_start_qvga\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1273, i32 17 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"proscope_start_vga\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1286, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"proscope_start_2\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1304, i32 17 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"nw800_start\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 172, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"spacecam_start\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 525, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"spacecam2_start\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 612, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"cvideopro_start\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 711, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"dlink_start\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 791, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant [13 x i8] c"ds3303_start\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 873, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"kr651_start_1\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 957, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"kritter_start\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1055, i32 17 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"mustek_start\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1135, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"proscope_start_1\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1220, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant [14 x i8] c"twinkle_start\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1320, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant [12 x i8] c"dvcv6_start\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1423, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant [14 x i8] c"nw801_start_1\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 328, i32 17 }
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"nw802_start\00", align 1
@___asan_gen_.226 = private constant [35 x i8] c"../drivers/media/usb/gspca/nw80x.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 435, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant [23 x i8] c"switch.table.sd_config\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [22 x i8] c"switch.table.sd_stopN\00", align 1
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_webcam309, ptr @__UNIQUE_ID_webcamtype308, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_nw80x__307_2089_sd_driver_init6, ptr @__param_webcam, ptr @reg_r._entry, ptr @reg_r._entry.21, ptr @reg_r._entry.24, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.23, ptr @reg_r._entry_ptr.26, ptr @reg_w._entry, ptr @reg_w._entry.13, ptr @reg_w._entry.16, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.15, ptr @reg_w._entry_ptr.18, ptr @sd_config._entry, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @webcam, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @webcam_chip, ptr @.str.6, ptr @.str.9, ptr @cif_mode, ptr @vga_mode, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @spacecam_init, ptr @nw800_init, ptr @proscope_init, ptr @sd_init_controls._key, ptr @.str.27, ptr @sd_ctrl_ops, ptr @.str.28, ptr @.str.29, ptr @webcam_start, ptr @nw801_start_qvga, ptr @nw801_start_vga, ptr @nw801_start_2, ptr @kr651_start_qvga, ptr @kr651_start_vga, ptr @kr651_start_2, ptr @proscope_start_qvga, ptr @proscope_start_vga, ptr @proscope_start_2, ptr @nw800_start, ptr @spacecam_start, ptr @spacecam2_start, ptr @cvideopro_start, ptr @dlink_start, ptr @ds3303_start, ptr @kr651_start_1, ptr @kritter_start, ptr @mustek_start, ptr @proscope_start_1, ptr @twinkle_start, ptr @dvcv6_start, ptr @nw801_start_1, ptr @nw802_start, ptr @switch.table.sd_config, ptr @switch.table.sd_stopN], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_chip to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spacecam_init to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw800_init to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proscope_init to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @webcam_start to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw801_start_qvga to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw801_start_vga to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw801_start_2 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kr651_start_qvga to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kr651_start_vga to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kr651_start_2 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proscope_start_qvga to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proscope_start_vga to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proscope_start_2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw800_start to i32), i32 1086, i32 1344, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spacecam_start to i32), i32 605, i32 736, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spacecam2_start to i32), i32 666, i32 832, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvideopro_start to i32), i32 551, i32 704, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlink_start to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3303_start to i32), i32 561, i32 704, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kr651_start_1 to i32), i32 405, i32 512, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kritter_start to i32), i32 551, i32 704, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mustek_start to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proscope_start_1 to i32), i32 405, i32 512, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twinkle_start to i32), i32 686, i32 864, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvcv6_start to i32), i32 585, i32 736, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw801_start_1 to i32), i32 415, i32 512, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw802_start to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_config to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_stopN to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 0, i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #5
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
  %0 = load i32, ptr @webcam, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %0)
  %cmp = icmp ugt i32 %0, 13
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 0, ptr @webcam, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @webcam, align 4
  %conv = trunc i32 %1 to i8
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %webcam to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %webcam, align 8
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %needs_full_bandwidth = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 9
  %3 = ptrtoint ptr %needs_full_bandwidth to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %needs_full_bandwidth, align 1
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %4 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ag_cnt, align 4
  %call = tail call fastcc i32 @nw802_test_reg(ptr noundef %gspca_dev, i16 noundef zeroext 1280, i8 noundef zeroext 85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %5 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %bridge, align 1
  %6 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4 = icmp eq i8 %7, 0
  br i1 %cmp4, label %if.then1.if.end65.sink.split_crit_edge, label %if.then1.if.end65_crit_edge

if.then1.if.end65_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then1.if.end65.sink.split_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

if.else:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @nw802_test_reg(ptr noundef %gspca_dev, i16 noundef zeroext 4251, i8 noundef zeroext -86)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.else
  %bridge12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %8 = ptrtoint ptr %bridge12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bridge12, align 1
  %9 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp15 = icmp eq i8 %10, 0
  br i1 %cmp15, label %if.then11.if.end65.sink.split_crit_edge, label %if.then11.if.end65_crit_edge

if.then11.if.end65_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then11.if.end65.sink.split_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

if.else20:                                        ; preds = %if.else
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %11 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idVendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1701, i16 %12)
  %cmp22 = icmp eq i16 %12, 1701
  br i1 %cmp22, label %land.lhs.true, label %if.else20.if.end65_crit_edge

if.else20.if.end65_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

land.lhs.true:                                    ; preds = %if.else20
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %13 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -10240, i16 %14)
  %cmp25 = icmp eq i16 %14, -10240
  br i1 %cmp25, label %if.then27, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then27:                                        ; preds = %land.lhs.true
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp slt i32 %16, 0
  br i1 %cmp.i, label %if.then27.reg_r.exitthread-pre-split_crit_edge, label %if.end.i

if.then27.reg_r.exitthread-pre-split_crit_edge:   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exitthread-pre-split

if.end.i:                                         ; preds = %if.then27
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1027, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call3.i) #8
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 64)
  br label %reg_r.exitthread-pre-split

if.end10.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp15.i = icmp sgt i32 %27, 5
  br i1 %cmp15.i, label %do.end20.i, label %if.end10.i.reg_r.exit_crit_edge

if.end10.i.reg_r.exit_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv24.i = zext i8 %31 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i, i32 noundef 1027, i32 noundef %conv24.i) #8
  br label %reg_r.exitthread-pre-split

reg_r.exitthread-pre-split:                       ; preds = %do.end20.i, %do.end.i, %if.then27.reg_r.exitthread-pre-split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %reg_r.exitthread-pre-split, %if.end10.i.reg_r.exit_crit_edge
  %32 = phi i32 [ %.pr, %reg_r.exitthread-pre-split ], [ %27, %if.end10.i.reg_r.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp28 = icmp sgt i32 %32, 0
  br i1 %cmp28, label %do.end, label %reg_r.exit.do.end36_crit_edge

reg_r.exit.do.end36_crit_edge:                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %33 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv32 = zext i8 %36 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv32) #8
  br label %do.end36

do.end36:                                         ; preds = %do.end, %reg_r.exit.do.end36_crit_edge
  %usb_buf37 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %37 = ptrtoint ptr %usb_buf37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf37, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %41 = lshr i8 %40, 1
  %42 = zext i8 %41 to i32
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %do.end36.if.end65_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
    i32 10, label %sw.bb55
  ]

do.end36.if.end65_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

sw.bb:                                            ; preds = %do.end36
  %44 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp42 = icmp eq i8 %45, 0
  br i1 %cmp42, label %sw.bb.if.end65.sink.split_crit_edge, label %sw.bb.if.end65_crit_edge

sw.bb.if.end65_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

sw.bb.if.end65.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

sw.bb47:                                          ; preds = %do.end36
  %46 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp50 = icmp eq i8 %47, 0
  br i1 %cmp50, label %sw.bb47.if.end65.sink.split_crit_edge, label %sw.bb47.if.end65_crit_edge

sw.bb47.if.end65_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

sw.bb47.if.end65.sink.split_crit_edge:            ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

sw.bb55:                                          ; preds = %do.end36
  %48 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp58 = icmp eq i8 %49, 0
  br i1 %cmp58, label %sw.bb55.if.end65.sink.split_crit_edge, label %sw.bb55.if.end65_crit_edge

sw.bb55.if.end65_crit_edge:                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

sw.bb55.if.end65.sink.split_crit_edge:            ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %sw.bb55.if.end65.sink.split_crit_edge, %sw.bb47.if.end65.sink.split_crit_edge, %sw.bb.if.end65.sink.split_crit_edge, %if.then11.if.end65.sink.split_crit_edge, %if.then1.if.end65.sink.split_crit_edge
  %.sink = phi i8 [ 13, %if.then1.if.end65.sink.split_crit_edge ], [ 12, %if.then11.if.end65.sink.split_crit_edge ], [ 1, %sw.bb.if.end65.sink.split_crit_edge ], [ 10, %sw.bb47.if.end65.sink.split_crit_edge ], [ 2, %sw.bb55.if.end65.sink.split_crit_edge ]
  %50 = ptrtoint ptr %webcam to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %.sink, ptr %webcam, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %sw.bb55.if.end65_crit_edge, %sw.bb47.if.end65_crit_edge, %sw.bb.if.end65_crit_edge, %do.end36.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %if.else20.if.end65_crit_edge, %if.then11.if.end65_crit_edge, %if.then1.if.end65_crit_edge
  %51 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %webcam, align 8
  %idxprom = zext i8 %52 to i32
  %arrayidx67 = getelementptr [14 x i8], ptr @webcam_chip, i32 0, i32 %idxprom
  %53 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx67, align 1
  %bridge69 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %55 = ptrtoint ptr %bridge69 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bridge69, align 1
  %conv70 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp71.not = icmp eq i8 %54, %56
  br i1 %cmp71.not, label %do.body85, label %do.end76

do.end76:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %idxprom, i32 noundef %conv70) #8
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %57 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -19, ptr %usb_err, align 8
  br label %cleanup

do.body85:                                        ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %58 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp86 = icmp sgt i32 %58, 0
  br i1 %cmp86, label %do.end91, label %do.body85.do.end103_crit_edge

do.body85.do.end103_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end103

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #7
  %name94 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name94, i32 noundef %conv70, i32 noundef %idxprom) #8
  br label %do.end103

do.end103:                                        ; preds = %do.end91, %do.body85.do.end103_crit_edge
  %59 = ptrtoint ptr %bridge69 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bridge69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp106 = icmp eq i8 %60, 0
  br i1 %cmp106, label %if.then108, label %if.else117

if.then108:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %62)
  %cond = icmp eq i8 %62, 5
  %cif_mode. = select i1 %cond, ptr @cif_mode, ptr getelementptr inbounds ([2 x %struct.v4l2_pix_format], ptr @cif_mode, i32 0, i32 1)
  %63 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %cif_mode., ptr %cam, align 4
  br label %if.end129

if.else117:                                       ; preds = %do.end103
  %64 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @vga_mode, ptr %cam, align 4
  %65 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %webcam, align 8
  %switch.tableidx = add i8 %66, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %67 = icmp ult i8 %switch.tableidx, 7
  br i1 %67, label %switch.lookup, label %if.else117.if.end129_crit_edge

if.else117.if.end129_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

switch.lookup:                                    ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #7
  %68 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.sd_config, i32 0, i32 %68
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %69)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end129

if.end129:                                        ; preds = %switch.lookup, %if.else117.if.end129_crit_edge, %if.then108
  %.sink171 = phi i8 [ 1, %if.then108 ], [ %switch.load, %switch.lookup ], [ 1, %if.else117.if.end129_crit_edge ]
  %nmodes124 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %70 = ptrtoint ptr %nmodes124 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.sink171, ptr %nmodes124, align 4
  %usb_err130 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %71 = ptrtoint ptr %usb_err130 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %usb_err130, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %do.end76
  %retval.0 = phi i32 [ -19, %do.end76 ], [ %72, %if.end129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cond = icmp eq i8 %1, 0
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %2 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %webcam, align 8
  br i1 %cond, label %sw.bb, label %sw.default3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cond9 = icmp eq i8 %3, 1
  %spacecam_init.nw800_init = select i1 %cond9, ptr @spacecam_init, ptr @nw800_init
  br label %sw.epilog8.sink.split

sw.default3:                                      ; preds = %entry
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %3, label %sw.default3.sw.epilog8_crit_edge [
    i8 8, label %sw.default3.sw.epilog8.sink.split_crit_edge
    i8 12, label %sw.default3.sw.epilog8.sink.split_crit_edge16
    i8 9, label %sw.default3.sw.epilog8.sink.split_crit_edge17
  ]

sw.default3.sw.epilog8.sink.split_crit_edge17:    ; preds = %sw.default3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog8.sink.split

sw.default3.sw.epilog8.sink.split_crit_edge16:    ; preds = %sw.default3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog8.sink.split

sw.default3.sw.epilog8.sink.split_crit_edge:      ; preds = %sw.default3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog8.sink.split

sw.default3.sw.epilog8_crit_edge:                 ; preds = %sw.default3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog8

sw.epilog8.sink.split:                            ; preds = %sw.default3.sw.epilog8.sink.split_crit_edge, %sw.default3.sw.epilog8.sink.split_crit_edge16, %sw.default3.sw.epilog8.sink.split_crit_edge17, %sw.bb
  %proscope_init.sink = phi ptr [ %spacecam_init.nw800_init, %sw.bb ], [ @proscope_init, %sw.default3.sw.epilog8.sink.split_crit_edge ], [ @proscope_init, %sw.default3.sw.epilog8.sink.split_crit_edge16 ], [ @proscope_init, %sw.default3.sw.epilog8.sink.split_crit_edge17 ]
  tail call fastcc void @reg_w_buf(ptr noundef %gspca_dev, ptr noundef nonnull %proscope_init.sink)
  br label %sw.epilog8

sw.epilog8:                                       ; preds = %sw.epilog8.sink.split, %sw.default3.sw.epilog8_crit_edge
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %5 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_err, align 8
  ret i32 %6
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.27) #5
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %1 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %webcam, align 8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %2, label %entry.sw.epilog_crit_edge [
    i8 12, label %sw.bb
    i8 6, label %sw.bb5
    i8 3, label %entry.sw.bb10_crit_edge
    i8 11, label %entry.sw.bb10_crit_edge41
    i8 7, label %entry.sw.bb10_crit_edge42
  ]

entry.sw.bb10_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

entry.sw.bb10_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
  %4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %4, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 50) #5
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %gain, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 9, i64 noundef 1, i64 noundef 9) #5
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
  %7 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %7, align 8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 253, i64 noundef 1, i64 noundef 128) #5
  %gain9 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %gain9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %gain9, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb5, %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge41, %entry.sw.bb10_crit_edge42
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 315, i64 noundef 1, i64 noundef 150) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb
  %call11.sink = phi ptr [ %call11, %sw.bb10 ], [ %call4, %sw.bb ]
  %exposure12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %exposure12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11.sink, ptr %exposure12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #8
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %15, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ 0, %if.then18 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %webcam, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [14 x ptr], ptr @webcam_start, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @reg_w_buf(ptr noundef %gspca_dev, ptr noundef %3)
  %4 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %webcam, align 8
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 12, label %sw.bb
    i8 6, label %sw.bb3
    i8 9, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %7 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %8)
  %cmp = icmp eq i32 %8, 320
  %nw801_start_qvga.nw801_start_vga = select i1 %cmp, ptr @nw801_start_qvga, ptr @nw801_start_vga
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pixfmt4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %9 = ptrtoint ptr %pixfmt4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixfmt4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %10)
  %cmp6 = icmp eq i32 %10, 320
  %kr651_start_qvga.kr651_start_vga = select i1 %cmp6, ptr @kr651_start_qvga, ptr @kr651_start_vga
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pixfmt12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %11 = ptrtoint ptr %pixfmt12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixfmt12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %12)
  %cmp14 = icmp eq i32 %12, 320
  %proscope_start_qvga.proscope_start_vga = select i1 %cmp14, ptr @proscope_start_qvga, ptr @proscope_start_vga
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %sw.bb3, %sw.bb
  %proscope_start_vga.sink.sink = phi ptr [ %proscope_start_qvga.proscope_start_vga, %sw.bb11 ], [ %kr651_start_qvga.kr651_start_vga, %sw.bb3 ], [ %nw801_start_qvga.nw801_start_vga, %sw.bb ]
  %proscope_start_2.sink = phi ptr [ @proscope_start_2, %sw.bb11 ], [ @kr651_start_2, %sw.bb3 ], [ @nw801_start_2, %sw.bb ]
  tail call fastcc void @reg_w_buf(ptr noundef %gspca_dev, ptr noundef nonnull %proscope_start_vga.sink.sink)
  tail call fastcc void @reg_w_buf(ptr noundef %gspca_dev, ptr noundef nonnull %proscope_start_2.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %exp_too_high_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %13 = ptrtoint ptr %exp_too_high_cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %exp_too_high_cnt, align 2
  %exp_too_low_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %exp_too_low_cnt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %exp_too_low_cnt, align 1
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %15 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err, align 8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr i8, ptr %data, i32 6
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp9 = icmp eq i8 %5, -1
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %arrayidx12 = getelementptr i8, ptr %data, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp14 = icmp eq i8 %7, -1
  br i1 %cmp14, label %if.then, label %land.lhs.true11.if.else_crit_edge

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %sub = add i32 %len, -8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %len) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp4.i = icmp sgt i32 %6, 6
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef 1030, i32 noundef 2) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %if.end.i.if.end29.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %8, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call33.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1030, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.end29.i.if.end_crit_edge

if.end29.i.if.end_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end39.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i) #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call33.i, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %do.end39.i, %if.end29.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %14 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %webcam, align 8
  %switch.tableidx = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 11
  br i1 %16, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1903, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %18 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i8], ptr @switch.table.sd_stopN, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %19)
  %switch.load = load i8, ptr %switch.gep, align 1
  %dev1.i9 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %20 = ptrtoint ptr %dev1.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i9, align 4
  %usb_err.i10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %22 = ptrtoint ptr %usb_err.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_err.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i11 = icmp slt i32 %23, 0
  br i1 %cmp.i11, label %switch.lookup.cleanup_crit_edge, label %if.end.i13

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i13:                                       ; preds = %switch.lookup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp4.i12 = icmp sgt i32 %24, 6
  br i1 %cmp4.i12, label %do.end.i17, label %if.end.i13.if.end29.i23_crit_edge

if.end.i13.if.end29.i23_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i23

do.end.i17:                                       ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  %name.i14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i15 = zext i8 %switch.load to i32
  %call.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i14, i32 noundef 1028, i32 noundef %conv7.i15) #8
  br label %if.end29.i23

if.end29.i23:                                     ; preds = %do.end.i17, %if.end.i13.if.end29.i23_crit_edge
  %usb_buf.i18 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i18, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %switch.load, ptr %26, align 1
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %21, align 8
  %shl.i.i19 = shl i32 %29, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %30 = load ptr, ptr %usb_buf.i18, align 4
  %call33.i21 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i20, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1028, ptr noundef %30, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i21)
  %cmp34.i22 = icmp slt i32 %call33.i21, 0
  br i1 %cmp34.i22, label %do.end39.i25, label %if.end29.i23.cleanup_crit_edge

if.end29.i23.cleanup_crit_edge:                   ; preds = %if.end29.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39.i25:                                     ; preds = %if.end29.i23
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i21) #8
  %31 = ptrtoint ptr %usb_err.i10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call33.i21, ptr %usb_err.i10, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end39.i25, %if.end29.i23.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ag_cnt, align 4
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
  store i8 %dec, ptr %ag_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %ag_cnt, align 4
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp10 = icmp eq i8 %5, 1
  %conv12 = select i1 %cmp10, i16 2061, i16 2060
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext %conv12, i32 noundef 4)
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %9 to i32
  %shl = shl nuw i32 %conv13, 24
  %arrayidx15 = getelementptr i8, ptr %7, i32 2
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %11 to i32
  %shl17 = shl nuw nsw i32 %conv16, 16
  %add = or i32 %shl17, %shl
  %arrayidx19 = getelementptr i8, ptr %7, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %add22 = or i32 %add, %shl21
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %conv25 = zext i8 %15 to i32
  %add26 = or i32 %add22, %conv25
  %ae_res = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %16 = ptrtoint ptr %ae_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ae_res, align 8
  %div = udiv i32 %add26, %17
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %18 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %webcam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %19)
  %cond30 = icmp eq i8 %19, 12
  br i1 %cond30, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @gspca_coarse_grained_expo_autogain(ptr noundef %gspca_dev, i32 noundef %div, i32 noundef 100, i32 noundef 5) #5
  br label %cleanup

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 @gspca_expo_autogain(ptr noundef %gspca_dev, i32 noundef %div, i32 noundef 100, i32 noundef 5, i32 noundef 230, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nw802_test_reg(ptr noundef %gspca_dev, i16 noundef zeroext %index, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp4.i = icmp sgt i32 %4, 6
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv.i = zext i16 %index to i32
  %conv7.i = zext i8 %value to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv7.i) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %if.end.i.if.end29.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %value, ptr %6, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call33.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %reg_w.exit

do.end39.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i) #8
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call33.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

reg_w.exit:                                       ; preds = %if.end29.i
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i7 = icmp slt i32 %.pr, 0
  br i1 %cmp.i7, label %reg_w.exit.reg_r.exit_crit_edge, label %if.end.i12

reg_w.exit.reg_r.exit_crit_edge:                  ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end.i12:                                       ; preds = %reg_w.exit
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i9 = shl i32 %16, 8
  %or2.i = or i32 %shl.i.i9, -2147483520
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i11 = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i11, label %do.end.i13, label %if.end10.i

do.end.i13:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call3.i) #8
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 64)
  br label %reg_r.exit

if.end10.i:                                       ; preds = %if.end.i12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp15.i = icmp sgt i32 %23, 5
  br i1 %cmp15.i, label %do.end20.i, label %if.end10.i.reg_r.exit_crit_edge

if.end10.i.reg_r.exit_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv22.i = zext i16 %index to i32
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv24.i = zext i8 %27 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i14, i32 noundef %conv22.i, i32 noundef %conv24.i) #8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end20.i, %if.end10.i.reg_r.exit_crit_edge, %do.end.i13, %reg_w.exit.reg_r.exit_crit_edge, %do.end39.i, %entry.reg_r.exit_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %28 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %value)
  %cmp = icmp eq i8 %31, %value
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext %index, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or2 = or i32 %shl.i, -2147483520
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf, align 4
  %conv = trunc i32 %len to i16
  %call3 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %7, i16 noundef zeroext %conv, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call3) #8
  %8 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %usb_err, align 8
  %9 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 64)
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp11 = icmp eq i32 %len, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp15 = icmp sgt i32 %12, 5
  br i1 %cmp11, label %do.body14, label %do.body29

do.body14:                                        ; preds = %if.end10
  br i1 %cmp15, label %do.end20, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv22 = zext i16 %index to i32
  %13 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv24 = zext i8 %16 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %conv22, i32 noundef %conv24) #8
  br label %cleanup

do.body29:                                        ; preds = %if.end10
  br i1 %cmp15, label %do.end35, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %name38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv40 = zext i16 %index to i32
  %17 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv43 = zext i8 %20 to i32
  %arrayidx45 = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %22 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name38, i32 noundef %conv40, i32 noundef %conv43, i32 noundef %conv46) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.body29.cleanup_crit_edge, %do.end20, %do.body14.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %index, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp2 = icmp eq i32 %len, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp4 = icmp sgt i32 %4, 6
  br i1 %cmp2, label %do.body, label %do.body11

do.body:                                          ; preds = %if.end
  br i1 %cmp4, label %do.end, label %do.body.if.end29_crit_edge

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i16 %index to i32
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %conv7 = zext i8 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %conv, i32 noundef %conv7) #8
  br label %if.end29

do.body11:                                        ; preds = %if.end
  br i1 %cmp4, label %do.end17, label %do.body11.if.end29_crit_edge

do.body11.if.end29_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %name20 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv22 = zext i16 %index to i32
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  %conv23 = zext i8 %8 to i32
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv24 = zext i8 %10 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name20, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %conv24) #8
  br label %if.end29

if.end29:                                         ; preds = %do.end17, %do.body11.if.end29_crit_edge, %do.end, %do.body.if.end29_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %data, i32 %len)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -2147483648
  %16 = load ptr, ptr %usb_buf, align 4
  %conv32 = trunc i32 %len to i16
  %call33 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %16, i16 noundef zeroext %conv32, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end39, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33) #8
  %17 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call33, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w_buf(ptr noundef %gspca_dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr230 = getelementptr i8, ptr %cmd, i32 2
  %0 = ptrtoint ptr %incdec.ptr230 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %incdec.ptr230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp35 = icmp eq i8 %1, 0
  br i1 %cmp35, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd, align 1
  %conv28 = zext i8 %3 to i16
  %shl29 = shl nuw i16 %conv28, 8
  %incdec.ptr27 = getelementptr i8, ptr %cmd, i32 1
  %4 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr27, align 1
  %conv331 = zext i8 %5 to i16
  %add32 = or i16 %shl29, %conv331
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %name20.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %if.end

if.end:                                           ; preds = %if.end14.if.end_crit_edge, %if.end.lr.ph
  %6 = phi i8 [ %1, %if.end.lr.ph ], [ %60, %if.end14.if.end_crit_edge ]
  %add37 = phi i16 [ %add32, %if.end.lr.ph ], [ %add, %if.end14.if.end_crit_edge ]
  %7 = phi i8 [ %5, %if.end.lr.ph ], [ %58, %if.end14.if.end_crit_edge ]
  %8 = phi i8 [ %3, %if.end.lr.ph ], [ %56, %if.end14.if.end_crit_edge ]
  %cmd.addr.036 = phi ptr [ %cmd, %if.end.lr.ph ], [ %add.ptr, %if.end14.if.end_crit_edge ]
  %incdec.ptr638 = getelementptr i8, ptr %cmd.addr.036, i32 3
  %conv740 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp10.not = icmp eq i8 %8, -1
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext %add37, ptr noundef %incdec.ptr638, i32 noundef %conv740)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %cmd.addr.036, i32 4
  %sub.i = add nsw i32 %conv740, -1
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1536, ptr noundef %add.ptr.i, i32 noundef %sub.i) #5
  tail call fastcc void @reg_w(ptr noundef %gspca_dev, i16 noundef zeroext 1536, ptr noundef %incdec.ptr638, i32 noundef %conv740) #5
  %9 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i.i, align 4
  %11 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i = icmp slt i32 %12, 0
  br i1 %cmp.i.i, label %if.else.for.cond.i.preheader_crit_edge, label %if.end.i.i

if.else.for.cond.i.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

if.end.i.i:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp4.i.i = icmp sgt i32 %13, 6
  br i1 %cmp4.i.i, label %do.end17.i.i, label %if.end.i.i.if.end29.i.i_crit_edge

if.end.i.i.if.end29.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

do.end17.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv24.i.i = zext i8 %7 to i32
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name20.i.i, i32 noundef 1282, i32 noundef %conv740, i32 noundef %conv24.i.i) #8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %do.end17.i.i, %if.end.i.i.if.end29.i.i_crit_edge
  %14 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %6, ptr %15, align 1
  %val.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %15, i32 1
  %17 = ptrtoint ptr %val.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %7, ptr %val.sroa.9.0..sroa_idx.i, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %call33.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1282, ptr noundef %20, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp slt i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %if.end29.i.i.reg_w.exit38.sink.split.i_crit_edge, label %reg_w.exit.i

if.end29.i.i.reg_w.exit38.sink.split.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit38.sink.split.i

reg_w.exit.i:                                     ; preds = %if.end29.i.i
  %21 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %usb_err.i.i, align 8
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i27.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i27.i, label %reg_w.exit.i.for.cond.i.preheader_crit_edge, label %if.end.i29.i

reg_w.exit.i.for.cond.i.preheader_crit_edge:      ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

if.end.i29.i:                                     ; preds = %reg_w.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp4.i28.i = icmp sgt i32 %24, 6
  br i1 %cmp4.i28.i, label %do.end.i.i, label %if.end.i29.i.if.end29.i35.i_crit_edge

if.end.i29.i.if.end29.i35.i_crit_edge:            ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i35.i

do.end.i.i:                                       ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name20.i.i, i32 noundef 1281, i32 noundef 1) #8
  br label %if.end29.i35.i

if.end29.i35.i:                                   ; preds = %do.end.i.i, %if.end.i29.i.if.end29.i35.i_crit_edge
  %25 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %26, align 1
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %23, align 8
  %shl.i.i31.i = shl i32 %29, 8
  %or.i32.i = or i32 %shl.i.i31.i, -2147483648
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %call33.i33.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i32.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1281, ptr noundef %30, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i33.i)
  %cmp34.i34.i = icmp slt i32 %call33.i33.i, 0
  br i1 %cmp34.i34.i, label %if.end29.i35.i.reg_w.exit38.sink.split.i_crit_edge, label %if.end29.i35.i.for.cond.i.preheader_crit_edge

if.end29.i35.i.for.cond.i.preheader_crit_edge:    ; preds = %if.end29.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.preheader

if.end29.i35.i.reg_w.exit38.sink.split.i_crit_edge: ; preds = %if.end29.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit38.sink.split.i

reg_w.exit38.sink.split.i:                        ; preds = %if.end29.i35.i.reg_w.exit38.sink.split.i_crit_edge, %if.end29.i.i.reg_w.exit38.sink.split.i_crit_edge
  %call33.i.sink55.i = phi i32 [ %call33.i.i, %if.end29.i.i.reg_w.exit38.sink.split.i_crit_edge ], [ %call33.i33.i, %if.end29.i35.i.reg_w.exit38.sink.split.i_crit_edge ]
  %call41.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i.sink55.i) #8
  %31 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call33.i.sink55.i, ptr %usb_err.i.i, align 8
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %reg_w.exit38.sink.split.i, %if.end29.i35.i.for.cond.i.preheader_crit_edge, %reg_w.exit.i.for.cond.i.preheader_crit_edge, %if.else.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %i.0.i = phi i32 [ %dec.i, %if.end.i.for.cond.i_crit_edge ], [ 5, %for.cond.i.preheader ]
  %dec.i = add nsw i32 %i.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.i.not = icmp eq i32 %i.0.i, 0
  br i1 %cmp.i.not, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  tail call void @msleep(i32 noundef 4) #5
  %32 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i40.i = icmp slt i32 %33, 0
  br i1 %cmp.i40.i, label %for.body.i.if.end14_crit_edge, label %if.end.i45.i

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i45.i:                                     ; preds = %for.body.i
  %34 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i42.i = shl i32 %37, 8
  %or2.i.i = or i32 %shl.i.i42.i, -2147483520
  %38 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or2.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1285, ptr noundef %39, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i44.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i44.i, label %do.end.i46.i, label %if.end10.i.i

do.end.i46.i:                                     ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call3.i.i) #8
  %40 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  %41 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i.i, align 4
  %43 = call ptr @memset(ptr %42, i32 0, i32 64)
  br label %reg_r.exit.i

if.end10.i.i:                                     ; preds = %if.end.i45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp15.i.i = icmp sgt i32 %44, 5
  br i1 %cmp15.i.i, label %do.end20.i.i, label %if.end10.i.i.reg_r.exit.i_crit_edge

if.end10.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end20.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv24.i48.i = zext i8 %48 to i32
  %call25.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name20.i.i, i32 noundef 1285, i32 noundef %conv24.i48.i) #8
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end20.i.i, %if.end10.i.i.reg_r.exit.i_crit_edge, %do.end.i46.i
  %49 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr53.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr53.i)
  %cmp5.i = icmp slt i32 %.pr53.i, 0
  br i1 %cmp5.i, label %reg_r.exit.i.if.end14_crit_edge, label %if.end.i

reg_r.exit.i.if.end14_crit_edge:                  ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i:                                         ; preds = %reg_r.exit.i
  %50 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %cmp9.i = icmp eq i8 %53, 0
  br i1 %cmp9.i, label %if.end.i.if.end14_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -62, ptr %usb_err.i.i, align 8
  br label %if.end14

if.end14:                                         ; preds = %for.end.i, %if.end.i.if.end14_crit_edge, %reg_r.exit.i.if.end14_crit_edge, %for.body.i.if.end14_crit_edge, %if.then12
  %add.ptr = getelementptr i8, ptr %incdec.ptr638, i32 %conv740
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %56 to i16
  %shl = shl nuw i16 %conv, 8
  %incdec.ptr2 = getelementptr i8, ptr %add.ptr, i32 2
  %57 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr, align 1
  %conv3 = zext i8 %58 to i16
  %add = or i16 %shl, %conv3
  %59 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr2, align 1
  %cmp = icmp eq i8 %60, 0
  br i1 %cmp, label %if.end14.for.end_crit_edge, label %if.end14.if.end_crit_edge

if.end14.if.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
  %4 = load i8, ptr %streaming, align 2, !range !146
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963794, label %sw.bb
    i32 9963793, label %sw.bb26
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %8 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %is_new, align 4
  %9 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %sw.bb.if.end3_crit_edge, label %if.then2

sw.bb.if.end3_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %sw.bb
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %ag_cnt.i = getelementptr i8, ptr %1, i32 1028
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %ag_cnt.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %ag_cnt.i, align 4
  br label %if.end3

if.end.i:                                         ; preds = %if.then2
  %13 = ptrtoint ptr %ag_cnt.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 13, ptr %ag_cnt.i, align 4
  %14 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp slt i32 %15, 0
  br i1 %cmp.i.i, label %if.end.i.reg_r.exit.i_crit_edge, label %if.end.i.i

if.end.i.reg_r.exit.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %16 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or2.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4100, ptr noundef %21, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call3.i.i) #8
  %22 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call3.i.i, ptr %usb_err, align 8
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 64)
  br label %reg_r.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp15.i.i = icmp sgt i32 %26, 5
  br i1 %cmp15.i.i, label %do.end20.i.i, label %if.end10.i.i.reg_r.exit.i_crit_edge

if.end10.i.i.reg_r.exit.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end20.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %27 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv24.i.i = zext i8 %30 to i32
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i.i, i32 noundef 4100, i32 noundef %conv24.i.i) #8
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end20.i.i, %if.end10.i.i.reg_r.exit.i_crit_edge, %do.end.i.i, %if.end.i.reg_r.exit.i_crit_edge
  %usb_buf.i = getelementptr i8, ptr %1, i32 204
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool2.not.i = icmp eq i8 %35, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %pixfmt.i = getelementptr i8, ptr %1, i32 240
  %36 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pixfmt.i, align 8
  %height.i = getelementptr i8, ptr %1, i32 244
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %39, %37
  %ae_res.i = getelementptr i8, ptr %1, i32 1024
  %40 = ptrtoint ptr %ae_res.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.i, ptr %ae_res.i, align 8
  br label %if.end3

if.else.i:                                        ; preds = %reg_r.exit.i
  %41 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i72.i = icmp slt i32 %42, 0
  br i1 %cmp.i72.i, label %if.else.i.reg_r.exit84.i_crit_edge, label %if.end.i79.i

if.else.i.reg_r.exit84.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit84.i

if.end.i79.i:                                     ; preds = %if.else.i
  %dev1.i73.i = getelementptr i8, ptr %1, i32 -100
  %43 = ptrtoint ptr %dev1.i73.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1.i73.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i74.i = shl i32 %46, 8
  %or2.i75.i = or i32 %shl.i.i74.i, -2147483520
  %call3.i77.i = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or2.i75.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4113, ptr noundef %32, i16 noundef zeroext 8, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i77.i)
  %cmp4.i78.i = icmp slt i32 %call3.i77.i, 0
  br i1 %cmp4.i78.i, label %do.end.i81.i, label %if.end10.i83.i

do.end.i81.i:                                     ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call3.i77.i) #8
  %47 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call3.i77.i, ptr %usb_err, align 8
  %48 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_buf.i, align 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 64)
  br label %reg_r.exit84.i

if.end10.i83.i:                                   ; preds = %if.end.i79.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cmp15.i82.i = icmp sgt i32 %51, 5
  br i1 %cmp15.i82.i, label %do.end35.i.i, label %if.end10.i83.i.reg_r.exit84.i_crit_edge

if.end10.i83.i.reg_r.exit84.i_crit_edge:          ; preds = %if.end10.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit84.i

do.end35.i.i:                                     ; preds = %if.end10.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  %name38.i.i = getelementptr i8, ptr %1, i32 -168
  %52 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %conv43.i.i = zext i8 %55 to i32
  %arrayidx45.i.i = getelementptr i8, ptr %53, i32 1
  %56 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx45.i.i, align 1
  %conv46.i.i = zext i8 %57 to i32
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name38.i.i, i32 noundef 4113, i32 noundef %conv43.i.i, i32 noundef %conv46.i.i) #8
  br label %reg_r.exit84.i

reg_r.exit84.i:                                   ; preds = %do.end35.i.i, %if.end10.i83.i.reg_r.exit84.i_crit_edge, %do.end.i81.i, %if.else.i.reg_r.exit84.i_crit_edge
  %58 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %61 to i32
  %shl.i = shl nuw nsw i32 %conv7.i, 8
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %59, align 1
  %conv10.i = zext i8 %63 to i32
  %add.i = or i32 %shl.i, %conv10.i
  %arrayidx12.i = getelementptr i8, ptr %59, i32 3
  %64 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %65 to i32
  %shl14.neg.i = mul nsw i32 %conv13.i, -256
  %sub.i = add nsw i32 %shl14.neg.i, %add.i
  %arrayidx16.i = getelementptr i8, ptr %59, i32 2
  %66 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %67 to i32
  %sub18.i = sub nsw i32 %sub.i, %conv17.i
  %arrayidx20.i = getelementptr i8, ptr %59, i32 5
  %68 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %69 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 8
  %arrayidx24.i = getelementptr i8, ptr %59, i32 4
  %70 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %71 to i32
  %add26.i = or i32 %shl22.i, %conv25.i
  %arrayidx28.i = getelementptr i8, ptr %59, i32 7
  %72 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %73 to i32
  %shl30.neg.i = mul nsw i32 %conv29.i, -256
  %sub31.i = add nsw i32 %shl30.neg.i, %add26.i
  %arrayidx33.i = getelementptr i8, ptr %59, i32 6
  %74 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %75 to i32
  %sub35.i = sub nsw i32 %sub31.i, %conv34.i
  %mul36.i = mul i32 %sub35.i, %sub18.i
  %ae_res37.i = getelementptr i8, ptr %1, i32 1024
  %76 = ptrtoint ptr %ae_res37.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %mul36.i, ptr %ae_res37.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul36.i)
  %cmp.i = icmp eq i32 %mul36.i, 0
  br i1 %cmp.i, label %if.then40.i, label %reg_r.exit84.i.if.end3_crit_edge

reg_r.exit84.i.if.end3_crit_edge:                 ; preds = %reg_r.exit84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then40.i:                                      ; preds = %reg_r.exit84.i
  call void @__sanitizer_cov_trace_pc() #7
  %pixfmt41.i = getelementptr i8, ptr %1, i32 240
  %77 = ptrtoint ptr %pixfmt41.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pixfmt41.i, align 8
  %height44.i = getelementptr i8, ptr %1, i32 244
  %79 = ptrtoint ptr %height44.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height44.i, align 4
  %mul45.i = mul i32 %80, %78
  %81 = ptrtoint ptr %ae_res37.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mul45.i, ptr %ae_res37.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then40.i, %reg_r.exit84.i.if.end3_crit_edge, %if.then3.i, %if.then.i, %sw.bb.if.end3_crit_edge
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %82 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %val4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool5.not = icmp eq i32 %83, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.sw.epilog_crit_edge

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then6:                                         ; preds = %if.end3
  %gain = getelementptr i8, ptr %1, i32 192
  %84 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gain, align 8
  %is_new7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %is_new7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load8 = load i32, ptr %is_new7, align 4
  %87 = and i32 %bf.load8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool11.not = icmp eq i32 %87, 0
  br i1 %tobool11.not, label %if.then6.if.end15_crit_edge, label %if.then12

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then12:                                        ; preds = %if.then6
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %85, i32 0, i32 22
  %88 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val14, align 4
  %conv = trunc i32 %89 to i8
  %webcam.i = getelementptr i8, ptr %1, i32 1032
  %90 = ptrtoint ptr %webcam.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %webcam.i, align 8
  %92 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %91, label %if.then12.if.end15_crit_edge [
    i8 12, label %sw.bb.i
    i8 6, label %sw.bb1.i
  ]

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

sw.bb.i:                                          ; preds = %if.then12
  %dev1.i.i45 = getelementptr i8, ptr %1, i32 -100
  %93 = ptrtoint ptr %dev1.i.i45 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1.i.i45, align 4
  %95 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.i47 = icmp slt i32 %96, 0
  br i1 %cmp.i.i47, label %sw.bb.i.if.end15_crit_edge, label %if.end.i.i49

sw.bb.i.if.end15_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.i.i49:                                     ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %97 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %97)
  %cmp4.i.i48 = icmp sgt i32 %97, 6
  br i1 %cmp4.i.i48, label %do.end.i.i51, label %if.end.i.i49.if.end29.i.i_crit_edge

if.end.i.i49.if.end29.i.i_crit_edge:              ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

do.end.i.i51:                                     ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i50 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i = and i32 %89, 255
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i.i50, i32 noundef 4134, i32 noundef %conv7.i.i) #8
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %do.end.i.i51, %if.end.i.i49.if.end29.i.i_crit_edge
  %usb_buf.i.i52 = getelementptr i8, ptr %1, i32 204
  %98 = ptrtoint ptr %usb_buf.i.i52 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usb_buf.i.i52, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv, ptr %99, align 1
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %94, align 8
  %shl.i.i.i53 = shl i32 %102, 8
  %or.i.i = or i32 %shl.i.i.i53, -2147483648
  %103 = load ptr, ptr %usb_buf.i.i52, align 4
  %call33.i.i = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4134, ptr noundef %103, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp slt i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %if.end29.i.i.if.end15.sink.split_crit_edge, label %if.end29.i.i.if.end15_crit_edge

if.end29.i.i.if.end15_crit_edge:                  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end29.i.i.if.end15.sink.split_crit_edge:       ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split

sw.bb1.i:                                         ; preds = %if.then12
  %rev.i.i = tail call i8 @llvm.bitreverse.i8(i8 %conv) #5
  %conv5.i = shl i8 %rev.i.i, 3
  %104 = lshr i8 %rev.i.i, 5
  %dev1.i11.i = getelementptr i8, ptr %1, i32 -100
  %105 = ptrtoint ptr %dev1.i11.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev1.i11.i, align 4
  %107 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i13.i = icmp slt i32 %108, 0
  br i1 %cmp.i13.i, label %sw.bb1.i.if.end15_crit_edge, label %if.end.i15.i

sw.bb1.i.if.end15_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end.i15.i:                                     ; preds = %sw.bb1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %109 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %109)
  %cmp4.i14.i = icmp sgt i32 %109, 6
  br i1 %cmp4.i14.i, label %do.end17.i.i, label %if.end.i15.i.if.end29.i21.i_crit_edge

if.end.i15.i.if.end29.i21.i_crit_edge:            ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i21.i

do.end17.i.i:                                     ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #7
  %name20.i.i = getelementptr i8, ptr %1, i32 -168
  %conv23.i.i = zext i8 %conv5.i to i32
  %conv24.i.i54 = zext i8 %104 to i32
  %call25.i.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name20.i.i, i32 noundef 4125, i32 noundef %conv23.i.i, i32 noundef %conv24.i.i54) #8
  br label %if.end29.i21.i

if.end29.i21.i:                                   ; preds = %do.end17.i.i, %if.end.i15.i.if.end29.i21.i_crit_edge
  %usb_buf.i16.i = getelementptr i8, ptr %1, i32 204
  %110 = ptrtoint ptr %usb_buf.i16.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb_buf.i16.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv5.i, ptr %111, align 1
  %v.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %111, i32 1
  %113 = ptrtoint ptr %v.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %104, ptr %v.sroa.6.0..sroa_idx.i, align 1
  %114 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %106, align 8
  %shl.i.i17.i = shl i32 %115, 8
  %or.i18.i = or i32 %shl.i.i17.i, -2147483648
  %116 = load ptr, ptr %usb_buf.i16.i, align 4
  %call33.i19.i = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or.i18.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4125, ptr noundef %116, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i19.i)
  %cmp34.i20.i = icmp slt i32 %call33.i19.i, 0
  br i1 %cmp34.i20.i, label %if.end29.i21.i.if.end15.sink.split_crit_edge, label %if.end29.i21.i.if.end15_crit_edge

if.end29.i21.i.if.end15_crit_edge:                ; preds = %if.end29.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end29.i21.i.if.end15.sink.split_crit_edge:     ; preds = %if.end29.i21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.end29.i21.i.if.end15.sink.split_crit_edge, %if.end29.i.i.if.end15.sink.split_crit_edge
  %call33.i19.i.sink56 = phi i32 [ %call33.i.i, %if.end29.i.i.if.end15.sink.split_crit_edge ], [ %call33.i19.i, %if.end29.i21.i.if.end15.sink.split_crit_edge ]
  %call41.i22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i19.i.sink56) #8
  %117 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call33.i19.i.sink56, ptr %usb_err, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.end29.i21.i.if.end15_crit_edge, %sw.bb1.i.if.end15_crit_edge, %if.end29.i.i.if.end15_crit_edge, %sw.bb.i.if.end15_crit_edge, %if.then12.if.end15_crit_edge, %if.then6.if.end15_crit_edge
  %exposure = getelementptr i8, ptr %1, i32 188
  %118 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %exposure, align 4
  %is_new16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %is_new16 to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load17 = load i32, ptr %is_new16, align 4
  %121 = and i32 %bf.load17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool20.not = icmp eq i32 %121, 0
  br i1 %tobool20.not, label %if.end15.sw.epilog_crit_edge, label %if.end15.sw.epilog.sink.split_crit_edge

if.end15.sw.epilog.sink.split_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %exposure27 = getelementptr i8, ptr %1, i32 188
  %122 = ptrtoint ptr %exposure27 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %exposure27, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb26, %if.end15.sw.epilog.sink.split_crit_edge
  %.sink = phi ptr [ %123, %sw.bb26 ], [ %119, %if.end15.sw.epilog.sink.split_crit_edge ]
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %.sink, i32 0, i32 22
  %124 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val23, align 4
  tail call fastcc void @setexposure(ptr noundef %add.ptr, i32 noundef %125)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end15.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %126 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %127, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %webcam = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %webcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %webcam, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 12, label %sw.bb
    i8 3, label %entry.sw.bb2_crit_edge
    i8 11, label %entry.sw.bb2_crit_edge28
    i8 7, label %entry.sw.bb2_crit_edge29
    i8 6, label %entry.sw.bb2_crit_edge30
  ]

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = trunc i32 %val to i8
  %4 = mul i8 %3, -8
  %conv1 = add i8 %4, 73
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp4.i = icmp sgt i32 %9, 6
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i = zext i8 %conv1 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef 4121, i32 noundef %conv7.i) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %if.end.i.if.end29.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %11, align 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call33.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4121, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.end29.i.sw.epilog_crit_edge

if.end29.i.sw.epilog_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end39.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i) #8
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call33.i, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge28, %entry.sw.bb2_crit_edge29, %entry.sw.bb2_crit_edge30
  %conv3 = trunc i32 %val to i8
  %17 = lshr i32 %val, 8
  %conv5 = trunc i32 %17 to i8
  %dev1.i12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %18 = ptrtoint ptr %dev1.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i12, align 4
  %usb_err.i13 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %20 = ptrtoint ptr %usb_err.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i14 = icmp slt i32 %21, 0
  br i1 %cmp.i14, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i16

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i16:                                       ; preds = %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp4.i15 = icmp sgt i32 %22, 6
  br i1 %cmp4.i15, label %do.end17.i, label %if.end.i16.if.end29.i22_crit_edge

if.end.i16.if.end29.i22_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i22

do.end17.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #7
  %name20.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv23.i = and i32 %val, 255
  %conv24.i = and i32 %17, 255
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name20.i, i32 noundef 4123, i32 noundef %conv23.i, i32 noundef %conv24.i) #8
  br label %if.end29.i22

if.end29.i22:                                     ; preds = %do.end17.i, %if.end.i16.if.end29.i22_crit_edge
  %usb_buf.i17 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %23 = ptrtoint ptr %usb_buf.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i17, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv3, ptr %24, align 1
  %v.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %24, i32 1
  %26 = ptrtoint ptr %v.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv5, ptr %v.sroa.9.0..sroa_idx, align 1
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %19, align 8
  %shl.i.i18 = shl i32 %28, 8
  %or.i19 = or i32 %shl.i.i18, -2147483648
  %29 = load ptr, ptr %usb_buf.i17, align 4
  %call33.i20 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i19, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4123, ptr noundef %29, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i20)
  %cmp34.i21 = icmp slt i32 %call33.i20, 0
  br i1 %cmp34.i21, label %do.end39.i24, label %if.end29.i22.sw.epilog_crit_edge

if.end29.i22.sw.epilog_crit_edge:                 ; preds = %if.end29.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end39.i24:                                     ; preds = %if.end29.i22
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call33.i20) #8
  %30 = ptrtoint ptr %usb_err.i13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call33.i20, ptr %usb_err.i13, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end39.i24, %if.end29.i22.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %do.end39.i, %if.end29.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_coarse_grained_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_nw80x__307_2089_sd_driver_init6, !8, !"__initcall__kmod_gspca_nw80x__307_2089_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2089, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @__param_webcam, !11, !"__param_webcam", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2091, i32 1}
!12 = !{ptr @__UNIQUE_ID_webcamtype308, !11, !"__UNIQUE_ID_webcamtype308", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_webcam309, !14, !"__UNIQUE_ID_webcam309", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2092, i32 1}
!15 = !{ptr @webcam, !16, !"webcam", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 20, i32 12}
!17 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2078, i32 10}
!20 = !{ptr @sd_driver, !21, !"sd_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2077, i32 26}
!22 = !{ptr @sd_desc, !23, !"sd_desc", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2043, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1762, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sd_config._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @sd_config._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1780, i32 3}
!32 = !{ptr @sd_config._entry.5, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sd_config._entry_ptr.7, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1785, i32 2}
!36 = !{ptr @sd_config._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sd_config._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1537, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @reg_w._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @reg_w._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1540, i32 3}
!45 = !{ptr @reg_w._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @reg_w._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1552, i32 3}
!49 = !{ptr @reg_w._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @reg_w._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1573, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @reg_r._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @reg_r._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1583, i32 3}
!58 = !{ptr @reg_r._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @reg_r._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1586, i32 3}
!62 = !{ptr @reg_r._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @reg_r._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @webcam_chip, !65, !"webcam_chip", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 59, i32 17}
!66 = !{ptr @cif_mode, !67, !"cif_mode", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 133, i32 37}
!68 = !{ptr @vga_mode, !69, !"vga_mode", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 143, i32 37}
!70 = !{ptr @spacecam_init, !71, !"spacecam_init", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 517, i32 17}
!72 = !{ptr @nw800_init, !73, !"nw800_init", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 164, i32 17}
!74 = !{ptr @proscope_init, !75, !"proscope_init", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1215, i32 17}
!76 = !{ptr @sd_init_controls._key, !77, !"_key", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2005, i32 2}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2034, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sd_init_controls._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sd_init_controls._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @sd_ctrl_ops, !85, !"sd_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1995, i32 35}
!86 = !{ptr @webcam_start, !87, !"webcam_start", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1508, i32 18}
!88 = !{ptr @nw800_start, !89, !"nw800_start", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 172, i32 17}
!90 = !{ptr @spacecam_start, !91, !"spacecam_start", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 525, i32 17}
!92 = !{ptr @spacecam2_start, !93, !"spacecam2_start", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 612, i32 17}
!94 = !{ptr @cvideopro_start, !95, !"cvideopro_start", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 711, i32 17}
!96 = !{ptr @dlink_start, !97, !"dlink_start", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 791, i32 17}
!98 = !{ptr @ds3303_start, !99, !"ds3303_start", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 873, i32 17}
!100 = !{ptr @kr651_start_1, !101, !"kr651_start_1", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 957, i32 17}
!102 = !{ptr @kritter_start, !103, !"kritter_start", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1055, i32 17}
!104 = !{ptr @mustek_start, !105, !"mustek_start", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1135, i32 17}
!106 = !{ptr @proscope_start_1, !107, !"proscope_start_1", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1220, i32 17}
!108 = !{ptr @twinkle_start, !109, !"twinkle_start", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1320, i32 17}
!110 = !{ptr @dvcv6_start, !111, !"dvcv6_start", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1423, i32 17}
!112 = !{ptr @nw801_start_1, !113, !"nw801_start_1", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 328, i32 17}
!114 = !{ptr @nw802_start, !115, !"nw802_start", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 435, i32 17}
!116 = !{ptr @nw801_start_qvga, !117, !"nw801_start_qvga", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 383, i32 17}
!118 = !{ptr @nw801_start_vga, !119, !"nw801_start_vga", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 395, i32 17}
!120 = !{ptr @nw801_start_2, !121, !"nw801_start_2", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 406, i32 17}
!122 = !{ptr @kr651_start_qvga, !123, !"kr651_start_qvga", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1010, i32 17}
!124 = !{ptr @kr651_start_vga, !125, !"kr651_start_vga", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1023, i32 17}
!126 = !{ptr @kr651_start_2, !127, !"kr651_start_2", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1035, i32 17}
!128 = !{ptr @proscope_start_qvga, !129, !"proscope_start_qvga", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1273, i32 17}
!130 = !{ptr @proscope_start_vga, !131, !"proscope_start_vga", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1286, i32 17}
!132 = !{ptr @proscope_start_2, !133, !"proscope_start_2", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 1304, i32 17}
!134 = !{ptr @device_table, !135, !"device_table", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/nw80x.c", i32 2055, i32 35}
!136 = !{ptr @__param_str_webcam, !11, !"__param_str_webcam", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i8 0, i8 2}
