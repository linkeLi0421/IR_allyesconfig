; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sq905c.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sq905c.c"
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
%struct.sd = type { %struct.gspca_dev, ptr, %struct.work_struct, ptr }

@__UNIQUE_ID_author303 = internal constant [58 x i8] c"gspca_sq905c.author=Theodore Kilgore <kilgota@auburn.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [56 x i8] c"gspca_sq905c.description=GSPCA/SQ905C USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_sq905c.file=drivers/media/usb/gspca/gspca_sq905c\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_sq905c.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sq905c__307_330_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_sq905c\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sq905c\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 10096, i16 -28580, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10096, i16 -28592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10096, i16 -28591, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10096, i16 -28590, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 10096, i16 -28355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr null, ptr null, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: SQ9050 camera detected (vid/pid 0x%04X:0x%04X)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/sq905c.c\00", [63 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Get version command failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Reading version command failed\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@sd_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: SQ9050 ID string: %02x - %*ph\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.13 = internal global ptr @sd_config._entry.11, section ".printk_index", align 4
@sq905c_mode = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1127559225, i32 1, i32 320, i32 76800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1127559225, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dev->work_struct)\00", [59 x i8] zeroinitializer }, align 32
@sq905c_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gspca_sq905c: %s: usb_control_msg failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sq905c_command\00", [17 x i8] zeroinitializer }, align 32
@sq905c_command._entry_ptr = internal global ptr @sq905c_command._entry, section ".printk_index", align 4
@sq905c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.17, ptr @.str.4, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sq905c_read\00", [20 x i8] zeroinitializer }, align 32
@sq905c_read._entry_ptr = internal global ptr @sq905c_read._entry, section ".printk_index", align 4
@sq905c_dostream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_sq905c: Couldn't allocate USB buffer\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sq905c_dostream\00", [16 x i8] zeroinitializer }, align 32
@sq905c_dostream._entry_ptr = internal global ptr @sq905c_dostream._entry, section ".printk_index", align 4
@sq905c_dostream._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Got %d bytes out of %d for header\0A\00", [55 x i8] zeroinitializer }, align 32
@sq905c_dostream._entry_ptr.22 = internal global ptr @sq905c_dostream._entry.20, section ".printk_index", align 4
@sq905c_dostream._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: bytes_left = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@sq905c_dostream._entry_ptr.25 = internal global ptr @sq905c_dostream._entry.23, section ".printk_index", align 4
@sq905c_dostream._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Got %d bytes out of %d for frame\0A\00", [56 x i8] zeroinitializer }, align 32
@sq905c_dostream._entry_ptr.28 = internal global ptr @sq905c_dostream._entry.26, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Start streaming at high resolution\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Start streaming at medium resolution\0A\00", [52 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.33 = internal global ptr @sd_start._entry.31, section ".printk_index", align 4
@sd_start._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Start streaming command failed\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.36 = internal global ptr @sd_start._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 318, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 330, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 319, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 288, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 300, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 200, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 206, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 212, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 216, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"sq905c_mode\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 62, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 227, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 87, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 106, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 134, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 148, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 156, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 171, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 262, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 268, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 274, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [36 x i8] c"../drivers/media/usb/gspca/sq905c.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 278, i32 21 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sq905c__307_330_sd_driver_init6, ptr @sd_config._entry, ptr @sd_config._entry.11, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.13, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_start._entry, ptr @sd_start._entry.31, ptr @sd_start._entry.34, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.33, ptr @sd_start._entry_ptr.36, ptr @sq905c_command._entry, ptr @sq905c_command._entry_ptr, ptr @sq905c_dostream._entry, ptr @sq905c_dostream._entry.20, ptr @sq905c_dostream._entry.23, ptr @sq905c_dostream._entry.26, ptr @sq905c_dostream._entry_ptr, ptr @sq905c_dostream._entry_ptr.22, ptr @sq905c_dostream._entry_ptr.25, ptr @sq905c_dostream._entry_ptr.28, ptr @sq905c_read._entry, ptr @sq905c_read._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @sq905c_mode, ptr @sd_config.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_dostream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_dostream._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_dostream._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq905c_dostream._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2664, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 5364, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end12, label %if.end18

do.end12:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call2.i) #10
  %name15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15) #10
  br label %cleanup

if.end18:                                         ; preds = %do.end5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i90 = shl i32 %12, 8
  %or2.i = or i32 %shl.i.i90, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call3.i91 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or2.i, i8 noundef zeroext 12, i8 noundef zeroext -64, i16 noundef zeroext 245, i16 noundef zeroext 0, ptr noundef %14, i16 noundef zeroext 20, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i91)
  %cmp.i92 = icmp slt i32 %call3.i91, 0
  br i1 %cmp.i92, label %do.end25, label %do.body32

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, i32 noundef %call3.i91) #10
  %name28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name28) #10
  br label %cleanup

do.body32:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp33 = icmp sgt i32 %15, 0
  br i1 %cmp33, label %do.end38, label %do.body32.do.end48_crit_edge

do.body32.do.end48_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %name41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv43 = zext i8 %19 to i32
  %add.ptr = getelementptr i8, ptr %17, i32 14
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name41, i32 noundef %conv43, i32 noundef 6, ptr noundef %add.ptr) #10
  br label %do.end48

do.end48:                                         ; preds = %do.end38, %do.body32.do.end48_crit_edge
  %20 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sq905c_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %21 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %nmodes, align 4
  %22 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx50 = getelementptr i8, ptr %23, i32 15
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp52 = icmp eq i8 %25, 0
  %spec.store.select = select i1 %cmp52, i8 1, i8 2
  %26 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.store.select, ptr %nmodes, align 4
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %bulk_size, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %28 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %bulk, align 1
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work_struct, i32 noundef 0) #7
  %29 = ptrtoint ptr %work_struct to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %work_struct, align 4
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry61 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry61, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sq905c_dostream, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end25, %do.end12
  %retval.0 = phi i32 [ %call2.i, %do.end12 ], [ %call3.i91, %do.end25 ], [ 0, %do.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readonly %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 160, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.sq905c_command.exit_crit_edge

entry.sq905c_command.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sq905c_command.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call2.i) #10
  br label %sq905c_command.exit

sq905c_command.exit:                              ; preds = %do.end.i, %entry.sq905c_command.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %do.end.i ], [ 0, %entry.sq905c_command.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %cap_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %cap_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cap_mode, align 8
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %3 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %4)
  %cond = icmp eq i32 %4, 640
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp sgt i32 %5, 2
  br i1 %cond, label %do.body, label %do.body6

do.body:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %do.body.do.end3_crit_edge

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %6 = ptrtoint ptr %cap_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap_mode, align 8
  %incdec.ptr = getelementptr %struct.v4l2_pix_format, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %cap_mode, align 8
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 10304, i16 noundef zeroext 4367, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end3.do.end25_crit_edge, label %do.end3.if.end31_crit_edge

do.end3.if.end31_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end3.do.end25_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.body6:                                         ; preds = %entry
  br i1 %cmp, label %do.end11, label %do.body6.do.end19_crit_edge

do.body6.do.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %name14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name14) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end11, %do.body6.do.end19_crit_edge
  %dev.i52 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i52, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i53 = shl i32 %15, 8
  %or.i54 = or i32 %shl.i.i53, -2147483648
  %call2.i55 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i54, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 5184, i16 noundef zeroext 4367, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i55)
  %cmp.i56 = icmp slt i32 %call2.i55, 0
  br i1 %cmp.i56, label %do.end19.do.end25_crit_edge, label %do.end19.if.end31_crit_edge

do.end19.if.end31_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end19.do.end25_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end25:                                         ; preds = %do.end19.do.end25_crit_edge, %do.end3.do.end25_crit_edge
  %call2.i.sink = phi i32 [ %call2.i, %do.end3.do.end25_crit_edge ], [ %call2.i55, %do.end19.do.end25_crit_edge ]
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call2.i.sink) #10
  %name28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name28) #10
  br label %cleanup

if.end31:                                         ; preds = %do.end19.if.end31_crit_edge, %do.end3.if.end31_crit_edge
  %call32 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.37, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.1) #7
  %work_thread = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %16 = ptrtoint ptr %work_thread to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32, ptr %work_thread, align 8
  %tobool.not = icmp eq ptr %call32, null
  br i1 %tobool.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %call32, ptr noundef %work_struct) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end31.cleanup_crit_edge, %do.end25
  %retval.0 = phi i32 [ %call2.i.sink, %do.end25 ], [ 0, %if.end35 ], [ -12, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #7
  %work_thread = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %work_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_thread, align 8
  tail call void @destroy_workqueue(ptr noundef %1) #7
  %2 = ptrtoint ptr %work_thread to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %work_thread, align 8
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sq905c_dostream(ptr noundef %work) #2 align 64 {
entry:
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2612
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #7
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %act_len, align 4, !annotation !92
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %present = getelementptr i8, ptr %work, i32 -21
  %1 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %present, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not148 = icmp eq i8 %2, 0
  br i1 %tobool4.not148, label %while.cond.preheader.quit_stream_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.quit_stream_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %streaming = getelementptr i8, ptr %work, i32 -790
  %frozen = getelementptr i8, ptr %work, i32 -22
  %dev9 = getelementptr i8, ptr %work, i32 -1128
  %name = getelementptr i8, ptr %work, i32 -1196
  %arrayidx = getelementptr i8, ptr %call1.i.i, i32 64
  %arrayidx28 = getelementptr i8, ptr %call1.i.i, i32 65
  %arrayidx31 = getelementptr i8, ptr %call1.i.i, i32 66
  %arrayidx35 = getelementptr i8, ptr %call1.i.i, i32 67
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %quit_stream

land.rhs:                                         ; preds = %while.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.rhs.quit_stream_crit_edge, label %while.body

land.rhs.quit_stream_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

while.body:                                       ; preds = %land.rhs
  %5 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end8, label %while.body.quit_stream_crit_edge

while.body.quit_stream_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

if.end8:                                          ; preds = %while.body
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev9, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or12 = or i32 %shl.i, -1069514624
  %call13 = call i32 @usb_bulk_msg(ptr noundef %8, i32 noundef %or12, ptr noundef nonnull %call1.i.i, i32 noundef 80, ptr noundef nonnull %act_len, i32 noundef 1000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp sgt i32 %11, 2
  br i1 %cmp, label %do.end18, label %if.end8.do.end23_crit_edge

if.end8.do.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %act_len, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %13, i32 noundef 80) #10
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %if.end8.do.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp24 = icmp slt i32 %call13, 0
  br i1 %cmp24, label %do.end23.quit_stream_crit_edge, label %lor.lhs.false

do.end23.quit_stream_crit_edge:                   ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

lor.lhs.false:                                    ; preds = %do.end23
  %14 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %15)
  %cmp25 = icmp slt i32 %15, 80
  br i1 %cmp25, label %lor.lhs.false.quit_stream_crit_edge, label %if.end27

lor.lhs.false.quit_stream_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

if.end27:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 64
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %or30 = or i32 %shl, %conv
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx31, align 2
  %conv32 = zext i8 %21 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %or34 = or i32 %or30, %shl33
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %23 to i32
  %shl37 = shl nuw i32 %conv36, 24
  %or38 = or i32 %or34, %shl37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp40 = icmp sgt i32 %24, 2
  br i1 %cmp40, label %do.end45, label %if.end27.do.end53_crit_edge

if.end27.do.end53_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

do.end45:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %or38) #10
  br label %do.end53

do.end53:                                         ; preds = %do.end45, %if.end27.do.end53_crit_edge
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %call1.i.i, i32 noundef 80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or38)
  %cmp55145 = icmp sgt i32 %or38, 0
  br i1 %cmp55145, label %do.end53.land.rhs57_crit_edge, label %do.end53.while.end_crit_edge

do.end53.while.end_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end53.land.rhs57_crit_edge:                    ; preds = %do.end53
  br label %land.rhs57

land.rhs57:                                       ; preds = %do.end92.land.rhs57_crit_edge, %do.end53.land.rhs57_crit_edge
  %bytes_left.0146 = phi i32 [ %sub, %do.end92.land.rhs57_crit_edge ], [ %or38, %do.end53.land.rhs57_crit_edge ]
  %25 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %present, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool59.not = icmp eq i8 %26, 0
  br i1 %tobool59.not, label %land.rhs57.quit_stream_crit_edge, label %while.body62

land.rhs57.quit_stream_crit_edge:                 ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

while.body62:                                     ; preds = %land.rhs57
  %27 = call i32 @llvm.umin.i32(i32 %bytes_left.0146, i32 32768)
  %28 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev9, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i141 = shl i32 %31, 8
  %or69 = or i32 %shl.i141, -1069514624
  %call70 = call i32 @usb_bulk_msg(ptr noundef %29, i32 noundef %or69, ptr noundef nonnull %call1.i.i, i32 noundef %27, ptr noundef nonnull %act_len, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %while.body62.quit_stream_crit_edge, label %lor.lhs.false73

while.body62.quit_stream_crit_edge:               ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

lor.lhs.false73:                                  ; preds = %while.body62
  %32 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %27)
  %cmp74 = icmp slt i32 %33, %27
  br i1 %cmp74, label %lor.lhs.false73.quit_stream_crit_edge, label %do.body78

lor.lhs.false73.quit_stream_crit_edge:            ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

do.body78:                                        ; preds = %lor.lhs.false73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %34 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp79 = icmp sgt i32 %34, 2
  br i1 %cmp79, label %do.end84, label %do.body78.do.end92_crit_edge

do.body78.do.end92_crit_edge:                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %27, i32 noundef %bytes_left.0146) #10
  br label %do.end92

do.end92:                                         ; preds = %do.end84, %do.body78.do.end92_crit_edge
  %sub = sub nsw i32 %bytes_left.0146, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp93 = icmp eq i32 %sub, 0
  %. = select i1 %cmp93, i32 3, i32 2
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef %., ptr noundef nonnull %call1.i.i, i32 noundef %27) #7
  %cmp55 = icmp sgt i32 %sub, 0
  br i1 %cmp55, label %do.end92.land.rhs57_crit_edge, label %do.end92.while.end_crit_edge

do.end92.while.end_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end92.land.rhs57_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs57

while.end:                                        ; preds = %do.end92.while.end_crit_edge, %do.end53.while.end_crit_edge
  %35 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %present, align 1
  %tobool4.not = icmp eq i8 %.pr, 0
  br i1 %tobool4.not, label %while.end.quit_stream_crit_edge, label %while.end.land.rhs_crit_edge

while.end.land.rhs_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end.quit_stream_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %quit_stream

quit_stream:                                      ; preds = %while.end.quit_stream_crit_edge, %lor.lhs.false73.quit_stream_crit_edge, %while.body62.quit_stream_crit_edge, %land.rhs57.quit_stream_crit_edge, %lor.lhs.false.quit_stream_crit_edge, %do.end23.quit_stream_crit_edge, %while.body.quit_stream_crit_edge, %land.rhs.quit_stream_crit_edge, %do.end, %while.cond.preheader.quit_stream_crit_edge
  %present98 = getelementptr i8, ptr %work, i32 -21
  %36 = ptrtoint ptr %present98 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %present98, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool99.not = icmp eq i8 %37, 0
  br i1 %tobool99.not, label %quit_stream.if.end103_crit_edge, label %if.then100

quit_stream.if.end103_crit_edge:                  ; preds = %quit_stream
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then100:                                       ; preds = %quit_stream
  %usb_lock = getelementptr i8, ptr %work, i32 -120
  call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #7
  %dev.i = getelementptr i8, ptr %work, i32 -1128
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i = shl i32 %41, 8
  %or.i143 = or i32 %shl.i.i, -2147483648
  %call2.i = call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i143, i8 noundef zeroext 12, i8 noundef zeroext 64, i16 noundef zeroext 160, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then100.sq905c_command.exit_crit_edge

if.then100.sq905c_command.exit_crit_edge:         ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sq905c_command.exit

do.end.i:                                         ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call2.i) #10
  br label %sq905c_command.exit

sq905c_command.exit:                              ; preds = %do.end.i, %if.then100.sq905c_command.exit_crit_edge
  call void @mutex_unlock(ptr noundef %usb_lock) #7
  br label %if.end103

if.end103:                                        ; preds = %sq905c_command.exit, %quit_stream.if.end103_crit_edge
  call void @kfree(ptr noundef %call1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

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

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sq905c__307_330_sd_driver_init6, !8, !"__initcall__kmod_gspca_sq905c__307_330_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 330, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 319, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 318, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 300, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 200, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sd_config._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sd_config._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 206, i32 3}
!25 = !{ptr @sd_config._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_config._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 212, i32 3}
!29 = !{ptr @sd_config._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_config._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 216, i32 2}
!33 = !{ptr @sd_config._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_config._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @sd_config.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 227, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 87, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sq905c_command._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sq905c_command._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 106, i32 3}
!45 = !{ptr @sq905c_read._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sq905c_read._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sq905c_mode, !48, !"sq905c_mode", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 62, i32 31}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 134, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sq905c_dostream._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sq905c_dostream._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 148, i32 3}
!56 = !{ptr @sq905c_dostream._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sq905c_dostream._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 156, i32 3}
!60 = !{ptr @sq905c_dostream._entry.23, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sq905c_dostream._entry_ptr.25, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 171, i32 4}
!64 = !{ptr @sq905c_dostream._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sq905c_dostream._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 262, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sd_start._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sd_start._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 268, i32 3}
!73 = !{ptr @sd_start._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sd_start._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 274, i32 3}
!77 = !{ptr @sd_start._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sd_start._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 278, i32 21}
!81 = !{ptr @device_table, !82, !"device_table", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/sq905c.c", i32 288, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i8 0, i8 2}
