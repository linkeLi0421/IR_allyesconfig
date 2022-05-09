; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sq905.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sq905.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
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
%struct.sd = type { %struct.gspca_dev, %struct.work_struct, ptr }

@__UNIQUE_ID_author303 = internal constant [94 x i8] c"gspca_sq905.author=Adam Baker <linux@baker-net.org.uk>, Theodore Kilgore <kilgota@auburn.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [54 x i8] c"gspca_sq905.description=GSPCA/SQ905 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_sq905.file=drivers/media/usb/gspca/gspca_sq905\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_sq905.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sq905__307_428_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_sq905\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sq905\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 10096, i16 -28384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr null, ptr null, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dev->work_struct)\00", [59 x i8] zeroinitializer }, align 32
@sq905_dostream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_sq905: Couldn't allocate USB buffer\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sq905_dostream\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/sq905.c\00", [32 x i8] zeroinitializer }, align 32
@sq905_dostream._entry_ptr = internal global ptr @sq905_dostream._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sq905_dostream._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Got %d bytes out of %d for frame\0A\00", [56 x i8] zeroinitializer }, align 32
@sq905_dostream._entry_ptr.8 = internal global ptr @sq905_dostream._entry.6, section ".printk_index", align 4
@sq905_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_sq905: %s: usb_control_msg failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sq905_read_data\00", [16 x i8] zeroinitializer }, align 32
@sq905_read_data._entry_ptr = internal global ptr @sq905_read_data._entry, section ".printk_index", align 4
@sq905_read_data._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_sq905: bulk read fail (%d) len %d/%d\0A\00", [50 x i8] zeroinitializer }, align 32
@sq905_read_data._entry_ptr.13 = internal global ptr @sq905_read_data._entry.11, section ".printk_index", align 4
@sq905_ack_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.5, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sq905_ack_frame\00", [16 x i8] zeroinitializer }, align 32
@sq905_ack_frame._entry_ptr = internal global ptr @sq905_ack_frame._entry, section ".printk_index", align 4
@sq905_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.15, ptr @.str.5, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sq905_command\00", [18 x i8] zeroinitializer }, align 32
@sq905_command._entry_ptr = internal global ptr @sq905_command._entry, section ".printk_index", align 4
@sq905_command._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013gspca_sq905: %s: usb_control_msg failed 2 (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@sq905_command._entry_ptr.18 = internal global ptr @sq905_command._entry.16, section ".printk_index", align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: SQ905 camera ID %08x detected\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sq905_mode = internal global { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 825770306, i32 1, i32 160, i32 19200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825770306, i32 1, i32 320, i32 76800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Start streaming at high resolution\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Start streaming at medium resolution\0A\00", [52 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.25 = internal global ptr @sd_start._entry.23, section ".printk_index", align 4
@sd_start._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Start streaming at low resolution\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.28 = internal global ptr @sd_start._entry.26, section ".printk_index", align 4
@sd_start._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.5, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Start streaming command failed\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.31 = internal global ptr @sd_start._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 416, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 428, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 417, i32 16 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 390, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 398, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 295, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 213, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 240, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 175, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 184, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 147, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 114, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 125, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 339, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"sq905_mode\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 81, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 363, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 367, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 371, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 376, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/media/usb/gspca/sq905.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 380, i32 21 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sq905__307_428_sd_driver_init6, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.23, ptr @sd_start._entry.26, ptr @sd_start._entry.29, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.25, ptr @sd_start._entry_ptr.28, ptr @sd_start._entry_ptr.31, ptr @sq905_ack_frame._entry, ptr @sq905_ack_frame._entry_ptr, ptr @sq905_command._entry, ptr @sq905_command._entry.16, ptr @sq905_command._entry_ptr, ptr @sq905_command._entry_ptr.18, ptr @sq905_dostream._entry, ptr @sq905_dostream._entry.6, ptr @sq905_dostream._entry_ptr, ptr @sq905_dostream._entry_ptr.8, ptr @sq905_read_data._entry, ptr @sq905_read_data._entry.11, ptr @sq905_read_data._entry_ptr, ptr @sq905_read_data._entry_ptr.13, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sd_config.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @sq905_mode, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_dostream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_dostream._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_read_data._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_ack_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_command._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2656, ptr noundef null) #7
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
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bulk, align 1
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %bulk_size, align 4
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work_struct, i32 noundef 0) #7
  %2 = ptrtoint ptr %work_struct to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work_struct, align 8
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sq905_dostream, ptr %func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sq905_command(ptr noundef %gspca_dev, i16 noundef zeroext 160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @sq905_command(ptr noundef %gspca_dev, i16 noundef zeroext 240)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %call5 = tail call fastcc i32 @sq905_read_data(ptr noundef %gspca_dev, ptr noundef %1, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call11 = tail call fastcc i32 @sq905_command(ptr noundef %gspca_dev, i16 noundef zeroext 160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %do.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp15 = icmp sgt i32 %6, 1
  br i1 %cmp15, label %do.end, label %do.body.do.end21_crit_edge

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %5) #10
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %7 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sq905_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %and = and i32 %5, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 2, i8 3
  %8 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %nmodes, align 4
  %and27 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %input_flags32 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 3
  %. = select i1 %tobool28.not, i32 48, i32 32
  %9 = ptrtoint ptr %input_flags32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %., ptr %input_flags32, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ 0, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %0 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_mode, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.body [
    i8 1, label %do.body7
    i8 0, label %do.body25
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %do.body.sw.epilog.sink.split_crit_edge, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.sw.epilog.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body7:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp8 = icmp sgt i32 %4, 2
  br i1 %cmp8, label %do.body7.sw.epilog.sink.split_crit_edge, label %do.body7.sw.epilog_crit_edge

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body7.sw.epilog.sink.split_crit_edge:          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

do.body25:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp26 = icmp sgt i32 %5, 2
  br i1 %cmp26, label %do.body25.sw.epilog.sink.split_crit_edge, label %do.body25.sw.epilog_crit_edge

do.body25.sw.epilog_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body25.sw.epilog.sink.split_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.body25.sw.epilog.sink.split_crit_edge, %do.body7.sw.epilog.sink.split_crit_edge, %do.body.sw.epilog.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.21, %do.body.sw.epilog.sink.split_crit_edge ], [ @.str.24, %do.body7.sw.epilog.sink.split_crit_edge ], [ @.str.27, %do.body25.sw.epilog.sink.split_crit_edge ]
  %.sink.ph = phi i16 [ 98, %do.body.sw.epilog.sink.split_crit_edge ], [ 97, %do.body7.sw.epilog.sink.split_crit_edge ], [ 96, %do.body25.sw.epilog.sink.split_crit_edge ]
  %name34 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink, ptr noundef %name34) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body25.sw.epilog_crit_edge, %do.body7.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  %.sink = phi i16 [ 98, %do.body.sw.epilog_crit_edge ], [ 97, %do.body7.sw.epilog_crit_edge ], [ 96, %do.body25.sw.epilog_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split ]
  %call41 = tail call fastcc i32 @sq905_command(ptr noundef %gspca_dev, i16 noundef zeroext %.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end47, label %if.end53

do.end47:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %name50 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name50) #10
  br label %cleanup

if.end53:                                         ; preds = %sw.epilog
  %call54 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.32, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #7
  %work_thread = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %6 = ptrtoint ptr %work_thread to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call54, ptr %work_thread, align 4
  %tobool.not = icmp eq ptr %call54, null
  br i1 %tobool.not, label %if.end53.cleanup_crit_edge, label %if.end57

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %call54, ptr noundef %work_struct) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end53.cleanup_crit_edge, %do.end47
  %retval.0 = phi i32 [ %call41, %do.end47 ], [ 0, %if.end57 ], [ -12, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  %work_thread = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %work_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_thread, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #7
  %2 = ptrtoint ptr %work_thread to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %work_thread, align 4
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sq905_dostream(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2608
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %quit_stream

if.end:                                           ; preds = %entry
  %cam = getelementptr i8, ptr %work, i32 -1052
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr i8, ptr %work, i32 -785
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %sizeimage = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %add = add i32 %5, 64
  %present = getelementptr i8, ptr %work, i32 -17
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not102 = icmp eq i8 %7, 0
  br i1 %tobool4.not102, label %if.end.quit_stream_crit_edge, label %land.rhs.lr.ph

if.end.quit_stream_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

land.rhs.lr.ph:                                   ; preds = %if.end
  %streaming = getelementptr i8, ptr %work, i32 -786
  %frozen = getelementptr i8, ptr %work, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp98 = icmp sgt i32 %add, 0
  %name = getelementptr i8, ptr %work, i32 -1192
  %usb_lock = getelementptr i8, ptr %work, i32 -116
  %usb_buf.i = getelementptr i8, ptr %work, i32 -820
  %dev.i = getelementptr i8, ptr %work, i32 -1124
  br label %land.rhs

land.rhs:                                         ; preds = %if.end52.land.rhs_crit_edge, %land.rhs.lr.ph
  %8 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %streaming, align 2, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.rhs.quit_stream_crit_edge, label %while.body

land.rhs.quit_stream_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

while.body:                                       ; preds = %land.rhs
  %10 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %while.cond9.preheader, label %while.body.quit_stream_crit_edge

while.body.quit_stream_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

while.cond9.preheader:                            ; preds = %while.body
  br i1 %cmp98, label %while.cond9.preheader.land.rhs10_crit_edge, label %while.cond9.preheader.while.end_crit_edge

while.cond9.preheader.while.end_crit_edge:        ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond9.preheader.land.rhs10_crit_edge:       ; preds = %while.cond9.preheader
  br label %land.rhs10

land.rhs10:                                       ; preds = %if.end43.land.rhs10_crit_edge, %while.cond9.preheader.land.rhs10_crit_edge
  %bytes_left.0100 = phi i32 [ %sub, %if.end43.land.rhs10_crit_edge ], [ %add, %while.cond9.preheader.land.rhs10_crit_edge ]
  %tobool31.not99 = phi i1 [ false, %if.end43.land.rhs10_crit_edge ], [ true, %while.cond9.preheader.land.rhs10_crit_edge ]
  %12 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %present, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %land.rhs10.quit_stream_crit_edge, label %while.body14

land.rhs10.quit_stream_crit_edge:                 ; preds = %land.rhs10
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

while.body14:                                     ; preds = %land.rhs10
  %14 = tail call i32 @llvm.umin.i32(i32 %bytes_left.0100, i32 32768)
  %call16 = tail call fastcc i32 @sq905_read_data(ptr noundef %add.ptr, ptr noundef nonnull %call1.i.i, i32 noundef %14, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %while.body14.quit_stream_crit_edge, label %do.body20

while.body14.quit_stream_crit_edge:               ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

do.body20:                                        ; preds = %while.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp21 = icmp sgt i32 %15, 4
  br i1 %cmp21, label %do.end25, label %do.body20.do.end30_crit_edge

do.body20.do.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %14, i32 noundef %bytes_left.0100) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.body20.do.end30_crit_edge
  %sub = sub nsw i32 %bytes_left.0100, %14
  %sub34 = add nsw i32 %14, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp35 = icmp eq i32 %sub, 0
  %. = select i1 %cmp35, i32 3, i32 2
  %data_len.0 = select i1 %tobool31.not99, i32 %sub34, i32 %14
  %packet_type.0 = select i1 %tobool31.not99, i32 1, i32 %.
  %data.0.idx = select i1 %tobool31.not99, i32 64, i32 0
  %data.0 = getelementptr i8, ptr %call1.i.i, i32 %data.0.idx
  tail call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef %packet_type.0, ptr noundef %data.0, i32 noundef %data_len.0) #7
  %or.cond = select i1 %tobool31.not99, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.end43.thread, label %if.end43

if.end43.thread:                                  ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  br label %while.end

if.end43:                                         ; preds = %do.end30
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.end43.land.rhs10_crit_edge, label %if.end43.while.end_crit_edge

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end43.land.rhs10_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs10

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %if.end43.thread, %while.cond9.preheader.while.end_crit_edge
  %16 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool45.not = icmp eq i8 %.pr, 0
  br i1 %tobool45.not, label %while.end.quit_stream_crit_edge, label %if.then46

while.end.quit_stream_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

if.then46:                                        ; preds = %while.end
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %24 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 192, i16 noundef zeroext 0, ptr noundef %24, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %sq905_ack_frame.exit.thread, label %if.end52

sq905_ack_frame.exit.thread:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14, i32 noundef %call3.i) #10
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  br label %quit_stream

if.end52:                                         ; preds = %if.then46
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  %25 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr105 = load i8, ptr %present, align 1
  %tobool4.not = icmp eq i8 %.pr105, 0
  br i1 %tobool4.not, label %if.end52.quit_stream_crit_edge, label %if.end52.land.rhs_crit_edge

if.end52.land.rhs_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end52.quit_stream_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

quit_stream:                                      ; preds = %if.end52.quit_stream_crit_edge, %sq905_ack_frame.exit.thread, %while.end.quit_stream_crit_edge, %while.body14.quit_stream_crit_edge, %land.rhs10.quit_stream_crit_edge, %while.body.quit_stream_crit_edge, %land.rhs.quit_stream_crit_edge, %if.end.quit_stream_crit_edge, %do.end
  %present54 = getelementptr i8, ptr %work, i32 -17
  %26 = ptrtoint ptr %present54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %present54, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool55.not = icmp eq i8 %27, 0
  br i1 %tobool55.not, label %quit_stream.if.end60_crit_edge, label %if.then56

quit_stream.if.end60_crit_edge:                   ; preds = %quit_stream
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then56:                                        ; preds = %quit_stream
  call void @__sanitizer_cov_trace_pc() #9
  %usb_lock57 = getelementptr i8, ptr %work, i32 -116
  tail call void @mutex_lock_nested(ptr noundef %usb_lock57, i32 noundef 0) #7
  %call58 = tail call fastcc i32 @sq905_command(ptr noundef %add.ptr, i16 noundef zeroext 160)
  tail call void @mutex_unlock(ptr noundef %usb_lock57) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %quit_stream.if.end60_crit_edge
  tail call void @kfree(ptr noundef %call1.i.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sq905_read_data(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %size, i32 noundef %need_lock) unnamed_addr #2 align 64 {
entry:
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #7
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %act_len, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %1 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_lock)
  %tobool.not = icmp eq i32 %need_lock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %size to i16
  %8 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf, align 4
  %call3 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext %conv, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #7
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %usb_lock6 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock6) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %call3) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i45 = shl i32 %13, 8
  %or16 = or i32 %shl.i45, -1069514624
  %call17 = call i32 @usb_bulk_msg(ptr noundef %11, i32 noundef %or16, ptr noundef %data, i32 noundef %size, ptr noundef nonnull %act_len, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.do.end25_crit_edge, label %lor.lhs.false

if.end11.do.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end11
  %14 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %size)
  %cmp20.not = icmp eq i32 %15, %size
  br i1 %cmp20.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end25_crit_edge

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end11.do.end25_crit_edge
  %16 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %act_len, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call17, i32 noundef %17, i32 noundef %size) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %lor.lhs.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ -5, %do.end25 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sq905_command(ptr nocapture noundef readonly %gspca_dev, i16 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 1
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %7 = load ptr, ptr %usb_buf, align 4
  %call3 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext %index, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15, i32 noundef %call3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i31 = shl i32 %11, 8
  %or9 = or i32 %shl.i31, -2147483520
  %12 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf, align 4
  %call11 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or9, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext 7, i16 noundef zeroext 0, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %call11) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call11, %do.end16 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sq905.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sq905.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sq905.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sq905__307_428_sd_driver_init6, !8, !"__initcall__kmod_gspca_sq905__307_428_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sq905.c", i32 428, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sq905.c", i32 417, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sq905.c", i32 416, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sq905.c", i32 398, i32 29}
!17 = !{ptr @sd_config.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sq905.c", i32 295, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/sq905.c", i32 213, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sq905_dostream._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @sq905_dostream._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/sq905.c", i32 240, i32 4}
!28 = !{ptr @sq905_dostream._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sq905_dostream._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/sq905.c", i32 175, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sq905_read_data._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sq905_read_data._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/sq905.c", i32 184, i32 3}
!37 = !{ptr @sq905_read_data._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sq905_read_data._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/sq905.c", i32 147, i32 3}
!41 = !{ptr @sq905_ack_frame._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sq905_ack_frame._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/sq905.c", i32 114, i32 3}
!45 = !{ptr @sq905_command._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sq905_command._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/sq905.c", i32 125, i32 3}
!49 = !{ptr @sq905_command._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sq905_command._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/sq905.c", i32 339, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sd_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sd_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sq905_mode, !57, !"sq905_mode", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/sq905.c", i32 81, i32 31}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/sq905.c", i32 363, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sd_start._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sd_start._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/sq905.c", i32 367, i32 3}
!65 = !{ptr @sd_start._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sd_start._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/sq905.c", i32 371, i32 3}
!69 = !{ptr @sd_start._entry.26, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sd_start._entry_ptr.28, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/sq905.c", i32 376, i32 3}
!73 = !{ptr @sd_start._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sd_start._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/sq905.c", i32 380, i32 21}
!77 = !{ptr @device_table, !78, !"device_table", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/sq905.c", i32 390, i32 35}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i8 0, i8 2}
