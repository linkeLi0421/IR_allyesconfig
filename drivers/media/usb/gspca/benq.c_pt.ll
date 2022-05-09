; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/benq.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/benq.c"
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }

@__UNIQUE_ID_author303 = internal constant [63 x i8] c"gspca_benq.author=Jean-Francois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [54 x i8] c"gspca_benq.description=Benq DC E300 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [51 x i8] c"gspca_benq.file=drivers/media/usb/gspca/gspca_benq\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [23 x i8] c"gspca_benq.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_benq__307_274_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gspca_benq\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"benq\00", [27 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1189, i16 12341, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gspca_benq: usb_alloc_coherent failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/usb/gspca/benq.c\00", [33 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_isoc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: sd isoc irq\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_isoc_irq\00", [20 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr = internal global ptr @sd_isoc_irq._entry, section ".printk_index", align 4
@sd_isoc_irq._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_benq: urb status: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.9 = internal global ptr @sd_isoc_irq._entry.7, section ".printk_index", align 4
@sd_isoc_irq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.4, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: ISOC bad lengths %d / %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.12 = internal global ptr @sd_isoc_irq._entry.10, section ".printk_index", align 4
@sd_isoc_irq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.4, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_benq: ISOC data error: [%d] status=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.15 = internal global ptr @sd_isoc_irq._entry.13, section ".printk_index", align 4
@sd_isoc_irq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.4, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gspca_benq: usb_submit_urb(0) ret %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.18 = internal global ptr @sd_isoc_irq._entry.16, section ".printk_index", align 4
@sd_isoc_irq._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.4, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_benq: usb_submit_urb() ret %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.21 = internal global ptr @sd_isoc_irq._entry.19, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013gspca_benq: reg_w err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 128]
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 262, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 274, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 263, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 248, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 238, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 23, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 94, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 146, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 156, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 174, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 184, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 231, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 234, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [34 x i8] c"../drivers/media/usb/gspca/benq.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 50, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_benq__307_274_sd_driver_init6, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_isoc_irq._entry, ptr @sd_isoc_irq._entry.10, ptr @sd_isoc_irq._entry.13, ptr @sd_isoc_irq._entry.16, ptr @sd_isoc_irq._entry.19, ptr @sd_isoc_irq._entry.7, ptr @sd_isoc_irq._entry_ptr, ptr @sd_isoc_irq._entry_ptr.12, ptr @sd_isoc_irq._entry_ptr.15, ptr @sd_isoc_irq._entry_ptr.18, ptr @sd_isoc_irq._entry_ptr.21, ptr @sd_isoc_irq._entry_ptr.9, ptr @sd_start._entry, ptr @sd_start._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2608, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %nmodes, align 4
  %no_urb_create = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %no_urb_create to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %no_urb_create, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %entry
  %n.052 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20.for.body_crit_edge ]
  %call = tail call ptr @usb_alloc_urb(i32 noundef 32, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11, i32 %n.052
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %arrayidx, align 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 15
  %call2 = tail call ptr @usb_alloc_coherent(ptr noundef %2, i32 noundef 2048, i32 noundef 3264, ptr noundef %transfer_dma) #6
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %transfer_buffer, align 4
  %cmp4 = icmp eq ptr %call2, null
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev9, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %7 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %gspca_dev, ptr %context, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2048, ptr %transfer_buffer_length, align 4
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %and = shl i32 %n.052, 15
  %12 = and i32 %and, 32768
  %or.i = xor i32 %12, 4292736
  %or13 = or i32 %or.i, %shl.i
  %pipe = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or13, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %transfer_flags, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 25
  %15 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %interval, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sd_isoc_irq, ptr %complete, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 24
  %17 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %number_of_packets, align 4
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end7
  %i.051 = phi i32 [ 0, %if.end7 ], [ %inc, %for.body16.for.body16_crit_edge ]
  %arrayidx17 = getelementptr %struct.urb, ptr %call, i32 0, i32 29, i32 %i.051
  %length = getelementptr %struct.urb, ptr %call, i32 0, i32 29, i32 %i.051, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %length, align 4
  %mul = shl i32 %i.051, 6
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %arrayidx17, align 4
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc20, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.inc20:                                        ; preds = %for.body16
  %inc21 = add nuw nsw i32 %n.052, 1
  %exitcond53.not = icmp eq i32 %inc21, 4
  br i1 %exitcond53.not, label %for.end22, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end22:                                        ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #8
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %20 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %21, %for.end22 ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_pkt_scan(ptr nocapture noundef %gspca_dev, ptr nocapture noundef %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit56_crit_edge, label %if.end.i

entry.reg_w.exit56_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56

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
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 60, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.reg_w.exit56.sink.split_crit_edge, label %reg_w.exit

if.end.i.reg_w.exit56.sink.split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i14 = icmp slt i32 %.pr, 0
  br i1 %cmp.i14, label %reg_w.exit.reg_w.exit56_crit_edge, label %if.end.i20

reg_w.exit.reg_w.exit56_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56

if.end.i20:                                       ; preds = %reg_w.exit
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i16 = shl i32 %10, 8
  %or.i17 = or i32 %shl.i.i16, -2147483648
  %call2.i18 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i17, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 60, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18)
  %cmp3.i19 = icmp slt i32 %call2.i18, 0
  br i1 %cmp3.i19, label %if.end.i20.reg_w.exit56.sink.split_crit_edge, label %reg_w.exit23

if.end.i20.reg_w.exit56.sink.split_crit_edge:     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56.sink.split

reg_w.exit23:                                     ; preds = %if.end.i20
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr58.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr58.pr)
  %cmp.i25 = icmp slt i32 %.pr58.pr, 0
  br i1 %cmp.i25, label %reg_w.exit23.reg_w.exit56_crit_edge, label %if.end.i31

reg_w.exit23.reg_w.exit56_crit_edge:              ; preds = %reg_w.exit23
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56

if.end.i31:                                       ; preds = %reg_w.exit23
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i27 = shl i32 %15, 8
  %or.i28 = or i32 %shl.i.i27, -2147483648
  %call2.i29 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i28, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 60, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29)
  %cmp3.i30 = icmp slt i32 %call2.i29, 0
  br i1 %cmp3.i30, label %if.end.i31.reg_w.exit56.sink.split_crit_edge, label %reg_w.exit34

if.end.i31.reg_w.exit56.sink.split_crit_edge:     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56.sink.split

reg_w.exit34:                                     ; preds = %if.end.i31
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr60.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr60.pr)
  %cmp.i36 = icmp slt i32 %.pr60.pr, 0
  br i1 %cmp.i36, label %reg_w.exit34.reg_w.exit56_crit_edge, label %if.end.i42

reg_w.exit34.reg_w.exit56_crit_edge:              ; preds = %reg_w.exit34
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56

if.end.i42:                                       ; preds = %reg_w.exit34
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i38 = shl i32 %20, 8
  %or.i39 = or i32 %shl.i.i38, -2147483648
  %call2.i40 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i39, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 60, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i40)
  %cmp3.i41 = icmp slt i32 %call2.i40, 0
  br i1 %cmp3.i41, label %if.end.i42.reg_w.exit56.sink.split_crit_edge, label %reg_w.exit45

if.end.i42.reg_w.exit56.sink.split_crit_edge:     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56.sink.split

reg_w.exit45:                                     ; preds = %if.end.i42
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr62.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr62.pr.pr)
  %cmp.i47 = icmp slt i32 %.pr62.pr.pr, 0
  br i1 %cmp.i47, label %reg_w.exit45.reg_w.exit56_crit_edge, label %if.end.i53

reg_w.exit45.reg_w.exit56_crit_edge:              ; preds = %reg_w.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56

if.end.i53:                                       ; preds = %reg_w.exit45
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i49 = shl i32 %25, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %call2.i51 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i50, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 60, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i51)
  %cmp3.i52 = icmp slt i32 %call2.i51, 0
  br i1 %cmp3.i52, label %if.end.i53.reg_w.exit56.sink.split_crit_edge, label %if.end.i53.reg_w.exit56_crit_edge

if.end.i53.reg_w.exit56_crit_edge:                ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56

if.end.i53.reg_w.exit56.sink.split_crit_edge:     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit56.sink.split

reg_w.exit56.sink.split:                          ; preds = %if.end.i53.reg_w.exit56.sink.split_crit_edge, %if.end.i42.reg_w.exit56.sink.split_crit_edge, %if.end.i31.reg_w.exit56.sink.split_crit_edge, %if.end.i20.reg_w.exit56.sink.split_crit_edge, %if.end.i.reg_w.exit56.sink.split_crit_edge
  %call2.i.sink84 = phi i32 [ %call2.i, %if.end.i.reg_w.exit56.sink.split_crit_edge ], [ %call2.i18, %if.end.i20.reg_w.exit56.sink.split_crit_edge ], [ %call2.i29, %if.end.i31.reg_w.exit56.sink.split_crit_edge ], [ %call2.i40, %if.end.i42.reg_w.exit56.sink.split_crit_edge ], [ %call2.i51, %if.end.i53.reg_w.exit56.sink.split_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call2.i.sink84) #9
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call2.i.sink84, ptr %usb_err.i, align 8
  br label %reg_w.exit56

reg_w.exit56:                                     ; preds = %reg_w.exit56.sink.split, %if.end.i53.reg_w.exit56_crit_edge, %reg_w.exit45.reg_w.exit56_crit_edge, %reg_w.exit34.reg_w.exit56_crit_edge, %reg_w.exit23.reg_w.exit56_crit_edge, %reg_w.exit.reg_w.exit56_crit_edge, %entry.reg_w.exit56_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %29 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %iface, align 1
  %conv = zext i8 %30 to i32
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %28, i32 noundef %conv) #6
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iface, align 1
  %conv3 = zext i8 %34 to i32
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 2
  %35 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_altsetting, align 8
  %sub = add i32 %36, -1
  %call4 = tail call i32 @usb_set_interface(ptr noundef %32, i32 noundef %conv3, i32 noundef %sub) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_isoc_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp sgt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end11 [
    i32 0, label %if.end21
    i32 -108, label %if.end5.cleanup_crit_edge
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %frozen = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %do.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %6) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end5
  %urb22 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %urb22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb22, align 8
  %cmp23 = icmp eq ptr %11, %urb
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %lor.lhs.false

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end21
  %arrayidx25 = getelementptr %struct.gspca_dev, ptr %1, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx25, align 8
  %cmp26 = icmp eq ptr %13, %urb
  br i1 %cmp26, label %lor.lhs.false.cleanup_crit_edge, label %if.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr %struct.gspca_dev, ptr %1, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx30, align 4
  %cmp31 = icmp eq ptr %15, %urb
  %. = select i1 %cmp31, ptr %11, ptr %13
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %16 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp38199 = icmp sgt i32 %17, 0
  br i1 %cmp38199, label %for.body.lr.ph, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %name52 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %., i32 0, i32 14
  %transfer_buffer108 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0200 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx39 = getelementptr %struct.urb, ptr %., i32 0, i32 29, i32 %i.0200
  %actual_length = getelementptr %struct.urb, ptr %., i32 0, i32 29, i32 %i.0200, i32 2
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %19)
  %cmp40.not = icmp eq i32 %19, 64
  br i1 %cmp40.not, label %lor.lhs.false41, label %for.body.do.end49_crit_edge

for.body.do.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

lor.lhs.false41:                                  ; preds = %for.body
  %arrayidx43 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0200
  %actual_length44 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0200, i32 2
  %20 = ptrtoint ptr %actual_length44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_length44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %21)
  %cmp45.not = icmp eq i32 %21, 64
  br i1 %cmp45.not, label %if.end61, label %lor.lhs.false41.do.end49_crit_edge

lor.lhs.false41.do.end49_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

do.end49:                                         ; preds = %lor.lhs.false41.do.end49_crit_edge, %for.body.do.end49_crit_edge
  %actual_length59 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0200, i32 2
  %22 = ptrtoint ptr %actual_length59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length59, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name52, i32 noundef %19, i32 noundef %23) #9
  %24 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %last_packet_type, align 4
  br label %for.inc

if.end61:                                         ; preds = %lor.lhs.false41
  %status64 = getelementptr %struct.urb, ptr %., i32 0, i32 29, i32 %i.0200, i32 3
  %25 = ptrtoint ptr %status64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp65 = icmp eq i32 %26, 0
  br i1 %cmp65, label %if.end70, label %if.end61.do.end75_crit_edge

if.end61.do.end75_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

if.end70:                                         ; preds = %if.end61
  %status69 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0200, i32 3
  %27 = ptrtoint ptr %status69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool71.not = icmp eq i32 %28, 0
  br i1 %tobool71.not, label %if.end79, label %if.end70.do.end75_crit_edge

if.end70.do.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

do.end75:                                         ; preds = %if.end70.do.end75_crit_edge, %if.end61.do.end75_crit_edge
  %st.0197 = phi i32 [ %28, %if.end70.do.end75_crit_edge ], [ %26, %if.end61.do.end75_crit_edge ]
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %i.0200, i32 noundef %st.0197) #9
  %29 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %last_packet_type, align 4
  br label %for.inc

if.end79:                                         ; preds = %if.end70
  %30 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer, align 4
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx39, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %35, label %if.end79.if.else104_crit_edge [
    i8 -128, label %land.lhs.true
    i8 4, label %land.lhs.true96
  ]

if.end79.if.else104_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else104

land.lhs.true:                                    ; preds = %if.end79
  %arrayidx85 = getelementptr i8, ptr %add.ptr, i32 1
  %37 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx85, align 1
  %39 = and i8 %38, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %39)
  %cmp87 = icmp eq i8 %39, -70
  br i1 %cmp87, label %if.then89, label %land.lhs.true.if.else104_crit_edge

land.lhs.true.if.else104_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else104

if.then89:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %1, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  br label %if.end107

land.lhs.true96:                                  ; preds = %if.end79
  %arrayidx97 = getelementptr i8, ptr %add.ptr, i32 1
  %40 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx97, align 1
  %42 = and i8 %41, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -70, i8 %42)
  %cmp100 = icmp eq i8 %42, -70
  br i1 %cmp100, label %land.lhs.true96.if.end107_crit_edge, label %land.lhs.true96.if.else104_crit_edge

land.lhs.true96.if.else104_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else104

land.lhs.true96.if.end107_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.else104:                                       ; preds = %land.lhs.true96.if.else104_crit_edge, %land.lhs.true.if.else104_crit_edge, %if.end79.if.else104_crit_edge
  %43 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %last_packet_type, align 4
  br label %for.inc

if.end107:                                        ; preds = %land.lhs.true96.if.end107_crit_edge, %if.then89
  %.sink = phi i32 [ 1, %if.then89 ], [ 2, %land.lhs.true96.if.end107_crit_edge ]
  %add.ptr103 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void @gspca_frame_add(ptr noundef %1, i32 noundef %.sink, ptr noundef %add.ptr103, i32 noundef 60) #6
  %44 = ptrtoint ptr %transfer_buffer108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_buffer108, align 4
  %46 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx43, align 4
  %add.ptr112 = getelementptr i8, ptr %45, i32 %47
  tail call void @gspca_frame_add(ptr noundef %1, i32 noundef 2, ptr noundef %add.ptr112, i32 noundef 64) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end107, %if.else104, %do.end75, %do.end49
  %inc = add nuw nsw i32 %i.0200, 1
  %48 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number_of_packets, align 4
  %cmp38 = icmp slt i32 %inc, %49
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %call113 = tail call i32 @usb_submit_urb(ptr noundef %., i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end119, label %for.end.if.end122_crit_edge

for.end.if.end122_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

do.end119:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call113) #9
  br label %if.end122

if.end122:                                        ; preds = %do.end119, %for.end.if.end122_crit_edge
  %call123 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end129, label %if.end122.cleanup_crit_edge

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call123) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end129, %if.end122.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end17, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/benq.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/benq.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/benq.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_benq__307_274_sd_driver_init6, !8, !"__initcall__kmod_gspca_benq__307_274_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/benq.c", i32 274, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/benq.c", i32 263, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/benq.c", i32 262, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/benq.c", i32 238, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/benq.c", i32 23, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/benq.c", i32 94, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_start._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_start._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/benq.c", i32 146, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sd_isoc_irq._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @sd_isoc_irq._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/benq.c", i32 156, i32 3}
!32 = !{ptr @sd_isoc_irq._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sd_isoc_irq._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/benq.c", i32 174, i32 4}
!36 = !{ptr @sd_isoc_irq._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sd_isoc_irq._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/benq.c", i32 184, i32 4}
!40 = !{ptr @sd_isoc_irq._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sd_isoc_irq._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/benq.c", i32 231, i32 3}
!44 = !{ptr @sd_isoc_irq._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sd_isoc_irq._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/benq.c", i32 234, i32 3}
!48 = !{ptr @sd_isoc_irq._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sd_isoc_irq._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/benq.c", i32 50, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @reg_w._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @reg_w._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @device_table, !56, !"device_table", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/benq.c", i32 248, i32 35}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i8 0, i8 2}
