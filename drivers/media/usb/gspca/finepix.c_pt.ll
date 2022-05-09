; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/finepix.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/finepix.c"
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
%struct.usb_fpix = type { %struct.gspca_dev, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__UNIQUE_ID_author303 = internal constant [49 x i8] c"gspca_finepix.author=Frank Zago <frank@zago.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [59 x i8] c"gspca_finepix.description=Fujifilm FinePix USB V4L2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_finepix.file=drivers/media/usb/gspca/gspca_finepix\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_finepix.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_finepix__307_293_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_finepix\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"finepix\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [24 x %struct.usb_device_id], [128 x i8] } { [24 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1227, i16 260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 267, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 277, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 279, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 281, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 283, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 285, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 291, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 299, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 301, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 317, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1227, i16 319, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr null, ptr null, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@fpix_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&dev->work_struct)\00", [59 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@dostream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: dostream started\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dostream\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/finepix.c\00", [62 x i8] zeroinitializer }, align 32
@dostream._entry_ptr = internal global ptr @dostream._entry, section ".printk_index", align 4
@dostream._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: dostream stopped\0A\00", [40 x i8] zeroinitializer }, align 32
@dostream._entry_ptr.8 = internal global ptr @dostream._entry.6, section ".printk_index", align 4
@command.order_values = internal constant { [2 x [12 x i8]], [40 x i8] } { [2 x [12 x i8]] [[12 x i8] c"\C6\00\00\00\00\00\00\00 \00\00\00", [12 x i8] c"\D3\00\00\00\00\00\00\01\00\00\00\00"], [40 x i8] zeroinitializer }, align 32
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013gspca_finepix: init failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gspca_finepix: usb_bulk_msg failed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.13 = internal global ptr @sd_start._entry.11, section ".printk_index", align 4
@sd_start._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.5, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013gspca_finepix: frame request failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.16 = internal global ptr @sd_start._entry.14, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 281, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 293, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 282, i32 16 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 233, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 263, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"fpix_mode\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 40, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 169, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 83, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 154, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"order_values\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 52, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 189, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 201, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [37 x i8] c"../drivers/media/usb/gspca/finepix.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 208, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_finepix__307_293_sd_driver_init6, ptr @dostream._entry, ptr @dostream._entry.6, ptr @dostream._entry_ptr, ptr @dostream._entry_ptr.8, ptr @sd_driver_exit, ptr @sd_start._entry, ptr @sd_start._entry.11, ptr @sd_start._entry.14, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.13, ptr @sd_start._entry_ptr.16, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @fpix_mode, ptr @sd_config.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @command.order_values, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpix_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dostream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dostream._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command.order_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2656, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fpix_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %nmodes, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bulk, align 1
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8192, ptr %bulk_size, align 4
  %work_struct = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work_struct, i32 noundef 0) #6
  %4 = ptrtoint ptr %work_struct to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work_struct, align 8
  %lockdep_map = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5 = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dostream, ptr %func, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !58
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %1 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf.i, align 4
  %3 = call ptr @memcpy(ptr %2, ptr @command.order_values, i32 12)
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %8 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i16 noundef zeroext 12, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call3.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %urb = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11
  %11 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transfer_buffer, align 4
  %call5 = call i32 @usb_bulk_msg(ptr noundef %10, i32 noundef %14, ptr noundef %16, i32 noundef 8192, ptr noundef nonnull %len, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call5) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = call ptr @memcpy(ptr %18, ptr getelementptr inbounds ([2 x [12 x i8]], ptr @command.order_values, i32 0, i32 1), i32 12)
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i48 = shl i32 %23, 8
  %or.i49 = or i32 %shl.i.i48, -2147483648
  %24 = load ptr, ptr %usb_buf.i, align 4
  %call3.i50 = call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i49, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %24, i16 noundef zeroext 12, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i50)
  %cmp15 = icmp slt i32 %call3.i50, 0
  br i1 %cmp15, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i50) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb, align 8
  %pipe26 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %pipe26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pipe26, align 4
  %call27 = call i32 @usb_clear_halt(ptr noundef %26, i32 noundef %30) #6
  %work_struct = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work_struct) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end19, %do.end10, %do.end
  %retval.0 = phi i32 [ %call3.i, %do.end ], [ %call5, %do.end10 ], [ %call3.i50, %do.end19 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #6
  %work_struct = getelementptr inbounds %struct.usb_fpix, ptr %gspca_dev, i32 0, i32 1
  %call = tail call zeroext i1 @flush_work(ptr noundef %work_struct) #6
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dostream(ptr noundef %work) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2608
  %urb2 = getelementptr i8, ptr %work, i32 -816
  %0 = ptrtoint ptr %urb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb2, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp sgt i32 %5, 2
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr i8, ptr %work, i32 -1192
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %present = getelementptr i8, ptr %work, i32 -17
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not99100 = icmp eq i8 %7, 0
  br i1 %tobool.not99100, label %do.end6.do.body57_crit_edge, label %land.rhs.lr.ph.lr.ph

do.end6.do.body57_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

land.rhs.lr.ph.lr.ph:                             ; preds = %do.end6
  %streaming = getelementptr i8, ptr %work, i32 -786
  %frozen = getelementptr i8, ptr %work, i32 -18
  %usb_lock = getelementptr i8, ptr %work, i32 -116
  %usb_buf.i = getelementptr i8, ptr %work, i32 -820
  %dev.i = getelementptr i8, ptr %work, i32 -1124
  %pipe = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %last_packet_type = getelementptr i8, ptr %work, i32 -788
  br label %land.rhs

again.loopexit:                                   ; preds = %if.end53.again.loopexit_crit_edge, %for.cond.preheader.again.loopexit_crit_edge
  %8 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %present, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not99 = icmp eq i8 %9, 0
  br i1 %tobool.not99, label %again.loopexit.do.body57_crit_edge, label %again.loopexit.land.rhs.backedge_crit_edge

again.loopexit.land.rhs.backedge_crit_edge:       ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.backedge

again.loopexit.do.body57_crit_edge:               ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

land.rhs:                                         ; preds = %land.rhs.backedge, %land.rhs.lr.ph.lr.ph
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %streaming, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.rhs.do.body57_crit_edge, label %while.body

land.rhs.do.body57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

while.body:                                       ; preds = %land.rhs
  %12 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  br i1 %tobool8.not, label %if.end10, label %while.body.do.body57_crit_edge

while.body.do.body57_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end10:                                         ; preds = %while.body
  call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #6
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = call ptr @memcpy(ptr %15, ptr getelementptr inbounds ([2 x [12 x i8]], ptr @command.order_values, i32 0, i32 1), i32 12)
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %21 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %21, i16 noundef zeroext 12, i32 noundef 250) #6
  call void @mutex_unlock(ptr noundef %usb_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp13 = icmp slt i32 %call3.i, 0
  br i1 %cmp13, label %if.end10.do.body57_crit_edge, label %if.end15

if.end10.do.body57_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end15:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.do.body57_crit_edge

if.end15.do.body57_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end19:                                         ; preds = %if.end15
  %24 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %present, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21.not = icmp eq i8 %25, 0
  br i1 %tobool21.not, label %if.end19.do.body57_crit_edge, label %lor.lhs.false

if.end19.do.body57_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

lor.lhs.false:                                    ; preds = %if.end19
  %26 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %streaming, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool23.not = icmp eq i8 %27, 0
  br i1 %tobool23.not, label %lor.lhs.false.do.body57_crit_edge, label %for.cond.preheader

lor.lhs.false.do.body57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

for.cond.preheader:                               ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pipe, align 4
  %call2797 = call i32 @usb_bulk_msg(ptr noundef %29, i32 noundef %31, ptr noundef %3, i32 noundef 8192, ptr noundef nonnull %len, i32 noundef 250) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2797)
  %cmp2898 = icmp slt i32 %call2797, 0
  br i1 %cmp2898, label %for.cond.preheader.again.loopexit_crit_edge, label %for.cond.preheader.if.end30_crit_edge

for.cond.preheader.if.end30_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end30

for.cond.preheader.again.loopexit_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %again.loopexit

if.end30:                                         ; preds = %if.end53.if.end30_crit_edge, %for.cond.preheader.if.end30_crit_edge
  %32 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool32.not = icmp eq i8 %33, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.do.body57_crit_edge

if.end30.do.body57_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end34:                                         ; preds = %if.end30
  %34 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %present, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool36.not = icmp eq i8 %35, 0
  br i1 %tobool36.not, label %if.end34.do.body57_crit_edge, label %lor.lhs.false37

if.end34.do.body57_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

lor.lhs.false37:                                  ; preds = %if.end34
  %36 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %streaming, align 2, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool39.not = icmp eq i8 %37, 0
  br i1 %tobool39.not, label %lor.lhs.false37.do.body57_crit_edge, label %if.end41

lor.lhs.false37.do.body57_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

if.end41:                                         ; preds = %lor.lhs.false37
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %39)
  %cmp42 = icmp slt i32 %39, 8192
  br i1 %cmp42, label %if.end41.if.then52_crit_edge, label %lor.lhs.false43

if.end41.if.then52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

lor.lhs.false43:                                  ; preds = %if.end41
  %sub = add nsw i32 %39, -2
  %arrayidx44 = getelementptr i8, ptr %3, i32 %sub
  %40 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %cmp45 = icmp eq i8 %41, -1
  br i1 %cmp45, label %land.lhs.true, label %lor.lhs.false43.if.end53_crit_edge

lor.lhs.false43.if.end53_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.lhs.true:                                    ; preds = %lor.lhs.false43
  %sub47 = add nsw i32 %39, -1
  %arrayidx48 = getelementptr i8, ptr %3, i32 %sub47
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %43)
  %cmp50 = icmp eq i8 %43, -39
  br i1 %cmp50, label %land.lhs.true.if.then52_crit_edge, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

land.lhs.true.if.then52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.then52:                                        ; preds = %land.lhs.true.if.then52_crit_edge, %if.end41.if.then52_crit_edge
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef 3, ptr noundef %3, i32 noundef %39) #6
  call void @msleep(i32 noundef 35) #6
  %44 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %present, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %if.then52.do.body57_crit_edge, label %if.then52.land.rhs.backedge_crit_edge

if.then52.land.rhs.backedge_crit_edge:            ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.backedge

if.then52.do.body57_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

land.rhs.backedge:                                ; preds = %if.then52.land.rhs.backedge_crit_edge, %again.loopexit.land.rhs.backedge_crit_edge
  br label %land.rhs

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %lor.lhs.false43.if.end53_crit_edge
  %46 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp55 = icmp eq i8 %47, 3
  %cond = select i1 %cmp55, i32 1, i32 2
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef %3, i32 noundef %39) #6
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %50 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pipe, align 4
  %call27 = call i32 @usb_bulk_msg(ptr noundef %49, i32 noundef %51, ptr noundef %3, i32 noundef 8192, ptr noundef nonnull %len, i32 noundef 250) #6
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end53.again.loopexit_crit_edge, label %if.end53.if.end30_crit_edge

if.end53.if.end30_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end53.again.loopexit_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %again.loopexit

do.body57:                                        ; preds = %if.then52.do.body57_crit_edge, %lor.lhs.false37.do.body57_crit_edge, %if.end34.do.body57_crit_edge, %if.end30.do.body57_crit_edge, %lor.lhs.false.do.body57_crit_edge, %if.end19.do.body57_crit_edge, %if.end15.do.body57_crit_edge, %if.end10.do.body57_crit_edge, %while.body.do.body57_crit_edge, %land.rhs.do.body57_crit_edge, %again.loopexit.do.body57_crit_edge, %do.end6.do.body57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %52 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp58 = icmp sgt i32 %52, 2
  br i1 %cmp58, label %do.end63, label %do.body57.do.end71_crit_edge

do.body57.do.end71_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %name66 = getelementptr i8, ptr %work, i32 -1192
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name66) #9
  br label %do.end71

do.end71:                                         ; preds = %do.end63, %do.body57.do.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/finepix.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/finepix.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/finepix.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_finepix__307_293_sd_driver_init6, !8, !"__initcall__kmod_gspca_finepix__307_293_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/finepix.c", i32 293, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/finepix.c", i32 282, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/finepix.c", i32 281, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/finepix.c", i32 263, i32 29}
!17 = !{ptr @sd_config.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/finepix.c", i32 169, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fpix_mode, !21, !"fpix_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/finepix.c", i32 40, i32 37}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/finepix.c", i32 83, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dostream._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @dostream._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/finepix.c", i32 154, i32 2}
!30 = !{ptr @dostream._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dostream._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @command.order_values, !33, !"order_values", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/finepix.c", i32 52, i32 12}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/finepix.c", i32 189, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sd_start._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_start._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/finepix.c", i32 201, i32 3}
!41 = !{ptr @sd_start._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sd_start._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/finepix.c", i32 208, i32 3}
!45 = !{ptr @sd_start._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sd_start._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @device_table, !48, !"device_table", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/finepix.c", i32 233, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{i8 0, i8 2}
