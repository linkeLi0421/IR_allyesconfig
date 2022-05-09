; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/vc032x.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/vc032x.c"
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
%struct.sensor_info = type { i8, i8, i8, i16, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.sd = type { %struct.gspca_dev, %struct.anon.107, i8, i8, i8, i8 }
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
%struct.anon.107 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [66 x i8] c"gspca_vc032x.author=Jean-Fran\C3\A7ois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [56 x i8] c"gspca_vc032x.description=GSPCA/VC032X USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_vc032x.file=drivers/media/usb/gspca/gspca_vc032x\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_vc032x.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_vc032x__307_3838_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_vc032x\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vc032x\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [14 x %struct.usb_device_id], [80 x i8] } { [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16475, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 260 }, %struct.usb_device_id { i16 3, i16 1133, i16 2194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2198, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2199, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 801, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 803, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 2760, i16 808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 -16383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 -16382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2760, i16 -15615, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 257 }, %struct.usb_device_id { i16 3, i16 5560, i16 24577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 5560, i16 24578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id { i16 3, i16 6127, i16 18434, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 256 }, %struct.usb_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_init.npkt = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"@  @\80 @\80\80\80", [22 x i8] zeroinitializer }, align 32
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013gspca_vc032x: Unknown sensor...\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/vc032x.c\00", [63 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 3172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Find Sensor HV7131R\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.7 = internal global ptr @sd_init._entry.5, section ".printk_index", align 4
@sd_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 3175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor MI0360\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.10 = internal global ptr @sd_init._entry.8, section ".printk_index", align 4
@sd_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 3179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Find Sensor MI1310_SOC\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.13 = internal global ptr @sd_init._entry.11, section ".printk_index", align 4
@sd_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 3182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor MI1320\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.16 = internal global ptr @sd_init._entry.14, section ".printk_index", align 4
@sd_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 3185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Find Sensor MI1320_SOC\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.19 = internal global ptr @sd_init._entry.17, section ".printk_index", align 4
@sd_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 3188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor OV7660\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.22 = internal global ptr @sd_init._entry.20, section ".printk_index", align 4
@sd_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 3191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor OV7670\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.25 = internal global ptr @sd_init._entry.23, section ".printk_index", align 4
@sd_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 3194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Find Sensor PO1200\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.28 = internal global ptr @sd_init._entry.26, section ".printk_index", align 4
@sd_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 3197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Find Sensor PO3130NC\0A\00", [36 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.31 = internal global ptr @sd_init._entry.29, section ".printk_index", align 4
@sd_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 3200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor POxxxx\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.34 = internal global ptr @sd_init._entry.32, section ".printk_index", align 4
@vc0321_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1431918169, i32 1, i32 640, i32 153600, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1431918169, i32 1, i32 1280, i32 614400, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@svga_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 800, i32 600, i32 1195724874, i32 1, i32 800, i32 120590, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@vc0323_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 960, i32 1195724874, i32 1, i32 1280, i32 461390, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bi_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1448695129, i32 1, i32 640, i32 153600, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1448695129, i32 1, i32 1280, i32 614400, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 1448695129, i32 1, i32 2560, i32 2621440, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@vc032x_probe_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 3016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: vc032%d check sensor header %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vc032x_probe_sensor\00", [44 x i8] zeroinitializer }, align 32
@vc032x_probe_sensor._entry_ptr = internal global ptr @vc032x_probe_sensor._entry, section ".printk_index", align 4
@vc0321_probe_data = internal constant { [17 x %struct.sensor_info], [54 x i8] } { [17 x %struct.sensor_info] [%struct.sensor_info { i8 -1, i8 -80, i8 10, i16 0, i8 37, i8 36, i8 5 }, %struct.sensor_info { i8 -1, i8 -96, i8 -126, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -10, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -35, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 0, i8 -111, i8 0, i16 521, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -95, i8 10, i16 0, i8 33, i8 32, i8 5 }, %struct.sensor_info { i8 -1, i8 -64, i8 0, i16 0, i8 32, i8 34, i8 5 }, %struct.sensor_info { i8 5, i8 -95, i8 10, i16 30304, i8 38, i8 38, i8 5 }, %struct.sensor_info { i8 -1, i8 -18, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 2, i8 -35, i8 0, i16 5178, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -80, i8 10, i16 0, i8 37, i8 36, i8 5 }, %struct.sensor_info { i8 -1, i8 -111, i8 57, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 7, i8 -36, i8 0, i16 4608, i8 103, i8 103, i8 1 }, %struct.sensor_info { i8 -1, i8 -104, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -18, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -42, i8 1, i16 0, i8 100, i8 103, i8 1 }, %struct.sensor_info { i8 3, i8 -56, i8 0, i16 5260, i8 100, i8 101, i8 1 }], [54 x i8] zeroinitializer }, align 32
@vc0323_probe_data = internal constant { [18 x %struct.sensor_info], [44 x i8] } { [18 x %struct.sensor_info] [%struct.sensor_info { i8 -1, i8 -80, i8 10, i16 0, i8 37, i8 36, i8 5 }, %struct.sensor_info { i8 -1, i8 -96, i8 -126, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -10, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -35, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 0, i8 -111, i8 0, i16 521, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -95, i8 10, i16 0, i8 33, i8 32, i8 5 }, %struct.sensor_info { i8 -1, i8 -64, i8 0, i16 0, i8 32, i8 34, i8 5 }, %struct.sensor_info { i8 5, i8 -95, i8 10, i16 30304, i8 38, i8 38, i8 5 }, %struct.sensor_info { i8 -1, i8 -18, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 2, i8 -35, i8 0, i16 5178, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -80, i8 10, i16 0, i8 37, i8 36, i8 5 }, %struct.sensor_info { i8 -1, i8 -111, i8 57, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 7, i8 -36, i8 0, i16 4608, i8 103, i8 103, i8 1 }, %struct.sensor_info { i8 -1, i8 -83, i8 0, i16 0, i8 101, i8 103, i8 1 }, %struct.sensor_info { i8 -1, i8 -18, i8 0, i16 0, i8 36, i8 37, i8 1 }, %struct.sensor_info { i8 -1, i8 -42, i8 1, i16 0, i8 100, i8 103, i8 1 }, %struct.sensor_info { i8 4, i8 -56, i8 0, i16 5260, i8 100, i8 103, i8 1 }, %struct.sensor_info { i8 6, i8 -95, i8 10, i16 30323, i8 102, i8 103, i8 5 }], [44 x i8] zeroinitializer }, align 32
@vc032x_probe_sensor._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 3037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sensor ID %04x (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@vc032x_probe_sensor._entry_ptr.39 = internal global ptr @vc032x_probe_sensor._entry.37, section ".printk_index", align 4
@read_sensor_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 2972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gspca_vc032x: I2c Bus Busy Wait %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_sensor_register\00", [43 x i8] zeroinitializer }, align 32
@read_sensor_register._entry_ptr = internal global ptr @read_sensor_register._entry, section ".printk_index", align 4
@read_sensor_register._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 2993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Read Sensor %02x%02x %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@read_sensor_register._entry_ptr.44 = internal global ptr @read_sensor_register._entry.42, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 2927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: GET %02x 0001 %04x %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 2930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: GET %02x 0001 %04x %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.49 = internal global ptr @reg_r._entry.47, section ".printk_index", align 4
@reg_r_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 2907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_vc032x: reg_r err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_r_i\00", [24 x i8] zeroinitializer }, align 32
@reg_r_i._entry_ptr = internal global ptr @reg_r_i._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 2960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: SET %02x %04x %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w_i._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 2949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_vc032x: reg_w err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg_w_i\00", [24 x i8] zeroinitializer }, align 32
@reg_w_i._entry_ptr = internal global ptr @reg_w_i._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vc032x:3738:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 3776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_vc032x: Could not initialize controls\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 3064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: i2c_w %02x %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_write\00", [22 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr = internal global ptr @i2c_write._entry, section ".printk_index", align 4
@i2c_write._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 3067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: i2c_w %02x %02x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr.63 = internal global ptr @i2c_write._entry.61, section ".printk_index", align 4
@i2c_write._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.4, i32 3084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013gspca_vc032x: i2c_write timeout\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_write._entry_ptr.66 = internal global ptr @i2c_write._entry.64, section ".printk_index", align 4
@setautogain.data = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"(<", [30 x i8] zeroinitializer }, align 32
@setlightfreq.ov7660_freq_tb = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ov7660_NoFlicker, ptr @ov7660_50HZ, ptr @ov7660_60HZ], [20 x i8] zeroinitializer }, align 32
@ov7660_NoFlicker = internal constant { [2 x [4 x i8]], [24 x i8] } { [2 x [4 x i8]] [[4 x i8] c"\00\13\87\AA", [4 x i8] zeroinitializer], [24 x i8] zeroinitializer }, align 32
@ov7660_50HZ = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\00;\08\AA", [4 x i8] c"\00\9D@\AA", [4 x i8] c"\00\13\A7\AA", [4 x i8] zeroinitializer], [16 x i8] zeroinitializer }, align 32
@ov7660_60HZ = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\00;\00\AA", [4 x i8] c"\00\9E@\AA", [4 x i8] c"\00\13\A7\AA", [4 x i8] zeroinitializer], [16 x i8] zeroinitializer }, align 32
@sd_start.mi1320_soc_init = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mi1320_soc_InitSXGA, ptr @mi1320_soc_InitVGA, ptr @mi1320_soc_InitQVGA], [20 x i8] zeroinitializer }, align 32
@mi1320_soc_InitSXGA = internal constant { [121 x [4 x i8]], [124 x i8] } { [121 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\00\000\DD", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\C8\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\04\CC", [4 x i8] c"\B3#\00\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\04\CC", [4 x i8] c"\B3\17\FF\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\BC\00q\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\00\000\DD", [4 x i8] c"\C8\9F\0B\BB", [4 x i8] c"\00\00 \DD", [4 x i8] c"[\00\01\BB", [4 x i8] c"\00\00 \DD", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\00\000\DD", [4 x i8] c" \01\03\BB", [4 x i8] c"\00\00 \DD", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\05\01x\BB", [4 x i8] c"\06\00\11\BB", [4 x i8] c"\07\01B\BB", [4 x i8] c"\08\00\11\BB", [4 x i8] c" \01\03\BB", [4 x i8] c"!\80\00\BB", [4 x i8] c"\22\0D\0F\BB", [4 x i8] c"$\80\00\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"9\03\CA\BB", [4 x i8] c":\06\80\BB", [4 x i8] c";\01R\BB", [4 x i8] c"<\05@\BB", [4 x i8] c"W\01\9C\BB", [4 x i8] c"X\01\EE\BB", [4 x i8] c"Y\00\F0\BB", [4 x i8] c"Z\01 \BB", [4 x i8] c"\\\1D\17\BB", [4 x i8] c"]\22\1C\BB", [4 x i8] c"d\1E\1C\BB", [4 x i8] c"[\00\00\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\22\A0x\BB", [4 x i8] c"#\A0x\BB", [4 x i8] c"$\7F\00\BB", [4 x i8] c"(\EA\02\BB", [4 x i8] c")\86z\BB", [4 x i8] c"^RL\BB", [4 x i8] c"_ $\BB", [4 x i8] c"`\00\02\BB", [4 x i8] c"\02\00\EE\BB", [4 x i8] c"\039#\BB", [4 x i8] c"\04\07$\BB", [4 x i8] c"\09\00\C0\BB", [4 x i8] c"\0A\00y\BB", [4 x i8] c"\0B\00\04\BB", [4 x i8] c"\0C\00\\\BB", [4 x i8] c"\0D\00\D9\BB", [4 x i8] c"\0E\00S\BB", [4 x i8] c"\0F\00!\BB", [4 x i8] c"\10\00\A4\BB", [4 x i8] c"\11\00\E5\BB", [4 x i8] c"\15\00\00\BB", [4 x i8] c"\16\00\00\BB", [4 x i8] c"\17\00\00\BB", [4 x i8] c"\18\00\00\BB", [4 x i8] c"\19\00\00\BB", [4 x i8] c"\1A\00\00\BB", [4 x i8] c"\1B\00\00\BB", [4 x i8] c"\1C\00\00\BB", [4 x i8] c"\1D\00\00\BB", [4 x i8] c"\1E\00\00\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06\E0\0E\BB", [4 x i8] c"\06`\0E\BB", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\05\01\13\BB", [4 x i8] c"\06\00\11\BB", [4 x i8] c"\07\00\85\BB", [4 x i8] c"\08\00'\BB", [4 x i8] c" \01\03\BB", [4 x i8] c"!\80\00\BB", [4 x i8] c"\22\0D\0F\BB", [4 x i8] c"$\80\00\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"9\03\0D\BB", [4 x i8] c":\06\1B\BB", [4 x i8] c";\00\95\BB", [4 x i8] c"<\04\DB\BB", [4 x i8] c"W\02\00\BB", [4 x i8] c"X\02f\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"Z\013\BB", [4 x i8] c"\\\12\0D\BB", [4 x i8] c"]\16\11\BB", [4 x i8] c"d^\1C\BB", [4 x i8] zeroinitializer], [124 x i8] zeroinitializer }, align 32
@mi1320_soc_InitVGA = internal constant { [101 x [4 x i8]], [108 x i8] } { [101 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\000\DD", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\C8\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B8\00\00\CC", [4 x i8] c"\BC\00q\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\C8\00\00\BB", [4 x i8] c"\00\000\DD", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\07\00\E0\BB", [4 x i8] c"\08\00\0B\BB", [4 x i8] c"!\00\0C\BB", [4 x i8] c" \01\03\BB", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\05\01x\BB", [4 x i8] c"\06\00\11\BB", [4 x i8] c"\07\01B\BB", [4 x i8] c"\08\00\11\BB", [4 x i8] c" \01\03\BB", [4 x i8] c"!\80\00\BB", [4 x i8] c"\22\0D\0F\BB", [4 x i8] c"$\80\00\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"9\03\CA\BB", [4 x i8] c":\06\80\BB", [4 x i8] c";\01R\BB", [4 x i8] c"<\05@\BB", [4 x i8] c"W\01\9C\BB", [4 x i8] c"X\01\EE\BB", [4 x i8] c"Y\00\F0\BB", [4 x i8] c"Z\01 \BB", [4 x i8] c"\\\1D\17\BB", [4 x i8] c"]\22\1C\BB", [4 x i8] c"d\1E\1C\BB", [4 x i8] c"[\00\00\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\22\A0x\BB", [4 x i8] c"#\A0x\BB", [4 x i8] c"$\7F\00\BB", [4 x i8] c"(\EA\02\BB", [4 x i8] c")\86z\BB", [4 x i8] c"^RL\BB", [4 x i8] c"_ $\BB", [4 x i8] c"`\00\02\BB", [4 x i8] c"\02\00\EE\BB", [4 x i8] c"\039#\BB", [4 x i8] c"\04\07$\BB", [4 x i8] c"\09\00\C0\BB", [4 x i8] c"\0A\00y\BB", [4 x i8] c"\0B\00\04\BB", [4 x i8] c"\0C\00\\\BB", [4 x i8] c"\0D\00\D9\BB", [4 x i8] c"\0E\00S\BB", [4 x i8] c"\0F\00!\BB", [4 x i8] c"\10\00\A4\BB", [4 x i8] c"\11\00\E5\BB", [4 x i8] c"\15\00\00\BB", [4 x i8] c"\16\00\00\BB", [4 x i8] c"\17\00\00\BB", [4 x i8] c"\18\00\00\BB", [4 x i8] c"\19\00\00\BB", [4 x i8] c"\1A\00\00\BB", [4 x i8] c"\1B\00\00\BB", [4 x i8] c"\1C\00\00\BB", [4 x i8] c"\1D\00\00\BB", [4 x i8] c"\1E\00\00\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06\E0\0E\BB", [4 x i8] c"\06`\0E\BB", [4 x i8] c"\B3\\\01\CC", [4 x i8] zeroinitializer], [108 x i8] zeroinitializer }, align 32
@mi1320_soc_InitQVGA = internal constant { [111 x [4 x i8]], [100 x i8] } { [111 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\000\DD", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\C8\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B8\00\00\CC", [4 x i8] c"\BC\00\D1\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\C8\00\00\BB", [4 x i8] c"\00\000\DD", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\07\00\E0\BB", [4 x i8] c"\08\00\0B\BB", [4 x i8] c"!\00\0C\BB", [4 x i8] c" \01\03\BB", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\05\01x\BB", [4 x i8] c"\06\00\11\BB", [4 x i8] c"\07\01B\BB", [4 x i8] c"\08\00\11\BB", [4 x i8] c" \01\03\BB", [4 x i8] c"!\80\00\BB", [4 x i8] c"\22\0D\0F\BB", [4 x i8] c"$\80\00\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"9\03\CA\BB", [4 x i8] c":\06\80\BB", [4 x i8] c";\01R\BB", [4 x i8] c"<\05@\BB", [4 x i8] c"W\01\9C\BB", [4 x i8] c"X\01\EE\BB", [4 x i8] c"Y\00\F0\BB", [4 x i8] c"Z\01 \BB", [4 x i8] c"\\\1D\17\BB", [4 x i8] c"]\22\1C\BB", [4 x i8] c"d\1E\1C\BB", [4 x i8] c"[\00\00\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\22\A0x\BB", [4 x i8] c"#\A0x\BB", [4 x i8] c"$\7F\00\BB", [4 x i8] c"(\EA\02\BB", [4 x i8] c")\86z\BB", [4 x i8] c"^RL\BB", [4 x i8] c"_ $\BB", [4 x i8] c"`\00\02\BB", [4 x i8] c"\02\00\EE\BB", [4 x i8] c"\039#\BB", [4 x i8] c"\04\07$\BB", [4 x i8] c"\09\00\C0\BB", [4 x i8] c"\0A\00y\BB", [4 x i8] c"\0B\00\04\BB", [4 x i8] c"\0C\00\\\BB", [4 x i8] c"\0D\00\D9\BB", [4 x i8] c"\0E\00S\BB", [4 x i8] c"\0F\00!\BB", [4 x i8] c"\10\00\A4\BB", [4 x i8] c"\11\00\E5\BB", [4 x i8] c"\15\00\00\BB", [4 x i8] c"\16\00\00\BB", [4 x i8] c"\17\00\00\BB", [4 x i8] c"\18\00\00\BB", [4 x i8] c"\19\00\00\BB", [4 x i8] c"\1A\00\00\BB", [4 x i8] c"\1B\00\00\BB", [4 x i8] c"\1C\00\00\BB", [4 x i8] c"\1D\00\00\BB", [4 x i8] c"\1E\00\00\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06\E0\0E\BB", [4 x i8] c"\06`\0E\BB", [4 x i8] c"\B3\\\01\CC", [4 x i8] zeroinitializer], [100 x i8] zeroinitializer }, align 32
@hv7131r_gamma = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\138Yy\92\A7\B9\C8\D4\DF\E7\EE\F4\F9\FC\FF", [47 x i8] zeroinitializer }, align 32
@hv7131r_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_\EC\F5\F1Z\F5\F1\ECc", [23 x i8] zeroinitializer }, align 32
@hv7131r_initQVGA_data = internal constant { [95 x [4 x i8]], [68 x i8] } { [95 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\00 \DD", [4 x i8] c"\B3\00$\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\03\CC", [4 x i8] c"\B3\01E\CC", [4 x i8] c"\B3\03\0B\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\02\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\91\CC", [4 x i8] c"\B3\00'\CC", [4 x i8] c"\BC\00\D3\CC", [4 x i8] c"\B8\00#\CC", [4 x i8] c"\B8,P\CC", [4 x i8] c"\B8-\F8\CC", [4 x i8] c"\B8.\F8\CC", [4 x i8] c"\B8/\F8\CC", [4 x i8] c"\B80P\CC", [4 x i8] c"\B81\F8\CC", [4 x i8] c"\B82\F8\CC", [4 x i8] c"\B83\F8\CC", [4 x i8] c"\B84X\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8\01}\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\00\01\0C\AA", [4 x i8] c"\00\14\01\AA", [4 x i8] c"\00\15\E6\AA", [4 x i8] c"\00\16\02\AA", [4 x i8] c"\00\17\86\AA", [4 x i8] c"\00#\00\AA", [4 x i8] c"\00%\03\AA", [4 x i8] c"\00&\A9\AA", [4 x i8] c"\00'\80\AA", [4 x i8] c"\000\18\AA", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\01\CC", [4 x i8] c"\B6\02@\CC", [4 x i8] c"\B6\05\00\CC", [4 x i8] c"\B6\04\F0\CC", [4 x i8] c"\B6\12x\CC", [4 x i8] c"\B6\18\00\CC", [4 x i8] c"\B6\17\96\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\B3\02\02\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\10\CC", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\B9\12\00\CC", [4 x i8] c"\B9\13\0A\CC", [4 x i8] c"\B9\14\0A\CC", [4 x i8] c"\B9\15\0A\CC", [4 x i8] c"\B9\16\0A\CC", [4 x i8] c"\B9\18\00\CC", [4 x i8] c"\B9\19\0F\CC", [4 x i8] c"\B8\0C \CC", [4 x i8] c"\B8\0Dp\CC", [4 x i8] c"\B9\1A\0F\CC", [4 x i8] c"\B9\1B\0F\CC", [4 x i8] c"\B9\1C\0F\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13\13\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] zeroinitializer], [68 x i8] zeroinitializer }, align 32
@hv7131r_initVGA_data = internal constant { [85 x [4 x i8]], [76 x i8] } { [85 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\00 \DD", [4 x i8] c"\B3\00$\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\03\CC", [4 x i8] c"\B3\01E\CC", [4 x i8] c"\B3\03\0B\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\02\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\91\CC", [4 x i8] c"\B3\00'\CC", [4 x i8] c"\BC\00s\CC", [4 x i8] c"\B8\00#\CC", [4 x i8] c"\B8,P\CC", [4 x i8] c"\B8-\F8\CC", [4 x i8] c"\B8.\F8\CC", [4 x i8] c"\B8/\F8\CC", [4 x i8] c"\B80P\CC", [4 x i8] c"\B81\F8\CC", [4 x i8] c"\B82\F8\CC", [4 x i8] c"\B83\F8\CC", [4 x i8] c"\B84X\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8\01}\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\00\01\0C\AA", [4 x i8] c"\00\14\01\AA", [4 x i8] c"\00\15\E6\AA", [4 x i8] c"\00\16\02\AA", [4 x i8] c"\00\17\86\AA", [4 x i8] c"\00#\00\AA", [4 x i8] c"\00%\03\AA", [4 x i8] c"\00&\A9\AA", [4 x i8] c"\00'\80\AA", [4 x i8] c"\000\18\AA", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\02\CC", [4 x i8] c"\B6\02\80\CC", [4 x i8] c"\B6\05\01\CC", [4 x i8] c"\B6\04\E0\CC", [4 x i8] c"\B6\12x\CC", [4 x i8] c"\B6\18\02\CC", [4 x i8] c"\B6\17X\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\B3\02\02\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\10\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13\13\CC", [4 x i8] c"\B9\12\00\CC", [4 x i8] c"\B9\13\0A\CC", [4 x i8] c"\B9\14\0A\CC", [4 x i8] c"\B9\15\0A\CC", [4 x i8] c"\B9\16\0A\CC", [4 x i8] c"\B8\0C \CC", [4 x i8] c"\B8\0Dp\CC", [4 x i8] c"\B9\18\00\CC", [4 x i8] c"\B9\19\0F\CC", [4 x i8] c"\B9\1A\0F\CC", [4 x i8] c"\B9\1B\0F\CC", [4 x i8] c"\B9\1C\0F\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] zeroinitializer], [76 x i8] zeroinitializer }, align 32
@ov7660_gamma = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\138Yy\92\A7\B9\C8\D4\DF\E7\EE\F4\F9\FC\FF", [47 x i8] zeroinitializer }, align 32
@ov7660_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Z\F0\F6\F3W\F6\F3\EFb", [23 x i8] zeroinitializer }, align 32
@ov7660_initQVGA_data = internal constant { [86 x [4 x i8]], [72 x i8] } { [86 x [4 x i8]] [[4 x i8] c"\B0M\00\CC", [4 x i8] c"\B3\01\01\CC", [4 x i8] c"\00\00P\DD", [4 x i8] c"\B0\03\01\CC", [4 x i8] c"\B3\00!\CC", [4 x i8] c"\B3\00&\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\03\CC", [4 x i8] c"\B3\03\1F\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\1D\01\CC", [4 x i8] c"\B3\1F\02\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\A1\CC", [4 x i8] c"\B3\00&\CC", [4 x i8] c"\B8\003\CC", [4 x i8] c"\B8\01}\CC", [4 x i8] c"\BC\00\D3\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8\8FP\CC", [4 x i8] c"\00\01\80\AA", [4 x i8] c"\00\02\80\AA", [4 x i8] c"\00\12\80\AA", [4 x i8] c"\00\12\05\AA", [4 x i8] c"\00\1E\01\AA", [4 x i8] c"\00=@\AA", [4 x i8] c"\00A\00\AA", [4 x i8] c"\00\0DH\AA", [4 x i8] c"\00\0E\04\AA", [4 x i8] c"\00\13\A7\AA", [4 x i8] c"\00@\C1\AA", [4 x i8] c"\005\00\AA", [4 x i8] c"\006\00\AA", [4 x i8] c"\00<h\AA", [4 x i8] c"\00\1B\05\AA", [4 x i8] c"\009C\AA", [4 x i8] c"\00\8D\CF\AA", [4 x i8] c"\00\8B\CC\AA", [4 x i8] c"\00\8C\CC\AA", [4 x i8] c"\00\0Fb\AA", [4 x i8] c"\005\84\AA", [4 x i8] c"\00;\08\AA", [4 x i8] c"\00:\00\AA", [4 x i8] c"\00\14*\AA", [4 x i8] c"\00\9E@\AA", [4 x i8] c"\B8\8FP\CC", [4 x i8] c"\00\01\80\AA", [4 x i8] c"\00\02\80\AA", [4 x i8] c"\BC\02\08\CC", [4 x i8] c"\BC\03p\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\BC\04\08\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\08<\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\04\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\B8\FE\00\CC", [4 x i8] c"\B8\FF(\CC", [4 x i8] c"\B9\00(\CC", [4 x i8] c"\B9\01(\CC", [4 x i8] c"\B9\02(\CC", [4 x i8] c"\B9\03\00\CC", [4 x i8] c"\B9\04\00\CC", [4 x i8] c"\B9\05<\CC", [4 x i8] c"\B9\06<\CC", [4 x i8] c"\B9\07<\CC", [4 x i8] c"\B9\08<\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\00)<\AA", [4 x i8] c"\B3\01E\CC", [4 x i8] zeroinitializer], [72 x i8] zeroinitializer }, align 32
@ov7660_initVGA_data = internal constant { [72 x [4 x i8]], [64 x i8] } { [72 x [4 x i8]] [[4 x i8] c"\B0M\00\CC", [4 x i8] c"\B3\01\01\CC", [4 x i8] c"\00\00P\DD", [4 x i8] c"\B0\03\01\CC", [4 x i8] c"\B3\00!\CC", [4 x i8] c"\B3\00&\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\03\CC", [4 x i8] c"\B3\03\1F\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\1D\01\CC", [4 x i8] c"\B3\1F\02\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\A1\CC", [4 x i8] c"\B3\00&\CC", [4 x i8] c"\B8\003\CC", [4 x i8] c"\B8\01}\CC", [4 x i8] c"\BC\00s\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8\8FP\CC", [4 x i8] c"\00\01\80\AA", [4 x i8] c"\00\02\80\AA", [4 x i8] c"\00\12\80\AA", [4 x i8] c"\00\12\05\AA", [4 x i8] c"\00\1E\01\AA", [4 x i8] c"\00=@\AA", [4 x i8] c"\00A\00\AA", [4 x i8] c"\00\0DH\AA", [4 x i8] c"\00\0E\04\AA", [4 x i8] c"\00\13\A7\AA", [4 x i8] c"\00@\C1\AA", [4 x i8] c"\005\00\AA", [4 x i8] c"\006\00\AA", [4 x i8] c"\00<h\AA", [4 x i8] c"\00\1B\05\AA", [4 x i8] c"\009C\AA", [4 x i8] c"\00\8D\CF\AA", [4 x i8] c"\00\8B\CC\AA", [4 x i8] c"\00\8C\CC\AA", [4 x i8] c"\00\0Fb\AA", [4 x i8] c"\005\84\AA", [4 x i8] c"\00;\08\AA", [4 x i8] c"\00:\00\AA", [4 x i8] c"\00\14*\AA", [4 x i8] c"\00\9E@\AA", [4 x i8] c"\B8\8FP\CC", [4 x i8] c"\00\01\80\AA", [4 x i8] c"\00\02\80\AA", [4 x i8] c"\B8\FE\00\CC", [4 x i8] c"\B8\FF(\CC", [4 x i8] c"\B9\00(\CC", [4 x i8] c"\B9\01(\CC", [4 x i8] c"\B9\02(\CC", [4 x i8] c"\B9\03\00\CC", [4 x i8] c"\B9\04\00\CC", [4 x i8] c"\B9\05<\CC", [4 x i8] c"\B9\06<\CC", [4 x i8] c"\B9\07<\CC", [4 x i8] c"\B9\08<\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\00)<\AA", [4 x i8] c"\B3\01E\CC", [4 x i8] zeroinitializer], [64 x i8] zeroinitializer }, align 32
@mi1320_gamma = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\138Yy\92\A7\B9\C8\D4\DF\E7\EE\F4\F9\FC\FF", [47 x i8] zeroinitializer }, align 32
@mi0360_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"P\F8\F8\F5P\FB\FF\F1P", [23 x i8] zeroinitializer }, align 32
@mi0360_initQVGA_JPG = internal constant { [117 x [4 x i8]], [108 x i8] } { [117 x [4 x i8]] [[4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\B3\00$\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\03\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B35\DD\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\BC\00\D1\CC", [4 x i8] c"\B8\00\13\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8,P\CC", [4 x i8] c"\B8-\F8\CC", [4 x i8] c"\B8.\F8\CC", [4 x i8] c"\B8/\F8\CC", [4 x i8] c"\B80P\CC", [4 x i8] c"\B81\F8\CC", [4 x i8] c"\B82\F8\CC", [4 x i8] c"\B83\F8\CC", [4 x i8] c"\B84P\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\B8\01y\CC", [4 x i8] c"\B8\08\E0\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\B8\01y\CC", [4 x i8] c"\B8\14\18\CC", [4 x i8] c"\B8\B2\0A\CC", [4 x i8] c"\B8\B4\0A\CC", [4 x i8] c"\B8\B5\0A\CC", [4 x i8] c"\B8\FE\00\CC", [4 x i8] c"\B8\FF(\CC", [4 x i8] c"\B9\00(\CC", [4 x i8] c"\B9\01(\CC", [4 x i8] c"\B9\02(\CC", [4 x i8] c"\B9\03\00\CC", [4 x i8] c"\B9\04\00\CC", [4 x i8] c"\B9\05<\CC", [4 x i8] c"\B9\06<\CC", [4 x i8] c"\B9\07<\CC", [4 x i8] c"\B9\08<\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"1\00\00\BB", [4 x i8] c"\09\01\C7\BB", [4 x i8] c"4\01\00\BB", [4 x i8] c"+\00(\BB", [4 x i8] c",\000\BB", [4 x i8] c"-\000\BB", [4 x i8] c".\00(\BB", [4 x i8] c"b\04\11\BB", [4 x i8] c"\03\01\E0\BB", [4 x i8] c",\00,\BB", [4 x i8] c" \D0\00\BB", [4 x i8] c"\01\00\08\BB", [4 x i8] c"\06\00\10\BB", [4 x i8] c"\05\00 \BB", [4 x i8] c" \00\00\BB", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\01\CC", [4 x i8] c"\B6\02@\CC", [4 x i8] c"\B6\05\00\CC", [4 x i8] c"\B6\04\F0\CC", [4 x i8] c"\B6\12x\CC", [4 x i8] c"\B6\18\00\CC", [4 x i8] c"\B6\17\96\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\B3\02\02\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\10\CC", [4 x i8] c"\B9\12\00\CC", [4 x i8] c"\B9\13\0A\CC", [4 x i8] c"\B9\14\0A\CC", [4 x i8] c"\B9\15\0A\CC", [4 x i8] c"\B9\16\0A\CC", [4 x i8] c"\B9\18\00\CC", [4 x i8] c"\B9\19\0F\CC", [4 x i8] c"\B9\1A\0F\CC", [4 x i8] c"\B9\1B\0F\CC", [4 x i8] c"\B9\1C\0F\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13\13\CC", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\B8\0C \CC", [4 x i8] c"\B8\0Dp\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"5\00\EF\BB", [4 x i8] c"\B3\\\01\CC", [4 x i8] zeroinitializer], [108 x i8] zeroinitializer }, align 32
@mi0360_initVGA_JPG = internal constant { [107 x [4 x i8]], [116 x i8] } { [107 x [4 x i8]] [[4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\B3\00$\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\03\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B35\DD\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\BC\00q\CC", [4 x i8] c"\B8\00\13\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8,P\CC", [4 x i8] c"\B8-\F8\CC", [4 x i8] c"\B8.\F8\CC", [4 x i8] c"\B8/\F8\CC", [4 x i8] c"\B80P\CC", [4 x i8] c"\B81\F8\CC", [4 x i8] c"\B82\F8\CC", [4 x i8] c"\B83\F8\CC", [4 x i8] c"\B84P\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\B8\01y\CC", [4 x i8] c"\B8\08\E0\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\B8\01y\CC", [4 x i8] c"\B8\14\18\CC", [4 x i8] c"\B8\B2\0A\CC", [4 x i8] c"\B8\B4\0A\CC", [4 x i8] c"\B8\B5\0A\CC", [4 x i8] c"\B8\FE\00\CC", [4 x i8] c"\B8\FF(\CC", [4 x i8] c"\B9\00(\CC", [4 x i8] c"\B9\01(\CC", [4 x i8] c"\B9\02(\CC", [4 x i8] c"\B9\03\00\CC", [4 x i8] c"\B9\04\00\CC", [4 x i8] c"\B9\05<\CC", [4 x i8] c"\B9\06<\CC", [4 x i8] c"\B9\07<\CC", [4 x i8] c"\B9\08<\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"1\00\00\BB", [4 x i8] c"\09\01\C7\BB", [4 x i8] c"4\01\00\BB", [4 x i8] c"+\00(\BB", [4 x i8] c",\000\BB", [4 x i8] c"-\000\BB", [4 x i8] c".\00(\BB", [4 x i8] c"b\04\11\BB", [4 x i8] c"\03\01\E0\BB", [4 x i8] c",\00,\BB", [4 x i8] c" \D0\00\BB", [4 x i8] c"\01\00\08\BB", [4 x i8] c"\06\00\10\BB", [4 x i8] c"\05\00 \BB", [4 x i8] c" \00\00\BB", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\02\CC", [4 x i8] c"\B6\02\80\CC", [4 x i8] c"\B6\05\01\CC", [4 x i8] c"\B6\04\E0\CC", [4 x i8] c"\B6\12x\CC", [4 x i8] c"\B6\18\02\CC", [4 x i8] c"\B6\17X\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\B3\02\02\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\10\CC", [4 x i8] c"\B9\12\00\CC", [4 x i8] c"\B9\13\0A\CC", [4 x i8] c"\B9\14\0A\CC", [4 x i8] c"\B9\15\0A\CC", [4 x i8] c"\B9\16\0A\CC", [4 x i8] c"\B9\18\00\CC", [4 x i8] c"\B9\19\0F\CC", [4 x i8] c"\B9\1A\0F\CC", [4 x i8] c"\B9\1B\0F\CC", [4 x i8] c"\B9\1C\0F\CC", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B8\0C \CC", [4 x i8] c"\B8\0Dp\CC", [4 x i8] c"\B6\13\13\CC", [4 x i8] c"5\00`\BB", [4 x i8] c"\B3\\\01\CC", [4 x i8] zeroinitializer], [116 x i8] zeroinitializer }, align 32
@mi1320_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"T\DA\06\F1P\F4\F7\EAR", [23 x i8] zeroinitializer }, align 32
@mi1310_socinitQVGA_JPG = internal constant { [140 x [4 x i8]], [144 x i8] } { [140 x [4 x i8]] [[4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\DD\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\03\CC", [4 x i8] c"\B3#\C0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\04\CC", [4 x i8] c"\B3\17\FF\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B8\00\00\CC", [4 x i8] c"\BC\00\F0\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\C8\9F\0B\BB", [4 x i8] c"[\00\01\BB", [4 x i8] c"/\DE \BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c" \03\02\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\05\00\07\BB", [4 x i8] c"4\00\00\BB", [4 x i8] c"5\FF\00\BB", [4 x i8] c"\DC\07\02\BB", [4 x i8] c"\DD<\18\BB", [4 x i8] c"\DE\92m\BB", [4 x i8] c"\DF\CD\B1\BB", [4 x i8] c"\E0\FF\E7\BB", [4 x i8] c"\06\F0\0D\BB", [4 x i8] c"\06p\0E\BB", [4 x i8] c"L\00\01\BB", [4 x i8] c"M\00\01\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c".\0CU\BB", [4 x i8] c"!\B6n\BB", [4 x i8] c"60\10\BB", [4 x i8] c"7\00\C1\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\07\00\84\BB", [4 x i8] c"\08\02J\BB", [4 x i8] c"\05\01\10\BB", [4 x i8] c"\06\009\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"X\02g\BB", [4 x i8] c"W\02\00\BB", [4 x i8] c"Z\02g\BB", [4 x i8] c"Y\02\00\BB", [4 x i8] c"\\\12\0D\BB", [4 x i8] c"]\16\11\BB", [4 x i8] c"9\06\18\BB", [4 x i8] c":\06\18\BB", [4 x i8] c";\06\18\BB", [4 x i8] c"<\06\18\BB", [4 x i8] c"d{[\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"60\10\BB", [4 x i8] c"7\00\C0\BB", [4 x i8] c"\BC\0E\00\CC", [4 x i8] c"\BC\0F\05\CC", [4 x i8] c"\BC\10\C0\CC", [4 x i8] c"\BC\11\03\CC", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\01\CC", [4 x i8] c"\B6\02@\CC", [4 x i8] c"\B6\05\00\CC", [4 x i8] c"\B6\04\F0\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13%\CC", [4 x i8] c"\B6\18\00\CC", [4 x i8] c"\B6\17\96\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\00\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\80\00\03\BB", [4 x i8] c"\81\C7\14\BB", [4 x i8] c"\82\EB\E8\BB", [4 x i8] c"\83\FE\F4\BB", [4 x i8] c"\84\CD\10\BB", [4 x i8] c"\85\F3\EE\BB", [4 x i8] c"\86\FF\F1\BB", [4 x i8] c"\87\CD\10\BB", [4 x i8] c"\88\F3\EE\BB", [4 x i8] c"\89\01\F1\BB", [4 x i8] c"\8A\E5\17\BB", [4 x i8] c"\8B\E8\E2\BB", [4 x i8] c"\8C\F7\ED\BB", [4 x i8] c"\8D\00\FF\BB", [4 x i8] c"\8E\EC\10\BB", [4 x i8] c"\8F\F0\ED\BB", [4 x i8] c"\90\F9\F2\BB", [4 x i8] c"\91\00\00\BB", [4 x i8] c"\92\E9\0D\BB", [4 x i8] c"\93\F4\F2\BB", [4 x i8] c"\94\FB\F5\BB", [4 x i8] c"\95\00\FF\BB", [4 x i8] c"\B6\0F\08\BB", [4 x i8] c"\B7=\16\BB", [4 x i8] c"\B8\0C\04\BB", [4 x i8] c"\B9\1C\07\BB", [4 x i8] c"\BA\0A\03\BB", [4 x i8] c"\BB\1B\09\BB", [4 x i8] c"\BC\17\0D\BB", [4 x i8] c"\BD#\1D\BB", [4 x i8] c"\BE\00(\BB", [4 x i8] c"\BF\11\09\BB", [4 x i8] c"\C0\16\15\BB", [4 x i8] c"\C1\00\1B\BB", [4 x i8] c"\C2\0E\07\BB", [4 x i8] c"\C3\14\10\BB", [4 x i8] c"\C4\00\17\BB", [4 x i8] c"\06t\8E\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06\F4\8E\BB", [4 x i8] c"\00\00P\DD", [4 x i8] c"\06t\8E\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"$P \BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"4\0CP\BB", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\03\03\C0\BB", [4 x i8] zeroinitializer], [144 x i8] zeroinitializer }, align 32
@mi1310_socinitVGA_JPG = internal constant { [150 x [4 x i8]], [136 x i8] } { [150 x [4 x i8]] [[4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\DD\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\03\CC", [4 x i8] c"\B3#\C0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\04\CC", [4 x i8] c"\B3\17\FF\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B8\00\00\CC", [4 x i8] c"\BC\00\D0\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\C8\9F\0B\BB", [4 x i8] c"[\00\01\BB", [4 x i8] c"/\DE \BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c" \03\02\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\05\00\07\BB", [4 x i8] c"4\00\00\BB", [4 x i8] c"5\FF\00\BB", [4 x i8] c"\DC\07\02\BB", [4 x i8] c"\DD<\18\BB", [4 x i8] c"\DE\92m\BB", [4 x i8] c"\DF\CD\B1\BB", [4 x i8] c"\E0\FF\E7\BB", [4 x i8] c"\06\F0\0D\BB", [4 x i8] c"\06p\0E\BB", [4 x i8] c"L\00\01\BB", [4 x i8] c"M\00\01\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c".\0CU\BB", [4 x i8] c"!\B6n\BB", [4 x i8] c"60\10\BB", [4 x i8] c"7\00\C1\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\07\00\84\BB", [4 x i8] c"\08\02J\BB", [4 x i8] c"\05\01\10\BB", [4 x i8] c"\06\009\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"X\02g\BB", [4 x i8] c"W\02\00\BB", [4 x i8] c"Z\02g\BB", [4 x i8] c"Y\02\00\BB", [4 x i8] c"\\\12\0D\BB", [4 x i8] c"]\16\11\BB", [4 x i8] c"9\06\18\BB", [4 x i8] c":\06\18\BB", [4 x i8] c";\06\18\BB", [4 x i8] c"<\06\18\BB", [4 x i8] c"d{[\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"60\10\BB", [4 x i8] c"7\00\C0\BB", [4 x i8] c"\BC\0E\00\CC", [4 x i8] c"\BC\0F\05\CC", [4 x i8] c"\BC\10\C0\CC", [4 x i8] c"\BC\11\03\CC", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\02\CC", [4 x i8] c"\B6\02\80\CC", [4 x i8] c"\B6\05\01\CC", [4 x i8] c"\B6\04\E0\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13%\CC", [4 x i8] c"\B6\18\02\CC", [4 x i8] c"\B6\17X\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\00\CC", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\80\00\03\BB", [4 x i8] c"\81\C7\14\BB", [4 x i8] c"\82\EB\E8\BB", [4 x i8] c"\83\FE\F4\BB", [4 x i8] c"\84\CD\10\BB", [4 x i8] c"\85\F3\EE\BB", [4 x i8] c"\86\FF\F1\BB", [4 x i8] c"\87\CD\10\BB", [4 x i8] c"\88\F3\EE\BB", [4 x i8] c"\89\01\F1\BB", [4 x i8] c"\8A\E5\17\BB", [4 x i8] c"\8B\E8\E2\BB", [4 x i8] c"\8C\F7\ED\BB", [4 x i8] c"\8D\00\FF\BB", [4 x i8] c"\8E\EC\10\BB", [4 x i8] c"\8F\F0\ED\BB", [4 x i8] c"\90\F9\F2\BB", [4 x i8] c"\91\00\00\BB", [4 x i8] c"\92\E9\0D\BB", [4 x i8] c"\93\F4\F2\BB", [4 x i8] c"\94\FB\F5\BB", [4 x i8] c"\95\00\FF\BB", [4 x i8] c"\B6\0F\08\BB", [4 x i8] c"\B7=\16\BB", [4 x i8] c"\B8\0C\04\BB", [4 x i8] c"\B9\1C\07\BB", [4 x i8] c"\BA\0A\03\BB", [4 x i8] c"\BB\1B\09\BB", [4 x i8] c"\BC\17\0D\BB", [4 x i8] c"\BD#\1D\BB", [4 x i8] c"\BE\00(\BB", [4 x i8] c"\BF\11\09\BB", [4 x i8] c"\C0\16\15\BB", [4 x i8] c"\C1\00\1B\BB", [4 x i8] c"\C2\0E\07\BB", [4 x i8] c"\C3\14\10\BB", [4 x i8] c"\C4\00\17\BB", [4 x i8] c"\06t\8E\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06\F4\8E\BB", [4 x i8] c"\00\00P\DD", [4 x i8] c"\06t\8E\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"$P \BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"4\0CP\BB", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\03\03\C0\BB", [4 x i8] zeroinitializer], [136 x i8] zeroinitializer }, align 32
@mi1310_soc_InitSXGA_JPG = internal constant { [191 x [4 x i8]], [164 x i8] } { [191 x [4 x i8]] [[4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\DD\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\0D\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\03\CC", [4 x i8] c"\B3#\C0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\04\CC", [4 x i8] c"\B3\17\FF\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B8\00\00\CC", [4 x i8] c"\BC\00p\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\C8\9F\0B\BB", [4 x i8] c"[\00\01\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c" \03\02\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\05\00\07\BB", [4 x i8] c"4\00\00\BB", [4 x i8] c"5\FF\00\BB", [4 x i8] c"\DC\07\02\BB", [4 x i8] c"\DD<\18\BB", [4 x i8] c"\DE\92m\BB", [4 x i8] c"\DF\CD\B1\BB", [4 x i8] c"\E0\FF\E7\BB", [4 x i8] c"\06\F0\0D\BB", [4 x i8] c"\06p\0E\BB", [4 x i8] c"L\00\01\BB", [4 x i8] c"M\00\01\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c".\0C`\BB", [4 x i8] c"!\B6n\BB", [4 x i8] c"7\01@\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\07\00\84\BB", [4 x i8] c"\08\02J\BB", [4 x i8] c"\05\01\10\BB", [4 x i8] c"\06\009\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"X\02g\BB", [4 x i8] c"W\02\00\BB", [4 x i8] c"Z\02g\BB", [4 x i8] c"Y\02\00\BB", [4 x i8] c"\\\12\0D\BB", [4 x i8] c"]\16\11\BB", [4 x i8] c"9\06\18\BB", [4 x i8] c":\06\18\BB", [4 x i8] c";\06\18\BB", [4 x i8] c"<\06\18\BB", [4 x i8] c"d{[\BB", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\05\CC", [4 x i8] c"\B6\02\00\CC", [4 x i8] c"\B6\05\03\CC", [4 x i8] c"\B6\04\C0\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13)\CC", [4 x i8] c"\B6\18\09\CC", [4 x i8] c"\B6\17`\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\00\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\00\00\80\DD", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\22\A0x\BB", [4 x i8] c"#\A0x\BB", [4 x i8] c"$\7F\00\BB", [4 x i8] c"(\EA\02\BB", [4 x i8] c")\86z\BB", [4 x i8] c"^RL\BB", [4 x i8] c"_ $\BB", [4 x i8] c"`\00\02\BB", [4 x i8] c"\02\00\EE\BB", [4 x i8] c"\039#\BB", [4 x i8] c"\04\07$\BB", [4 x i8] c"\09\00\C0\BB", [4 x i8] c"\0A\00y\BB", [4 x i8] c"\0B\00\04\BB", [4 x i8] c"\0C\00\\\BB", [4 x i8] c"\0D\00\D9\BB", [4 x i8] c"\0E\00S\BB", [4 x i8] c"\0F\00!\BB", [4 x i8] c"\10\00\A4\BB", [4 x i8] c"\11\00\E5\BB", [4 x i8] c"\15\00\00\BB", [4 x i8] c"\16\00\00\BB", [4 x i8] c"\17\00\00\BB", [4 x i8] c"\18\00\00\BB", [4 x i8] c"\19\00\00\BB", [4 x i8] c"\1A\00\00\BB", [4 x i8] c"\1B\00\00\BB", [4 x i8] c"\1C\00\00\BB", [4 x i8] c"\1D\00\00\BB", [4 x i8] c"\1E\00\00\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\00\00 \DD", [4 x i8] c"\06\F0\8E\BB", [4 x i8] c"\00\00\80\DD", [4 x i8] c"\06p\8E\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\00\00 \DD", [4 x i8] c"^jS\BB", [4 x i8] c"_@,\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\00\00 \DD", [4 x i8] c"X\00\00\BB", [4 x i8] c"S\09\03\BB", [4 x i8] c"T1\18\BB", [4 x i8] c"U\8B_\BB", [4 x i8] c"V\C0\A9\BB", [4 x i8] c"W\E0\D2\BB", [4 x i8] c"\E1\00\00\BB", [4 x i8] c"\DC\09\03\BB", [4 x i8] c"\DD1\18\BB", [4 x i8] c"\DE\8B_\BB", [4 x i8] c"\DF\C0\A9\BB", [4 x i8] c"\E0\E0\D2\BB", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06\F0\8E\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"/\DE \BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"$P \BB", [4 x i8] c"\BC\0E\00\CC", [4 x i8] c"\BC\0F\05\CC", [4 x i8] c"\BC\10\C0\CC", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"4\0CP\BB", [4 x i8] c"\BC\11\03\CC", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\80\00\03\BB", [4 x i8] c"\81\C7\14\BB", [4 x i8] c"\82\EB\E8\BB", [4 x i8] c"\83\FE\F4\BB", [4 x i8] c"\84\CD\10\BB", [4 x i8] c"\85\F3\EE\BB", [4 x i8] c"\86\FF\F1\BB", [4 x i8] c"\87\CD\10\BB", [4 x i8] c"\88\F3\EE\BB", [4 x i8] c"\89\01\F1\BB", [4 x i8] c"\8A\E5\17\BB", [4 x i8] c"\8B\E8\E2\BB", [4 x i8] c"\8C\F7\ED\BB", [4 x i8] c"\8D\00\FF\BB", [4 x i8] c"\8E\EC\10\BB", [4 x i8] c"\8F\F0\ED\BB", [4 x i8] c"\90\F9\F2\BB", [4 x i8] c"\91\00\00\BB", [4 x i8] c"\92\E9\0D\BB", [4 x i8] c"\93\F4\F2\BB", [4 x i8] c"\94\FB\F5\BB", [4 x i8] c"\95\00\FF\BB", [4 x i8] c"\B6\0F\08\BB", [4 x i8] c"\B7=\16\BB", [4 x i8] c"\B8\0C\04\BB", [4 x i8] c"\B9\1C\07\BB", [4 x i8] c"\BA\0A\03\BB", [4 x i8] c"\BB\1B\09\BB", [4 x i8] c"\BC\17\0D\BB", [4 x i8] c"\BD#\1D\BB", [4 x i8] c"\BE\00(\BB", [4 x i8] c"\BF\11\09\BB", [4 x i8] c"\C0\16\15\BB", [4 x i8] c"\C1\00\1B\BB", [4 x i8] c"\C2\0E\07\BB", [4 x i8] c"\C3\14\10\BB", [4 x i8] c"\C4\00\17\BB", [4 x i8] c"\06t\8E\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\03\03\C0\BB", [4 x i8] zeroinitializer], [164 x i8] zeroinitializer }, align 32
@mi1320_initQVGA_data = internal constant { [130 x [4 x i8]], [152 x i8] } { [130 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\00\003\DD", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\00\003\DD", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\003\DD", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B0\16\03\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\C8\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B8\00\00\CC", [4 x i8] c"\BC\00\D0\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\0D\00\09\BB", [4 x i8] c"\00\01\00\DD", [4 x i8] c"\0D\00\08\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\02\00d\BB", [4 x i8] c"\05\01x\BB", [4 x i8] c"\06\00\11\BB", [4 x i8] c"\07\01B\BB", [4 x i8] c"\08\00\11\BB", [4 x i8] c" \01\00\BB", [4 x i8] c"!\80\00\BB", [4 x i8] c"\22\0D\0F\BB", [4 x i8] c"$\80\00\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\9D<\A0\BB", [4 x i8] c"G00\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\0A\80\11\BB", [4 x i8] c"5\00\22\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\9D\C5\05\BB", [4 x i8] c"\DC\0F\FC\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06t\0E\BB", [4 x i8] c"\80\00\06\BB", [4 x i8] c"\81\04\00\BB", [4 x i8] c"\82\01\02\BB", [4 x i8] c"\83\03\02\BB", [4 x i8] c"\84\05\00\BB", [4 x i8] c"\85\01\00\BB", [4 x i8] c"\86\03\02\BB", [4 x i8] c"\87\05\00\BB", [4 x i8] c"\88\01\00\BB", [4 x i8] c"\89\02\02\BB", [4 x i8] c"\8A\FD\04\BB", [4 x i8] c"\8B\FC\FD\BB", [4 x i8] c"\8C\FF\FD\BB", [4 x i8] c"\8D\00\00\BB", [4 x i8] c"\8E\FE\05\BB", [4 x i8] c"\8F\FC\FD\BB", [4 x i8] c"\90\FE\FD\BB", [4 x i8] c"\91\00\00\BB", [4 x i8] c"\92\FE\03\BB", [4 x i8] c"\93\FD\FE\BB", [4 x i8] c"\94\FF\FD\BB", [4 x i8] c"\95\00\00\BB", [4 x i8] c"\B6\07\05\BB", [4 x i8] c"\B7\13\06\BB", [4 x i8] c"\B8\08\06\BB", [4 x i8] c"\B9\14\08\BB", [4 x i8] c"\BA\06\05\BB", [4 x i8] c"\BB\13\06\BB", [4 x i8] c"\BC\03\01\BB", [4 x i8] c"\BD\03\04\BB", [4 x i8] c"\BE\00\02\BB", [4 x i8] c"\BF\03\01\BB", [4 x i8] c"\C0\02\04\BB", [4 x i8] c"\C1\00\04\BB", [4 x i8] c"\C2\02\01\BB", [4 x i8] c"\C3\01\03\BB", [4 x i8] c"\C4\00\04\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\C8\00\00\BB", [4 x i8] c".\00\00\BB", [4 x i8] c".\0C[\BB", [4 x i8] c"/\D1\00\BB", [4 x i8] c"9\03\CA\BB", [4 x i8] c":\06\80\BB", [4 x i8] c";\01R\BB", [4 x i8] c"<\05@\BB", [4 x i8] c"W\01\9C\BB", [4 x i8] c"X\01\EE\BB", [4 x i8] c"Y\00\F0\BB", [4 x i8] c"Z\01 \BB", [4 x i8] c"\\\1D\17\BB", [4 x i8] c"]\22\1C\BB", [4 x i8] c"d\1E\1C\BB", [4 x i8] c"[\00\01\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"6h\10\BB", [4 x i8] c"\00\000\DD", [4 x i8] c"7\81\00\BB", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] zeroinitializer], [152 x i8] zeroinitializer }, align 32
@mi1320_initVGA_data = internal constant { [153 x [4 x i8]], [156 x i8] } { [153 x [4 x i8]] [[4 x i8] c"\B3\01\01\CC", [4 x i8] c"\00\003\DD", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\00\003\DD", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\003\DD", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B0\16\03\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\02\CC", [4 x i8] c"\B35\C8\CC", [4 x i8] c"\B3\02\00\CC", [4 x i8] c"\B3\03\0A\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\03\CC", [4 x i8] c"\B3#\C0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\04\CC", [4 x i8] c"\B3\17\FF\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\BC\00\D0\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\0D\00\09\BB", [4 x i8] c"\00\01\00\DD", [4 x i8] c"\0D\00\08\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\A1\05\00\BB", [4 x i8] c"\A4\03\C0\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\C8\9F\0B\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c" \01\00\BB", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\9D<\A0\BB", [4 x i8] c"G00\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\0A\80\11\BB", [4 x i8] c"5\00\22\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"\9D\C5\05\BB", [4 x i8] c"\DC\0F\FC\BB", [4 x i8] c"\F0\00\01\BB", [4 x i8] c"\06t\0E\BB", [4 x i8] c"\80\00\06\BB", [4 x i8] c"\81\04\00\BB", [4 x i8] c"\82\01\02\BB", [4 x i8] c"\83\03\02\BB", [4 x i8] c"\84\05\00\BB", [4 x i8] c"\85\01\00\BB", [4 x i8] c"\86\03\02\BB", [4 x i8] c"\87\05\00\BB", [4 x i8] c"\88\01\00\BB", [4 x i8] c"\89\02\02\BB", [4 x i8] c"\8A\FD\04\BB", [4 x i8] c"\8B\FC\FD\BB", [4 x i8] c"\8C\FF\FD\BB", [4 x i8] c"\8D\00\00\BB", [4 x i8] c"\8E\FE\05\BB", [4 x i8] c"\8F\FC\FD\BB", [4 x i8] c"\90\FE\FD\BB", [4 x i8] c"\91\00\00\BB", [4 x i8] c"\92\FE\03\BB", [4 x i8] c"\93\FD\FE\BB", [4 x i8] c"\94\FF\FD\BB", [4 x i8] c"\95\00\00\BB", [4 x i8] c"\B6\07\05\BB", [4 x i8] c"\B7\13\06\BB", [4 x i8] c"\B8\08\06\BB", [4 x i8] c"\B9\14\08\BB", [4 x i8] c"\BA\06\05\BB", [4 x i8] c"\BB\13\06\BB", [4 x i8] c"\BC\03\01\BB", [4 x i8] c"\BD\03\04\BB", [4 x i8] c"\BE\00\02\BB", [4 x i8] c"\BF\03\01\BB", [4 x i8] c"\C0\02\04\BB", [4 x i8] c"\C1\00\04\BB", [4 x i8] c"\C2\02\01\BB", [4 x i8] c"\C3\01\03\BB", [4 x i8] c"\C4\00\04\BB", [4 x i8] c"\F0\00\00\BB", [4 x i8] c"\05\01\13\BB", [4 x i8] c"\06\00\11\BB", [4 x i8] c"\07\00\85\BB", [4 x i8] c"\08\00'\BB", [4 x i8] c" \01\00\BB", [4 x i8] c"!\80\00\BB", [4 x i8] c"\22\0D\0F\BB", [4 x i8] c"$\80\00\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"9\03\0D\BB", [4 x i8] c":\06\1B\BB", [4 x i8] c";\00\95\BB", [4 x i8] c"<\04\DB\BB", [4 x i8] c"W\02\00\BB", [4 x i8] c"X\02f\BB", [4 x i8] c"Y\00\FF\BB", [4 x i8] c"Z\013\BB", [4 x i8] c"\\\12\0D\BB", [4 x i8] c"]\16\11\BB", [4 x i8] c"d^\1C\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"/\D1\00\BB", [4 x i8] c"[\00\01\BB", [4 x i8] c"\F0\00\02\BB", [4 x i8] c"6h\10\BB", [4 x i8] c"\00\000\DD", [4 x i8] c"7\82\00\BB", [4 x i8] c"\BC\0E\00\CC", [4 x i8] c"\BC\0F\05\CC", [4 x i8] c"\BC\10\C0\CC", [4 x i8] c"\BC\11\03\CC", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\05\CC", [4 x i8] c"\B6\02\00\CC", [4 x i8] c"\B6\05\04\CC", [4 x i8] c"\B6\04\00\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13)\CC", [4 x i8] c"\B6\18\0A\CC", [4 x i8] c"\B6\17\00\CC", [4 x i8] c"\B6\16\00\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] zeroinitializer], [156 x i8] zeroinitializer }, align 32
@ov7670_InitVGA = internal constant { [235 x [4 x i8]], [244 x i8] } { [235 x [4 x i8]] [[4 x i8] c"\B3\01\05\CC", [4 x i8] c"\00\000\DD", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B3\00f\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B0\16\01\CC", [4 x i8] c"\B35\A1\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\02\02\CC", [4 x i8] c"\B3\03\1F\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\BC\00A\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\00\12\80\AA", [4 x i8] c"\00\00 \DD", [4 x i8] c"\00\12\00\AA", [4 x i8] c"\00\11@\AA", [4 x i8] c"\00k\0A\AA", [4 x i8] c"\00:\04\AA", [4 x i8] c"\00@\C0\AA", [4 x i8] c"\00\8C\00\AA", [4 x i8] c"\00z)\AA", [4 x i8] c"\00{\0E\AA", [4 x i8] c"\00|\1A\AA", [4 x i8] c"\00}1\AA", [4 x i8] c"\00~S\AA", [4 x i8] c"\00\7F`\AA", [4 x i8] c"\00\80k\AA", [4 x i8] c"\00\81s\AA", [4 x i8] c"\00\82{\AA", [4 x i8] c"\00\83\82\AA", [4 x i8] c"\00\84\89\AA", [4 x i8] c"\00\85\96\AA", [4 x i8] c"\00\86\A1\AA", [4 x i8] c"\00\87\B7\AA", [4 x i8] c"\00\88\CC\AA", [4 x i8] c"\00\89\E1\AA", [4 x i8] c"\00\13\E0\AA", [4 x i8] c"\00\00\00\AA", [4 x i8] c"\00\10\00\AA", [4 x i8] c"\00\0D@\AA", [4 x i8] c"\00\14(\AA", [4 x i8] c"\00\A5\05\AA", [4 x i8] c"\00\AB\07\AA", [4 x i8] c"\00$\95\AA", [4 x i8] c"\00%3\AA", [4 x i8] c"\00&\E3\AA", [4 x i8] c"\00\9F\88\AA", [4 x i8] c"\00\A0x\AA", [4 x i8] c"\00U\90\AA", [4 x i8] c"\00\A1\03\AA", [4 x i8] c"\00\A6\E0\AA", [4 x i8] c"\00\A7\D8\AA", [4 x i8] c"\00\A8\F0\AA", [4 x i8] c"\00\A9\90\AA", [4 x i8] c"\00\AA\14\AA", [4 x i8] c"\00\13\E5\AA", [4 x i8] c"\00\0Ea\AA", [4 x i8] c"\00\0FK\AA", [4 x i8] c"\00\16\02\AA", [4 x i8] c"\00\1E\07\AA", [4 x i8] c"\00!\02\AA", [4 x i8] c"\00\22\91\AA", [4 x i8] c"\00)\07\AA", [4 x i8] c"\003\0B\AA", [4 x i8] c"\005\0B\AA", [4 x i8] c"\007\1D\AA", [4 x i8] c"\008q\AA", [4 x i8] c"\009*\AA", [4 x i8] c"\00<x\AA", [4 x i8] c"\00M@\AA", [4 x i8] c"\00N \AA", [4 x i8] c"\00t\19\AA", [4 x i8] c"\00\8DO\AA", [4 x i8] c"\00\8E\00\AA", [4 x i8] c"\00\8F\00\AA", [4 x i8] c"\00\90\00\AA", [4 x i8] c"\00\91\00\AA", [4 x i8] c"\00\96\00\AA", [4 x i8] c"\00\9A\80\AA", [4 x i8] c"\00\B0\84\AA", [4 x i8] c"\00\B1\0C\AA", [4 x i8] c"\00\B2\0E\AA", [4 x i8] c"\00\B3\82\AA", [4 x i8] c"\00\B8\0A\AA", [4 x i8] c"\00C\14\AA", [4 x i8] c"\00D\F0\AA", [4 x i8] c"\00EE\AA", [4 x i8] c"\00Fc\AA", [4 x i8] c"\00G-\AA", [4 x i8] c"\00HF\AA", [4 x i8] c"\00Y\88\AA", [4 x i8] c"\00Z\A0\AA", [4 x i8] c"\00[\C6\AA", [4 x i8] c"\00\\}\AA", [4 x i8] c"\00]_\AA", [4 x i8] c"\00^\19\AA", [4 x i8] c"\00l\0A\AA", [4 x i8] c"\00mU\AA", [4 x i8] c"\00n\11\AA", [4 x i8] c"\00o\9E\AA", [4 x i8] c"\00i\00\AA", [4 x i8] c"\00j@\AA", [4 x i8] c"\00\01@\AA", [4 x i8] c"\00\02@\AA", [4 x i8] c"\00\13\E7\AA", [4 x i8] c"\00_\F0\AA", [4 x i8] c"\00`\F0\AA", [4 x i8] c"\00a\F0\AA", [4 x i8] c"\00'\A0\AA", [4 x i8] c"\00(\80\AA", [4 x i8] c"\00,\90\AA", [4 x i8] c"\00Of\AA", [4 x i8] c"\00Pf\AA", [4 x i8] c"\00Q\00\AA", [4 x i8] c"\00R\22\AA", [4 x i8] c"\00S^\AA", [4 x i8] c"\00T\80\AA", [4 x i8] c"\00X\9E\AA", [4 x i8] c"\00A\08\AA", [4 x i8] c"\00?\00\AA", [4 x i8] c"\00u\85\AA", [4 x i8] c"\00v\E1\AA", [4 x i8] c"\00L\00\AA", [4 x i8] c"\00w\0A\AA", [4 x i8] c"\00=\88\AA", [4 x i8] c"\00K\09\AA", [4 x i8] c"\00\C9`\AA", [4 x i8] c"\00A8\AA", [4 x i8] c"\00b0\AA", [4 x i8] c"\00c0\AA", [4 x i8] c"\00d\08\AA", [4 x i8] c"\00\94\07\AA", [4 x i8] c"\00\95\0B\AA", [4 x i8] c"\00e\00\AA", [4 x i8] c"\00f\05\AA", [4 x i8] c"\00VP\AA", [4 x i8] c"\004\11\AA", [4 x i8] c"\00\A4\88\AA", [4 x i8] c"\00\96\00\AA", [4 x i8] c"\00\970\AA", [4 x i8] c"\00\98 \AA", [4 x i8] c"\00\990\AA", [4 x i8] c"\00\9A\84\AA", [4 x i8] c"\00\9B)\AA", [4 x i8] c"\00\9C\03\AA", [4 x i8] c"\00x\04\AA", [4 x i8] c"\00y\01\AA", [4 x i8] c"\00\C8\F0\AA", [4 x i8] c"\00y\0F\AA", [4 x i8] c"\00\C8\00\AA", [4 x i8] c"\00y\10\AA", [4 x i8] c"\00\C8~\AA", [4 x i8] c"\00y\0A\AA", [4 x i8] c"\00\C8\80\AA", [4 x i8] c"\00y\0B\AA", [4 x i8] c"\00\C8\01\AA", [4 x i8] c"\00y\0C\AA", [4 x i8] c"\00\C8\0F\AA", [4 x i8] c"\00y\0D\AA", [4 x i8] c"\00\C8 \AA", [4 x i8] c"\00y\09\AA", [4 x i8] c"\00\C8\80\AA", [4 x i8] c"\00y\02\AA", [4 x i8] c"\00\C8\C0\AA", [4 x i8] c"\00y\03\AA", [4 x i8] c"\00\C8@\AA", [4 x i8] c"\00y\05\AA", [4 x i8] c"\00\C80\AA", [4 x i8] c"\00y&\AA", [4 x i8] c"\00\11@\AA", [4 x i8] c"\00:\04\AA", [4 x i8] c"\00\12\00\AA", [4 x i8] c"\00@\C0\AA", [4 x i8] c"\00\8C\00\AA", [4 x i8] c"\00\17\14\AA", [4 x i8] c"\00\18\02\AA", [4 x i8] c"\002\92\AA", [4 x i8] c"\00\19\02\AA", [4 x i8] c"\00\1Az\AA", [4 x i8] c"\00\03\0A\AA", [4 x i8] c"\00\0C\00\AA", [4 x i8] c"\00>\00\AA", [4 x i8] c"\00p:\AA", [4 x i8] c"\00q5\AA", [4 x i8] c"\00r\11\AA", [4 x i8] c"\00s\F0\AA", [4 x i8] c"\00\A2\02\AA", [4 x i8] c"\00\B1\00\AA", [4 x i8] c"\00\B1\0C\AA", [4 x i8] c"\00\1E7\AA", [4 x i8] c"\00\AA\14\AA", [4 x i8] c"\00$\80\AA", [4 x i8] c"\00%t\AA", [4 x i8] c"\00&\D3\AA", [4 x i8] c"\00\0D\00\AA", [4 x i8] c"\00\14\18\AA", [4 x i8] c"\00\9D\99\AA", [4 x i8] c"\00\9E\7F\AA", [4 x i8] c"\00d\08\AA", [4 x i8] c"\00\94\07\AA", [4 x i8] c"\00\95\06\AA", [4 x i8] c"\00f\05\AA", [4 x i8] c"\00A\08\AA", [4 x i8] c"\00?\00\AA", [4 x i8] c"\00u\07\AA", [4 x i8] c"\00v\E1\AA", [4 x i8] c"\00L\00\AA", [4 x i8] c"\00w\00\AA", [4 x i8] c"\00=\C2\AA", [4 x i8] c"\00K\09\AA", [4 x i8] c"\00\C9`\AA", [4 x i8] c"\00A8\AA", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\B3\01E\CC", [4 x i8] c"\00w\05\AA", [4 x i8] zeroinitializer], [244 x i8] zeroinitializer }, align 32
@ov7670_InitQVGA = internal constant { [245 x [4 x i8]], [236 x i8] } { [245 x [4 x i8]] [[4 x i8] c"\B3\01\05\CC", [4 x i8] c"\00\000\DD", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B3\00f\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B0\16\01\CC", [4 x i8] c"\B35\A1\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\02\02\CC", [4 x i8] c"\B3\03\1F\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3\04\05\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\BC\00\D1\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\00\12\80\AA", [4 x i8] c"\00\00 \DD", [4 x i8] c"\00\12\00\AA", [4 x i8] c"\00\11@\AA", [4 x i8] c"\00k\0A\AA", [4 x i8] c"\00:\04\AA", [4 x i8] c"\00@\C0\AA", [4 x i8] c"\00\8C\00\AA", [4 x i8] c"\00z)\AA", [4 x i8] c"\00{\0E\AA", [4 x i8] c"\00|\1A\AA", [4 x i8] c"\00}1\AA", [4 x i8] c"\00~S\AA", [4 x i8] c"\00\7F`\AA", [4 x i8] c"\00\80k\AA", [4 x i8] c"\00\81s\AA", [4 x i8] c"\00\82{\AA", [4 x i8] c"\00\83\82\AA", [4 x i8] c"\00\84\89\AA", [4 x i8] c"\00\85\96\AA", [4 x i8] c"\00\86\A1\AA", [4 x i8] c"\00\87\B7\AA", [4 x i8] c"\00\88\CC\AA", [4 x i8] c"\00\89\E1\AA", [4 x i8] c"\00\13\E0\AA", [4 x i8] c"\00\00\00\AA", [4 x i8] c"\00\10\00\AA", [4 x i8] c"\00\0D@\AA", [4 x i8] c"\00\14(\AA", [4 x i8] c"\00\A5\05\AA", [4 x i8] c"\00\AB\07\AA", [4 x i8] c"\00$\95\AA", [4 x i8] c"\00%3\AA", [4 x i8] c"\00&\E3\AA", [4 x i8] c"\00\9F\88\AA", [4 x i8] c"\00\A0x\AA", [4 x i8] c"\00U\90\AA", [4 x i8] c"\00\A1\03\AA", [4 x i8] c"\00\A6\E0\AA", [4 x i8] c"\00\A7\D8\AA", [4 x i8] c"\00\A8\F0\AA", [4 x i8] c"\00\A9\90\AA", [4 x i8] c"\00\AA\14\AA", [4 x i8] c"\00\13\E5\AA", [4 x i8] c"\00\0Ea\AA", [4 x i8] c"\00\0FK\AA", [4 x i8] c"\00\16\02\AA", [4 x i8] c"\00\1E\07\AA", [4 x i8] c"\00!\02\AA", [4 x i8] c"\00\22\91\AA", [4 x i8] c"\00)\07\AA", [4 x i8] c"\003\0B\AA", [4 x i8] c"\005\0B\AA", [4 x i8] c"\007\1D\AA", [4 x i8] c"\008q\AA", [4 x i8] c"\009*\AA", [4 x i8] c"\00<x\AA", [4 x i8] c"\00M@\AA", [4 x i8] c"\00N \AA", [4 x i8] c"\00t\19\AA", [4 x i8] c"\00\8DO\AA", [4 x i8] c"\00\8E\00\AA", [4 x i8] c"\00\8F\00\AA", [4 x i8] c"\00\90\00\AA", [4 x i8] c"\00\91\00\AA", [4 x i8] c"\00\96\00\AA", [4 x i8] c"\00\9A\80\AA", [4 x i8] c"\00\B0\84\AA", [4 x i8] c"\00\B1\0C\AA", [4 x i8] c"\00\B2\0E\AA", [4 x i8] c"\00\B3\82\AA", [4 x i8] c"\00\B8\0A\AA", [4 x i8] c"\00C\14\AA", [4 x i8] c"\00D\F0\AA", [4 x i8] c"\00EE\AA", [4 x i8] c"\00Fc\AA", [4 x i8] c"\00G-\AA", [4 x i8] c"\00HF\AA", [4 x i8] c"\00Y\88\AA", [4 x i8] c"\00Z\A0\AA", [4 x i8] c"\00[\C6\AA", [4 x i8] c"\00\\}\AA", [4 x i8] c"\00]_\AA", [4 x i8] c"\00^\19\AA", [4 x i8] c"\00l\0A\AA", [4 x i8] c"\00mU\AA", [4 x i8] c"\00n\11\AA", [4 x i8] c"\00o\9E\AA", [4 x i8] c"\00i\00\AA", [4 x i8] c"\00j@\AA", [4 x i8] c"\00\01@\AA", [4 x i8] c"\00\02@\AA", [4 x i8] c"\00\13\E7\AA", [4 x i8] c"\00_\F0\AA", [4 x i8] c"\00`\F0\AA", [4 x i8] c"\00a\F0\AA", [4 x i8] c"\00'\A0\AA", [4 x i8] c"\00(\80\AA", [4 x i8] c"\00,\90\AA", [4 x i8] c"\00Of\AA", [4 x i8] c"\00Pf\AA", [4 x i8] c"\00Q\00\AA", [4 x i8] c"\00R\22\AA", [4 x i8] c"\00S^\AA", [4 x i8] c"\00T\80\AA", [4 x i8] c"\00X\9E\AA", [4 x i8] c"\00A\08\AA", [4 x i8] c"\00?\00\AA", [4 x i8] c"\00u\85\AA", [4 x i8] c"\00v\E1\AA", [4 x i8] c"\00L\00\AA", [4 x i8] c"\00w\0A\AA", [4 x i8] c"\00=\88\AA", [4 x i8] c"\00K\09\AA", [4 x i8] c"\00\C9`\AA", [4 x i8] c"\00A8\AA", [4 x i8] c"\00b0\AA", [4 x i8] c"\00c0\AA", [4 x i8] c"\00d\08\AA", [4 x i8] c"\00\94\07\AA", [4 x i8] c"\00\95\0B\AA", [4 x i8] c"\00e\00\AA", [4 x i8] c"\00f\05\AA", [4 x i8] c"\00VP\AA", [4 x i8] c"\004\11\AA", [4 x i8] c"\00\A4\88\AA", [4 x i8] c"\00\96\00\AA", [4 x i8] c"\00\970\AA", [4 x i8] c"\00\98 \AA", [4 x i8] c"\00\990\AA", [4 x i8] c"\00\9A\84\AA", [4 x i8] c"\00\9B)\AA", [4 x i8] c"\00\9C\03\AA", [4 x i8] c"\00x\04\AA", [4 x i8] c"\00y\01\AA", [4 x i8] c"\00\C8\F0\AA", [4 x i8] c"\00y\0F\AA", [4 x i8] c"\00\C8\00\AA", [4 x i8] c"\00y\10\AA", [4 x i8] c"\00\C8~\AA", [4 x i8] c"\00y\0A\AA", [4 x i8] c"\00\C8\80\AA", [4 x i8] c"\00y\0B\AA", [4 x i8] c"\00\C8\01\AA", [4 x i8] c"\00y\0C\AA", [4 x i8] c"\00\C8\0F\AA", [4 x i8] c"\00y\0D\AA", [4 x i8] c"\00\C8 \AA", [4 x i8] c"\00y\09\AA", [4 x i8] c"\00\C8\80\AA", [4 x i8] c"\00y\02\AA", [4 x i8] c"\00\C8\C0\AA", [4 x i8] c"\00y\03\AA", [4 x i8] c"\00\C8@\AA", [4 x i8] c"\00y\05\AA", [4 x i8] c"\00\C80\AA", [4 x i8] c"\00y&\AA", [4 x i8] c"\00\11@\AA", [4 x i8] c"\00:\04\AA", [4 x i8] c"\00\12\00\AA", [4 x i8] c"\00@\C0\AA", [4 x i8] c"\00\8C\00\AA", [4 x i8] c"\00\17\14\AA", [4 x i8] c"\00\18\02\AA", [4 x i8] c"\002\92\AA", [4 x i8] c"\00\19\02\AA", [4 x i8] c"\00\1Az\AA", [4 x i8] c"\00\03\0A\AA", [4 x i8] c"\00\0C\00\AA", [4 x i8] c"\00>\00\AA", [4 x i8] c"\00p:\AA", [4 x i8] c"\00q5\AA", [4 x i8] c"\00r\11\AA", [4 x i8] c"\00s\F0\AA", [4 x i8] c"\00\A2\02\AA", [4 x i8] c"\00\B1\00\AA", [4 x i8] c"\00\B1\0C\AA", [4 x i8] c"\00\1E7\AA", [4 x i8] c"\00\AA\14\AA", [4 x i8] c"\00$\80\AA", [4 x i8] c"\00%t\AA", [4 x i8] c"\00&\D3\AA", [4 x i8] c"\00\0D\00\AA", [4 x i8] c"\00\14\18\AA", [4 x i8] c"\00\9D\99\AA", [4 x i8] c"\00\9E\7F\AA", [4 x i8] c"\00d\08\AA", [4 x i8] c"\00\94\07\AA", [4 x i8] c"\00\95\06\AA", [4 x i8] c"\00f\05\AA", [4 x i8] c"\00A\08\AA", [4 x i8] c"\00?\00\AA", [4 x i8] c"\00u\07\AA", [4 x i8] c"\00v\E1\AA", [4 x i8] c"\00L\00\AA", [4 x i8] c"\00w\00\AA", [4 x i8] c"\00=\C2\AA", [4 x i8] c"\00K\09\AA", [4 x i8] c"\00\C9`\AA", [4 x i8] c"\00A8\AA", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\BF\C0&\CC", [4 x i8] c"\BF\C1\02\CC", [4 x i8] c"\BF\CC\04\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\B3\01E\CC", [4 x i8] c"\00w\05\AA", [4 x i8] zeroinitializer], [236 x i8] zeroinitializer }, align 32
@po3130_gamma = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\138Yy\92\A7\B9\C8\D4\DF\E7\EE\F4\F9\FC\FF", [47 x i8] zeroinitializer }, align 32
@po3130_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_\EC\F5\F1Z\F5\F1\ECc", [23 x i8] zeroinitializer }, align 32
@po3130_initQVGA_data = internal constant { [165 x [4 x i8]], [172 x i8] } { [165 x [4 x i8]] [[4 x i8] c"\B0M\00\CC", [4 x i8] c"\B3\01\01\CC", [4 x i8] c"\00\00P\DD", [4 x i8] c"\B0\03\09\CC", [4 x i8] c"\B3\00\04\CC", [4 x i8] c"\B3\00$\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\03\1A\CC", [4 x i8] c"\B3\04\15\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B8\08\E0\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\F6\CC", [4 x i8] c"\B3\00'\CC", [4 x i8] c"\BC\00\D1\CC", [4 x i8] c"\B8\00!\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8\01y\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B8,P\CC", [4 x i8] c"\B8-\F8\CC", [4 x i8] c"\B8.\F8\CC", [4 x i8] c"\B8/\F8\CC", [4 x i8] c"\B80P\CC", [4 x i8] c"\B81\F8\CC", [4 x i8] c"\B82\F8\CC", [4 x i8] c"\B83\F8\CC", [4 x i8] c"\B84P\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\00\1E\C6\AA", [4 x i8] c"\00 D\AA", [4 x i8] c"\00\AD\02\AA", [4 x i8] c"\00\AE,\AA", [4 x i8] c"\00\12\08\AA", [4 x i8] c"\00\17A\AA", [4 x i8] c"\00\19A\AA", [4 x i8] c"\00\1E\06\AA", [4 x i8] c"\00!\00\AA", [4 x i8] c"\006\C0\AA", [4 x i8] c"\007\C8\AA", [4 x i8] c"\00;6\AA", [4 x i8] c"\00K\FE\AA", [4 x i8] c"\00Q\1C\AA", [4 x i8] c"\00R\01\AA", [4 x i8] c"\00U\0A\AA", [4 x i8] c"\00Yo\AA", [4 x i8] c"\00Z\04\AA", [4 x i8] c"\00\\\10\AA", [4 x i8] c"\00]\10\AA", [4 x i8] c"\00^\10\AA", [4 x i8] c"\00_\10\AA", [4 x i8] c"\00a\00\AA", [4 x i8] c"\00b\18\AA", [4 x i8] c"\00c0\AA", [4 x i8] c"\00ph\AA", [4 x i8] c"\00\80q\AA", [4 x i8] c"\00\81\08\AA", [4 x i8] c"\00\82\00\AA", [4 x i8] c"\00\83U\AA", [4 x i8] c"\00\84\06\AA", [4 x i8] c"\00\85\06\AA", [4 x i8] c"\00\86\13\AA", [4 x i8] c"\00\87\18\AA", [4 x i8] c"\00\AA?\AA", [4 x i8] c"\00\ABD\AA", [4 x i8] c"\00\B0h\AA", [4 x i8] c"\00\B5\10\AA", [4 x i8] c"\00\B8 \AA", [4 x i8] c"\00\B9\A0\AA", [4 x i8] c"\00\BC\04\AA", [4 x i8] c"\00\8B@\AA", [4 x i8] c"\00\8C\91\AA", [4 x i8] c"\00\8D\8F\AA", [4 x i8] c"\00\8E\91\AA", [4 x i8] c"\00\8FC\AA", [4 x i8] c"\00\90\92\AA", [4 x i8] c"\00\91\89\AA", [4 x i8] c"\00\92\9D\AA", [4 x i8] c"\00\93F\AA", [4 x i8] c"\00\D6\22\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\10\AA", [4 x i8] c"\00u \AA", [4 x i8] c"\00v+\AA", [4 x i8] c"\00w6\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00\D6b\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\10\AA", [4 x i8] c"\00u \AA", [4 x i8] c"\00v+\AA", [4 x i8] c"\00w6\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00\D6\A2\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\10\AA", [4 x i8] c"\00u \AA", [4 x i8] c"\00v+\AA", [4 x i8] c"\00w6\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00L\07\AA", [4 x i8] c"\00K\E0\AA", [4 x i8] c"\00Nw\AA", [4 x i8] c"\00Yf\AA", [4 x i8] c"\00M\0A\AA", [4 x i8] c"\00\D1\00\AA", [4 x i8] c"\00 \C4\AA", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\B8\FE\00\CC", [4 x i8] c"\B8\FF(\CC", [4 x i8] c"\B9\00(\CC", [4 x i8] c"\B9\01(\CC", [4 x i8] c"\B9\02(\CC", [4 x i8] c"\B9\03\00\CC", [4 x i8] c"\B9\04\00\CC", [4 x i8] c"\B9\05<\CC", [4 x i8] c"\B9\06<\CC", [4 x i8] c"\B9\07<\CC", [4 x i8] c"\B9\08<\CC", [4 x i8] c"\BC\02\18\CC", [4 x i8] c"\BC\03P\CC", [4 x i8] c"\BC\04\18\CC", [4 x i8] c"\BC\05\00\CC", [4 x i8] c"\BC\06\00\CC", [4 x i8] c"\BC\080\CC", [4 x i8] c"\BC\09@\CC", [4 x i8] c"\BC\0A\10\CC", [4 x i8] c"\BC\0B\00\CC", [4 x i8] c"\BC\0C\00\CC", [4 x i8] c"\00\05\00\AA", [4 x i8] c"\B3\\\00\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] zeroinitializer], [172 x i8] zeroinitializer }, align 32
@po3130_initVGA_data = internal constant { [155 x [4 x i8]], [148 x i8] } { [155 x [4 x i8]] [[4 x i8] c"\B0M\00\CC", [4 x i8] c"\B3\01\01\CC", [4 x i8] c"\00\00P\DD", [4 x i8] c"\B0\03\01\CC", [4 x i8] c"\B3\00\04\CC", [4 x i8] c"\B3\00$\CC", [4 x i8] c"\B3\00%\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\03\1A\CC", [4 x i8] c"\B3\04\15\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E8\CC", [4 x i8] c"\B8\08\E8\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\F6\CC", [4 x i8] c"\B3\00'\CC", [4 x i8] c"\BC\00q\CC", [4 x i8] c"\B8\00!\CC", [4 x i8] c"\B8' \CC", [4 x i8] c"\B8\01y\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\B8,P\CC", [4 x i8] c"\B8-\F8\CC", [4 x i8] c"\B8.\F8\CC", [4 x i8] c"\B8/\F8\CC", [4 x i8] c"\B80P\CC", [4 x i8] c"\B81\F8\CC", [4 x i8] c"\B82\F8\CC", [4 x i8] c"\B83\F8\CC", [4 x i8] c"\B84P\CC", [4 x i8] c"\B85\00\CC", [4 x i8] c"\B86\00\CC", [4 x i8] c"\B87\00\CC", [4 x i8] c"\00\1E\C6\AA", [4 x i8] c"\00 D\AA", [4 x i8] c"\00\AD\02\AA", [4 x i8] c"\00\AE,\AA", [4 x i8] c"\00\12\08\AA", [4 x i8] c"\00\17A\AA", [4 x i8] c"\00\19A\AA", [4 x i8] c"\00\1E\06\AA", [4 x i8] c"\00!\00\AA", [4 x i8] c"\006\C0\AA", [4 x i8] c"\007\C8\AA", [4 x i8] c"\00;6\AA", [4 x i8] c"\00K\FE\AA", [4 x i8] c"\00Q\1C\AA", [4 x i8] c"\00R\01\AA", [4 x i8] c"\00U\0A\AA", [4 x i8] c"\00Y\02\AA", [4 x i8] c"\00Z\04\AA", [4 x i8] c"\00\\\10\AA", [4 x i8] c"\00]\10\AA", [4 x i8] c"\00^\10\AA", [4 x i8] c"\00_\10\AA", [4 x i8] c"\00a\00\AA", [4 x i8] c"\00b\18\AA", [4 x i8] c"\00c0\AA", [4 x i8] c"\00ph\AA", [4 x i8] c"\00\80q\AA", [4 x i8] c"\00\81\08\AA", [4 x i8] c"\00\82\00\AA", [4 x i8] c"\00\83U\AA", [4 x i8] c"\00\84\06\AA", [4 x i8] c"\00\85\06\AA", [4 x i8] c"\00\86\13\AA", [4 x i8] c"\00\87\18\AA", [4 x i8] c"\00\AA?\AA", [4 x i8] c"\00\ABD\AA", [4 x i8] c"\00\B0h\AA", [4 x i8] c"\00\B5\10\AA", [4 x i8] c"\00\B8 \AA", [4 x i8] c"\00\B9\A0\AA", [4 x i8] c"\00\BC\04\AA", [4 x i8] c"\00\8B@\AA", [4 x i8] c"\00\8C\91\AA", [4 x i8] c"\00\8D\8F\AA", [4 x i8] c"\00\8E\91\AA", [4 x i8] c"\00\8FC\AA", [4 x i8] c"\00\90\92\AA", [4 x i8] c"\00\91\89\AA", [4 x i8] c"\00\92\9D\AA", [4 x i8] c"\00\93F\AA", [4 x i8] c"\00\D6\22\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\10\AA", [4 x i8] c"\00u \AA", [4 x i8] c"\00v+\AA", [4 x i8] c"\00w6\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00\D6b\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\10\AA", [4 x i8] c"\00u \AA", [4 x i8] c"\00v+\AA", [4 x i8] c"\00w6\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00\D6\A2\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\10\AA", [4 x i8] c"\00u \AA", [4 x i8] c"\00v+\AA", [4 x i8] c"\00w6\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00L\07\AA", [4 x i8] c"\00K\E0\AA", [4 x i8] c"\00Nw\AA", [4 x i8] c"\00Y\02\AA", [4 x i8] c"\00M\0A\AA", [4 x i8] c"\00\D1<\AA", [4 x i8] c"\00 \C4\AA", [4 x i8] c"\B8\8E\00\CC", [4 x i8] c"\B8\8F\FF\CC", [4 x i8] c"\B8\FE\00\CC", [4 x i8] c"\B8\FF(\CC", [4 x i8] c"\B9\00(\CC", [4 x i8] c"\B9\01(\CC", [4 x i8] c"\B9\02(\CC", [4 x i8] c"\B9\03\00\CC", [4 x i8] c"\B9\04\00\CC", [4 x i8] c"\B9\05<\CC", [4 x i8] c"\B9\06<\CC", [4 x i8] c"\B9\07<\CC", [4 x i8] c"\B9\08<\CC", [4 x i8] c"\00\05\00\AA", [4 x i8] c"\B3\\\00\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] zeroinitializer], [148 x i8] zeroinitializer }, align 32
@po3130_rundata = internal constant { [20 x [4 x i8]], [48 x i8] } { [20 x [4 x i8]] [[4 x i8] c"\00GE\AA", [4 x i8] c"\00H\9B\AA", [4 x i8] c"\00I:\AA", [4 x i8] c"\00J\01\AA", [4 x i8] c"\00D@\AA", [4 x i8] c"\00\AD\04\AA", [4 x i8] c"\00\AE\00\AA", [4 x i8] c"\00\B0x\AA", [4 x i8] c"\00\98\02\AA", [4 x i8] c"\00\94%\AA", [4 x i8] c"\00\95%\AA", [4 x i8] c"\00Yh\AA", [4 x i8] c"\00D \AA", [4 x i8] c"\00\17P\AA", [4 x i8] c"\00\19P\AA", [4 x i8] c"\00\D1<\AA", [4 x i8] c"\00\D1<\AA", [4 x i8] c"\00\1E\06\AA", [4 x i8] c"\00\1E\06\AA", [4 x i8] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@po1200_gamma = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\138Yy\92\A7\B9\C8\D4\DF\E7\EE\F4\F9\FC\FF", [47 x i8] zeroinitializer }, align 32
@po1200_matrix = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"`\F9\E5\E7P\05\F3\E6^", [23 x i8] zeroinitializer }, align 32
@po1200_initVGA_data = internal constant { [247 x [4 x i8]], [228 x i8] } { [247 x [4 x i8]] [[4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\03\19\CC", [4 x i8] c"\B0\04\02\CC", [4 x i8] c"\B0\02\02\CC", [4 x i8] c"\B3]\00\CC", [4 x i8] c"\B3\01\01\CC", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\B3\05\01\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B3\02\B2\CC", [4 x i8] c"\B3\03\18\CC", [4 x i8] c"\B3\04\15\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\02\CC", [4 x i8] c"\B3#X\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\03\CC", [4 x i8] c"\B3\17\1F\CC", [4 x i8] c"\BC\00q\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\B0T\13\CC", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\DC\CC", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\12\05\AA", [4 x i8] c"\00\13\02\AA", [4 x i8] c"\00\1E\C6\AA", [4 x i8] c"\00!\00\AA", [4 x i8] c"\00%\02\AA", [4 x i8] c"\00<O\AA", [4 x i8] c"\00?\E0\AA", [4 x i8] c"\00B\FF\AA", [4 x i8] c"\00E4\AA", [4 x i8] c"\00U\FE\AA", [4 x i8] c"\00Y\D3\AA", [4 x i8] c"\00^\04\AA", [4 x i8] c"\00a\B8\AA", [4 x i8] c"\00b\02\AA", [4 x i8] c"\00\A71\AA", [4 x i8] c"\00\A9f\AA", [4 x i8] c"\00\B0\00\AA", [4 x i8] c"\00\B1\00\AA", [4 x i8] c"\00\B3\11\AA", [4 x i8] c"\00\B6&\AA", [4 x i8] c"\00\B7 \AA", [4 x i8] c"\00\BA\04\AA", [4 x i8] c"\00\88B\AA", [4 x i8] c"\00\89\9A\AA", [4 x i8] c"\00\8A\88\AA", [4 x i8] c"\00\8B\8E\AA", [4 x i8] c"\00\8C>\AA", [4 x i8] c"\00\8D\90\AA", [4 x i8] c"\00\8E\87\AA", [4 x i8] c"\00\8F\96\AA", [4 x i8] c"\00\90=\AA", [4 x i8] c"\00d\00\AA", [4 x i8] c"\00e\10\AA", [4 x i8] c"\00f \AA", [4 x i8] c"\00g+\AA", [4 x i8] c"\00h6\AA", [4 x i8] c"\00iI\AA", [4 x i8] c"\00jZ\AA", [4 x i8] c"\00k\7F\AA", [4 x i8] c"\00l\9B\AA", [4 x i8] c"\00m\BA\AA", [4 x i8] c"\00n\D4\AA", [4 x i8] c"\00o\EA\AA", [4 x i8] c"\00p\00\AA", [4 x i8] c"\00q\10\AA", [4 x i8] c"\00r \AA", [4 x i8] c"\00s+\AA", [4 x i8] c"\00t6\AA", [4 x i8] c"\00uI\AA", [4 x i8] c"\00vZ\AA", [4 x i8] c"\00w\7F\AA", [4 x i8] c"\00x\9B\AA", [4 x i8] c"\00y\BA\AA", [4 x i8] c"\00z\D4\AA", [4 x i8] c"\00{\EA\AA", [4 x i8] c"\00|\00\AA", [4 x i8] c"\00}\10\AA", [4 x i8] c"\00~ \AA", [4 x i8] c"\00\7F+\AA", [4 x i8] c"\00\806\AA", [4 x i8] c"\00\81I\AA", [4 x i8] c"\00\82Z\AA", [4 x i8] c"\00\83\7F\AA", [4 x i8] c"\00\84\9B\AA", [4 x i8] c"\00\85\BA\AA", [4 x i8] c"\00\86\D4\AA", [4 x i8] c"\00\87\EA\AA", [4 x i8] c"\00W*\AA", [4 x i8] c"\00\03\01\AA", [4 x i8] c"\00\04\10\AA", [4 x i8] c"\00\05\10\AA", [4 x i8] c"\00\06\10\AA", [4 x i8] c"\00\07\10\AA", [4 x i8] c"\00\08\13\AA", [4 x i8] c"\00\0A\00\AA", [4 x i8] c"\00\0B\10\AA", [4 x i8] c"\00\0C \AA", [4 x i8] c"\00\0D\18\AA", [4 x i8] c"\00\22\01\AA", [4 x i8] c"\00#`\AA", [4 x i8] c"\00%\08\AA", [4 x i8] c"\00&\82\AA", [4 x i8] c"\00.\0F\AA", [4 x i8] c"\00/\1E\AA", [4 x i8] c"\000-\AA", [4 x i8] c"\001<\AA", [4 x i8] c"\002K\AA", [4 x i8] c"\003Z\AA", [4 x i8] c"\004i\AA", [4 x i8] c"\005x\AA", [4 x i8] c"\006\87\AA", [4 x i8] c"\007\96\AA", [4 x i8] c"\008\A5\AA", [4 x i8] c"\009\B4\AA", [4 x i8] c"\00:\C3\AA", [4 x i8] c"\00;\D2\AA", [4 x i8] c"\00<\E1\AA", [4 x i8] c"\00>\FF\AA", [4 x i8] c"\00?\FF\AA", [4 x i8] c"\00@\FF\AA", [4 x i8] c"\00A\FF\AA", [4 x i8] c"\00B\FF\AA", [4 x i8] c"\00C\FF\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00 \C4\AA", [4 x i8] c"\00\13\03\AA", [4 x i8] c"\00<P\AA", [4 x i8] c"\00aj\AA", [4 x i8] c"\00Q[\AA", [4 x i8] c"\00R\91\AA", [4 x i8] c"\00SL\AA", [4 x i8] c"\00TP\AA", [4 x i8] c"\00V\02\AA", [4 x i8] c"\B6\00\00\CC", [4 x i8] c"\B6\03\03\CC", [4 x i8] c"\B6\02 \CC", [4 x i8] c"\B6\05\02\CC", [4 x i8] c"\B6\04X\CC", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13!\CC", [4 x i8] c"\B6\18\03\CC", [4 x i8] c"\B6\17\A9\CC", [4 x i8] c"\B6\16\80\CC", [4 x i8] c"\B6\22\12\CC", [4 x i8] c"\B6#\0B\CC", [4 x i8] c"\BF\C09\CC", [4 x i8] c"\BF\C1\04\CC", [4 x i8] c"\BF\CC\00\CC", [4 x i8] c"\B8\06 \CC", [4 x i8] c"\B8\07\03\CC", [4 x i8] c"\B8\08X\CC", [4 x i8] c"\B8\09\02\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\D9\0F\AA", [4 x i8] c"\00\DA\AA\AA", [4 x i8] c"\00\D9\10\AA", [4 x i8] c"\00\DA\AA\AA", [4 x i8] c"\00\D9\11\AA", [4 x i8] c"\00\DA\00\AA", [4 x i8] c"\00\D9\12\AA", [4 x i8] c"\00\DA\FF\AA", [4 x i8] c"\00\D9\13\AA", [4 x i8] c"\00\DA\FF\AA", [4 x i8] c"\00\E8\11\AA", [4 x i8] c"\00\E9\12\AA", [4 x i8] c"\00\EA\\\AA", [4 x i8] c"\00\EB\FF\AA", [4 x i8] c"\00\D8\80\AA", [4 x i8] c"\00\E6\02\AA", [4 x i8] c"\00\D6@\AA", [4 x i8] c"\00\E3\05\AA", [4 x i8] c"\00\E0@\AA", [4 x i8] c"\00\DE\03\AA", [4 x i8] c"\00\DF\03\AA", [4 x i8] c"\00\DB\02\AA", [4 x i8] c"\00\DC\00\AA", [4 x i8] c"\00\DD\03\AA", [4 x i8] c"\00\E1\08\AA", [4 x i8] c"\00\E2\01\AA", [4 x i8] c"\00\D6@\AA", [4 x i8] c"\00\E4@\AA", [4 x i8] c"\00\A8\8F\AA", [4 x i8] c"\00\B4\16\AA", [4 x i8] c"\B0\02\06\CC", [4 x i8] c"\B0\18\06\CC", [4 x i8] c"\B0\19\06\CC", [4 x i8] c"\B3]\18\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\00\B4\0E\AA", [4 x i8] c"\00\B5I\AA", [4 x i8] c"\00\B6\1C\AA", [4 x i8] c"\00\B7\96\AA", [4 x i8] c"\B6\12\F8\CC", [4 x i8] c"\B6\13=\CC", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\1A\09\AA", [4 x i8] c"\00\1B\8A\AA", [4 x i8] c"\B8'\00\CC", [4 x i8] c"\B8&`\CC", [4 x i8] c"\B8&`\CC", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\AE\84\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\96\A0\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\915\AA", [4 x i8] c"\00\92\22\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\95\85\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00M \AA", [4 x i8] c"\B8\22@\CC", [4 x i8] c"\B8#@\CC", [4 x i8] c"\B8$@\CC", [4 x i8] c"\B8\81\09\CC", [4 x i8] c"\00\00d\DD", [4 x i8] c"\00\03\01\AA", [4 x i8] c"\00F<\AA", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\16@\AA", [4 x i8] c"\00\17@\AA", [4 x i8] c"\00\18@\AA", [4 x i8] c"\00\19A\AA", [4 x i8] c"\00\03\01\AA", [4 x i8] c"\00F<\AA", [4 x i8] c"\00\00\18\DD", [4 x i8] c"\00\03\00\AA", [4 x i8] c"\00\B4\1C\AA", [4 x i8] c"\00\B5\92\AA", [4 x i8] c"\00\B69\AA", [4 x i8] c"\00\B7$\AA", [4 x i8] zeroinitializer], [228 x i8] zeroinitializer }, align 32
@poxxxx_init_common = internal constant { [96 x [4 x i8]], [96 x i8] } { [96 x [4 x i8]] [[4 x i8] c"\B3\00\04\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B3\00d\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B3\00e\CC", [4 x i8] c"\00\00\10\DD", [4 x i8] c"\B3\00g\CC", [4 x i8] c"\B0\03\09\CC", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\B3\08\01\CC", [4 x i8] c"\B3\09\0C\CC", [4 x i8] c"\B34\01\CC", [4 x i8] c"\B35\F6\CC", [4 x i8] c"\B3\02\B0\CC", [4 x i8] c"\B3\03\18\CC", [4 x i8] c"\B3\04\15\CC", [4 x i8] c"\B3 \00\CC", [4 x i8] c"\B3!\00\CC", [4 x i8] c"\B3\22\04\CC", [4 x i8] c"\B3#\00\CC", [4 x i8] c"\B3\14\00\CC", [4 x i8] c"\B3\15\00\CC", [4 x i8] c"\B3\16\04\CC", [4 x i8] c"\B3\17\FF\CC", [4 x i8] c"\B3,\03\CC", [4 x i8] c"\B3-V\CC", [4 x i8] c"\B3.\02\CC", [4 x i8] c"\B3/\0A\CC", [4 x i8] c"\B3@\00\CC", [4 x i8] c"\B3A4\CC", [4 x i8] c"\B3B\01\CC", [4 x i8] c"\B3C\E0\CC", [4 x i8] c"\BC\00q\CC", [4 x i8] c"\BC\01\01\CC", [4 x i8] c"\B3\01A\CC", [4 x i8] c"\B3M\00\CC", [4 x i8] c"\00\0B*\AA", [4 x i8] c"\00\0E\03\AA", [4 x i8] c"\00\0F\EA\AA", [4 x i8] c"\00\12\08\AA", [4 x i8] c"\00\1E\06\AA", [4 x i8] c"\00!\00\AA", [4 x i8] c"\001\1F\AA", [4 x i8] c"\0038\AA", [4 x i8] c"\006\C0\AA", [4 x i8] c"\007\C8\AA", [4 x i8] c"\00;6\AA", [4 x i8] c"\00K\FE\AA", [4 x i8] c"\00M.\AA", [4 x i8] c"\00Q\1C\AA", [4 x i8] c"\00R\01\AA", [4 x i8] c"\00U\0A\AA", [4 x i8] c"\00V\0A\AA", [4 x i8] c"\00W\07\AA", [4 x i8] c"\00X\07\AA", [4 x i8] c"\00Y\04\AA", [4 x i8] c"\00ph\AA", [4 x i8] c"\00q\04\AA", [4 x i8] c"\00r\10\AA", [4 x i8] c"\00\80q\AA", [4 x i8] c"\00\81\08\AA", [4 x i8] c"\00\82\00\AA", [4 x i8] c"\00\83U\AA", [4 x i8] c"\00\84\06\AA", [4 x i8] c"\00\85\06\AA", [4 x i8] c"\00\8B%\AA", [4 x i8] c"\00\8C\00\AA", [4 x i8] c"\00\8D\86\AA", [4 x i8] c"\00\8E\82\AA", [4 x i8] c"\00\8F-\AA", [4 x i8] c"\00\90\8B\AA", [4 x i8] c"\00\91\81\AA", [4 x i8] c"\00\92\81\AA", [4 x i8] c"\00\93#\AA", [4 x i8] c"\00\A3*\AA", [4 x i8] c"\00\A4\03\AA", [4 x i8] c"\00\A5\EA\AA", [4 x i8] c"\00\B0h\AA", [4 x i8] c"\00\BC\04\AA", [4 x i8] c"\00\BE;\AA", [4 x i8] c"\00N@\AA", [4 x i8] c"\00\06\04\AA", [4 x i8] c"\00\07\03\AA", [4 x i8] c"\00\CD\18\AA", [4 x i8] c"\00(\03\AA", [4 x i8] c"\00)\EF\AA", [4 x i8] c"\B3\05\00\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B8\00\01\CC", [4 x i8] c"\00\1D\85\AA", [4 x i8] c"\00\1E\C6\AA", [4 x i8] c"\00\00@\DD", [4 x i8] c"\00\1D\05\AA", [4 x i8] zeroinitializer], [96 x i8] zeroinitializer }, align 32
@poxxxx_init_start_3 = internal constant { [34 x [4 x i8]], [56 x i8] } { [34 x [4 x i8]] [[4 x i8] c"\00\B8(\AA", [4 x i8] c"\00\B9\1E\AA", [4 x i8] c"\00\B6\14\AA", [4 x i8] c"\00\B7\0F\AA", [4 x i8] c"\00\\\10\AA", [4 x i8] c"\00]\18\AA", [4 x i8] c"\00^$\AA", [4 x i8] c"\00_$\AA", [4 x i8] c"\00\86\1A\AA", [4 x i8] c"\00`\00\AA", [4 x i8] c"\00a\1B\AA", [4 x i8] c"\00b0\AA", [4 x i8] c"\00c@\AA", [4 x i8] c"\00\87\1A\AA", [4 x i8] c"\00d\00\AA", [4 x i8] c"\00e\08\AA", [4 x i8] c"\00f\10\AA", [4 x i8] c"\00g \AA", [4 x i8] c"\00\88\10\AA", [4 x i8] c"\00h\00\AA", [4 x i8] c"\00i\08\AA", [4 x i8] c"\00j\0F\AA", [4 x i8] c"\00k\0F\AA", [4 x i8] c"\00\89\07\AA", [4 x i8] c"\00\D5L\AA", [4 x i8] c"\00\0A\00\AA", [4 x i8] c"\00\0B*\AA", [4 x i8] c"\00\0E\03\AA", [4 x i8] c"\00\0F\EA\AA", [4 x i8] c"\00\A2\00\AA", [4 x i8] c"\00\A3*\AA", [4 x i8] c"\00\A4\03\AA", [4 x i8] c"\00\A5\EA\AA", [4 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@poxxxx_initQVGA = internal constant { [14 x [4 x i8]], [40 x i8] } { [14 x [4 x i8]] [[4 x i8] c"\00 3\AA", [4 x i8] c"\0038\AA", [4 x i8] c"\00\BB\0D\AA", [4 x i8] c"\B3\22\00\CC", [4 x i8] c"\B3#\F0\CC", [4 x i8] c"\B3\16\01\CC", [4 x i8] c"\B3\17?\CC", [4 x i8] c"\B3\02\B0\CC", [4 x i8] c"\B3\06\01\CC", [4 x i8] c"\B3\\\00\CC", [4 x i8] c"\00\04\06\AA", [4 x i8] c"\00\05?\AA", [4 x i8] c"\00\04\00\DD", [4 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@poxxxx_initVGA = internal constant { [14 x [4 x i8]], [40 x i8] } { [14 x [4 x i8]] [[4 x i8] c"\00 \11\AA", [4 x i8] c"\0038\AA", [4 x i8] c"\00\BB\0D\AA", [4 x i8] c"\B3\22\01\CC", [4 x i8] c"\B3#\E0\CC", [4 x i8] c"\B3\16\02\CC", [4 x i8] c"\B3\17\7F\CC", [4 x i8] c"\B3\02\B0\CC", [4 x i8] c"\B3\06\00\CC", [4 x i8] c"\B3\\\01\CC", [4 x i8] c"\00\04\06\AA", [4 x i8] c"\00\05?\AA", [4 x i8] c"\00\04\00\DD", [4 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@poxxxx_init_end_1 = internal constant { [12 x [4 x i8]], [48 x i8] } { [12 x [4 x i8]] [[4 x i8] c"\00G%\AA", [4 x i8] c"\00H\80\AA", [4 x i8] c"\00I\1F\AA", [4 x i8] c"\00J@\AA", [4 x i8] c"\00D@\AA", [4 x i8] c"\00\ABJ\AA", [4 x i8] c"\00\B1\00\AA", [4 x i8] c"\00\B2\04\AA", [4 x i8] c"\00\B3\08\AA", [4 x i8] c"\00\B4\0B\AA", [4 x i8] c"\00\B5\0D\AA", [4 x i8] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@poxxxx_init_end_2 = internal constant { [4 x [4 x i8]], [16 x i8] } { [4 x [4 x i8]] [[4 x i8] c"\00\1D\85\AA", [4 x i8] c"\00\1E\06\AA", [4 x i8] c"\00\1D\05\AA", [4 x i8] zeroinitializer], [16 x i8] zeroinitializer }, align 32
@poxxxx_gamma = internal constant { [40 x [4 x i8]], [32 x i8] } { [40 x [4 x i8]] [[4 x i8] c"\00\D6\22\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\0A\AA", [4 x i8] c"\00u\16\AA", [4 x i8] c"\00v%\AA", [4 x i8] c"\00w4\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00\D6b\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\0A\AA", [4 x i8] c"\00u\16\AA", [4 x i8] c"\00v%\AA", [4 x i8] c"\00w4\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] c"\00\D6\A2\AA", [4 x i8] c"\00s\00\AA", [4 x i8] c"\00t\0A\AA", [4 x i8] c"\00u\16\AA", [4 x i8] c"\00v%\AA", [4 x i8] c"\00w4\AA", [4 x i8] c"\00xI\AA", [4 x i8] c"\00yZ\AA", [4 x i8] c"\00z\7F\AA", [4 x i8] c"\00{\9B\AA", [4 x i8] c"\00|\BA\AA", [4 x i8] c"\00}\D4\AA", [4 x i8] c"\00~\EA\AA", [4 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@setwb.data = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 3627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: vc032x header packet found len %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2194, i64 2198]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 16, i64 12592, i64 30323, i64 33347]
@__sancov_gen_cov_switch_values.70 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 4294967295]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.73 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 9]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 9]
@__sancov_gen_cov_switch_values.78 = internal global [12 x i64] [i64 10, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963793, i64 9963794, i64 9963795, i64 9963796, i64 9963800, i64 9963803, i64 9963804]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 8, i64 170, i64 187, i64 204, i64 221]
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3826, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3838, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3827, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3800, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3785, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [5 x i8] c"npkt\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3149, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3169, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3172, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3175, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3179, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3182, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3185, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3188, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3191, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3194, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3197, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3200, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"vc0321_mode\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 56, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"svga_mode\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 102, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"vc0323_mode\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 68, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant [8 x i8] c"bi_mode\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 85, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3015, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"vc0321_probe_data\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2804, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"vc0323_probe_data\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2845, i32 33 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3036, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2972, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2992, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2925, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2929, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2907, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2960, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2949, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3738, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3694, i32 35 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3776, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3064, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3066, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3084, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3371, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant [15 x i8] c"ov7660_freq_tb\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3322, i32 20 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"ov7660_NoFlicker\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1799, i32 17 }
@___asan_gen_.310 = private unnamed_addr constant [12 x i8] c"ov7660_50HZ\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1785, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant [12 x i8] c"ov7660_60HZ\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1792, i32 17 }
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"mi1320_soc_init\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3427, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c"mi1320_soc_InitSXGA\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1141, i32 17 }
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"mi1320_soc_InitVGA\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 925, i32 17 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"mi1320_soc_InitQVGA\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1028, i32 17 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"hv7131r_gamma\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1457, i32 17 }
@___asan_gen_.331 = private unnamed_addr constant [15 x i8] c"hv7131r_matrix\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1461, i32 17 }
@___asan_gen_.334 = private unnamed_addr constant [22 x i8] c"hv7131r_initQVGA_data\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1552, i32 17 }
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"hv7131r_initVGA_data\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1464, i32 17 }
@___asan_gen_.340 = private unnamed_addr constant [13 x i8] c"ov7660_gamma\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1650, i32 17 }
@___asan_gen_.343 = private unnamed_addr constant [14 x i8] c"ov7660_matrix\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1654, i32 17 }
@___asan_gen_.346 = private unnamed_addr constant [21 x i8] c"ov7660_initQVGA_data\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1716, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c"ov7660_initVGA_data\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1657, i32 17 }
@___asan_gen_.352 = private unnamed_addr constant [13 x i8] c"mi1320_gamma\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 768, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant [14 x i8] c"mi0360_matrix\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 115, i32 17 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c"mi0360_initQVGA_JPG\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 228, i32 17 }
@___asan_gen_.361 = private unnamed_addr constant [19 x i8] c"mi0360_initVGA_JPG\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 119, i32 17 }
@___asan_gen_.364 = private unnamed_addr constant [14 x i8] c"mi1320_matrix\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 772, i32 17 }
@___asan_gen_.367 = private unnamed_addr constant [23 x i8] c"mi1310_socinitQVGA_JPG\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 500, i32 17 }
@___asan_gen_.370 = private unnamed_addr constant [22 x i8] c"mi1310_socinitVGA_JPG\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 348, i32 17 }
@___asan_gen_.373 = private unnamed_addr constant [24 x i8] c"mi1310_soc_InitSXGA_JPG\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 574, i32 17 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"mi1320_initQVGA_data\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 856, i32 17 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c"mi1320_initVGA_data\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 775, i32 17 }
@___asan_gen_.382 = private unnamed_addr constant [15 x i8] c"ov7670_InitVGA\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1804, i32 17 }
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"ov7670_InitQVGA\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2042, i32 17 }
@___asan_gen_.388 = private unnamed_addr constant [13 x i8] c"po3130_gamma\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1264, i32 17 }
@___asan_gen_.391 = private unnamed_addr constant [14 x i8] c"po3130_matrix\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1268, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant [21 x i8] c"po3130_initQVGA_data\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1371, i32 17 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c"po3130_initVGA_data\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1272, i32 17 }
@___asan_gen_.400 = private unnamed_addr constant [15 x i8] c"po3130_rundata\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 1356, i32 17 }
@___asan_gen_.403 = private unnamed_addr constant [13 x i8] c"po1200_gamma\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2291, i32 17 }
@___asan_gen_.406 = private unnamed_addr constant [14 x i8] c"po1200_matrix\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2295, i32 17 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c"po1200_initVGA_data\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2298, i32 17 }
@___asan_gen_.412 = private unnamed_addr constant [19 x i8] c"poxxxx_init_common\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2560, i32 17 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c"poxxxx_init_start_3\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2704, i32 17 }
@___asan_gen_.418 = private unnamed_addr constant [16 x i8] c"poxxxx_initQVGA\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2756, i32 17 }
@___asan_gen_.421 = private unnamed_addr constant [15 x i8] c"poxxxx_initVGA\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2740, i32 17 }
@___asan_gen_.424 = private unnamed_addr constant [18 x i8] c"poxxxx_init_end_1\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2772, i32 17 }
@___asan_gen_.427 = private unnamed_addr constant [18 x i8] c"poxxxx_init_end_2\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2786, i32 17 }
@___asan_gen_.430 = private unnamed_addr constant [13 x i8] c"poxxxx_gamma\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 2660, i32 17 }
@___asan_gen_.433 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3414, i32 18 }
@___asan_gen_.436 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.443 = private constant [36 x i8] c"../drivers/media/usb/gspca/vc032x.c\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3626, i32 3 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_vc032x__307_3838_sd_driver_init6, ptr @i2c_write._entry, ptr @i2c_write._entry.61, ptr @i2c_write._entry.64, ptr @i2c_write._entry_ptr, ptr @i2c_write._entry_ptr.63, ptr @i2c_write._entry_ptr.66, ptr @read_sensor_register._entry, ptr @read_sensor_register._entry.42, ptr @read_sensor_register._entry_ptr, ptr @read_sensor_register._entry_ptr.44, ptr @reg_r._entry, ptr @reg_r._entry.47, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.49, ptr @reg_r_i._entry, ptr @reg_r_i._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @reg_w_i._entry, ptr @reg_w_i._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.11, ptr @sd_init._entry.14, ptr @sd_init._entry.17, ptr @sd_init._entry.20, ptr @sd_init._entry.23, ptr @sd_init._entry.26, ptr @sd_init._entry.29, ptr @sd_init._entry.32, ptr @sd_init._entry.5, ptr @sd_init._entry.8, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.10, ptr @sd_init._entry_ptr.13, ptr @sd_init._entry_ptr.16, ptr @sd_init._entry_ptr.19, ptr @sd_init._entry_ptr.22, ptr @sd_init._entry_ptr.25, ptr @sd_init._entry_ptr.28, ptr @sd_init._entry_ptr.31, ptr @sd_init._entry_ptr.34, ptr @sd_init._entry_ptr.7, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry_ptr, ptr @vc032x_probe_sensor._entry, ptr @vc032x_probe_sensor._entry.37, ptr @vc032x_probe_sensor._entry_ptr, ptr @vc032x_probe_sensor._entry_ptr.39, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sd_init.npkt, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @vc0321_mode, ptr @svga_mode, ptr @vc0323_mode, ptr @bi_mode, ptr @.str.35, ptr @.str.36, ptr @vc0321_probe_data, ptr @vc0323_probe_data, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @sd_init_controls._key, ptr @.str.56, ptr @sd_ctrl_ops, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @setautogain.data, ptr @setlightfreq.ov7660_freq_tb, ptr @ov7660_NoFlicker, ptr @ov7660_50HZ, ptr @ov7660_60HZ, ptr @sd_start.mi1320_soc_init, ptr @mi1320_soc_InitSXGA, ptr @mi1320_soc_InitVGA, ptr @mi1320_soc_InitQVGA, ptr @hv7131r_gamma, ptr @hv7131r_matrix, ptr @hv7131r_initQVGA_data, ptr @hv7131r_initVGA_data, ptr @ov7660_gamma, ptr @ov7660_matrix, ptr @ov7660_initQVGA_data, ptr @ov7660_initVGA_data, ptr @mi1320_gamma, ptr @mi0360_matrix, ptr @mi0360_initQVGA_JPG, ptr @mi0360_initVGA_JPG, ptr @mi1320_matrix, ptr @mi1310_socinitQVGA_JPG, ptr @mi1310_socinitVGA_JPG, ptr @mi1310_soc_InitSXGA_JPG, ptr @mi1320_initQVGA_data, ptr @mi1320_initVGA_data, ptr @ov7670_InitVGA, ptr @ov7670_InitQVGA, ptr @po3130_gamma, ptr @po3130_matrix, ptr @po3130_initQVGA_data, ptr @po3130_initVGA_data, ptr @po3130_rundata, ptr @po1200_gamma, ptr @po1200_matrix, ptr @po1200_initVGA_data, ptr @poxxxx_init_common, ptr @poxxxx_init_start_3, ptr @poxxxx_initQVGA, ptr @poxxxx_initVGA, ptr @poxxxx_init_end_1, ptr @poxxxx_init_end_2, ptr @poxxxx_gamma, ptr @setwb.data, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init.npkt to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc0321_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svga_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc0323_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bi_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc032x_probe_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc0321_probe_data to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc0323_probe_data to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc032x_probe_sensor._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_sensor_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_sensor_register._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_i._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_write._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setautogain.data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setlightfreq.ov7660_freq_tb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_NoFlicker to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_50HZ to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_60HZ to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.mi1320_soc_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_soc_InitSXGA to i32), i32 484, i32 608, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_soc_InitVGA to i32), i32 404, i32 512, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_soc_InitQVGA to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_gamma to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_initQVGA_data to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_initVGA_data to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_gamma to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_initQVGA_data to i32), i32 344, i32 416, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_initVGA_data to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_gamma to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_initQVGA_JPG to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_initVGA_JPG to i32), i32 428, i32 544, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1310_socinitQVGA_JPG to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1310_socinitVGA_JPG to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1310_soc_InitSXGA_JPG to i32), i32 764, i32 928, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_initQVGA_data to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi1320_initVGA_data to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_InitVGA to i32), i32 940, i32 1184, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7670_InitQVGA to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po3130_gamma to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po3130_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po3130_initQVGA_data to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po3130_initVGA_data to i32), i32 620, i32 768, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po3130_rundata to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1200_gamma to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1200_matrix to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1200_initVGA_data to i32), i32 988, i32 1216, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_init_common to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_init_start_3 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_initQVGA to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_initVGA to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_init_end_1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_init_end_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poxxxx_gamma to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setwb.data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %shr = lshr i32 %1, 8
  %conv = trunc i32 %shr to i8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %bridge, align 1
  %3 = load i32, ptr %driver_info, align 4
  %conv2 = trunc i32 %3 to i8
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %flags, align 1
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %5 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1133, i16 %6)
  %cmp = icmp eq i16 %6, 1133
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %land.lhs.true.if.end_crit_edge [
    i16 2194, label %land.lhs.true.if.then_crit_edge
    i16 2198, label %land.lhs.true.if.then_crit_edge18
  ]

land.lhs.true.if.then_crit_edge18:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge18
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %sensor, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp.not = icmp eq i8 %1, 9
  br i1 %cmp.not, label %entry.do.body148_crit_edge, label %if.then

entry.do.body148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body148

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %5 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp slt i32 %6, 0
  br i1 %cmp.i.i, label %if.then.i.if.end.i_crit_edge, label %do.body.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i.i:                                      ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp1.i.i = icmp sgt i32 %7, 6
  br i1 %cmp1.i.i, label %do.end7.i.i, label %do.body.i.i.if.end.i.i.i_crit_edge

do.body.i.i.if.end.i.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.end7.i.i:                                      ; preds = %do.body.i.i
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i.i, i32 noundef 160, i32 noundef 1, i32 noundef 45825) #10
  %8 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr.i.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.i.i.i = icmp slt i32 %.pr.i.i, 0
  br i1 %cmp.i.i.i, label %do.end7.i.i.if.end.i_crit_edge, label %do.end7.i.i.if.end.i.i.i_crit_edge

do.end7.i.i.if.end.i.i.i_crit_edge:               ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.end7.i.i.if.end.i_crit_edge:                   ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i.i:                                     ; preds = %do.end7.i.i.if.end.i.i.i_crit_edge, %do.body.i.i.if.end.i.i.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i.i = shl i32 %12, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -19711, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.if.end.sink.split.i_crit_edge, label %reg_w.exit.i

if.end.i.i.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

reg_w.exit.i:                                     ; preds = %if.end.i.i.i
  %13 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i102.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i102.i, label %reg_w.exit.i.if.end.i_crit_edge, label %do.body.i104.i

reg_w.exit.i.if.end.i_crit_edge:                  ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i104.i:                                   ; preds = %reg_w.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp1.i103.i = icmp sgt i32 %14, 6
  br i1 %cmp1.i103.i, label %do.end7.i109.i, label %do.body.i104.i.if.end.i.i115.i_crit_edge

do.body.i104.i.if.end.i.i115.i_crit_edge:         ; preds = %do.body.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i115.i

do.end7.i109.i:                                   ; preds = %do.body.i104.i
  %name.i105.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i105.i, i32 noundef 137, i32 noundef 61695, i32 noundef 65535) #10
  %15 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i107.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i107.i)
  %cmp.i.i108.i = icmp slt i32 %.pr.i107.i, 0
  br i1 %cmp.i.i108.i, label %do.end7.i109.i.if.end.i_crit_edge, label %do.end7.i109.i.if.end.i.i115.i_crit_edge

do.end7.i109.i.if.end.i.i115.i_crit_edge:         ; preds = %do.end7.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i115.i

do.end7.i109.i.if.end.i_crit_edge:                ; preds = %do.end7.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i115.i:                                  ; preds = %do.end7.i109.i.if.end.i.i115.i_crit_edge, %do.body.i104.i.if.end.i.i115.i_crit_edge
  %16 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i111.i = shl i32 %19, 8
  %or.i.i112.i = or i32 %shl.i.i.i111.i, -2147483648
  %call2.i.i113.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i112.i, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext -3841, i16 noundef zeroext -1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i113.i)
  %cmp3.i.i114.i = icmp slt i32 %call2.i.i113.i, 0
  br i1 %cmp3.i.i114.i, label %if.end.i.i115.i.if.end.sink.split.i_crit_edge, label %if.end.i.i115.i.if.end.i_crit_edge

if.end.i.i115.i.if.end.i_crit_edge:               ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i115.i.if.end.sink.split.i_crit_edge:    ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end.i.i115.i.if.end.sink.split.i_crit_edge, %if.end.i.i.i.if.end.sink.split.i_crit_edge
  %call2.i.i.sink344.i = phi i32 [ %call2.i.i.i, %if.end.i.i.i.if.end.sink.split.i_crit_edge ], [ %call2.i.i113.i, %if.end.i.i115.i.if.end.sink.split.i_crit_edge ]
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i.sink344.i) #10
  %20 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i.i.sink344.i, ptr %usb_err.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.end.i.i115.i.if.end.i_crit_edge, %do.end7.i109.i.if.end.i_crit_edge, %reg_w.exit.i.if.end.i_crit_edge, %do.end7.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -16433, i16 noundef zeroext 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp sgt i32 %21, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %bridge.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %22 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bridge.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp5.i = icmp eq i8 %23, 0
  %cond.i = select i1 %cmp5.i, i32 1, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv7.i = zext i8 %27 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i, i32 noundef %cond.i, i32 noundef %conv7.i) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.end.i.do.end10.i_crit_edge
  %bridge11.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %28 = ptrtoint ptr %bridge11.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bridge11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp13.i = icmp eq i8 %29, 0
  %..i = select i1 %cmp13.i, i32 17, i32 18
  %vc0321_probe_data.vc0323_probe_data.i = select i1 %cmp13.i, ptr @vc0321_probe_data, ptr @vc0323_probe_data
  %usb_err.i119.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %name.i123.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %dev.i.i128.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end65.i.for.body.i_crit_edge, %do.end10.i
  %ptsensor_info.1334.i = phi ptr [ %vc0321_probe_data.vc0323_probe_data.i, %do.end10.i ], [ %incdec.ptr.i, %if.end65.i.for.body.i_crit_edge ]
  %i.0331.i = phi i32 [ 0, %do.end10.i ], [ %inc.i, %if.end65.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i120.i = icmp slt i32 %31, 0
  br i1 %cmp.i120.i, label %for.body.i.reg_w.exit247.i_crit_edge, label %do.body.i122.i

for.body.i.reg_w.exit247.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i122.i:                                   ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp1.i121.i = icmp sgt i32 %32, 6
  br i1 %cmp1.i121.i, label %do.end7.i127.i, label %do.body.i122.i.if.end.i.i133.i_crit_edge

do.body.i122.i.if.end.i.i133.i_crit_edge:         ; preds = %do.body.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i133.i

do.end7.i127.i:                                   ; preds = %do.body.i122.i
  %call.i124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef 2, i32 noundef 45876) #10
  %33 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i125.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i125.i)
  %cmp.i.i126.i = icmp slt i32 %.pr.i125.i, 0
  br i1 %cmp.i.i126.i, label %do.end7.i127.i.reg_w.exit247.i_crit_edge, label %do.end7.i127.i.if.end.i.i133.i_crit_edge

do.end7.i127.i.if.end.i.i133.i_crit_edge:         ; preds = %do.end7.i127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i133.i

do.end7.i127.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i133.i:                                  ; preds = %do.end7.i127.i.if.end.i.i133.i_crit_edge, %do.body.i122.i.if.end.i.i133.i_crit_edge
  %34 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i128.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i.i129.i = shl i32 %37, 8
  %or.i.i130.i = or i32 %shl.i.i.i129.i, -2147483648
  %call2.i.i131.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i.i130.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext -19660, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i131.i)
  %cmp3.i.i132.i = icmp slt i32 %call2.i.i131.i, 0
  br i1 %cmp3.i.i132.i, label %if.end.i.i133.i.reg_w.exit247.sink.split.i_crit_edge, label %reg_w.exit136.i

if.end.i.i133.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit136.i:                                  ; preds = %if.end.i.i133.i
  %38 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr249.i = load i32, ptr %usb_err.i119.i, align 8
  %m1.i = getelementptr inbounds %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 0, i32 4
  %39 = ptrtoint ptr %m1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %m1.i, align 2
  %conv19.i = zext i8 %40 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr249.i)
  %cmp.i138.i = icmp slt i32 %.pr249.i, 0
  br i1 %cmp.i138.i, label %reg_w.exit136.i.reg_w.exit247.i_crit_edge, label %do.body.i140.i

reg_w.exit136.i.reg_w.exit247.i_crit_edge:        ; preds = %reg_w.exit136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i140.i:                                   ; preds = %reg_w.exit136.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp1.i139.i = icmp sgt i32 %41, 6
  br i1 %cmp1.i139.i, label %do.end7.i145.i, label %do.body.i140.i.if.end.i.i151.i_crit_edge

do.body.i140.i.if.end.i.i151.i_crit_edge:         ; preds = %do.body.i140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i151.i

do.end7.i145.i:                                   ; preds = %do.body.i140.i
  %conv4.i.i = zext i8 %40 to i32
  %call.i142.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef %conv4.i.i, i32 noundef 45824) #10
  %42 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i143.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i143.i)
  %cmp.i.i144.i = icmp slt i32 %.pr.i143.i, 0
  br i1 %cmp.i.i144.i, label %do.end7.i145.i.reg_w.exit247.i_crit_edge, label %do.end7.i145.i.if.end.i.i151.i_crit_edge

do.end7.i145.i.if.end.i.i151.i_crit_edge:         ; preds = %do.end7.i145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i151.i

do.end7.i145.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i151.i:                                  ; preds = %do.end7.i145.i.if.end.i.i151.i_crit_edge, %do.body.i140.i.if.end.i.i151.i_crit_edge
  %43 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i128.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i.i147.i = shl i32 %46, 8
  %or.i.i148.i = or i32 %shl.i.i.i147.i, -2147483648
  %call2.i.i149.i = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i.i148.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv19.i, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i149.i)
  %cmp3.i.i150.i = icmp slt i32 %call2.i.i149.i, 0
  br i1 %cmp3.i.i150.i, label %if.end.i.i151.i.reg_w.exit247.sink.split.i_crit_edge, label %reg_w.exit154.i

if.end.i.i151.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit154.i:                                  ; preds = %if.end.i.i151.i
  %47 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr253.pr.i = load i32, ptr %usb_err.i119.i, align 8
  %m2.i = getelementptr inbounds %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 0, i32 5
  %48 = ptrtoint ptr %m2.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %m2.i, align 1
  %conv20.i = zext i8 %49 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr253.pr.i)
  %cmp.i156.i = icmp slt i32 %.pr253.pr.i, 0
  br i1 %cmp.i156.i, label %reg_w.exit154.i.reg_w.exit247.i_crit_edge, label %do.body.i158.i

reg_w.exit154.i.reg_w.exit247.i_crit_edge:        ; preds = %reg_w.exit154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i158.i:                                   ; preds = %reg_w.exit154.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %50)
  %cmp1.i157.i = icmp sgt i32 %50, 6
  br i1 %cmp1.i157.i, label %do.end7.i164.i, label %do.body.i158.i.if.end.i.i170.i_crit_edge

do.body.i158.i.if.end.i.i170.i_crit_edge:         ; preds = %do.body.i158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i170.i

do.end7.i164.i:                                   ; preds = %do.body.i158.i
  %conv4.i160.i = zext i8 %49 to i32
  %call.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef %conv4.i160.i, i32 noundef 45824) #10
  %51 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.i162.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i162.i)
  %cmp.i.i163.i = icmp slt i32 %.pr.i162.i, 0
  br i1 %cmp.i.i163.i, label %do.end7.i164.i.reg_w.exit247.i_crit_edge, label %do.end7.i164.i.if.end.i.i170.i_crit_edge

do.end7.i164.i.if.end.i.i170.i_crit_edge:         ; preds = %do.end7.i164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i170.i

do.end7.i164.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i170.i:                                  ; preds = %do.end7.i164.i.if.end.i.i170.i_crit_edge, %do.body.i158.i.if.end.i.i170.i_crit_edge
  %52 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i128.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i166.i = shl i32 %55, 8
  %or.i.i167.i = or i32 %shl.i.i.i166.i, -2147483648
  %call2.i.i168.i = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i167.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv20.i, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i168.i)
  %cmp3.i.i169.i = icmp slt i32 %call2.i.i168.i, 0
  br i1 %cmp3.i.i169.i, label %if.end.i.i170.i.reg_w.exit247.sink.split.i_crit_edge, label %reg_w.exit173.i

if.end.i.i170.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit173.i:                                  ; preds = %if.end.i.i170.i
  %56 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr257.pr.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr257.pr.i)
  %cmp.i175.i = icmp slt i32 %.pr257.pr.i, 0
  br i1 %cmp.i175.i, label %reg_w.exit173.i.reg_w.exit247.i_crit_edge, label %do.body.i177.i

reg_w.exit173.i.reg_w.exit247.i_crit_edge:        ; preds = %reg_w.exit173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i177.i:                                   ; preds = %reg_w.exit173.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %57 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %cmp1.i176.i = icmp sgt i32 %57, 6
  br i1 %cmp1.i176.i, label %do.end7.i182.i, label %do.body.i177.i.if.end.i.i188.i_crit_edge

do.body.i177.i.if.end.i.i188.i_crit_edge:         ; preds = %do.body.i177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i188.i

do.end7.i182.i:                                   ; preds = %do.body.i177.i
  %call.i179.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef 1, i32 noundef 45832) #10
  %58 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr.i180.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i180.i)
  %cmp.i.i181.i = icmp slt i32 %.pr.i180.i, 0
  br i1 %cmp.i.i181.i, label %do.end7.i182.i.reg_w.exit247.i_crit_edge, label %do.end7.i182.i.if.end.i.i188.i_crit_edge

do.end7.i182.i.if.end.i.i188.i_crit_edge:         ; preds = %do.end7.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i188.i

do.end7.i182.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i188.i:                                  ; preds = %do.end7.i182.i.if.end.i.i188.i_crit_edge, %do.body.i177.i.if.end.i.i188.i_crit_edge
  %59 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i128.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i.i184.i = shl i32 %62, 8
  %or.i.i185.i = or i32 %shl.i.i.i184.i, -2147483648
  %call2.i.i186.i = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i.i185.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -19704, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i186.i)
  %cmp3.i.i187.i = icmp slt i32 %call2.i.i186.i, 0
  br i1 %cmp3.i.i187.i, label %if.end.i.i188.i.reg_w.exit247.sink.split.i_crit_edge, label %reg_w.exit191.i

if.end.i.i188.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit191.i:                                  ; preds = %if.end.i.i188.i
  %63 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr259.pr.pr.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr259.pr.pr.i)
  %cmp.i193.i = icmp slt i32 %.pr259.pr.pr.i, 0
  br i1 %cmp.i193.i, label %reg_w.exit191.i.reg_w.exit247.i_crit_edge, label %do.body.i195.i

reg_w.exit191.i.reg_w.exit247.i_crit_edge:        ; preds = %reg_w.exit191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i195.i:                                   ; preds = %reg_w.exit191.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %64 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %64)
  %cmp1.i194.i = icmp sgt i32 %64, 6
  br i1 %cmp1.i194.i, label %do.end7.i200.i, label %do.body.i195.i.if.end.i.i206.i_crit_edge

do.body.i195.i.if.end.i.i206.i_crit_edge:         ; preds = %do.body.i195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i206.i

do.end7.i200.i:                                   ; preds = %do.body.i195.i
  %call.i197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef 12, i32 noundef 45833) #10
  %65 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr.i198.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i198.i)
  %cmp.i.i199.i = icmp slt i32 %.pr.i198.i, 0
  br i1 %cmp.i.i199.i, label %do.end7.i200.i.reg_w.exit247.i_crit_edge, label %do.end7.i200.i.if.end.i.i206.i_crit_edge

do.end7.i200.i.if.end.i.i206.i_crit_edge:         ; preds = %do.end7.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i206.i

do.end7.i200.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i206.i:                                  ; preds = %do.end7.i200.i.if.end.i.i206.i_crit_edge, %do.body.i195.i.if.end.i.i206.i_crit_edge
  %66 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i128.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i.i202.i = shl i32 %69, 8
  %or.i.i203.i = or i32 %shl.i.i.i202.i, -2147483648
  %call2.i.i204.i = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i.i203.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 12, i16 noundef zeroext -19703, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i204.i)
  %cmp3.i.i205.i = icmp slt i32 %call2.i.i204.i, 0
  br i1 %cmp3.i.i205.i, label %if.end.i.i206.i.reg_w.exit247.sink.split.i_crit_edge, label %reg_w.exit209.i

if.end.i.i206.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit209.i:                                  ; preds = %if.end.i.i206.i
  %70 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr261.pr.pr.i = load i32, ptr %usb_err.i119.i, align 8
  %I2cAdd.i = getelementptr inbounds %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 0, i32 1
  %71 = ptrtoint ptr %I2cAdd.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %I2cAdd.i, align 1
  %conv21.i = zext i8 %72 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr261.pr.pr.i)
  %cmp.i211.i = icmp slt i32 %.pr261.pr.pr.i, 0
  br i1 %cmp.i211.i, label %reg_w.exit209.i.reg_w.exit247.i_crit_edge, label %do.body.i213.i

reg_w.exit209.i.reg_w.exit247.i_crit_edge:        ; preds = %reg_w.exit209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i213.i:                                   ; preds = %reg_w.exit209.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %73 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %73)
  %cmp1.i212.i = icmp sgt i32 %73, 6
  br i1 %cmp1.i212.i, label %do.end7.i219.i, label %do.body.i213.i.if.end.i.i225.i_crit_edge

do.body.i213.i.if.end.i.i225.i_crit_edge:         ; preds = %do.body.i213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i225.i

do.end7.i219.i:                                   ; preds = %do.body.i213.i
  %conv4.i215.i = zext i8 %72 to i32
  %call.i216.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef %conv4.i215.i, i32 noundef 45877) #10
  %74 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr.i217.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i217.i)
  %cmp.i.i218.i = icmp slt i32 %.pr.i217.i, 0
  br i1 %cmp.i.i218.i, label %do.end7.i219.i.reg_w.exit247.i_crit_edge, label %do.end7.i219.i.if.end.i.i225.i_crit_edge

do.end7.i219.i.if.end.i.i225.i_crit_edge:         ; preds = %do.end7.i219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i225.i

do.end7.i219.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i225.i:                                  ; preds = %do.end7.i219.i.if.end.i.i225.i_crit_edge, %do.body.i213.i.if.end.i.i225.i_crit_edge
  %75 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i.i128.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i.i221.i = shl i32 %78, 8
  %or.i.i222.i = or i32 %shl.i.i.i221.i, -2147483648
  %call2.i.i223.i = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i.i222.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv21.i, i16 noundef zeroext -19659, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i223.i)
  %cmp3.i.i224.i = icmp slt i32 %call2.i.i223.i, 0
  br i1 %cmp3.i.i224.i, label %if.end.i.i225.i.reg_w.exit247.sink.split.i_crit_edge, label %reg_w.exit228.i

if.end.i.i225.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i225.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit228.i:                                  ; preds = %if.end.i.i225.i
  %79 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr265.pr.pr.i = load i32, ptr %usb_err.i119.i, align 8
  %op.i = getelementptr inbounds %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 0, i32 6
  %80 = ptrtoint ptr %op.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %op.i, align 2
  %conv22.i = zext i8 %81 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr265.pr.pr.i)
  %cmp.i230.i = icmp slt i32 %.pr265.pr.pr.i, 0
  br i1 %cmp.i230.i, label %reg_w.exit228.i.reg_w.exit247.i_crit_edge, label %do.body.i232.i

reg_w.exit228.i.reg_w.exit247.i_crit_edge:        ; preds = %reg_w.exit228.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

do.body.i232.i:                                   ; preds = %reg_w.exit228.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %82 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %82)
  %cmp1.i231.i = icmp sgt i32 %82, 6
  br i1 %cmp1.i231.i, label %do.end7.i238.i, label %do.body.i232.i.if.end.i.i244.i_crit_edge

do.body.i232.i.if.end.i.i244.i_crit_edge:         ; preds = %do.body.i232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i244.i

do.end7.i238.i:                                   ; preds = %do.body.i232.i
  %conv4.i234.i = zext i8 %81 to i32
  %call.i235.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i123.i, i32 noundef 160, i32 noundef %conv4.i234.i, i32 noundef 45825) #10
  %83 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr.i236.i = load i32, ptr %usb_err.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i236.i)
  %cmp.i.i237.i = icmp slt i32 %.pr.i236.i, 0
  br i1 %cmp.i.i237.i, label %do.end7.i238.i.reg_w.exit247.i_crit_edge, label %do.end7.i238.i.if.end.i.i244.i_crit_edge

do.end7.i238.i.if.end.i.i244.i_crit_edge:         ; preds = %do.end7.i238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i244.i

do.end7.i238.i.reg_w.exit247.i_crit_edge:         ; preds = %do.end7.i238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i244.i:                                  ; preds = %do.end7.i238.i.if.end.i.i244.i_crit_edge, %do.body.i232.i.if.end.i.i244.i_crit_edge
  %84 = ptrtoint ptr %dev.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i128.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i.i.i240.i = shl i32 %87, 8
  %or.i.i241.i = or i32 %shl.i.i.i240.i, -2147483648
  %call2.i.i242.i = tail call i32 @usb_control_msg(ptr noundef %85, i32 noundef %or.i.i241.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv22.i, i16 noundef zeroext -19711, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i242.i)
  %cmp3.i.i243.i = icmp slt i32 %call2.i.i242.i, 0
  br i1 %cmp3.i.i243.i, label %if.end.i.i244.i.reg_w.exit247.sink.split.i_crit_edge, label %if.end.i.i244.i.reg_w.exit247.i_crit_edge

if.end.i.i244.i.reg_w.exit247.i_crit_edge:        ; preds = %if.end.i.i244.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.i

if.end.i.i244.i.reg_w.exit247.sink.split.i_crit_edge: ; preds = %if.end.i.i244.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit247.sink.split.i

reg_w.exit247.sink.split.i:                       ; preds = %if.end.i.i244.i.reg_w.exit247.sink.split.i_crit_edge, %if.end.i.i225.i.reg_w.exit247.sink.split.i_crit_edge, %if.end.i.i206.i.reg_w.exit247.sink.split.i_crit_edge, %if.end.i.i188.i.reg_w.exit247.sink.split.i_crit_edge, %if.end.i.i170.i.reg_w.exit247.sink.split.i_crit_edge, %if.end.i.i151.i.reg_w.exit247.sink.split.i_crit_edge, %if.end.i.i133.i.reg_w.exit247.sink.split.i_crit_edge
  %call2.i.i168.sink345.i = phi i32 [ %call2.i.i131.i, %if.end.i.i133.i.reg_w.exit247.sink.split.i_crit_edge ], [ %call2.i.i149.i, %if.end.i.i151.i.reg_w.exit247.sink.split.i_crit_edge ], [ %call2.i.i168.i, %if.end.i.i170.i.reg_w.exit247.sink.split.i_crit_edge ], [ %call2.i.i186.i, %if.end.i.i188.i.reg_w.exit247.sink.split.i_crit_edge ], [ %call2.i.i204.i, %if.end.i.i206.i.reg_w.exit247.sink.split.i_crit_edge ], [ %call2.i.i223.i, %if.end.i.i225.i.reg_w.exit247.sink.split.i_crit_edge ], [ %call2.i.i242.i, %if.end.i.i244.i.reg_w.exit247.sink.split.i_crit_edge ]
  %call6.i.i171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i168.sink345.i) #10
  %88 = ptrtoint ptr %usb_err.i119.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call2.i.i168.sink345.i, ptr %usb_err.i119.i, align 8
  br label %reg_w.exit247.i

reg_w.exit247.i:                                  ; preds = %reg_w.exit247.sink.split.i, %if.end.i.i244.i.reg_w.exit247.i_crit_edge, %do.end7.i238.i.reg_w.exit247.i_crit_edge, %reg_w.exit228.i.reg_w.exit247.i_crit_edge, %do.end7.i219.i.reg_w.exit247.i_crit_edge, %reg_w.exit209.i.reg_w.exit247.i_crit_edge, %do.end7.i200.i.reg_w.exit247.i_crit_edge, %reg_w.exit191.i.reg_w.exit247.i_crit_edge, %do.end7.i182.i.reg_w.exit247.i_crit_edge, %reg_w.exit173.i.reg_w.exit247.i_crit_edge, %do.end7.i164.i.reg_w.exit247.i_crit_edge, %reg_w.exit154.i.reg_w.exit247.i_crit_edge, %do.end7.i145.i.reg_w.exit247.i_crit_edge, %reg_w.exit136.i.reg_w.exit247.i_crit_edge, %do.end7.i127.i.reg_w.exit247.i_crit_edge, %for.body.i.reg_w.exit247.i_crit_edge
  %IdAdd.i = getelementptr inbounds %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 0, i32 2
  %89 = ptrtoint ptr %IdAdd.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %IdAdd.i, align 2
  %conv23.i = zext i8 %90 to i16
  %call24.i = tail call fastcc zeroext i16 @read_sensor_register(ptr noundef %gspca_dev, i16 noundef zeroext %conv23.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call24.i)
  %cmp26.i = icmp eq i16 %call24.i, 0
  br i1 %cmp26.i, label %land.lhs.true.i, label %reg_w.exit247.i.do.body39.i_crit_edge

reg_w.exit247.i.do.body39.i_crit_edge:            ; preds = %reg_w.exit247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39.i

land.lhs.true.i:                                  ; preds = %reg_w.exit247.i
  %91 = ptrtoint ptr %IdAdd.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %IdAdd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %92)
  %cmp30.i = icmp eq i8 %92, -126
  br i1 %cmp30.i, label %if.end34.i, label %land.lhs.true.i.if.end65.i_crit_edge

land.lhs.true.i.if.end65.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.end34.i:                                       ; preds = %land.lhs.true.i
  %call33.i = tail call fastcc zeroext i16 @read_sensor_register(ptr noundef %gspca_dev, i16 noundef zeroext 131) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call33.i)
  %cmp36.not.i = icmp eq i16 %call33.i, 0
  br i1 %cmp36.not.i, label %if.end34.i.if.end65.i_crit_edge, label %if.end34.i.do.body39.i_crit_edge

if.end34.i.do.body39.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39.i

if.end34.i.if.end65.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

do.body39.i:                                      ; preds = %if.end34.i.do.body39.i_crit_edge, %reg_w.exit247.i.do.body39.i_crit_edge
  %value.0276.i = phi i16 [ %call33.i, %if.end34.i.do.body39.i_crit_edge ], [ %call24.i, %reg_w.exit247.i.do.body39.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %93 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp40.i = icmp sgt i32 %93, 0
  br i1 %cmp40.i, label %do.end45.i, label %do.body39.i.do.end54.i_crit_edge

do.body39.i.do.end54.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end54.i

do.end45.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv35277.i = zext i16 %value.0276.i to i32
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i123.i, i32 noundef %conv35277.i, i32 noundef %i.0331.i) #10
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end45.i, %do.body39.i.do.end54.i_crit_edge
  %VpId.i = getelementptr inbounds %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 0, i32 3
  %94 = ptrtoint ptr %VpId.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %VpId.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %value.0276.i, i16 %95)
  %cmp57.i = icmp eq i16 %value.0276.i, %95
  br i1 %cmp57.i, label %if.end, label %if.end61.i

if.end61.i:                                       ; preds = %do.end54.i
  %96 = zext i16 %value.0276.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %value.0276.i, label %if.end61.i.if.end65.i_crit_edge [
    i16 12592, label %if.end61.i.do.body132_crit_edge
    i16 30323, label %if.end61.i.do.body100_crit_edge
    i16 -32189, label %if.end61.i.do.body20_crit_edge
  ]

if.end61.i.do.body20_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.end61.i.do.body100_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

if.end61.i.do.body132_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

if.end61.i.if.end65.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end61.i.if.end65.i_crit_edge, %if.end34.i.if.end65.i_crit_edge, %land.lhs.true.i.if.end65.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sensor_info, ptr %ptsensor_info.1334.i, i32 1
  %inc.i = add nuw nsw i32 %i.0331.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %..i
  br i1 %exitcond.not.i, label %if.end65.i.do.end_crit_edge, label %if.end65.i.for.body.i_crit_edge

if.end65.i.for.body.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end65.i.do.end_crit_edge:                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %do.end54.i
  %97 = ptrtoint ptr %ptsensor_info.1334.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ptsensor_info.1334.i, align 2
  %conv60.i = sext i8 %98 to i32
  %99 = zext i32 %conv60.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %conv60.i, label %if.end.sw.epilog_crit_edge [
    i32 -1, label %if.end.do.end_crit_edge
    i32 0, label %do.body7
    i32 1, label %if.end.do.body20_crit_edge
    i32 2, label %do.body36
    i32 3, label %do.body52
    i32 4, label %do.body68
    i32 5, label %do.body84
    i32 6, label %if.end.do.body100_crit_edge
    i32 7, label %do.body116
    i32 8, label %if.end.do.body132_crit_edge
    i32 9, label %if.end.do.body148_crit_edge
  ]

if.end.do.body148_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body148

if.end.do.body132_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body132

if.end.do.body100_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end65.i.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup

do.body7:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %100 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp8 = icmp sgt i32 %100, 0
  br i1 %cmp8, label %do.end13, label %do.body7.sw.epilog_crit_edge

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body20:                                        ; preds = %if.end.do.body20_crit_edge, %if.end61.i.do.body20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %101 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp21 = icmp sgt i32 %101, 0
  br i1 %cmp21, label %do.end26, label %do.body20.do.end34_crit_edge

do.body20.do.end34_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i123.i) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end26, %do.body20.do.end34_crit_edge
  %102 = ptrtoint ptr %bridge11.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %bridge11.i, align 1
  br label %sw.epilog

do.body36:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %103 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp37 = icmp sgt i32 %103, 0
  br i1 %cmp37, label %do.end42, label %do.body36.sw.epilog_crit_edge

do.body36.sw.epilog_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body52:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %104 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp53 = icmp sgt i32 %104, 0
  br i1 %cmp53, label %do.end58, label %do.body52.sw.epilog_crit_edge

do.body52.sw.epilog_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body68:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %105 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp69 = icmp sgt i32 %105, 0
  br i1 %cmp69, label %do.end74, label %do.body68.sw.epilog_crit_edge

do.body68.sw.epilog_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body84:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %106 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp85 = icmp sgt i32 %106, 0
  br i1 %cmp85, label %do.end90, label %do.body84.sw.epilog_crit_edge

do.body84.sw.epilog_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body100:                                       ; preds = %if.end.do.body100_crit_edge, %if.end61.i.do.body100_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %107 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp101 = icmp sgt i32 %107, 0
  br i1 %cmp101, label %do.end106, label %do.body100.sw.epilog_crit_edge

do.body100.sw.epilog_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body116:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %108 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp117 = icmp sgt i32 %108, 0
  br i1 %cmp117, label %do.end122, label %do.body116.sw.epilog_crit_edge

do.body116.sw.epilog_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body132:                                       ; preds = %if.end.do.body132_crit_edge, %if.end61.i.do.body132_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %109 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp133 = icmp sgt i32 %109, 0
  br i1 %cmp133, label %do.end138, label %do.body132.sw.epilog_crit_edge

do.body132.sw.epilog_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end138:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name.i123.i) #10
  br label %sw.epilog

do.body148:                                       ; preds = %if.end.do.body148_crit_edge, %entry.do.body148_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %110 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp149 = icmp sgt i32 %110, 0
  br i1 %cmp149, label %do.end154, label %do.body148.sw.epilog_crit_edge

do.body148.sw.epilog_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end154:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  %name157 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name157) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end154, %do.body148.sw.epilog_crit_edge, %do.end138, %do.body132.sw.epilog_crit_edge, %do.end122, %do.body116.sw.epilog_crit_edge, %do.end106, %do.body100.sw.epilog_crit_edge, %do.end90, %do.body84.sw.epilog_crit_edge, %do.end74, %do.body68.sw.epilog_crit_edge, %do.end58, %do.body52.sw.epilog_crit_edge, %do.end42, %do.body36.sw.epilog_crit_edge, %do.end34, %do.end13, %do.body7.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %sensor.0343 = phi i32 [ 9, %do.body148.sw.epilog_crit_edge ], [ 9, %do.end154 ], [ 8, %do.body132.sw.epilog_crit_edge ], [ 8, %do.end138 ], [ 7, %do.body116.sw.epilog_crit_edge ], [ 7, %do.end122 ], [ 6, %do.body100.sw.epilog_crit_edge ], [ 6, %do.end106 ], [ 5, %do.body84.sw.epilog_crit_edge ], [ 5, %do.end90 ], [ 4, %do.body68.sw.epilog_crit_edge ], [ 4, %do.end74 ], [ 3, %do.body52.sw.epilog_crit_edge ], [ 3, %do.end58 ], [ 2, %do.body36.sw.epilog_crit_edge ], [ 2, %do.end42 ], [ 0, %do.body7.sw.epilog_crit_edge ], [ 0, %do.end13 ], [ %conv60.i, %if.end.sw.epilog_crit_edge ], [ 1, %do.end34 ]
  %conv163 = trunc i32 %sensor.0343 to i8
  %111 = ptrtoint ptr %sensor1 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv163, ptr %sensor1, align 2
  %cam165 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %bridge166 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %112 = ptrtoint ptr %bridge166 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bridge166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp168 = icmp eq i8 %113, 0
  br i1 %cmp168, label %sw.epilog.if.end187_crit_edge, label %if.else171

sw.epilog.if.end187_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.else171:                                       ; preds = %sw.epilog
  %114 = zext i32 %sensor.0343 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %sensor.0343, label %if.else171.if.end187_crit_edge [
    i32 7, label %if.else171.if.end196.thread_crit_edge
    i32 2, label %sw.bb175
    i32 4, label %sw.bb178
    i32 6, label %if.end187.thread357
  ]

if.else171.if.end196.thread_crit_edge:            ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196.thread

if.else171.if.end187_crit_edge:                   ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

sw.bb175:                                         ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196.thread

sw.bb178:                                         ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196.thread

if.end187.thread357:                              ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %cam165 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @bi_mode, ptr %cam165, align 4
  %nmodes183 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %116 = ptrtoint ptr %nmodes183 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 2, ptr %nmodes183, align 4
  %npkt360 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 8
  %117 = ptrtoint ptr %npkt360 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 64, ptr %npkt360, align 4
  br label %if.then193

if.end196.thread:                                 ; preds = %sw.bb178, %sw.bb175, %if.else171.if.end196.thread_crit_edge
  %bi_mode.sink = phi ptr [ @bi_mode, %sw.bb178 ], [ @vc0323_mode, %sw.bb175 ], [ @svga_mode, %if.else171.if.end196.thread_crit_edge ]
  %.sink = phi i8 [ 3, %sw.bb178 ], [ 3, %sw.bb175 ], [ 1, %if.else171.if.end196.thread_crit_edge ]
  %118 = ptrtoint ptr %cam165 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %bi_mode.sink, ptr %cam165, align 4
  %nmodes180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %119 = ptrtoint ptr %nmodes180 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %.sink, ptr %nmodes180, align 4
  %arrayidx354 = getelementptr [10 x i8], ptr @sd_init.npkt, i32 0, i32 %sensor.0343
  %120 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx354, align 1
  %npkt355 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 8
  %122 = ptrtoint ptr %npkt355 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %npkt355, align 4
  br label %if.end214

if.end187:                                        ; preds = %if.else171.if.end187_crit_edge, %sw.epilog.if.end187_crit_edge
  %vc0323_mode.sink = phi ptr [ @vc0321_mode, %sw.epilog.if.end187_crit_edge ], [ @vc0323_mode, %if.else171.if.end187_crit_edge ]
  %123 = ptrtoint ptr %cam165 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %vc0323_mode.sink, ptr %cam165, align 4
  %nmodes185 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %124 = ptrtoint ptr %nmodes185 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %nmodes185, align 4
  %idxprom = and i32 %sensor.0343, 255
  %arrayidx = getelementptr [10 x i8], ptr @sd_init.npkt, i32 0, i32 %idxprom
  %125 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx, align 1
  %npkt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 8
  %127 = ptrtoint ptr %npkt to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %npkt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv163)
  %cmp191 = icmp eq i8 %conv163, 6
  br i1 %cmp191, label %if.end187.if.then193_crit_edge, label %if.end187.if.end196_crit_edge

if.end187.if.end196_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196

if.end187.if.then193_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then193

if.then193:                                       ; preds = %if.end187.if.then193_crit_edge, %if.end187.thread357
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %128 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %flags, align 1
  %130 = or i8 %129, 6
  store i8 %130, ptr %flags, align 1
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.end187.if.end196_crit_edge
  br i1 %cmp168, label %if.then201, label %if.end196.if.end214_crit_edge

if.end196.if.end214_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then201:                                       ; preds = %if.end196
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 138, i16 noundef zeroext 0, i16 noundef zeroext 3)
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %131 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.i262 = icmp slt i32 %132, 0
  br i1 %cmp.i262, label %if.then201.reg_w.exit_crit_edge, label %do.body.i

if.then201.reg_w.exit_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.body.i:                                        ; preds = %if.then201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %133 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %133)
  %cmp1.i = icmp sgt i32 %133, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %name.i263 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i263, i32 noundef 135, i32 noundef 0, i32 noundef 3855) #10
  %134 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr.i265 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i265)
  %cmp.i.i266 = icmp slt i32 %.pr.i265, 0
  br i1 %cmp.i.i266, label %do.end7.i.reg_w.exit_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.reg_w.exit_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %135 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 8
  %shl.i.i.i = shl i32 %138, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %136, i32 noundef %or.i.i, i8 noundef zeroext -121, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3855, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit_crit_edge

if.end.i.i.reg_w.exit_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i) #10
  %139 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit_crit_edge, %do.end7.i.reg_w.exit_crit_edge, %if.then201.reg_w.exit_crit_edge
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 139, i16 noundef zeroext 0, i16 noundef zeroext 3)
  %140 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp.i268 = icmp slt i32 %141, 0
  br i1 %cmp.i268, label %reg_w.exit.reg_w.exit284_crit_edge, label %do.body.i270

reg_w.exit.reg_w.exit284_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit284

do.body.i270:                                     ; preds = %reg_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %142 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %142)
  %cmp1.i269 = icmp sgt i32 %142, 6
  br i1 %cmp1.i269, label %do.end7.i275, label %do.body.i270.if.end.i.i281_crit_edge

do.body.i270.if.end.i.i281_crit_edge:             ; preds = %do.body.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i281

do.end7.i275:                                     ; preds = %do.body.i270
  %name.i271 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i271, i32 noundef 136, i32 noundef 0, i32 noundef 514) #10
  %143 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr.i273 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i273)
  %cmp.i.i274 = icmp slt i32 %.pr.i273, 0
  br i1 %cmp.i.i274, label %do.end7.i275.reg_w.exit284_crit_edge, label %do.end7.i275.if.end.i.i281_crit_edge

do.end7.i275.if.end.i.i281_crit_edge:             ; preds = %do.end7.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i281

do.end7.i275.reg_w.exit284_crit_edge:             ; preds = %do.end7.i275
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit284

if.end.i.i281:                                    ; preds = %do.end7.i275.if.end.i.i281_crit_edge, %do.body.i270.if.end.i.i281_crit_edge
  %dev.i.i276 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %144 = ptrtoint ptr %dev.i.i276 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i.i276, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 8
  %shl.i.i.i277 = shl i32 %147, 8
  %or.i.i278 = or i32 %shl.i.i.i277, -2147483648
  %call2.i.i279 = tail call i32 @usb_control_msg(ptr noundef %145, i32 noundef %or.i.i278, i8 noundef zeroext -120, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 514, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i279)
  %cmp3.i.i280 = icmp slt i32 %call2.i.i279, 0
  br i1 %cmp3.i.i280, label %do.end.i.i283, label %if.end.i.i281.reg_w.exit284_crit_edge

if.end.i.i281.reg_w.exit284_crit_edge:            ; preds = %if.end.i.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit284

do.end.i.i283:                                    ; preds = %if.end.i.i281
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i279) #10
  %148 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call2.i.i279, ptr %usb_err.i, align 8
  br label %reg_w.exit284

reg_w.exit284:                                    ; preds = %do.end.i.i283, %if.end.i.i281.reg_w.exit284_crit_edge, %do.end7.i275.reg_w.exit284_crit_edge, %reg_w.exit.reg_w.exit284_crit_edge
  %149 = ptrtoint ptr %sensor1 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %sensor1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %150)
  %cmp204 = icmp eq i8 %150, 9
  br i1 %cmp204, label %if.then206, label %reg_w.exit284.if.end214_crit_edge

reg_w.exit284.if.end214_crit_edge:                ; preds = %reg_w.exit284
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then206:                                       ; preds = %reg_w.exit284
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19712, i16 noundef zeroext 1)
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %151 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_buf, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp209.not = icmp eq i8 %154, 0
  br i1 %cmp209.not, label %if.then206.if.end212_crit_edge, label %if.then211

if.then206.if.end212_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then211:                                       ; preds = %if.then206
  %155 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp.i286 = icmp slt i32 %156, 0
  br i1 %cmp.i286, label %if.then211.if.end214_crit_edge, label %do.body.i288

if.then211.if.end214_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.body.i288:                                     ; preds = %if.then211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %157 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %157)
  %cmp1.i287 = icmp sgt i32 %157, 6
  br i1 %cmp1.i287, label %do.end7.i293, label %do.body.i288.if.end.i.i299_crit_edge

do.body.i288.if.end.i.i299_crit_edge:             ; preds = %do.body.i288
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i299

do.end7.i293:                                     ; preds = %do.body.i288
  %name.i289 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i289, i32 noundef 160, i32 noundef 38, i32 noundef 45824) #10
  %158 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr.i291 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i291)
  %cmp.i.i292 = icmp slt i32 %.pr.i291, 0
  br i1 %cmp.i.i292, label %do.end7.i293.if.end214_crit_edge, label %do.end7.i293.if.end.i.i299_crit_edge

do.end7.i293.if.end.i.i299_crit_edge:             ; preds = %do.end7.i293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i299

do.end7.i293.if.end214_crit_edge:                 ; preds = %do.end7.i293
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.end.i.i299:                                    ; preds = %do.end7.i293.if.end.i.i299_crit_edge, %do.body.i288.if.end.i.i299_crit_edge
  %dev.i.i294 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %159 = ptrtoint ptr %dev.i.i294 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i.i294, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 8
  %shl.i.i.i295 = shl i32 %162, 8
  %or.i.i296 = or i32 %shl.i.i.i295, -2147483648
  %call2.i.i297 = tail call i32 @usb_control_msg(ptr noundef %160, i32 noundef %or.i.i296, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i297)
  %cmp3.i.i298 = icmp slt i32 %call2.i.i297, 0
  br i1 %cmp3.i.i298, label %do.end.i.i301, label %reg_w.exit302

do.end.i.i301:                                    ; preds = %if.end.i.i299
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i297) #10
  %163 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %call2.i.i297, ptr %usb_err.i, align 8
  br label %if.end214

reg_w.exit302:                                    ; preds = %if.end.i.i299
  %164 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i304 = icmp slt i32 %.pr, 0
  br i1 %cmp.i304, label %reg_w.exit302.if.end214_crit_edge, label %do.body.i306

reg_w.exit302.if.end214_crit_edge:                ; preds = %reg_w.exit302
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.body.i306:                                     ; preds = %reg_w.exit302
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %165 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %165)
  %cmp1.i305 = icmp sgt i32 %165, 6
  br i1 %cmp1.i305, label %do.end7.i311, label %do.body.i306.if.end.i.i317_crit_edge

do.body.i306.if.end.i.i317_crit_edge:             ; preds = %do.body.i306
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i317

do.end7.i311:                                     ; preds = %do.body.i306
  %name.i307 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i307, i32 noundef 160, i32 noundef 4, i32 noundef 45824) #10
  %166 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr.i309 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i309)
  %cmp.i.i310 = icmp slt i32 %.pr.i309, 0
  br i1 %cmp.i.i310, label %do.end7.i311.if.end214_crit_edge, label %do.end7.i311.if.end.i.i317_crit_edge

do.end7.i311.if.end.i.i317_crit_edge:             ; preds = %do.end7.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i317

do.end7.i311.if.end214_crit_edge:                 ; preds = %do.end7.i311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.end.i.i317:                                    ; preds = %do.end7.i311.if.end.i.i317_crit_edge, %do.body.i306.if.end.i.i317_crit_edge
  %167 = ptrtoint ptr %dev.i.i294 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i.i294, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %shl.i.i.i313 = shl i32 %170, 8
  %or.i.i314 = or i32 %shl.i.i.i313, -2147483648
  %call2.i.i315 = tail call i32 @usb_control_msg(ptr noundef %168, i32 noundef %or.i.i314, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i315)
  %cmp3.i.i316 = icmp slt i32 %call2.i.i315, 0
  br i1 %cmp3.i.i316, label %do.end.i.i319, label %if.end.i.i317.if.end212_crit_edge

if.end.i.i317.if.end212_crit_edge:                ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

do.end.i.i319:                                    ; preds = %if.end.i.i317
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i318 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i315) #10
  %171 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %call2.i.i315, ptr %usb_err.i, align 8
  br label %if.end214

if.end212:                                        ; preds = %if.end.i.i317.if.end212_crit_edge, %if.then206.if.end212_crit_edge
  %172 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %.pr363.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr363.pr)
  %cmp.i322 = icmp slt i32 %.pr363.pr, 0
  br i1 %cmp.i322, label %if.end212.if.end214_crit_edge, label %do.body.i324

if.end212.if.end214_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.body.i324:                                     ; preds = %if.end212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %173 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %173)
  %cmp1.i323 = icmp sgt i32 %173, 6
  br i1 %cmp1.i323, label %do.end7.i329, label %do.body.i324.if.end.i.i335_crit_edge

do.body.i324.if.end.i.i335_crit_edge:             ; preds = %do.body.i324
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i335

do.end7.i329:                                     ; preds = %do.body.i324
  %name.i325 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i325, i32 noundef 160, i32 noundef 0, i32 noundef 45824) #10
  %174 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr.i327 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i327)
  %cmp.i.i328 = icmp slt i32 %.pr.i327, 0
  br i1 %cmp.i.i328, label %do.end7.i329.if.end214_crit_edge, label %do.end7.i329.if.end.i.i335_crit_edge

do.end7.i329.if.end.i.i335_crit_edge:             ; preds = %do.end7.i329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i335

do.end7.i329.if.end214_crit_edge:                 ; preds = %do.end7.i329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.end.i.i335:                                    ; preds = %do.end7.i329.if.end.i.i335_crit_edge, %do.body.i324.if.end.i.i335_crit_edge
  %dev.i.i330 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %175 = ptrtoint ptr %dev.i.i330 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i.i330, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %176, align 8
  %shl.i.i.i331 = shl i32 %178, 8
  %or.i.i332 = or i32 %shl.i.i.i331, -2147483648
  %call2.i.i333 = tail call i32 @usb_control_msg(ptr noundef %176, i32 noundef %or.i.i332, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i333)
  %cmp3.i.i334 = icmp slt i32 %call2.i.i333, 0
  br i1 %cmp3.i.i334, label %do.end.i.i337, label %if.end.i.i335.if.end214_crit_edge

if.end.i.i335.if.end214_crit_edge:                ; preds = %if.end.i.i335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

do.end.i.i337:                                    ; preds = %if.end.i.i335
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i333) #10
  %179 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call2.i.i333, ptr %usb_err.i, align 8
  br label %if.end214

if.end214:                                        ; preds = %do.end.i.i337, %if.end.i.i335.if.end214_crit_edge, %do.end7.i329.if.end214_crit_edge, %if.end212.if.end214_crit_edge, %do.end.i.i319, %do.end7.i311.if.end214_crit_edge, %reg_w.exit302.if.end214_crit_edge, %do.end.i.i301, %do.end7.i293.if.end214_crit_edge, %if.then211.if.end214_crit_edge, %reg_w.exit284.if.end214_crit_edge, %if.end196.if.end214_crit_edge, %if.end196.thread
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %180 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end214, %do.end
  %retval.0 = phi i32 [ %181, %if.end214 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %1, label %if.end23.thread [
    i8 9, label %if.then29
    i8 7, label %sw.bb3
    i8 6, label %sw.bb2
    i8 2, label %entry.if.end19_crit_edge
    i8 3, label %entry.if.end19_crit_edge132
    i8 4, label %entry.if.end19_crit_edge133
    i8 5, label %entry.if.end19_crit_edge134
  ]

entry.if.end19_crit_edge134:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

entry.if.end19_crit_edge133:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

entry.if.end19_crit_edge132:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end23.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_handler590 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %3 = ptrtoint ptr %ctrl_handler590 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl_handler, ptr %ctrl_handler590, align 4
  %call91 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 8, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.56) #7
  br label %if.end43

if.end19:                                         ; preds = %sw.bb3, %sw.bb2, %entry.if.end19_crit_edge, %entry.if.end19_crit_edge132, %entry.if.end19_crit_edge133, %entry.if.end19_crit_edge134
  %has_freq.0.off0.ph.ph = phi i1 [ true, %sw.bb2 ], [ false, %sw.bb3 ], [ false, %entry.if.end19_crit_edge ], [ false, %entry.if.end19_crit_edge132 ], [ false, %entry.if.end19_crit_edge133 ], [ false, %entry.if.end19_crit_edge134 ]
  %has_sharpness.0.off0.ph.ph = phi i1 [ false, %sw.bb2 ], [ true, %sw.bb3 ], [ false, %entry.if.end19_crit_edge ], [ false, %entry.if.end19_crit_edge132 ], [ false, %entry.if.end19_crit_edge133 ], [ false, %entry.if.end19_crit_edge134 ]
  %ctrl_handler590107 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl_handler590107 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctrl_handler, ptr %ctrl_handler590107, align 4
  %call91108 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 8, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.56) #7
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %5, align 8
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %vflip, align 4
  br i1 %has_sharpness.0.off0.ph.ph, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef -1, i64 noundef 2, i64 noundef 1, i64 noundef -1) #7
  br i1 %has_freq.0.off0.ph.ph, label %if.then21.if.then25_crit_edge, label %if.then21.if.end43_crit_edge

if.then21.if.end43_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then21.if.then25_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.end23:                                         ; preds = %if.end19
  br i1 %has_freq.0.off0.ph.ph, label %if.end23.if.then25_crit_edge, label %if.end23.if.end43_crit_edge

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.then21.if.then25_crit_edge
  %call26 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 1) #7
  br label %if.end43

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_handler5 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %8 = ptrtoint ptr %ctrl_handler5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl_handler, ptr %ctrl_handler5, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 8, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.56) #7
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #7
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 1, i64 noundef 127, i64 noundef 1, i64 noundef 63) #7
  %call22129 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef -1, i64 noundef 2, i64 noundef 1, i64 noundef -1) #7
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 78, i64 noundef 1, i64 noundef 0) #7
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 4095, i64 noundef 1, i64 noundef 450) #7
  %call42 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963804, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 15) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then29, %if.then25, %if.end23.if.end43_crit_edge, %if.then21.if.end43_crit_edge, %if.end23.thread
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool44.not = icmp eq i32 %10, 0
  br i1 %tobool44.not, label %if.end49, label %do.end

do.end:                                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %13 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool51.not = icmp eq ptr %15, null
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.then52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end49.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %12, %do.end ], [ 0, %if.then52 ], [ 0, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef 137, i32 noundef 61695, i32 noundef 65535) #10
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end7.i.if.end_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.if.end_crit_edge:                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i.i, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext -3841, i16 noundef zeroext -1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.if.end.sink.split_crit_edge, label %reg_w.exit

if.end.i.i.if.end.sink.split_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

reg_w.exit:                                       ; preds = %if.end.i.i
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i132 = icmp slt i32 %.pr, 0
  br i1 %cmp.i132, label %reg_w.exit.if.end_crit_edge, label %do.body.i134

reg_w.exit.if.end_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i134:                                     ; preds = %reg_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp1.i133 = icmp sgt i32 %12, 6
  br i1 %cmp1.i133, label %do.end7.i139, label %do.body.i134.if.end.i.i145_crit_edge

do.body.i134.if.end.i.i145_crit_edge:             ; preds = %do.body.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i145

do.end7.i139:                                     ; preds = %do.body.i134
  %name.i135 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i135, i32 noundef 169, i32 noundef 33608, i32 noundef 14) #10
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i137 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i137)
  %cmp.i.i138 = icmp slt i32 %.pr.i137, 0
  br i1 %cmp.i.i138, label %do.end7.i139.if.end_crit_edge, label %do.end7.i139.if.end.i.i145_crit_edge

do.end7.i139.if.end.i.i145_crit_edge:             ; preds = %do.end7.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i145

do.end7.i139.if.end_crit_edge:                    ; preds = %do.end7.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i145:                                    ; preds = %do.end7.i139.if.end.i.i145_crit_edge, %do.body.i134.if.end.i.i145_crit_edge
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i.i141 = shl i32 %17, 8
  %or.i.i142 = or i32 %shl.i.i.i141, -2147483648
  %call2.i.i143 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i.i142, i8 noundef zeroext -87, i8 noundef zeroext 64, i16 noundef zeroext -31928, i16 noundef zeroext 14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i143)
  %cmp3.i.i144 = icmp slt i32 %call2.i.i143, 0
  br i1 %cmp3.i.i144, label %if.end.i.i145.if.end.sink.split_crit_edge, label %reg_w.exit148

if.end.i.i145.if.end.sink.split_crit_edge:        ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

reg_w.exit148:                                    ; preds = %if.end.i.i145
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr366.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr366.pr)
  %cmp.i150 = icmp slt i32 %.pr366.pr, 0
  br i1 %cmp.i150, label %reg_w.exit148.if.end_crit_edge, label %do.body.i152

reg_w.exit148.if.end_crit_edge:                   ; preds = %reg_w.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i152:                                     ; preds = %reg_w.exit148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp1.i151 = icmp sgt i32 %19, 6
  br i1 %cmp1.i151, label %do.end7.i157, label %do.body.i152.if.end.i.i163_crit_edge

do.body.i152.if.end.i.i163_crit_edge:             ; preds = %do.body.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i163

do.end7.i157:                                     ; preds = %do.body.i152
  %name.i153 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i153, i32 noundef 169, i32 noundef 0, i32 noundef 26) #10
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i155 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i155)
  %cmp.i.i156 = icmp slt i32 %.pr.i155, 0
  br i1 %cmp.i.i156, label %do.end7.i157.if.end_crit_edge, label %do.end7.i157.if.end.i.i163_crit_edge

do.end7.i157.if.end.i.i163_crit_edge:             ; preds = %do.end7.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i163

do.end7.i157.if.end_crit_edge:                    ; preds = %do.end7.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i163:                                    ; preds = %do.end7.i157.if.end.i.i163_crit_edge, %do.body.i152.if.end.i.i163_crit_edge
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i159 = shl i32 %24, 8
  %or.i.i160 = or i32 %shl.i.i.i159, -2147483648
  %call2.i.i161 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i160, i8 noundef zeroext -87, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 26, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i161)
  %cmp3.i.i162 = icmp slt i32 %call2.i.i161, 0
  br i1 %cmp3.i.i162, label %if.end.i.i163.if.end.sink.split_crit_edge, label %if.end.i.i163.if.end_crit_edge

if.end.i.i163.if.end_crit_edge:                   ; preds = %if.end.i.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i163.if.end.sink.split_crit_edge:        ; preds = %if.end.i.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i.i163.if.end.sink.split_crit_edge, %if.end.i.i145.if.end.sink.split_crit_edge, %if.end.i.i.if.end.sink.split_crit_edge
  %call2.i.i.sink404 = phi i32 [ %call2.i.i, %if.end.i.i.if.end.sink.split_crit_edge ], [ %call2.i.i143, %if.end.i.i145.if.end.sink.split_crit_edge ], [ %call2.i.i161, %if.end.i.i163.if.end.sink.split_crit_edge ]
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i.sink404) #10
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2.i.i.sink404, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.i163.if.end_crit_edge, %do.end7.i157.if.end_crit_edge, %reg_w.exit148.if.end_crit_edge, %do.end7.i139.if.end_crit_edge, %reg_w.exit.if.end_crit_edge, %do.end7.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp = icmp eq i8 %27, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %usb_err.i167 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %28 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i168 = icmp slt i32 %29, 0
  br i1 %cmp.i168, label %if.then3.reg_w.exit238_crit_edge, label %do.body.i170

if.then3.reg_w.exit238_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

do.body.i170:                                     ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp1.i169 = icmp sgt i32 %30, 6
  br i1 %cmp1.i169, label %do.end7.i175, label %do.body.i170.if.end.i.i181_crit_edge

do.body.i170.if.end.i.i181_crit_edge:             ; preds = %do.body.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i181

do.end7.i175:                                     ; preds = %do.body.i170
  %name.i171 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i171, i32 noundef 160, i32 noundef 255, i32 noundef 49132) #10
  %31 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.i173 = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i173)
  %cmp.i.i174 = icmp slt i32 %.pr.i173, 0
  br i1 %cmp.i.i174, label %do.end7.i175.reg_w.exit238_crit_edge, label %do.end7.i175.if.end.i.i181_crit_edge

do.end7.i175.if.end.i.i181_crit_edge:             ; preds = %do.end7.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i181

do.end7.i175.reg_w.exit238_crit_edge:             ; preds = %do.end7.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

if.end.i.i181:                                    ; preds = %do.end7.i175.if.end.i.i181_crit_edge, %do.body.i170.if.end.i.i181_crit_edge
  %dev.i.i176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %32 = ptrtoint ptr %dev.i.i176 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i176, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i.i177 = shl i32 %35, 8
  %or.i.i178 = or i32 %shl.i.i.i177, -2147483648
  %call2.i.i179 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i.i178, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext -16404, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i179)
  %cmp3.i.i180 = icmp slt i32 %call2.i.i179, 0
  br i1 %cmp3.i.i180, label %if.end.i.i181.reg_w.exit238.sink.split_crit_edge, label %reg_w.exit184

if.end.i.i181.reg_w.exit238.sink.split_crit_edge: ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238.sink.split

reg_w.exit184:                                    ; preds = %if.end.i.i181
  %36 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr368 = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr368)
  %cmp.i186 = icmp slt i32 %.pr368, 0
  br i1 %cmp.i186, label %reg_w.exit184.reg_w.exit238_crit_edge, label %do.body.i188

reg_w.exit184.reg_w.exit238_crit_edge:            ; preds = %reg_w.exit184
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

do.body.i188:                                     ; preds = %reg_w.exit184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp1.i187 = icmp sgt i32 %37, 6
  br i1 %cmp1.i187, label %do.end7.i193, label %do.body.i188.if.end.i.i199_crit_edge

do.body.i188.if.end.i.i199_crit_edge:             ; preds = %do.body.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i199

do.end7.i193:                                     ; preds = %do.body.i188
  %name.i189 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i189, i32 noundef 160, i32 noundef 255, i32 noundef 49133) #10
  %38 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i191 = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i191)
  %cmp.i.i192 = icmp slt i32 %.pr.i191, 0
  br i1 %cmp.i.i192, label %do.end7.i193.reg_w.exit238_crit_edge, label %do.end7.i193.if.end.i.i199_crit_edge

do.end7.i193.if.end.i.i199_crit_edge:             ; preds = %do.end7.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i199

do.end7.i193.reg_w.exit238_crit_edge:             ; preds = %do.end7.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

if.end.i.i199:                                    ; preds = %do.end7.i193.if.end.i.i199_crit_edge, %do.body.i188.if.end.i.i199_crit_edge
  %39 = ptrtoint ptr %dev.i.i176 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i176, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i.i195 = shl i32 %42, 8
  %or.i.i196 = or i32 %shl.i.i.i195, -2147483648
  %call2.i.i197 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i.i196, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext -16403, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i197)
  %cmp3.i.i198 = icmp slt i32 %call2.i.i197, 0
  br i1 %cmp3.i.i198, label %if.end.i.i199.reg_w.exit238.sink.split_crit_edge, label %reg_w.exit202

if.end.i.i199.reg_w.exit238.sink.split_crit_edge: ; preds = %if.end.i.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238.sink.split

reg_w.exit202:                                    ; preds = %if.end.i.i199
  %43 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr370.pr = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr370.pr)
  %cmp.i204 = icmp slt i32 %.pr370.pr, 0
  br i1 %cmp.i204, label %reg_w.exit202.reg_w.exit238_crit_edge, label %do.body.i206

reg_w.exit202.reg_w.exit238_crit_edge:            ; preds = %reg_w.exit202
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

do.body.i206:                                     ; preds = %reg_w.exit202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp1.i205 = icmp sgt i32 %44, 6
  br i1 %cmp1.i205, label %do.end7.i211, label %do.body.i206.if.end.i.i217_crit_edge

do.body.i206.if.end.i.i217_crit_edge:             ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i217

do.end7.i211:                                     ; preds = %do.body.i206
  %name.i207 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i207, i32 noundef 160, i32 noundef 255, i32 noundef 49134) #10
  %45 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i209 = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i209)
  %cmp.i.i210 = icmp slt i32 %.pr.i209, 0
  br i1 %cmp.i.i210, label %do.end7.i211.reg_w.exit238_crit_edge, label %do.end7.i211.if.end.i.i217_crit_edge

do.end7.i211.if.end.i.i217_crit_edge:             ; preds = %do.end7.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i217

do.end7.i211.reg_w.exit238_crit_edge:             ; preds = %do.end7.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

if.end.i.i217:                                    ; preds = %do.end7.i211.if.end.i.i217_crit_edge, %do.body.i206.if.end.i.i217_crit_edge
  %46 = ptrtoint ptr %dev.i.i176 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i176, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i.i213 = shl i32 %49, 8
  %or.i.i214 = or i32 %shl.i.i.i213, -2147483648
  %call2.i.i215 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i.i214, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext -16402, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i215)
  %cmp3.i.i216 = icmp slt i32 %call2.i.i215, 0
  br i1 %cmp3.i.i216, label %if.end.i.i217.reg_w.exit238.sink.split_crit_edge, label %reg_w.exit220

if.end.i.i217.reg_w.exit238.sink.split_crit_edge: ; preds = %if.end.i.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238.sink.split

reg_w.exit220:                                    ; preds = %if.end.i.i217
  %50 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr372.pr = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr372.pr)
  %cmp.i222 = icmp slt i32 %.pr372.pr, 0
  br i1 %cmp.i222, label %reg_w.exit220.reg_w.exit238_crit_edge, label %do.body.i224

reg_w.exit220.reg_w.exit238_crit_edge:            ; preds = %reg_w.exit220
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

do.body.i224:                                     ; preds = %reg_w.exit220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp1.i223 = icmp sgt i32 %51, 6
  br i1 %cmp1.i223, label %do.end7.i229, label %do.body.i224.if.end.i.i235_crit_edge

do.body.i224.if.end.i.i235_crit_edge:             ; preds = %do.body.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i235

do.end7.i229:                                     ; preds = %do.body.i224
  %name.i225 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i225, i32 noundef 160, i32 noundef 255, i32 noundef 49135) #10
  %52 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i227 = load i32, ptr %usb_err.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i227)
  %cmp.i.i228 = icmp slt i32 %.pr.i227, 0
  br i1 %cmp.i.i228, label %do.end7.i229.reg_w.exit238_crit_edge, label %do.end7.i229.if.end.i.i235_crit_edge

do.end7.i229.if.end.i.i235_crit_edge:             ; preds = %do.end7.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i235

do.end7.i229.reg_w.exit238_crit_edge:             ; preds = %do.end7.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

if.end.i.i235:                                    ; preds = %do.end7.i229.if.end.i.i235_crit_edge, %do.body.i224.if.end.i.i235_crit_edge
  %53 = ptrtoint ptr %dev.i.i176 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i176, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i.i231 = shl i32 %56, 8
  %or.i.i232 = or i32 %shl.i.i.i231, -2147483648
  %call2.i.i233 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i.i232, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext -16401, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i233)
  %cmp3.i.i234 = icmp slt i32 %call2.i.i233, 0
  br i1 %cmp3.i.i234, label %if.end.i.i235.reg_w.exit238.sink.split_crit_edge, label %if.end.i.i235.reg_w.exit238_crit_edge

if.end.i.i235.reg_w.exit238_crit_edge:            ; preds = %if.end.i.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238

if.end.i.i235.reg_w.exit238.sink.split_crit_edge: ; preds = %if.end.i.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit238.sink.split

reg_w.exit238.sink.split:                         ; preds = %if.end.i.i235.reg_w.exit238.sink.split_crit_edge, %if.end.i.i217.reg_w.exit238.sink.split_crit_edge, %if.end.i.i199.reg_w.exit238.sink.split_crit_edge, %if.end.i.i181.reg_w.exit238.sink.split_crit_edge
  %call2.i.i197.sink405 = phi i32 [ %call2.i.i179, %if.end.i.i181.reg_w.exit238.sink.split_crit_edge ], [ %call2.i.i197, %if.end.i.i199.reg_w.exit238.sink.split_crit_edge ], [ %call2.i.i215, %if.end.i.i217.reg_w.exit238.sink.split_crit_edge ], [ %call2.i.i233, %if.end.i.i235.reg_w.exit238.sink.split_crit_edge ]
  %call6.i.i200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i197.sink405) #10
  %57 = ptrtoint ptr %usb_err.i167 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call2.i.i197.sink405, ptr %usb_err.i167, align 8
  br label %reg_w.exit238

reg_w.exit238:                                    ; preds = %reg_w.exit238.sink.split, %if.end.i.i235.reg_w.exit238_crit_edge, %do.end7.i229.reg_w.exit238_crit_edge, %reg_w.exit220.reg_w.exit238_crit_edge, %do.end7.i211.reg_w.exit238_crit_edge, %reg_w.exit202.reg_w.exit238_crit_edge, %do.end7.i193.reg_w.exit238_crit_edge, %reg_w.exit184.reg_w.exit238_crit_edge, %do.end7.i175.reg_w.exit238_crit_edge, %if.then3.reg_w.exit238_crit_edge
  %image_offset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %58 = ptrtoint ptr %image_offset to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 46, ptr %image_offset, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %59 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %61 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %62 to i32
  %pixelformat = getelementptr %struct.v4l2_pix_format, ptr %60, i32 %idxprom, i32 2
  %63 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %64)
  %cmp4 = icmp eq i32 %64, 1195724874
  %image_offset7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %image_offset7 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %image_offset7, align 8
  br label %if.end11

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %image_offset7 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 32, ptr %image_offset7, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then6, %reg_w.exit238
  %cam12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %67 = ptrtoint ptr %cam12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cam12, align 4
  %curr_mode14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %69 = ptrtoint ptr %curr_mode14 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %curr_mode14, align 1
  %conv15 = zext i8 %70 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %68, i32 %conv15, i32 7
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %priv, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %73 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sensor, align 2
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %74, label %sw.default51 [
    i8 0, label %sw.bb
    i8 5, label %sw.bb22
    i8 1, label %sw.bb27
    i8 2, label %sw.bb32
    i8 3, label %sw.bb35
    i8 4, label %sw.bb40
    i8 6, label %sw.bb42
    i8 8, label %sw.bb45
    i8 7, label %if.end11.if.then65_crit_edge
  ]

if.end11.if.then65_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool18.not = icmp eq i32 %72, 0
  %hv7131r_initVGA_data.hv7131r_initQVGA_data = select i1 %tobool18.not, ptr @hv7131r_initVGA_data, ptr @hv7131r_initQVGA_data
  br label %if.then65

sw.bb22:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool23.not = icmp eq i32 %72, 0
  %ov7660_initVGA_data.ov7660_initQVGA_data = select i1 %tobool23.not, ptr @ov7660_initVGA_data, ptr @ov7660_initQVGA_data
  br label %if.then65

sw.bb27:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool28.not = icmp eq i32 %72, 0
  %mi0360_initVGA_JPG.mi0360_initQVGA_JPG = select i1 %tobool28.not, ptr @mi0360_initVGA_JPG, ptr @mi0360_initQVGA_JPG
  br label %if.then65

sw.bb32:                                          ; preds = %if.end11
  %76 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %72, label %sw.default [
    i32 1, label %sw.bb32.if.then65_crit_edge
    i32 0, label %sw.bb34
  ]

sw.bb32.if.then65_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

sw.bb34:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

sw.default:                                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

sw.bb35:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool36.not = icmp eq i32 %72, 0
  %mi1320_initVGA_data.mi1320_initQVGA_data = select i1 %tobool36.not, ptr @mi1320_initVGA_data, ptr @mi1320_initQVGA_data
  br label %if.then65

sw.bb40:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx41 = getelementptr [3 x ptr], ptr @sd_start.mi1320_soc_init, i32 0, i32 %72
  %77 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx41, align 4
  br label %if.then65

sw.bb42:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp43 = icmp eq i32 %72, 1
  %cond = select i1 %cmp43, ptr @ov7670_InitVGA, ptr @ov7670_InitQVGA
  br label %sw.epilog62

sw.bb45:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool46.not = icmp eq i32 %72, 0
  %po3130_initVGA_data.po3130_initQVGA_data = select i1 %tobool46.not, ptr @po3130_initVGA_data, ptr @po3130_initQVGA_data
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull %po3130_initVGA_data.po3130_initQVGA_data)
  br label %if.then65

sw.default51:                                     ; preds = %if.end11
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull @poxxxx_init_common)
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull @poxxxx_gamma) #7
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull @poxxxx_init_start_3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool52.not = icmp eq i32 %72, 0
  %poxxxx_initVGA.poxxxx_initQVGA = select i1 %tobool52.not, ptr @poxxxx_initVGA, ptr @poxxxx_initQVGA
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull %poxxxx_initVGA.poxxxx_initQVGA)
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 140, i16 noundef zeroext 0, i16 noundef zeroext 3)
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %79 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb_buf, align 4
  %arrayidx56 = getelementptr i8, ptr %80, i32 2
  %81 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx56, align 1
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  %85 = zext i8 %84 to i16
  %usb_err.i239 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %86 = ptrtoint ptr %usb_err.i239 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usb_err.i239, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i240 = icmp slt i32 %87, 0
  br i1 %cmp.i240, label %sw.default51.reg_w.exit256_crit_edge, label %do.body.i242

sw.default51.reg_w.exit256_crit_edge:             ; preds = %sw.default51
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit256

do.body.i242:                                     ; preds = %sw.default51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %88 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %88)
  %cmp1.i241 = icmp sgt i32 %88, 6
  br i1 %cmp1.i241, label %do.end7.i247, label %do.body.i242.if.end.i.i253_crit_edge

do.body.i242.if.end.i.i253_crit_edge:             ; preds = %do.body.i242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i253

do.end7.i247:                                     ; preds = %do.body.i242
  %name.i243 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %84 to i32
  %call.i244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i243, i32 noundef 160, i32 noundef %conv4.i, i32 noundef 45916) #10
  %89 = ptrtoint ptr %usb_err.i239 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr.i245 = load i32, ptr %usb_err.i239, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i245)
  %cmp.i.i246 = icmp slt i32 %.pr.i245, 0
  br i1 %cmp.i.i246, label %do.end7.i247.reg_w.exit256_crit_edge, label %do.end7.i247.if.end.i.i253_crit_edge

do.end7.i247.if.end.i.i253_crit_edge:             ; preds = %do.end7.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i253

do.end7.i247.reg_w.exit256_crit_edge:             ; preds = %do.end7.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit256

if.end.i.i253:                                    ; preds = %do.end7.i247.if.end.i.i253_crit_edge, %do.body.i242.if.end.i.i253_crit_edge
  %dev.i.i248 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %90 = ptrtoint ptr %dev.i.i248 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i248, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 8
  %shl.i.i.i249 = shl i32 %93, 8
  %or.i.i250 = or i32 %shl.i.i.i249, -2147483648
  %call2.i.i251 = tail call i32 @usb_control_msg(ptr noundef %91, i32 noundef %or.i.i250, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %85, i16 noundef zeroext -19620, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i251)
  %cmp3.i.i252 = icmp slt i32 %call2.i.i251, 0
  br i1 %cmp3.i.i252, label %do.end.i.i255, label %if.end.i.i253.reg_w.exit256_crit_edge

if.end.i.i253.reg_w.exit256_crit_edge:            ; preds = %if.end.i.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit256

do.end.i.i255:                                    ; preds = %if.end.i.i253
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i254 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i251) #10
  %94 = ptrtoint ptr %usb_err.i239 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call2.i.i251, ptr %usb_err.i239, align 8
  br label %reg_w.exit256

reg_w.exit256:                                    ; preds = %do.end.i.i255, %if.end.i.i253.reg_w.exit256_crit_edge, %do.end7.i247.reg_w.exit256_crit_edge, %sw.default51.reg_w.exit256_crit_edge
  tail call void @msleep(i32 noundef 300) #7
  br label %sw.epilog62

sw.epilog62:                                      ; preds = %reg_w.exit256, %sw.bb42
  %init.2 = phi ptr [ @poxxxx_init_end_1, %reg_w.exit256 ], [ %cond, %sw.bb42 ]
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull %init.2)
  br label %if.end71

if.then65:                                        ; preds = %sw.bb45, %sw.bb40, %sw.bb35, %sw.default, %sw.bb34, %sw.bb32.if.then65_crit_edge, %sw.bb27, %sw.bb22, %sw.bb, %if.end11.if.then65_crit_edge
  %init.2.ph = phi ptr [ @po1200_initVGA_data, %if.end11.if.then65_crit_edge ], [ %mi1320_initVGA_data.mi1320_initQVGA_data, %sw.bb35 ], [ @mi1310_socinitQVGA_JPG, %sw.bb32.if.then65_crit_edge ], [ %mi0360_initVGA_JPG.mi0360_initQVGA_JPG, %sw.bb27 ], [ %ov7660_initVGA_data.ov7660_initQVGA_data, %sw.bb22 ], [ %hv7131r_initVGA_data.hv7131r_initQVGA_data, %sw.bb ], [ @mi1310_socinitVGA_JPG, %sw.bb34 ], [ @mi1310_soc_InitSXGA_JPG, %sw.default ], [ %78, %sw.bb40 ], [ @po3130_rundata, %sw.bb45 ]
  %GammaT.0.ph = phi ptr [ @po1200_gamma, %if.end11.if.then65_crit_edge ], [ @mi1320_gamma, %sw.bb35 ], [ @mi1320_gamma, %sw.bb32.if.then65_crit_edge ], [ @mi1320_gamma, %sw.bb27 ], [ @ov7660_gamma, %sw.bb22 ], [ @hv7131r_gamma, %sw.bb ], [ @mi1320_gamma, %sw.bb34 ], [ @mi1320_gamma, %sw.default ], [ @mi1320_gamma, %sw.bb40 ], [ @po3130_gamma, %sw.bb45 ]
  %MatrixT.0.ph = phi ptr [ @po1200_matrix, %if.end11.if.then65_crit_edge ], [ @mi1320_matrix, %sw.bb35 ], [ @mi1320_matrix, %sw.bb32.if.then65_crit_edge ], [ @mi0360_matrix, %sw.bb27 ], [ @ov7660_matrix, %sw.bb22 ], [ @hv7131r_matrix, %sw.bb ], [ @mi1320_matrix, %sw.bb34 ], [ @mi1320_matrix, %sw.default ], [ @mi1320_matrix, %sw.bb40 ], [ @po3130_matrix, %sw.bb45 ]
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef %init.2.ph)
  tail call fastcc void @put_tab_to_reg(ptr noundef %gspca_dev, ptr noundef nonnull %GammaT.0.ph, i8 noundef zeroext 17, i16 noundef zeroext -18358)
  tail call fastcc void @put_tab_to_reg(ptr noundef %gspca_dev, ptr noundef nonnull %GammaT.0.ph, i8 noundef zeroext 17, i16 noundef zeroext -18341)
  tail call fastcc void @put_tab_to_reg(ptr noundef %gspca_dev, ptr noundef nonnull %GammaT.0.ph, i8 noundef zeroext 17, i16 noundef zeroext -18324)
  tail call fastcc void @put_tab_to_reg(ptr noundef %gspca_dev, ptr noundef nonnull %MatrixT.0.ph, i8 noundef zeroext 9, i16 noundef zeroext -18388)
  %95 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %sensor, align 2
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %96, label %if.then65.sw.epilog70_crit_edge [
    i8 7, label %if.then65.sw.bb68_crit_edge
    i8 0, label %if.then65.sw.bb68_crit_edge406
    i8 2, label %sw.bb69
  ]

if.then65.sw.bb68_crit_edge406:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

if.then65.sw.bb68_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

if.then65.sw.epilog70_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

sw.bb68:                                          ; preds = %if.then65.sw.bb68_crit_edge, %if.then65.sw.bb68_crit_edge406
  %usb_err.i257 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %98 = ptrtoint ptr %usb_err.i257 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %usb_err.i257, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i258 = icmp slt i32 %99, 0
  br i1 %cmp.i258, label %sw.bb68.sw.epilog70_crit_edge, label %do.body.i260

sw.bb68.sw.epilog70_crit_edge:                    ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

do.body.i260:                                     ; preds = %sw.bb68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %100 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %100)
  %cmp1.i259 = icmp sgt i32 %100, 6
  br i1 %cmp1.i259, label %do.end7.i265, label %do.body.i260.if.end.i.i271_crit_edge

do.body.i260.if.end.i.i271_crit_edge:             ; preds = %do.body.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i271

do.end7.i265:                                     ; preds = %do.body.i260
  %name.i261 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i261, i32 noundef 137, i32 noundef 1024, i32 noundef 5141) #10
  %101 = ptrtoint ptr %usb_err.i257 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr.i263 = load i32, ptr %usb_err.i257, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i263)
  %cmp.i.i264 = icmp slt i32 %.pr.i263, 0
  br i1 %cmp.i.i264, label %do.end7.i265.sw.epilog70_crit_edge, label %do.end7.i265.if.end.i.i271_crit_edge

do.end7.i265.if.end.i.i271_crit_edge:             ; preds = %do.end7.i265
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i271

do.end7.i265.sw.epilog70_crit_edge:               ; preds = %do.end7.i265
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

if.end.i.i271:                                    ; preds = %do.end7.i265.if.end.i.i271_crit_edge, %do.body.i260.if.end.i.i271_crit_edge
  %dev.i.i266 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %102 = ptrtoint ptr %dev.i.i266 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i.i266, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %shl.i.i.i267 = shl i32 %105, 8
  %or.i.i268 = or i32 %shl.i.i.i267, -2147483648
  %call2.i.i269 = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or.i.i268, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext 1024, i16 noundef zeroext 5141, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i269)
  %cmp3.i.i270 = icmp slt i32 %call2.i.i269, 0
  br i1 %cmp3.i.i270, label %do.end.i.i273, label %if.end.i.i271.sw.epilog70_crit_edge

if.end.i.i271.sw.epilog70_crit_edge:              ; preds = %if.end.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

do.end.i.i273:                                    ; preds = %if.end.i.i271
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i269) #10
  %106 = ptrtoint ptr %usb_err.i257 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call2.i.i269, ptr %usb_err.i257, align 8
  br label %sw.epilog70

sw.bb69:                                          ; preds = %if.then65
  %usb_err.i275 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %107 = ptrtoint ptr %usb_err.i275 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %usb_err.i275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i276 = icmp slt i32 %108, 0
  br i1 %cmp.i276, label %sw.bb69.sw.epilog70_crit_edge, label %do.body.i278

sw.bb69.sw.epilog70_crit_edge:                    ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

do.body.i278:                                     ; preds = %sw.bb69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %109 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %109)
  %cmp1.i277 = icmp sgt i32 %109, 6
  br i1 %cmp1.i277, label %do.end7.i283, label %do.body.i278.if.end.i.i289_crit_edge

do.body.i278.if.end.i.i289_crit_edge:             ; preds = %do.body.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i289

do.end7.i283:                                     ; preds = %do.body.i278
  %name.i279 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i279, i32 noundef 137, i32 noundef 1420, i32 noundef 0) #10
  %110 = ptrtoint ptr %usb_err.i275 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr.i281 = load i32, ptr %usb_err.i275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i281)
  %cmp.i.i282 = icmp slt i32 %.pr.i281, 0
  br i1 %cmp.i.i282, label %do.end7.i283.sw.epilog70_crit_edge, label %do.end7.i283.if.end.i.i289_crit_edge

do.end7.i283.if.end.i.i289_crit_edge:             ; preds = %do.end7.i283
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i289

do.end7.i283.sw.epilog70_crit_edge:               ; preds = %do.end7.i283
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

if.end.i.i289:                                    ; preds = %do.end7.i283.if.end.i.i289_crit_edge, %do.body.i278.if.end.i.i289_crit_edge
  %dev.i.i284 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %111 = ptrtoint ptr %dev.i.i284 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i284, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  %shl.i.i.i285 = shl i32 %114, 8
  %or.i.i286 = or i32 %shl.i.i.i285, -2147483648
  %call2.i.i287 = tail call i32 @usb_control_msg(ptr noundef %112, i32 noundef %or.i.i286, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext 1420, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i287)
  %cmp3.i.i288 = icmp slt i32 %call2.i.i287, 0
  br i1 %cmp3.i.i288, label %do.end.i.i291, label %if.end.i.i289.sw.epilog70_crit_edge

if.end.i.i289.sw.epilog70_crit_edge:              ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog70

do.end.i.i291:                                    ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i287) #10
  %115 = ptrtoint ptr %usb_err.i275 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call2.i.i287, ptr %usb_err.i275, align 8
  br label %sw.epilog70

sw.epilog70:                                      ; preds = %do.end.i.i291, %if.end.i.i289.sw.epilog70_crit_edge, %do.end7.i283.sw.epilog70_crit_edge, %sw.bb69.sw.epilog70_crit_edge, %do.end.i.i273, %if.end.i.i271.sw.epilog70_crit_edge, %do.end7.i265.sw.epilog70_crit_edge, %sw.bb68.sw.epilog70_crit_edge, %if.then65.sw.epilog70_crit_edge
  tail call void @msleep(i32 noundef 100) #7
  br label %if.end71

if.end71:                                         ; preds = %sw.epilog70, %sw.epilog62
  %116 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sensor, align 2
  %118 = zext i8 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %117, label %if.end71.sw.epilog76_crit_edge [
    i8 6, label %sw.bb74
    i8 9, label %sw.bb75
  ]

if.end71.sw.epilog76_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

sw.bb74:                                          ; preds = %if.end71
  %usb_err.i293 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %119 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %usb_err.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp.i294 = icmp slt i32 %120, 0
  br i1 %cmp.i294, label %sw.bb74.sw.epilog76_crit_edge, label %do.body.i296

sw.bb74.sw.epilog76_crit_edge:                    ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

do.body.i296:                                     ; preds = %sw.bb74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %121 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %121)
  %cmp1.i295 = icmp sgt i32 %121, 6
  br i1 %cmp1.i295, label %do.end7.i301, label %do.body.i296.if.end.i.i307_crit_edge

do.body.i296.if.end.i.i307_crit_edge:             ; preds = %do.body.i296
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i307

do.end7.i301:                                     ; preds = %do.body.i296
  %name.i297 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i297, i32 noundef 135, i32 noundef 65535, i32 noundef 65535) #10
  %122 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pr.i299 = load i32, ptr %usb_err.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i299)
  %cmp.i.i300 = icmp slt i32 %.pr.i299, 0
  br i1 %cmp.i.i300, label %do.end7.i301.sw.epilog76_crit_edge, label %do.end7.i301.if.end.i.i307_crit_edge

do.end7.i301.if.end.i.i307_crit_edge:             ; preds = %do.end7.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i307

do.end7.i301.sw.epilog76_crit_edge:               ; preds = %do.end7.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.end.i.i307:                                    ; preds = %do.end7.i301.if.end.i.i307_crit_edge, %do.body.i296.if.end.i.i307_crit_edge
  %dev.i.i302 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %123 = ptrtoint ptr %dev.i.i302 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i302, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i.i303 = shl i32 %126, 8
  %or.i.i304 = or i32 %shl.i.i.i303, -2147483648
  %call2.i.i305 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i.i304, i8 noundef zeroext -121, i8 noundef zeroext 64, i16 noundef zeroext -1, i16 noundef zeroext -1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i305)
  %cmp3.i.i306 = icmp slt i32 %call2.i.i305, 0
  br i1 %cmp3.i.i306, label %do.end.i.i309, label %reg_w.exit310

do.end.i.i309:                                    ; preds = %if.end.i.i307
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i305) #10
  %127 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call2.i.i305, ptr %usb_err.i293, align 8
  br label %sw.epilog76

reg_w.exit310:                                    ; preds = %if.end.i.i307
  %128 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr380 = load i32, ptr %usb_err.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr380)
  %cmp.i312 = icmp slt i32 %.pr380, 0
  br i1 %cmp.i312, label %reg_w.exit310.sw.epilog76_crit_edge, label %do.body.i314

reg_w.exit310.sw.epilog76_crit_edge:              ; preds = %reg_w.exit310
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

do.body.i314:                                     ; preds = %reg_w.exit310
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %129 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %129)
  %cmp1.i313 = icmp sgt i32 %129, 6
  br i1 %cmp1.i313, label %do.end7.i319, label %do.body.i314.if.end.i.i325_crit_edge

do.body.i314.if.end.i.i325_crit_edge:             ; preds = %do.body.i314
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i325

do.end7.i319:                                     ; preds = %do.body.i314
  %name.i315 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i315, i32 noundef 136, i32 noundef 65280, i32 noundef 61681) #10
  %130 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr.i317 = load i32, ptr %usb_err.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i317)
  %cmp.i.i318 = icmp slt i32 %.pr.i317, 0
  br i1 %cmp.i.i318, label %do.end7.i319.sw.epilog76_crit_edge, label %do.end7.i319.if.end.i.i325_crit_edge

do.end7.i319.if.end.i.i325_crit_edge:             ; preds = %do.end7.i319
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i325

do.end7.i319.sw.epilog76_crit_edge:               ; preds = %do.end7.i319
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.end.i.i325:                                    ; preds = %do.end7.i319.if.end.i.i325_crit_edge, %do.body.i314.if.end.i.i325_crit_edge
  %131 = ptrtoint ptr %dev.i.i302 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i.i302, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %shl.i.i.i321 = shl i32 %134, 8
  %or.i.i322 = or i32 %shl.i.i.i321, -2147483648
  %call2.i.i323 = tail call i32 @usb_control_msg(ptr noundef %132, i32 noundef %or.i.i322, i8 noundef zeroext -120, i8 noundef zeroext 64, i16 noundef zeroext -256, i16 noundef zeroext -3855, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i323)
  %cmp3.i.i324 = icmp slt i32 %call2.i.i323, 0
  br i1 %cmp3.i.i324, label %do.end.i.i327, label %reg_w.exit328

do.end.i.i327:                                    ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i323) #10
  %135 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %call2.i.i323, ptr %usb_err.i293, align 8
  br label %sw.epilog76

reg_w.exit328:                                    ; preds = %if.end.i.i325
  %136 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr382.pr = load i32, ptr %usb_err.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr382.pr)
  %cmp.i330 = icmp slt i32 %.pr382.pr, 0
  br i1 %cmp.i330, label %reg_w.exit328.sw.epilog76_crit_edge, label %do.body.i332

reg_w.exit328.sw.epilog76_crit_edge:              ; preds = %reg_w.exit328
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

do.body.i332:                                     ; preds = %reg_w.exit328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %137 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %137)
  %cmp1.i331 = icmp sgt i32 %137, 6
  br i1 %cmp1.i331, label %do.end7.i337, label %do.body.i332.if.end.i.i343_crit_edge

do.body.i332.if.end.i.i343_crit_edge:             ; preds = %do.body.i332
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i343

do.end7.i337:                                     ; preds = %do.body.i332
  %name.i333 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i333, i32 noundef 160, i32 noundef 0, i32 noundef 49151) #10
  %138 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr.i335 = load i32, ptr %usb_err.i293, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i335)
  %cmp.i.i336 = icmp slt i32 %.pr.i335, 0
  br i1 %cmp.i.i336, label %do.end7.i337.sw.epilog76_crit_edge, label %do.end7.i337.if.end.i.i343_crit_edge

do.end7.i337.if.end.i.i343_crit_edge:             ; preds = %do.end7.i337
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i343

do.end7.i337.sw.epilog76_crit_edge:               ; preds = %do.end7.i337
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.end.i.i343:                                    ; preds = %do.end7.i337.if.end.i.i343_crit_edge, %do.body.i332.if.end.i.i343_crit_edge
  %139 = ptrtoint ptr %dev.i.i302 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i302, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i.i339 = shl i32 %142, 8
  %or.i.i340 = or i32 %shl.i.i.i339, -2147483648
  %call2.i.i341 = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i.i340, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -16385, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i341)
  %cmp3.i.i342 = icmp slt i32 %call2.i.i341, 0
  br i1 %cmp3.i.i342, label %do.end.i.i345, label %if.end.i.i343.sw.epilog76_crit_edge

if.end.i.i343.sw.epilog76_crit_edge:              ; preds = %if.end.i.i343
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

do.end.i.i345:                                    ; preds = %if.end.i.i343
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i341) #10
  %143 = ptrtoint ptr %usb_err.i293 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call2.i.i341, ptr %usb_err.i293, align 8
  br label %sw.epilog76

sw.bb75:                                          ; preds = %if.end71
  tail call fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr noundef nonnull @poxxxx_init_end_2)
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 22, ptr noundef nonnull @setwb.data, i8 noundef zeroext 1) #7
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext 24, ptr noundef getelementptr inbounds ([2 x i8], ptr @setwb.data, i32 0, i32 1), i8 noundef zeroext 1) #7
  tail call void @msleep(i32 noundef 80) #7
  %usb_err.i347 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %144 = ptrtoint ptr %usb_err.i347 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %usb_err.i347, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i348 = icmp slt i32 %145, 0
  br i1 %cmp.i348, label %sw.bb75.sw.epilog76_crit_edge, label %do.body.i350

sw.bb75.sw.epilog76_crit_edge:                    ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

do.body.i350:                                     ; preds = %sw.bb75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %146 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %146)
  %cmp1.i349 = icmp sgt i32 %146, 6
  br i1 %cmp1.i349, label %do.end7.i355, label %do.body.i350.if.end.i.i361_crit_edge

do.body.i350.if.end.i.i361_crit_edge:             ; preds = %do.body.i350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i361

do.end7.i355:                                     ; preds = %do.body.i350
  %name.i351 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i351, i32 noundef 137, i32 noundef 65535, i32 noundef 65023) #10
  %147 = ptrtoint ptr %usb_err.i347 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr.i353 = load i32, ptr %usb_err.i347, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i353)
  %cmp.i.i354 = icmp slt i32 %.pr.i353, 0
  br i1 %cmp.i.i354, label %do.end7.i355.sw.epilog76_crit_edge, label %do.end7.i355.if.end.i.i361_crit_edge

do.end7.i355.if.end.i.i361_crit_edge:             ; preds = %do.end7.i355
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i361

do.end7.i355.sw.epilog76_crit_edge:               ; preds = %do.end7.i355
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.end.i.i361:                                    ; preds = %do.end7.i355.if.end.i.i361_crit_edge, %do.body.i350.if.end.i.i361_crit_edge
  %dev.i.i356 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %148 = ptrtoint ptr %dev.i.i356 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i.i356, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 8
  %shl.i.i.i357 = shl i32 %151, 8
  %or.i.i358 = or i32 %shl.i.i.i357, -2147483648
  %call2.i.i359 = tail call i32 @usb_control_msg(ptr noundef %149, i32 noundef %or.i.i358, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext -1, i16 noundef zeroext -513, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i359)
  %cmp3.i.i360 = icmp slt i32 %call2.i.i359, 0
  br i1 %cmp3.i.i360, label %do.end.i.i363, label %if.end.i.i361.sw.epilog76_crit_edge

if.end.i.i361.sw.epilog76_crit_edge:              ; preds = %if.end.i.i361
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

do.end.i.i363:                                    ; preds = %if.end.i.i361
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i362 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i359) #10
  %152 = ptrtoint ptr %usb_err.i347 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call2.i.i359, ptr %usb_err.i347, align 8
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %do.end.i.i363, %if.end.i.i361.sw.epilog76_crit_edge, %do.end7.i355.sw.epilog76_crit_edge, %sw.bb75.sw.epilog76_crit_edge, %do.end.i.i345, %if.end.i.i343.sw.epilog76_crit_edge, %do.end7.i337.sw.epilog76_crit_edge, %reg_w.exit328.sw.epilog76_crit_edge, %do.end.i.i327, %do.end7.i319.sw.epilog76_crit_edge, %reg_w.exit310.sw.epilog76_crit_edge, %do.end.i.i309, %do.end7.i301.sw.epilog76_crit_edge, %sw.bb74.sw.epilog76_crit_edge, %if.end71.sw.epilog76_crit_edge
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %153 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %usb_err, align 8
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %3)
  %cmp4 = icmp eq i8 %3, -40
  br i1 %cmp4, label %do.body, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp6 = icmp sgt i32 %4, 4
  br i1 %cmp6, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %len) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  %image_offset = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %5 = ptrtoint ptr %image_offset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %image_offset, align 8
  %conv12 = zext i8 %6 to i32
  %add.ptr = getelementptr i8, ptr %data, i32 %conv12
  %sub = sub i32 %len, %conv12
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub) #7
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bridge, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp17 = icmp eq i8 %8, 0
  br i1 %cmp17, label %if.then19, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %9 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %image_len, align 8
  %sizeimage = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage, align 4
  %sub20 = sub i32 %12, %10
  %13 = tail call i32 @llvm.smin.i32(i32 %sub20, i32 %len)
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end15.if.end26_crit_edge
  %len.addr.1 = phi i32 [ %13, %if.then19 ], [ %len, %if.end15.if.end26_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %len.addr.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %1, label %sw.default [
    i8 2, label %sw.bb
    i8 9, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %do.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp1.i = icmp sgt i32 %5, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef 137, i32 noundef 1420, i32 noundef 255) #10
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end7.i.sw.epilog_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.sw.epilog_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %10, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i.i, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext 1420, i16 noundef zeroext 255, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i) #10
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.default
  %usb_err.i8 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %15 = ptrtoint ptr %usb_err.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i9 = icmp slt i32 %16, 0
  br i1 %cmp.i9, label %if.then.sw.epilog_crit_edge, label %do.body.i11

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.i11:                                      ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp1.i10 = icmp sgt i32 %17, 6
  br i1 %cmp1.i10, label %do.end7.i16, label %do.body.i11.if.end.i.i22_crit_edge

do.body.i11.if.end.i.i22_crit_edge:               ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i22

do.end7.i16:                                      ; preds = %do.body.i11
  %name.i12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i12, i32 noundef 137, i32 noundef 65535, i32 noundef 65535) #10
  %18 = ptrtoint ptr %usb_err.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i14 = load i32, ptr %usb_err.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i14)
  %cmp.i.i15 = icmp slt i32 %.pr.i14, 0
  br i1 %cmp.i.i15, label %do.end7.i16.sw.epilog_crit_edge, label %do.end7.i16.if.end.i.i22_crit_edge

do.end7.i16.if.end.i.i22_crit_edge:               ; preds = %do.end7.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i22

do.end7.i16.sw.epilog_crit_edge:                  ; preds = %do.end7.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i22:                                     ; preds = %do.end7.i16.if.end.i.i22_crit_edge, %do.body.i11.if.end.i.i22_crit_edge
  %dev.i.i17 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i17, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i18 = shl i32 %22, 8
  %or.i.i19 = or i32 %shl.i.i.i18, -2147483648
  %call2.i.i20 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i.i19, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext -1, i16 noundef zeroext -1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i20)
  %cmp3.i.i21 = icmp slt i32 %call2.i.i20, 0
  br i1 %cmp3.i.i21, label %do.end.i.i24, label %if.end.i.i22.sw.epilog_crit_edge

if.end.i.i22.sw.epilog_crit_edge:                 ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i.i24:                                     ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i20) #10
  %23 = ptrtoint ptr %usb_err.i8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i.i20, ptr %usb_err.i8, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i.i24, %if.end.i.i22.sw.epilog_crit_edge, %do.end7.i16.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %do.end.i.i, %if.end.i.i.sw.epilog_crit_edge, %do.end7.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %usb_err.i26 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %24 = ptrtoint ptr %usb_err.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_err.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i27 = icmp slt i32 %25, 0
  br i1 %cmp.i27, label %sw.epilog.cleanup_crit_edge, label %do.body.i29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i29:                                      ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp1.i28 = icmp sgt i32 %26, 6
  br i1 %cmp1.i28, label %do.end7.i34, label %do.body.i29.if.end.i.i40_crit_edge

do.body.i29.if.end.i.i40_crit_edge:               ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i40

do.end7.i34:                                      ; preds = %do.body.i29
  %name.i30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i30, i32 noundef 160, i32 noundef 1, i32 noundef 45825) #10
  %27 = ptrtoint ptr %usb_err.i26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i32 = load i32, ptr %usb_err.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i32)
  %cmp.i.i33 = icmp slt i32 %.pr.i32, 0
  br i1 %cmp.i.i33, label %do.end7.i34.cleanup_crit_edge, label %do.end7.i34.if.end.i.i40_crit_edge

do.end7.i34.if.end.i.i40_crit_edge:               ; preds = %do.end7.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i40

do.end7.i34.cleanup_crit_edge:                    ; preds = %do.end7.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i40:                                     ; preds = %do.end7.i34.if.end.i.i40_crit_edge, %do.body.i29.if.end.i.i40_crit_edge
  %dev.i.i35 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %28 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i35, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i.i36 = shl i32 %31, 8
  %or.i.i37 = or i32 %shl.i.i.i36, -2147483648
  %call2.i.i38 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i.i37, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -19711, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i38)
  %cmp3.i.i39 = icmp slt i32 %call2.i.i38, 0
  br i1 %cmp3.i.i39, label %if.end.i.i40.cleanup.sink.split_crit_edge, label %reg_w.exit43

if.end.i.i40.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

reg_w.exit43:                                     ; preds = %if.end.i.i40
  %32 = ptrtoint ptr %usb_err.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %usb_err.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i45 = icmp slt i32 %.pr, 0
  br i1 %cmp.i45, label %reg_w.exit43.cleanup_crit_edge, label %do.body.i47

reg_w.exit43.cleanup_crit_edge:                   ; preds = %reg_w.exit43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i47:                                      ; preds = %reg_w.exit43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %33 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %33)
  %cmp1.i46 = icmp sgt i32 %33, 6
  br i1 %cmp1.i46, label %do.end7.i52, label %do.body.i47.if.end.i.i58_crit_edge

do.body.i47.if.end.i.i58_crit_edge:               ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i58

do.end7.i52:                                      ; preds = %do.body.i47
  %name.i48 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i48, i32 noundef 160, i32 noundef 9, i32 noundef 45059) #10
  %34 = ptrtoint ptr %usb_err.i26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr.i50 = load i32, ptr %usb_err.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i50)
  %cmp.i.i51 = icmp slt i32 %.pr.i50, 0
  br i1 %cmp.i.i51, label %do.end7.i52.cleanup_crit_edge, label %do.end7.i52.if.end.i.i58_crit_edge

do.end7.i52.if.end.i.i58_crit_edge:               ; preds = %do.end7.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i58

do.end7.i52.cleanup_crit_edge:                    ; preds = %do.end7.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i58:                                     ; preds = %do.end7.i52.if.end.i.i58_crit_edge, %do.body.i47.if.end.i.i58_crit_edge
  %35 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i35, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i.i54 = shl i32 %38, 8
  %or.i.i55 = or i32 %shl.i.i.i54, -2147483648
  %call2.i.i56 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i.i55, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 9, i16 noundef zeroext -20477, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i56)
  %cmp3.i.i57 = icmp slt i32 %call2.i.i56, 0
  br i1 %cmp3.i.i57, label %if.end.i.i58.cleanup.sink.split_crit_edge, label %if.end.i.i58.cleanup_crit_edge

if.end.i.i58.cleanup_crit_edge:                   ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i58.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i58.cleanup.sink.split_crit_edge, %if.end.i.i40.cleanup.sink.split_crit_edge
  %call2.i.i38.sink63 = phi i32 [ %call2.i.i38, %if.end.i.i40.cleanup.sink.split_crit_edge ], [ %call2.i.i56, %if.end.i.i58.cleanup.sink.split_crit_edge ]
  %call6.i.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i38.sink63) #10
  %39 = ptrtoint ptr %usb_err.i26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call2.i.i38.sink63, ptr %usb_err.i26, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.i58.cleanup_crit_edge, %do.end7.i52.cleanup_crit_edge, %reg_w.exit43.cleanup_crit_edge, %do.end7.i34.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
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
  %1 = load i8, ptr %present, align 1, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.then2.if.end7_crit_edge, label %do.body.i

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body.i:                                        ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef 137, i32 noundef 1420, i32 noundef 255) #10
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end7.i.if.end7_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.if.end7_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext 1420, i16 noundef zeroext 255, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.if.end7_crit_edge

if.end.i.i.if.end7_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i) #10
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.then5, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.else
  %usb_err.i22 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %16 = ptrtoint ptr %usb_err.i22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i23 = icmp slt i32 %17, 0
  br i1 %cmp.i23, label %if.then5.if.end7_crit_edge, label %do.body.i25

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body.i25:                                      ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp1.i24 = icmp sgt i32 %18, 6
  br i1 %cmp1.i24, label %do.end7.i30, label %do.body.i25.if.end.i.i36_crit_edge

do.body.i25.if.end.i.i36_crit_edge:               ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i36

do.end7.i30:                                      ; preds = %do.body.i25
  %name.i26 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i26, i32 noundef 137, i32 noundef 65535, i32 noundef 65535) #10
  %19 = ptrtoint ptr %usb_err.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i28 = load i32, ptr %usb_err.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i28)
  %cmp.i.i29 = icmp slt i32 %.pr.i28, 0
  br i1 %cmp.i.i29, label %do.end7.i30.if.end7_crit_edge, label %do.end7.i30.if.end.i.i36_crit_edge

do.end7.i30.if.end.i.i36_crit_edge:               ; preds = %do.end7.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i36

do.end7.i30.if.end7_crit_edge:                    ; preds = %do.end7.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i.i36:                                     ; preds = %do.end7.i30.if.end.i.i36_crit_edge, %do.body.i25.if.end.i.i36_crit_edge
  %dev.i.i31 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i31, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i32 = shl i32 %23, 8
  %or.i.i33 = or i32 %shl.i.i.i32, -2147483648
  %call2.i.i34 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i.i33, i8 noundef zeroext -119, i8 noundef zeroext 64, i16 noundef zeroext -1, i16 noundef zeroext -1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i34)
  %cmp3.i.i35 = icmp slt i32 %call2.i.i34, 0
  br i1 %cmp3.i.i35, label %do.end.i.i38, label %if.end.i.i36.if.end7_crit_edge

if.end.i.i36.if.end7_crit_edge:                   ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end.i.i38:                                     ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i34) #10
  %24 = ptrtoint ptr %usb_err.i22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call2.i.i34, ptr %usb_err.i22, align 8
  br label %if.end7

if.end7:                                          ; preds = %do.end.i.i38, %if.end.i.i36.if.end7_crit_edge, %do.end7.i30.if.end7_crit_edge, %if.then5.if.end7_crit_edge, %if.else.if.end7_crit_edge, %do.end.i.i, %if.end.i.i.if.end7_crit_edge, %do.end7.i.if.end7_crit_edge, %if.then2.if.end7_crit_edge
  %25 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %26)
  %cmp10 = icmp eq i8 %26, 9
  br i1 %cmp10, label %if.then12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end7
  %usb_err.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %27 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usb_err.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i41 = icmp slt i32 %28, 0
  br i1 %cmp.i41, label %if.then12.cleanup_crit_edge, label %do.body.i43

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i43:                                      ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %cmp1.i42 = icmp sgt i32 %29, 6
  br i1 %cmp1.i42, label %do.end7.i48, label %do.body.i43.if.end.i.i54_crit_edge

do.body.i43.if.end.i.i54_crit_edge:               ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i54

do.end7.i48:                                      ; preds = %do.body.i43
  %name.i44 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i44, i32 noundef 160, i32 noundef 38, i32 noundef 45824) #10
  %30 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i46 = load i32, ptr %usb_err.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i46)
  %cmp.i.i47 = icmp slt i32 %.pr.i46, 0
  br i1 %cmp.i.i47, label %do.end7.i48.cleanup_crit_edge, label %do.end7.i48.if.end.i.i54_crit_edge

do.end7.i48.if.end.i.i54_crit_edge:               ; preds = %do.end7.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i54

do.end7.i48.cleanup_crit_edge:                    ; preds = %do.end7.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i54:                                     ; preds = %do.end7.i48.if.end.i.i54_crit_edge, %do.body.i43.if.end.i.i54_crit_edge
  %dev.i.i49 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %31 = ptrtoint ptr %dev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i49, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i.i50 = shl i32 %34, 8
  %or.i.i51 = or i32 %shl.i.i.i50, -2147483648
  %call2.i.i52 = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i.i51, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i52)
  %cmp3.i.i53 = icmp slt i32 %call2.i.i52, 0
  br i1 %cmp3.i.i53, label %if.end.i.i54.cleanup.sink.split_crit_edge, label %reg_w.exit57

if.end.i.i54.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

reg_w.exit57:                                     ; preds = %if.end.i.i54
  %35 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %usb_err.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i59 = icmp slt i32 %.pr, 0
  br i1 %cmp.i59, label %reg_w.exit57.cleanup_crit_edge, label %do.body.i61

reg_w.exit57.cleanup_crit_edge:                   ; preds = %reg_w.exit57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i61:                                      ; preds = %reg_w.exit57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp1.i60 = icmp sgt i32 %36, 6
  br i1 %cmp1.i60, label %do.end7.i66, label %do.body.i61.if.end.i.i72_crit_edge

do.body.i61.if.end.i.i72_crit_edge:               ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i72

do.end7.i66:                                      ; preds = %do.body.i61
  %name.i62 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i62, i32 noundef 160, i32 noundef 4, i32 noundef 45824) #10
  %37 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i64 = load i32, ptr %usb_err.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i64)
  %cmp.i.i65 = icmp slt i32 %.pr.i64, 0
  br i1 %cmp.i.i65, label %do.end7.i66.cleanup_crit_edge, label %do.end7.i66.if.end.i.i72_crit_edge

do.end7.i66.if.end.i.i72_crit_edge:               ; preds = %do.end7.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i72

do.end7.i66.cleanup_crit_edge:                    ; preds = %do.end7.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i72:                                     ; preds = %do.end7.i66.if.end.i.i72_crit_edge, %do.body.i61.if.end.i.i72_crit_edge
  %38 = ptrtoint ptr %dev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i49, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i.i68 = shl i32 %41, 8
  %or.i.i69 = or i32 %shl.i.i.i68, -2147483648
  %call2.i.i70 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i.i69, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i70)
  %cmp3.i.i71 = icmp slt i32 %call2.i.i70, 0
  br i1 %cmp3.i.i71, label %if.end.i.i72.cleanup.sink.split_crit_edge, label %reg_w.exit75

if.end.i.i72.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

reg_w.exit75:                                     ; preds = %if.end.i.i72
  %42 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr95.pr = load i32, ptr %usb_err.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr95.pr)
  %cmp.i77 = icmp slt i32 %.pr95.pr, 0
  br i1 %cmp.i77, label %reg_w.exit75.cleanup_crit_edge, label %do.body.i79

reg_w.exit75.cleanup_crit_edge:                   ; preds = %reg_w.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i79:                                      ; preds = %reg_w.exit75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %43 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %cmp1.i78 = icmp sgt i32 %43, 6
  br i1 %cmp1.i78, label %do.end7.i84, label %do.body.i79.if.end.i.i90_crit_edge

do.body.i79.if.end.i.i90_crit_edge:               ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i90

do.end7.i84:                                      ; preds = %do.body.i79
  %name.i80 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i80, i32 noundef 160, i32 noundef 0, i32 noundef 45824) #10
  %44 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr.i82 = load i32, ptr %usb_err.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i82)
  %cmp.i.i83 = icmp slt i32 %.pr.i82, 0
  br i1 %cmp.i.i83, label %do.end7.i84.cleanup_crit_edge, label %do.end7.i84.if.end.i.i90_crit_edge

do.end7.i84.if.end.i.i90_crit_edge:               ; preds = %do.end7.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i90

do.end7.i84.cleanup_crit_edge:                    ; preds = %do.end7.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i90:                                     ; preds = %do.end7.i84.if.end.i.i90_crit_edge, %do.body.i79.if.end.i.i90_crit_edge
  %45 = ptrtoint ptr %dev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i49, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i.i86 = shl i32 %48, 8
  %or.i.i87 = or i32 %shl.i.i.i86, -2147483648
  %call2.i.i88 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i.i87, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -19712, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i88)
  %cmp3.i.i89 = icmp slt i32 %call2.i.i88, 0
  br i1 %cmp3.i.i89, label %if.end.i.i90.cleanup.sink.split_crit_edge, label %if.end.i.i90.cleanup_crit_edge

if.end.i.i90.cleanup_crit_edge:                   ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i90.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i90.cleanup.sink.split_crit_edge, %if.end.i.i72.cleanup.sink.split_crit_edge, %if.end.i.i54.cleanup.sink.split_crit_edge
  %call2.i.i52.sink102 = phi i32 [ %call2.i.i52, %if.end.i.i54.cleanup.sink.split_crit_edge ], [ %call2.i.i70, %if.end.i.i72.cleanup.sink.split_crit_edge ], [ %call2.i.i88, %if.end.i.i90.cleanup.sink.split_crit_edge ]
  %call6.i.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i52.sink102) #10
  %49 = ptrtoint ptr %usb_err.i40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call2.i.i52.sink102, ptr %usb_err.i40, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.i90.cleanup_crit_edge, %do.end7.i84.cleanup_crit_edge, %reg_w.exit75.cleanup_crit_edge, %do.end7.i66.cleanup_crit_edge, %reg_w.exit57.cleanup_crit_edge, %do.end7.i48.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext %req, i16 noundef zeroext %index, i16 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.if.end29_crit_edge, label %if.end.i

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %conv.i = trunc i16 %req to i8
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext %conv.i, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext %index, ptr noundef %7, i16 noundef zeroext %len, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r_i.exit_crit_edge

if.end.i.reg_r_i.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call3.i) #10
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 64)
  br label %reg_r_i.exit

reg_r_i.exit:                                     ; preds = %do.end.i, %if.end.i.reg_r_i.exit_crit_edge
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp slt i32 %.pr, 0
  br i1 %cmp, label %reg_r_i.exit.if.end29_crit_edge, label %if.end

reg_r_i.exit.if.end29_crit_edge:                  ; preds = %reg_r_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end:                                           ; preds = %reg_r_i.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %len)
  %cmp1 = icmp eq i16 %len, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp4 = icmp sgt i32 %13, 5
  br i1 %cmp1, label %do.body, label %do.body13

do.body:                                          ; preds = %if.end
  br i1 %cmp4, label %do.end, label %do.body.if.end29_crit_edge

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8 = zext i16 %req to i32
  %conv9 = zext i16 %index to i32
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv10 = zext i8 %17 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10) #10
  br label %if.end29

do.body13:                                        ; preds = %if.end
  br i1 %cmp4, label %do.end18, label %do.body13.if.end29_crit_edge

do.body13.if.end29_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %name21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv23 = zext i16 %req to i32
  %conv24 = zext i16 %index to i32
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name21, i32 noundef %conv23, i32 noundef %conv24, i32 noundef 3, ptr noundef %19) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end18, %do.body13.if.end29_crit_edge, %do.end, %do.body.if.end29_crit_edge, %reg_r_i.exit.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @read_sensor_register(ptr noundef %gspca_dev, i16 noundef zeroext %address) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19649, i16 noundef zeroext 1)
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.end.do.body4.preheader_crit_edge, label %do.body.i

if.end.do.body4.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.preheader

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i16 %address to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef 160, i32 noundef %conv4.i, i32 noundef 45882) #10
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end7.i.do.body4.preheader_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.do.body4.preheader_crit_edge:           ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.preheader

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %address, i16 noundef zeroext -19654, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.reg_w.exit100.sink.split_crit_edge, label %reg_w.exit

if.end.i.i.reg_w.exit100.sink.split_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit100.sink.split

reg_w.exit:                                       ; preds = %if.end.i.i
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i84 = icmp slt i32 %.pr, 0
  br i1 %cmp.i84, label %reg_w.exit.do.body4.preheader_crit_edge, label %do.body.i86

reg_w.exit.do.body4.preheader_crit_edge:          ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.preheader

do.body.i86:                                      ; preds = %reg_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp1.i85 = icmp sgt i32 %13, 6
  br i1 %cmp1.i85, label %do.end7.i91, label %do.body.i86.if.end.i.i97_crit_edge

do.body.i86.if.end.i.i97_crit_edge:               ; preds = %do.body.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i97

do.end7.i91:                                      ; preds = %do.body.i86
  %name.i87 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i87, i32 noundef 160, i32 noundef 2, i32 noundef 45881) #10
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i89 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i89)
  %cmp.i.i90 = icmp slt i32 %.pr.i89, 0
  br i1 %cmp.i.i90, label %do.end7.i91.do.body4.preheader_crit_edge, label %do.end7.i91.if.end.i.i97_crit_edge

do.end7.i91.if.end.i.i97_crit_edge:               ; preds = %do.end7.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i97

do.end7.i91.do.body4.preheader_crit_edge:         ; preds = %do.end7.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.preheader

if.end.i.i97:                                     ; preds = %do.end7.i91.if.end.i.i97_crit_edge, %do.body.i86.if.end.i.i97_crit_edge
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i.i93 = shl i32 %18, 8
  %or.i.i94 = or i32 %shl.i.i.i93, -2147483648
  %call2.i.i95 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i.i94, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext -19655, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i95)
  %cmp3.i.i96 = icmp slt i32 %call2.i.i95, 0
  br i1 %cmp3.i.i96, label %if.end.i.i97.reg_w.exit100.sink.split_crit_edge, label %if.end.i.i97.do.body4.preheader_crit_edge

if.end.i.i97.do.body4.preheader_crit_edge:        ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.preheader

if.end.i.i97.reg_w.exit100.sink.split_crit_edge:  ; preds = %if.end.i.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit100.sink.split

reg_w.exit100.sink.split:                         ; preds = %if.end.i.i97.reg_w.exit100.sink.split_crit_edge, %if.end.i.i.reg_w.exit100.sink.split_crit_edge
  %call2.i.i.sink102 = phi i32 [ %call2.i.i, %if.end.i.i.reg_w.exit100.sink.split_crit_edge ], [ %call2.i.i95, %if.end.i.i97.reg_w.exit100.sink.split_crit_edge ]
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i.sink102) #10
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2.i.i.sink102, ptr %usb_err.i, align 8
  br label %do.body4.preheader

do.body4.preheader:                               ; preds = %reg_w.exit100.sink.split, %if.end.i.i97.do.body4.preheader_crit_edge, %do.end7.i91.do.body4.preheader_crit_edge, %reg_w.exit.do.body4.preheader_crit_edge, %do.end7.i.do.body4.preheader_crit_edge, %if.end.do.body4.preheader_crit_edge
  br label %do.body4

do.body4:                                         ; preds = %if.end10.do.body4_crit_edge, %do.body4.preheader
  %retry.0 = phi i32 [ %dec, %if.end10.do.body4_crit_edge ], [ 50, %do.body4.preheader ]
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19653, i16 noundef zeroext 1)
  %20 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  br i1 %cmp, label %do.body4.do.end14_crit_edge, label %if.end10

do.body4.do.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.end10:                                         ; preds = %do.body4
  tail call void @msleep(i32 noundef 40) #7
  %dec = add nsw i32 %retry.0, -1
  %cmp12 = icmp sgt i32 %retry.0, 0
  br i1 %cmp12, label %if.end10.do.body4_crit_edge, label %if.end10.do.end14_crit_edge

if.end10.do.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.end10.do.body4_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

do.end14:                                         ; preds = %if.end10.do.end14_crit_edge, %do.body4.do.end14_crit_edge
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19650, i16 noundef zeroext 1)
  %24 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19651, i16 noundef zeroext 1)
  %28 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19652, i16 noundef zeroext 1)
  %32 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv21 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp22.not = icmp eq i8 %35, 0
  br i1 %cmp22.not, label %do.end14.if.end47_crit_edge, label %land.lhs.true

do.end14.if.end47_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %do.end14
  %conv24 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp25.not = icmp eq i8 %31, 0
  br i1 %cmp25.not, label %land.lhs.true.if.end47_crit_edge, label %land.lhs.true27

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true27:                                  ; preds = %land.lhs.true
  %conv28 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp29.not = icmp eq i8 %27, 0
  br i1 %cmp29.not, label %land.lhs.true27.if.end47_crit_edge, label %do.body32

land.lhs.true27.if.end47_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.body32:                                        ; preds = %land.lhs.true27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp33 = icmp sgt i32 %36, 0
  br i1 %cmp33, label %do.end38, label %do.body32.if.end47_crit_edge

do.body32.if.end47_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv28) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end38, %do.body32.if.end47_crit_edge, %land.lhs.true27.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %do.end14.if.end47_crit_edge
  tail call fastcc void @reg_r(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext -19660, i16 noundef zeroext 1)
  %37 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp51 = icmp eq i8 %40, 2
  br i1 %cmp51, label %if.then53, label %if.end57

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %conv21, 8
  %conv55 = zext i8 %31 to i32
  %add = or i32 %shl, %conv55
  %conv56 = trunc i32 %add to i16
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %conv58 = zext i8 %35 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then53, %do.end
  %retval.0 = phi i16 [ %conv56, %if.then53 ], [ %conv58, %if.end57 ], [ 0, %do.end ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %data.i64 = alloca i8, align 1
  %data.i61 = alloca i8, align 1
  %val.addr.i60 = alloca i8, align 1
  %data.i55 = alloca i8, align 1
  %data.i54 = alloca [2 x i8], align 1
  %val.addr.i52 = alloca i8, align 1
  %data.i53 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
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
  %4 = load i8, ptr %streaming, align 2, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963800, i32 %6)
  %cmp.not = icmp eq i32 %6, 9963800
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id1 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %7 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id1, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %8, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb2
    i32 9963778, label %sw.bb4
    i32 9963796, label %sw.bb7
    i32 9963803, label %sw.bb12
    i32 9963794, label %sw.bb14
    i32 9963795, label %sw.bb16
    i32 9963793, label %sw.bb19
    i32 9963804, label %sw.bb21
    i32 9963800, label %sw.bb23
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %conv.i = trunc i32 %11 to i8
  %conv1.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.not.i = icmp eq i32 %conv1.i, 0
  %conv6.i = xor i8 %conv.i, -1
  %conv4.i = and i8 %conv.i, 127
  %storemerge.i = select i1 %cmp.not.i, i8 %conv6.i, i8 %conv4.i
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %storemerge.i, ptr %data.i, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -104, ptr noundef nonnull %data.i, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val3, align 4
  %conv = trunc i32 %14 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %15 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %val.addr.i, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -103, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val5, align 4
  %conv6 = trunc i32 %17 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i52)
  %18 = ptrtoint ptr %val.addr.i52 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv6, ptr %val.addr.i52, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i53) #7
  %19 = lshr i8 %conv6, 3
  %20 = xor i8 %19, -1
  %sub2.i = add i8 %20, %conv6
  %21 = ptrtoint ptr %data.i53 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %sub2.i, ptr %data.i53, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -108, ptr noundef nonnull %data.i53, i8 noundef zeroext 1) #7
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -107, ptr noundef nonnull %val.addr.i52, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i53) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i52)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %22 = getelementptr i8, ptr %1, i32 1024
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9 = icmp ne i32 %26, 0
  %vflip = getelementptr i8, ptr %1, i32 1028
  %27 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vflip, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool11 = icmp ne i32 %30, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i54) #7
  %31 = getelementptr inbounds [2 x i8], ptr %data.i54, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %31, align 1, !annotation !249
  %flags.i = getelementptr i8, ptr %1, i32 1035
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags.i, align 1
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp ne i8 %35, 0
  %spec.select.i = xor i1 %tobool9, %tobool.not.i
  %36 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool7.not.i = icmp ne i8 %36, 0
  %spec.select77.i = xor i1 %tobool11, %tobool7.not.i
  %sensor.i = getelementptr i8, ptr %1, i32 1034
  %37 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sensor.i, align 2
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %38, label %sw.bb7.sethvflip.exit_crit_edge [
    i8 2, label %sw.bb7.sw.bb.i_crit_edge
    i8 3, label %sw.bb7.sw.bb.i_crit_edge78
    i8 4, label %sw.bb7.sw.bb.i_crit_edge79
    i8 5, label %sw.bb7.sw.bb28.i_crit_edge
    i8 6, label %sw.bb7.sw.bb28.i_crit_edge80
    i8 7, label %sw.bb48.i
  ]

sw.bb7.sw.bb28.i_crit_edge80:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28.i

sw.bb7.sw.bb28.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28.i

sw.bb7.sw.bb.i_crit_edge79:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb7.sw.bb.i_crit_edge78:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb7.sw.bb.i_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb7.sethvflip.exit_crit_edge:                  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sethvflip.exit

sw.bb.i:                                          ; preds = %sw.bb7.sw.bb.i_crit_edge, %sw.bb7.sw.bb.i_crit_edge78, %sw.bb7.sw.bb.i_crit_edge79
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %31, align 1
  %41 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %data.i54, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -16, ptr noundef nonnull %data.i54, i8 noundef zeroext 2) #7
  %42 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sensor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp.i = icmp eq i8 %43, 2
  %conv18.i = select i1 %cmp.i, i8 3, i8 1
  %44 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv18.i, ptr %data.i54, align 1
  %mul.i = select i1 %spec.select.i, i8 2, i8 0
  %conv23.i = zext i1 %spec.select77.i to i8
  %or.i = or i8 %mul.i, %conv23.i
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or.i, ptr %31, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 32, ptr noundef nonnull %data.i54, i8 noundef zeroext 2) #7
  br label %sethvflip.exit

sw.bb28.i:                                        ; preds = %sw.bb7.sw.bb28.i_crit_edge, %sw.bb7.sw.bb28.i_crit_edge80
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %38)
  %cmp31.i = icmp eq i8 %38, 5
  %conv34.i = select i1 %cmp31.i, i8 1, i8 7
  %mul38.i = select i1 %spec.select.i, i8 32, i8 0
  %mul41.i = select i1 %spec.select77.i, i8 16, i8 0
  %or42.i = or i8 %mul41.i, %conv34.i
  %or45.i = or i8 %or42.i, %mul38.i
  %46 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %or45.i, ptr %data.i54, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 30, ptr noundef nonnull %data.i54, i8 noundef zeroext 1) #7
  br label %sethvflip.exit

sw.bb48.i:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %data.i54, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 3, ptr noundef nonnull %data.i54, i8 noundef zeroext 1) #7
  %mul53.i = select i1 %spec.select.i, i8 -128, i8 0
  %or57.i = select i1 %spec.select77.i, i8 70, i8 6
  %or58.i = or i8 %or57.i, %mul53.i
  %48 = ptrtoint ptr %data.i54 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or58.i, ptr %data.i54, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 30, ptr noundef nonnull %data.i54, i8 noundef zeroext 1) #7
  br label %sethvflip.exit

sethvflip.exit:                                   ; preds = %sw.bb48.i, %sw.bb28.i, %sw.bb.i, %sw.bb7.sethvflip.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i54) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %49 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i55) #7
  %sensor.i56 = getelementptr i8, ptr %1, i32 1034
  %51 = ptrtoint ptr %sensor.i56 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sensor.i56, align 2
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %52, label %sw.bb12.setsharpness.exit_crit_edge [
    i8 7, label %sw.bb.i58
    i8 9, label %sw.bb12.sw.epilog.sink.split.i_crit_edge
  ]

sw.bb12.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb12.setsharpness.exit_crit_edge:              ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %setsharpness.exit

sw.bb.i58:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %data.i55 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %data.i55, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 3, ptr noundef nonnull %data.i55, i8 noundef zeroext 1) #7
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb.i58, %sw.bb12.sw.epilog.sink.split.i_crit_edge
  %.sink77 = phi i8 [ 3, %sw.bb.i58 ], [ 15, %sw.bb12.sw.epilog.sink.split.i_crit_edge ]
  %.sink75 = phi i8 [ -75, %sw.bb.i58 ], [ 96, %sw.bb12.sw.epilog.sink.split.i_crit_edge ]
  %.sink = phi i8 [ 106, %sw.bb.i58 ], [ 126, %sw.bb12.sw.epilog.sink.split.i_crit_edge ]
  %.sink.i = phi i8 [ 97, %sw.bb.i58 ], [ 89, %sw.bb12.sw.epilog.sink.split.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp4.i = icmp slt i32 %50, 0
  %55 = trunc i32 %50 to i8
  %56 = mul i8 %.sink77, %55
  %conv10.i = add i8 %56, %.sink75
  %storemerge.i59 = select i1 %cmp4.i, i8 %.sink, i8 %conv10.i
  %57 = ptrtoint ptr %data.i55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %storemerge.i59, ptr %data.i55, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext %.sink.i, ptr noundef nonnull %data.i55, i8 noundef zeroext 1) #7
  br label %setsharpness.exit

setsharpness.exit:                                ; preds = %sw.epilog.sink.split.i, %sw.bb12.setsharpness.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i55) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %58 = ptrtoint ptr %val15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val15, align 4
  %arrayidx.i = getelementptr [2 x i8], ptr @setautogain.data, i32 0, i32 %59
  tail call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -47, ptr noundef %arrayidx.i, i8 noundef zeroext 1) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val17, align 4
  %conv18 = trunc i32 %61 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i60)
  %62 = ptrtoint ptr %val.addr.i60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv18, ptr %val.addr.i60, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 21, ptr noundef nonnull %val.addr.i60, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i60)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %63 = ptrtoint ptr %val20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i61) #7
  %65 = lshr i32 %64, 8
  %conv.i62 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %data.i61 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i62, ptr %data.i61, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 26, ptr noundef nonnull %data.i61, i8 noundef zeroext 1) #7
  %conv1.i63 = trunc i32 %64 to i8
  %67 = ptrtoint ptr %data.i61 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv1.i63, ptr %data.i61, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext 27, ptr noundef nonnull %data.i61, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i61) #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %68 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i64) #7
  %val.tr.i = trunc i32 %69 to i8
  %70 = shl i8 %val.tr.i, 4
  %conv.i65 = or i8 %70, 15
  %71 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i65, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -86, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %72 = trunc i32 %69 to i16
  %73 = mul i16 %72, 12
  %conv1.i66 = add i16 %73, 613
  %74 = lshr i16 %conv1.i66, 8
  %conv3.i = trunc i16 %74 to i8
  %75 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv3.i, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -60, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %conv4.i67 = trunc i16 %conv1.i66 to i8
  %76 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv4.i67, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -59, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %conv6.i68 = sub i16 1093, %73
  %77 = lshr i16 %conv6.i68, 8
  %conv9.i = trunc i16 %77 to i8
  %78 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv9.i, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -58, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %conv10.i69 = trunc i16 %conv6.i68 to i8
  %79 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv10.i69, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -57, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %80 = mul i16 %72, 9
  %conv13.i = add i16 %80, 342
  %81 = lshr i16 %conv13.i, 8
  %conv16.i = trunc i16 %81 to i8
  %82 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv16.i, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -56, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %conv17.i = trunc i16 %conv13.i to i8
  %83 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv17.i, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -55, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %conv20.i = sub i16 702, %80
  %84 = lshr i16 %conv20.i, 8
  %conv23.i70 = trunc i16 %84 to i8
  %85 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv23.i70, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -54, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  %conv24.i = trunc i16 %conv20.i to i8
  %86 = ptrtoint ptr %data.i64 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv24.i, ptr %data.i64, align 1
  call fastcc void @i2c_write(ptr noundef %add.ptr, i8 noundef zeroext -53, ptr noundef nonnull %data.i64, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i64) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %sensor.i71 = getelementptr i8, ptr %1, i32 1034
  %87 = ptrtoint ptr %sensor.i71 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %sensor.i71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %88)
  %cmp.not.i72 = icmp eq i8 %88, 5
  br i1 %cmp.not.i72, label %if.end.i, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %89 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val24, align 4
  %arrayidx.i73 = getelementptr [3 x ptr], ptr @setlightfreq.ov7660_freq_tb, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i73, align 4
  tail call fastcc void @usb_exchange(ptr noundef %add.ptr, ptr noundef %92) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %sw.bb23.sw.epilog_crit_edge, %sw.bb21, %sw.bb19, %sw.bb16, %sw.bb14, %setsharpness.exit, %sethvflip.exit, %sw.bb4, %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %93 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %94, %sw.epilog ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext %reg, ptr nocapture noundef readonly %val, i8 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %size)
  %cmp1 = icmp eq i8 %size, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp4 = icmp sgt i32 %2, 6
  br i1 %cmp1, label %do.body, label %do.body13

do.body:                                          ; preds = %if.end
  br i1 %cmp4, label %do.end, label %do.body.if.end31_crit_edge

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv8 = zext i8 %reg to i32
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv9 = zext i8 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name, i32 noundef %conv8, i32 noundef %conv9) #10
  br label %if.end31

do.body13:                                        ; preds = %if.end
  br i1 %cmp4, label %do.end19, label %do.body13.if.end31_crit_edge

do.body13.if.end31_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %name22 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv24 = zext i8 %reg to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv25 = zext i8 %6 to i32
  %arrayidx = getelementptr i8, ptr %val, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %8 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name22, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %conv26) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end19, %do.body13.if.end31_crit_edge, %do.end, %do.body.if.end31_crit_edge
  %9 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %if.end31.reg_w_i.exit109_crit_edge, label %if.end.i

if.end31.reg_w_i.exit109_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109

if.end.i:                                         ; preds = %if.end31
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or2.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext -19649, ptr noundef %16, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r_i.exit_crit_edge

if.end.i.reg_r_i.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call3.i) #10
  %17 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3.i, ptr %usb_err, align 8
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 64)
  br label %reg_r_i.exit

reg_r_i.exit:                                     ; preds = %do.end.i, %if.end.i.reg_r_i.exit_crit_edge
  %21 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i83 = icmp slt i32 %.pr, 0
  br i1 %cmp.i83, label %reg_r_i.exit.reg_w_i.exit109_crit_edge, label %if.end.i86

reg_r_i.exit.reg_w_i.exit109_crit_edge:           ; preds = %reg_r_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109

if.end.i86:                                       ; preds = %reg_r_i.exit
  %conv32 = zext i8 %size to i16
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i85 = shl i32 %25, 8
  %or.i = or i32 %shl.i.i85, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv32, i16 noundef zeroext -19660, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i86.reg_w_i.exit109.sink.split_crit_edge, label %reg_w_i.exit

if.end.i86.reg_w_i.exit109.sink.split_crit_edge:  ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109.sink.split

reg_w_i.exit:                                     ; preds = %if.end.i86
  %26 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr146 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr146)
  %cmp.i89 = icmp slt i32 %.pr146, 0
  br i1 %cmp.i89, label %reg_w_i.exit.reg_w_i.exit109_crit_edge, label %if.end.i95

reg_w_i.exit.reg_w_i.exit109_crit_edge:           ; preds = %reg_w_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109

if.end.i95:                                       ; preds = %reg_w_i.exit
  %conv33 = zext i8 %reg to i16
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i91 = shl i32 %30, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %call2.i93 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i92, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv33, i16 noundef zeroext -19654, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i93)
  %cmp3.i94 = icmp slt i32 %call2.i93, 0
  br i1 %cmp3.i94, label %if.end.i95.reg_w_i.exit109.sink.split_crit_edge, label %reg_w_i.exit98

if.end.i95.reg_w_i.exit109.sink.split_crit_edge:  ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109.sink.split

reg_w_i.exit98:                                   ; preds = %if.end.i95
  %31 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr149.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr149.pr)
  %cmp.i100 = icmp slt i32 %.pr149.pr, 0
  br i1 %cmp.i100, label %reg_w_i.exit98.reg_w_i.exit109_crit_edge, label %if.end.i106

reg_w_i.exit98.reg_w_i.exit109_crit_edge:         ; preds = %reg_w_i.exit98
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109

if.end.i106:                                      ; preds = %reg_w_i.exit98
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %val, align 1
  %conv35 = zext i8 %33 to i16
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i102 = shl i32 %37, 8
  %or.i103 = or i32 %shl.i.i102, -2147483648
  %call2.i104 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i103, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv35, i16 noundef zeroext -19658, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i104)
  %cmp3.i105 = icmp slt i32 %call2.i104, 0
  br i1 %cmp3.i105, label %if.end.i106.reg_w_i.exit109.sink.split_crit_edge, label %if.end.i106.reg_w_i.exit109_crit_edge

if.end.i106.reg_w_i.exit109_crit_edge:            ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109

if.end.i106.reg_w_i.exit109.sink.split_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit109.sink.split

reg_w_i.exit109.sink.split:                       ; preds = %if.end.i106.reg_w_i.exit109.sink.split_crit_edge, %if.end.i95.reg_w_i.exit109.sink.split_crit_edge, %if.end.i86.reg_w_i.exit109.sink.split_crit_edge
  %call2.i.sink173 = phi i32 [ %call2.i, %if.end.i86.reg_w_i.exit109.sink.split_crit_edge ], [ %call2.i93, %if.end.i95.reg_w_i.exit109.sink.split_crit_edge ], [ %call2.i104, %if.end.i106.reg_w_i.exit109.sink.split_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.sink173) #10
  %38 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call2.i.sink173, ptr %usb_err, align 8
  br label %reg_w_i.exit109

reg_w_i.exit109:                                  ; preds = %reg_w_i.exit109.sink.split, %if.end.i106.reg_w_i.exit109_crit_edge, %reg_w_i.exit98.reg_w_i.exit109_crit_edge, %reg_w_i.exit.reg_w_i.exit109_crit_edge, %reg_r_i.exit.reg_w_i.exit109_crit_edge, %if.end31.reg_w_i.exit109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %size)
  %cmp37 = icmp ugt i8 %size, 1
  br i1 %cmp37, label %if.then39, label %reg_w_i.exit109.if.end42_crit_edge

reg_w_i.exit109.if.end42_crit_edge:               ; preds = %reg_w_i.exit109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then39:                                        ; preds = %reg_w_i.exit109
  %39 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i111 = icmp slt i32 %40, 0
  br i1 %cmp.i111, label %if.then39.reg_w_i.exit131.thread_crit_edge, label %if.end.i117

if.then39.reg_w_i.exit131.thread_crit_edge:       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit131.thread

if.end.i117:                                      ; preds = %if.then39
  %arrayidx40 = getelementptr i8, ptr %val, i32 1
  %41 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %42 to i16
  %dev.i112 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %43 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i112, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i113 = shl i32 %46, 8
  %or.i114 = or i32 %shl.i.i113, -2147483648
  %call2.i115 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i114, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv41, i16 noundef zeroext -19657, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i115)
  %cmp3.i116 = icmp slt i32 %call2.i115, 0
  br i1 %cmp3.i116, label %if.end.i117.reg_w_i.exit131.thread.sink.split_crit_edge, label %if.end.i117.if.end42_crit_edge

if.end.i117.if.end42_crit_edge:                   ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end.i117.reg_w_i.exit131.thread.sink.split_crit_edge: ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit131.thread.sink.split

if.end42:                                         ; preds = %if.end.i117.if.end42_crit_edge, %reg_w_i.exit109.if.end42_crit_edge
  %47 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr152 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr152)
  %cmp.i122 = icmp slt i32 %.pr152, 0
  br i1 %cmp.i122, label %if.end42.reg_w_i.exit131.thread_crit_edge, label %if.end.i128

if.end42.reg_w_i.exit131.thread_crit_edge:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit131.thread

if.end.i128:                                      ; preds = %if.end42
  %dev.i123 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i123, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i124 = shl i32 %51, 8
  %or.i125 = or i32 %shl.i.i124, -2147483648
  %call2.i126 = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i125, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -19655, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i126)
  %cmp3.i127 = icmp slt i32 %call2.i126, 0
  br i1 %cmp3.i127, label %if.end.i128.reg_w_i.exit131.thread.sink.split_crit_edge, label %reg_w_i.exit131

if.end.i128.reg_w_i.exit131.thread.sink.split_crit_edge: ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w_i.exit131.thread.sink.split

reg_w_i.exit131.thread.sink.split:                ; preds = %if.end.i128.reg_w_i.exit131.thread.sink.split_crit_edge, %if.end.i117.reg_w_i.exit131.thread.sink.split_crit_edge
  %call2.i115.sink174 = phi i32 [ %call2.i115, %if.end.i117.reg_w_i.exit131.thread.sink.split_crit_edge ], [ %call2.i126, %if.end.i128.reg_w_i.exit131.thread.sink.split_crit_edge ]
  %call6.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i115.sink174) #10
  %52 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call2.i115.sink174, ptr %usb_err, align 8
  br label %reg_w_i.exit131.thread

reg_w_i.exit131.thread:                           ; preds = %reg_w_i.exit131.thread.sink.split, %if.end42.reg_w_i.exit131.thread_crit_edge, %if.then39.reg_w_i.exit131.thread_crit_edge
  %dev.i134163 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i137164 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %reg_r_i.exit143

reg_w_i.exit131:                                  ; preds = %if.end.i128
  %53 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr162 = load i32, ptr %usb_err, align 8
  %dev.i134 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i137 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr162)
  %cmp.i133 = icmp slt i32 %.pr162, 0
  br i1 %cmp.i133, label %reg_w_i.exit131.reg_r_i.exit143_crit_edge, label %if.end.i140

reg_w_i.exit131.reg_r_i.exit143_crit_edge:        ; preds = %reg_w_i.exit131
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143

if.end.i140:                                      ; preds = %reg_w_i.exit131
  %54 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i134, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i135 = shl i32 %57, 8
  %or2.i136 = or i32 %shl.i.i135, -2147483520
  %58 = ptrtoint ptr %usb_buf.i137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i137, align 4
  %call3.i138 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or2.i136, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext -19653, ptr noundef %59, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i138)
  %cmp4.i139 = icmp slt i32 %call3.i138, 0
  br i1 %cmp4.i139, label %do.end.i142, label %if.end.i140.reg_r_i.exit143_crit_edge

if.end.i140.reg_r_i.exit143_crit_edge:            ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143

do.end.i142:                                      ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call3.i138) #10
  %60 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call3.i138, ptr %usb_err, align 8
  %61 = ptrtoint ptr %usb_buf.i137 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf.i137, align 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 64)
  br label %reg_r_i.exit143

reg_r_i.exit143:                                  ; preds = %do.end.i142, %if.end.i140.reg_r_i.exit143_crit_edge, %reg_w_i.exit131.reg_r_i.exit143_crit_edge, %reg_w_i.exit131.thread
  %usb_buf.i137169 = phi ptr [ %usb_buf.i137164, %reg_w_i.exit131.thread ], [ %usb_buf.i137, %reg_w_i.exit131.reg_r_i.exit143_crit_edge ], [ %usb_buf.i137, %if.end.i140.reg_r_i.exit143_crit_edge ], [ %usb_buf.i137, %do.end.i142 ]
  %dev.i134166 = phi ptr [ %dev.i134163, %reg_w_i.exit131.thread ], [ %dev.i134, %reg_w_i.exit131.reg_r_i.exit143_crit_edge ], [ %dev.i134, %if.end.i140.reg_r_i.exit143_crit_edge ], [ %dev.i134, %do.end.i142 ]
  %64 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %usb_buf.i137169, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp46 = icmp eq i8 %67, 0
  br i1 %cmp46, label %reg_r_i.exit143.cleanup_crit_edge, label %if.end49

reg_r_i.exit143.cleanup_crit_edge:                ; preds = %reg_r_i.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %reg_r_i.exit143
  tail call void @msleep(i32 noundef 20) #7
  %68 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i133.1 = icmp slt i32 %69, 0
  br i1 %cmp.i133.1, label %if.end49.reg_r_i.exit143.1_crit_edge, label %if.end.i140.1

if.end49.reg_r_i.exit143.1_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143.1

if.end.i140.1:                                    ; preds = %if.end49
  %70 = ptrtoint ptr %dev.i134166 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i134166, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i135.1 = shl i32 %73, 8
  %or2.i136.1 = or i32 %shl.i.i135.1, -2147483520
  %74 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_buf.i137169, align 4
  %call3.i138.1 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or2.i136.1, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext -19653, ptr noundef %75, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i138.1)
  %cmp4.i139.1 = icmp slt i32 %call3.i138.1, 0
  br i1 %cmp4.i139.1, label %do.end.i142.1, label %if.end.i140.1.reg_r_i.exit143.1_crit_edge

if.end.i140.1.reg_r_i.exit143.1_crit_edge:        ; preds = %if.end.i140.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143.1

do.end.i142.1:                                    ; preds = %if.end.i140.1
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i141.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call3.i138.1) #10
  %76 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call3.i138.1, ptr %usb_err, align 8
  %77 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb_buf.i137169, align 4
  %79 = call ptr @memset(ptr %78, i32 0, i32 64)
  br label %reg_r_i.exit143.1

reg_r_i.exit143.1:                                ; preds = %do.end.i142.1, %if.end.i140.1.reg_r_i.exit143.1_crit_edge, %if.end49.reg_r_i.exit143.1_crit_edge
  %80 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i137169, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp46.1 = icmp eq i8 %83, 0
  br i1 %cmp46.1, label %reg_r_i.exit143.1.cleanup_crit_edge, label %if.end49.1

reg_r_i.exit143.1.cleanup_crit_edge:              ; preds = %reg_r_i.exit143.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49.1:                                       ; preds = %reg_r_i.exit143.1
  tail call void @msleep(i32 noundef 20) #7
  %84 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i133.2 = icmp slt i32 %85, 0
  br i1 %cmp.i133.2, label %if.end49.1.reg_r_i.exit143.2_crit_edge, label %if.end.i140.2

if.end49.1.reg_r_i.exit143.2_crit_edge:           ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143.2

if.end.i140.2:                                    ; preds = %if.end49.1
  %86 = ptrtoint ptr %dev.i134166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i134166, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i.i135.2 = shl i32 %89, 8
  %or2.i136.2 = or i32 %shl.i.i135.2, -2147483520
  %90 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb_buf.i137169, align 4
  %call3.i138.2 = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or2.i136.2, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext -19653, ptr noundef %91, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i138.2)
  %cmp4.i139.2 = icmp slt i32 %call3.i138.2, 0
  br i1 %cmp4.i139.2, label %do.end.i142.2, label %if.end.i140.2.reg_r_i.exit143.2_crit_edge

if.end.i140.2.reg_r_i.exit143.2_crit_edge:        ; preds = %if.end.i140.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143.2

do.end.i142.2:                                    ; preds = %if.end.i140.2
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i141.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call3.i138.2) #10
  %92 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call3.i138.2, ptr %usb_err, align 8
  %93 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %usb_buf.i137169, align 4
  %95 = call ptr @memset(ptr %94, i32 0, i32 64)
  br label %reg_r_i.exit143.2

reg_r_i.exit143.2:                                ; preds = %do.end.i142.2, %if.end.i140.2.reg_r_i.exit143.2_crit_edge, %if.end49.1.reg_r_i.exit143.2_crit_edge
  %96 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %usb_buf.i137169, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp46.2 = icmp eq i8 %99, 0
  br i1 %cmp46.2, label %reg_r_i.exit143.2.cleanup_crit_edge, label %if.end49.2

reg_r_i.exit143.2.cleanup_crit_edge:              ; preds = %reg_r_i.exit143.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49.2:                                       ; preds = %reg_r_i.exit143.2
  tail call void @msleep(i32 noundef 20) #7
  %100 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i133.3 = icmp slt i32 %101, 0
  br i1 %cmp.i133.3, label %if.end49.2.reg_r_i.exit143.3_crit_edge, label %if.end.i140.3

if.end49.2.reg_r_i.exit143.3_crit_edge:           ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143.3

if.end.i140.3:                                    ; preds = %if.end49.2
  %102 = ptrtoint ptr %dev.i134166 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i134166, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %shl.i.i135.3 = shl i32 %105, 8
  %or2.i136.3 = or i32 %shl.i.i135.3, -2147483520
  %106 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_buf.i137169, align 4
  %call3.i138.3 = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or2.i136.3, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext -19653, ptr noundef %107, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i138.3)
  %cmp4.i139.3 = icmp slt i32 %call3.i138.3, 0
  br i1 %cmp4.i139.3, label %do.end.i142.3, label %if.end.i140.3.reg_r_i.exit143.3_crit_edge

if.end.i140.3.reg_r_i.exit143.3_crit_edge:        ; preds = %if.end.i140.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_r_i.exit143.3

do.end.i142.3:                                    ; preds = %if.end.i140.3
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i141.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call3.i138.3) #10
  %108 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call3.i138.3, ptr %usb_err, align 8
  %109 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %usb_buf.i137169, align 4
  %111 = call ptr @memset(ptr %110, i32 0, i32 64)
  br label %reg_r_i.exit143.3

reg_r_i.exit143.3:                                ; preds = %do.end.i142.3, %if.end.i140.3.reg_r_i.exit143.3_crit_edge, %if.end49.2.reg_r_i.exit143.3_crit_edge
  %112 = ptrtoint ptr %usb_buf.i137169 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %usb_buf.i137169, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp46.3 = icmp eq i8 %115, 0
  br i1 %cmp46.3, label %reg_r_i.exit143.3.cleanup_crit_edge, label %if.end49.3

reg_r_i.exit143.3.cleanup_crit_edge:              ; preds = %reg_r_i.exit143.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49.3:                                       ; preds = %reg_r_i.exit143.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 20) #7
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end49.3, %reg_r_i.exit143.3.cleanup_crit_edge, %reg_r_i.exit143.2.cleanup_crit_edge, %reg_r_i.exit143.1.cleanup_crit_edge, %reg_r_i.exit143.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_exchange(ptr noundef %gspca_dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %sw.epilog ]
  %arrayidx = getelementptr [4 x i8], ptr %data, i32 %i.0
  %arrayidx1 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 3
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx1, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %1, label %sw.default [
    i8 -52, label %sw.bb
    i8 -86, label %sw.bb12
    i8 -69, label %sw.bb17
    i8 -35, label %sw.bb22
  ]

sw.default:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  ret void

sw.bb:                                            ; preds = %for.cond
  %arrayidx3 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 2
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %4 to i16
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %6 to i16
  %shl = shl nuw i16 %conv7, 8
  %arrayidx9 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %8 to i16
  %or = or i16 %shl, %conv10
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %do.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp1.i = icmp sgt i32 %11, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %conv4.i = zext i8 %4 to i32
  %conv5.i = zext i16 %or to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef 160, i32 noundef %conv4.i, i32 noundef %conv5.i) #10
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end7.i.sw.epilog_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.sw.epilog_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv4, i16 noundef zeroext %or, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i) #10
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 2
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext %19, ptr noundef %arrayidx16, i8 noundef zeroext 1)
  br label %sw.epilog

sw.bb17:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %arrayidx21 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 1
  tail call fastcc void @i2c_write(ptr noundef %gspca_dev, i8 noundef zeroext %21, ptr noundef %arrayidx21, i8 noundef zeroext 2)
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx24 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %23 to i32
  %mul = shl nuw nsw i32 %conv25, 8
  %arrayidx27 = getelementptr [4 x i8], ptr %data, i32 %i.0, i32 2
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %25 to i32
  %add = or i32 %mul, %conv28
  %add29 = add nuw nsw i32 %add, 10
  tail call void @msleep(i32 noundef %add29) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb17, %sw.bb12, %do.end.i.i, %if.end.i.i.sw.epilog_crit_edge, %do.end7.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %inc = add i32 %i.0, 1
  br label %for.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_tab_to_reg(ptr noundef %gspca_dev, ptr nocapture noundef readonly %tab, i8 noundef zeroext %tabsize, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %tabsize to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tabsize)
  %cmp6.not = icmp eq i8 %tabsize, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %reg_w.exit.for.body_crit_edge, %for.body.lr.ph
  %ad.08 = phi i16 [ %addr, %for.body.lr.ph ], [ %inc, %reg_w.exit.for.body_crit_edge ]
  %j.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc3, %reg_w.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %tab, i32 %j.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %1 to i16
  %inc = add i16 %ad.08, 1
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %for.body.reg_w.exit_crit_edge, label %do.body.i

for.body.reg_w.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.body.i:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp1.i = icmp sgt i32 %4, 6
  br i1 %cmp1.i, label %do.end7.i, label %do.body.i.if.end.i.i_crit_edge

do.body.i.if.end.i.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i:                                        ; preds = %do.body.i
  %conv4.i = zext i8 %1 to i32
  %conv5.i = zext i16 %ad.08 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef 160, i32 noundef %conv4.i, i32 noundef %conv5.i) #10
  %5 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end7.i.reg_w.exit_crit_edge, label %do.end7.i.if.end.i.i_crit_edge

do.end7.i.if.end.i.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end7.i.reg_w.exit_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i.i:                                       ; preds = %do.end7.i.if.end.i.i_crit_edge, %do.body.i.if.end.i.i_crit_edge
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv2, i16 noundef zeroext %ad.08, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit_crit_edge

if.end.i.i.reg_w.exit_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %call2.i.i) #10
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit_crit_edge, %do.end7.i.reg_w.exit_crit_edge, %for.body.reg_w.exit_crit_edge
  %inc3 = add nuw nsw i32 %j.07, 1
  %exitcond.not = icmp eq i32 %inc3, %conv
  br i1 %exitcond.not, label %reg_w.exit.for.end_crit_edge, label %reg_w.exit.for.body_crit_edge

reg_w.exit.for.body_crit_edge:                    ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

reg_w.exit.for.end_crit_edge:                     ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %reg_w.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_vc032x__307_3838_sd_driver_init6, !8, !"__initcall__kmod_gspca_vc032x__307_3838_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3838, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3827, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3826, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3785, i32 29}
!17 = !{ptr @sd_init.npkt, !18, !"npkt", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3149, i32 12}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3169, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3172, i32 3}
!27 = !{ptr @sd_init._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sd_init._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3175, i32 3}
!31 = !{ptr @sd_init._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sd_init._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3179, i32 3}
!35 = !{ptr @sd_init._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sd_init._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3182, i32 3}
!39 = !{ptr @sd_init._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sd_init._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3185, i32 3}
!43 = !{ptr @sd_init._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sd_init._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3188, i32 3}
!47 = !{ptr @sd_init._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sd_init._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3191, i32 3}
!51 = !{ptr @sd_init._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sd_init._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3194, i32 3}
!55 = !{ptr @sd_init._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sd_init._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3197, i32 3}
!59 = !{ptr @sd_init._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sd_init._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3200, i32 3}
!63 = !{ptr @sd_init._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sd_init._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3015, i32 2}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vc032x_probe_sensor._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @vc032x_probe_sensor._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3036, i32 4}
!72 = !{ptr @vc032x_probe_sensor._entry.37, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vc032x_probe_sensor._entry_ptr.39, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @vc0321_probe_data, !75, !"vc0321_probe_data", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2804, i32 33}
!76 = !{ptr @vc0323_probe_data, !77, !"vc0323_probe_data", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2845, i32 33}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2972, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @read_sensor_register._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @read_sensor_register._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2992, i32 3}
!85 = !{ptr @read_sensor_register._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @read_sensor_register._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @vc0321_mode, !88, !"vc0321_mode", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 56, i32 37}
!89 = !{ptr @svga_mode, !90, !"svga_mode", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 102, i32 37}
!91 = !{ptr @vc0323_mode, !92, !"vc0323_mode", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 68, i32 37}
!93 = !{ptr @bi_mode, !94, !"bi_mode", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 85, i32 37}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2925, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @reg_r._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @reg_r._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2929, i32 3}
!102 = !{ptr @reg_r._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @reg_r._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2907, i32 3}
!106 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @reg_r_i._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @reg_r_i._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2960, i32 2}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @reg_w._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @reg_w._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2949, i32 3}
!116 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @reg_w_i._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @reg_w_i._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @sd_init_controls._key, !120, !"_key", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3738, i32 2}
!121 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3776, i32 3}
!124 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sd_init_controls._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @sd_init_controls._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @sd_ctrl_ops, !128, !"sd_ctrl_ops", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3694, i32 35}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3064, i32 3}
!131 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @i2c_write._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @i2c_write._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3066, i32 3}
!136 = !{ptr @i2c_write._entry.61, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @i2c_write._entry_ptr.63, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3084, i32 3}
!140 = !{ptr @i2c_write._entry.64, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @i2c_write._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @setautogain.data, !143, !"data", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3371, i32 18}
!144 = !{ptr @setlightfreq.ov7660_freq_tb, !145, !"ov7660_freq_tb", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3322, i32 20}
!146 = !{ptr @ov7660_NoFlicker, !147, !"ov7660_NoFlicker", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1799, i32 17}
!148 = !{ptr @ov7660_50HZ, !149, !"ov7660_50HZ", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1785, i32 17}
!150 = !{ptr @ov7660_60HZ, !151, !"ov7660_60HZ", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1792, i32 17}
!152 = !{ptr @sd_start.mi1320_soc_init, !153, !"mi1320_soc_init", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3427, i32 20}
!154 = !{ptr @mi1320_soc_InitSXGA, !155, !"mi1320_soc_InitSXGA", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1141, i32 17}
!156 = !{ptr @mi1320_soc_InitVGA, !157, !"mi1320_soc_InitVGA", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 925, i32 17}
!158 = !{ptr @mi1320_soc_InitQVGA, !159, !"mi1320_soc_InitQVGA", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1028, i32 17}
!160 = !{ptr @hv7131r_gamma, !161, !"hv7131r_gamma", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1457, i32 17}
!162 = !{ptr @hv7131r_matrix, !163, !"hv7131r_matrix", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1461, i32 17}
!164 = !{ptr @hv7131r_initQVGA_data, !165, !"hv7131r_initQVGA_data", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1552, i32 17}
!166 = !{ptr @hv7131r_initVGA_data, !167, !"hv7131r_initVGA_data", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1464, i32 17}
!168 = !{ptr @ov7660_gamma, !169, !"ov7660_gamma", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1650, i32 17}
!170 = !{ptr @ov7660_matrix, !171, !"ov7660_matrix", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1654, i32 17}
!172 = !{ptr @ov7660_initQVGA_data, !173, !"ov7660_initQVGA_data", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1716, i32 17}
!174 = !{ptr @ov7660_initVGA_data, !175, !"ov7660_initVGA_data", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1657, i32 17}
!176 = !{ptr @mi1320_gamma, !177, !"mi1320_gamma", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 768, i32 17}
!178 = !{ptr @mi0360_matrix, !179, !"mi0360_matrix", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 115, i32 17}
!180 = !{ptr @mi0360_initQVGA_JPG, !181, !"mi0360_initQVGA_JPG", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 228, i32 17}
!182 = !{ptr @mi0360_initVGA_JPG, !183, !"mi0360_initVGA_JPG", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 119, i32 17}
!184 = !{ptr @mi1320_matrix, !185, !"mi1320_matrix", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 772, i32 17}
!186 = !{ptr @mi1310_socinitQVGA_JPG, !187, !"mi1310_socinitQVGA_JPG", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 500, i32 17}
!188 = !{ptr @mi1310_socinitVGA_JPG, !189, !"mi1310_socinitVGA_JPG", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 348, i32 17}
!190 = !{ptr @mi1310_soc_InitSXGA_JPG, !191, !"mi1310_soc_InitSXGA_JPG", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 574, i32 17}
!192 = !{ptr @mi1320_initQVGA_data, !193, !"mi1320_initQVGA_data", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 856, i32 17}
!194 = !{ptr @mi1320_initVGA_data, !195, !"mi1320_initVGA_data", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 775, i32 17}
!196 = !{ptr @ov7670_InitVGA, !197, !"ov7670_InitVGA", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1804, i32 17}
!198 = !{ptr @ov7670_InitQVGA, !199, !"ov7670_InitQVGA", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2042, i32 17}
!200 = !{ptr @po3130_gamma, !201, !"po3130_gamma", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1264, i32 17}
!202 = !{ptr @po3130_matrix, !203, !"po3130_matrix", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1268, i32 17}
!204 = !{ptr @po3130_initQVGA_data, !205, !"po3130_initQVGA_data", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1371, i32 17}
!206 = !{ptr @po3130_initVGA_data, !207, !"po3130_initVGA_data", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1272, i32 17}
!208 = !{ptr @po3130_rundata, !209, !"po3130_rundata", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 1356, i32 17}
!210 = !{ptr @po1200_gamma, !211, !"po1200_gamma", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2291, i32 17}
!212 = !{ptr @po1200_matrix, !213, !"po1200_matrix", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2295, i32 17}
!214 = !{ptr @po1200_initVGA_data, !215, !"po1200_initVGA_data", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2298, i32 17}
!216 = !{ptr @poxxxx_init_common, !217, !"poxxxx_init_common", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2560, i32 17}
!218 = !{ptr @poxxxx_gamma, !219, !"poxxxx_gamma", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2660, i32 17}
!220 = !{ptr @poxxxx_init_start_3, !221, !"poxxxx_init_start_3", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2704, i32 17}
!222 = !{ptr @poxxxx_initQVGA, !223, !"poxxxx_initQVGA", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2756, i32 17}
!224 = !{ptr @poxxxx_initVGA, !225, !"poxxxx_initVGA", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2740, i32 17}
!226 = !{ptr @poxxxx_init_end_1, !227, !"poxxxx_init_end_1", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2772, i32 17}
!228 = !{ptr @poxxxx_init_end_2, !229, !"poxxxx_init_end_2", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 2786, i32 17}
!230 = !{ptr @setwb.data, !231, !"data", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3414, i32 18}
!232 = !{ptr @.str.67, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3626, i32 3}
!234 = !{ptr @.str.68, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @sd_pkt_scan._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @sd_pkt_scan._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @device_table, !238, !"device_table", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/gspca/vc032x.c", i32 3800, i32 35}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i8 0, i8 2}
!249 = !{!"auto-init"}
