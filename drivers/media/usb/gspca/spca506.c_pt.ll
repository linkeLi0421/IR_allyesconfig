; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca506.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca506.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.sd = type { %struct.gspca_dev, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca506.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_spca506.description=GSPCA/SPCA506 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_spca506.file=drivers/media/usb/gspca/gspca_spca506\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_spca506.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca506__307_599_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_spca506\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spca506\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1761, i16 -24176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1844, i16 1083, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -26118, i16 -30328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 892351827, i32 1, i32 160, i32 28800, i32 8, i32 5, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 892351827, i32 1, i32 176, i32 38016, i32 8, i32 4, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 892351827, i32 1, i32 320, i32 115200, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 892351827, i32 1, i32 352, i32 152064, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 892351827, i32 1, i32 640, i32 460800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: ** Close Init *\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/spca506.c\00", [62 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@spca506_SetNormeInput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: ** Open Set Norme **\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spca506_SetNormeInput\00", [42 x i8] zeroinitializer }, align 32
@spca506_SetNormeInput._entry_ptr = internal global ptr @spca506_SetNormeInput._entry, section ".printk_index", align 4
@spca506_SetNormeInput._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Set Video Byte to 0x%2x\0A\00", [33 x i8] zeroinitializer }, align 32
@spca506_SetNormeInput._entry_ptr.9 = internal global ptr @spca506_SetNormeInput._entry.7, section ".printk_index", align 4
@spca506_SetNormeInput._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Set Norme: %08x Channel %d\00", [63 x i8] zeroinitializer }, align 32
@spca506_SetNormeInput._entry_ptr.12 = internal global ptr @spca506_SetNormeInput._entry.10, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spca506:542:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Could not initialize controls\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: webcam started\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@spca506_Setsize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: ** SetSize **\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spca506_Setsize\00", [16 x i8] zeroinitializer }, align 32
@spca506_Setsize._entry_ptr = internal global ptr @spca506_Setsize._entry, section ".printk_index", align 4
@spca506_GetNormeInput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Get Norme: %d Channel %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spca506_GetNormeInput\00", [42 x i8] zeroinitializer }, align 32
@spca506_GetNormeInput._entry_ptr = internal global ptr @spca506_GetNormeInput._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 587, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 599, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 588, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 571, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 560, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 27, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 313, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 120, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 147, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 148, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 542, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 533, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 553, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 441, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 170, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [37 x i8] c"../drivers/media/usb/gspca/spca506.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 161, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca506__307_599_sd_driver_init6, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry_ptr, ptr @spca506_GetNormeInput._entry, ptr @spca506_GetNormeInput._entry_ptr, ptr @spca506_SetNormeInput._entry, ptr @spca506_SetNormeInput._entry.10, ptr @spca506_SetNormeInput._entry.7, ptr @spca506_SetNormeInput._entry_ptr, ptr @spca506_SetNormeInput._entry_ptr.12, ptr @spca506_SetNormeInput._entry_ptr.9, ptr @spca506_Setsize._entry, ptr @spca506_Setsize._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @sd_init_controls._key, ptr @.str.13, ptr @sd_ctrl_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca506_SetNormeInput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca506_SetNormeInput._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca506_SetNormeInput._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca506_Setsize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca506_GetNormeInput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2616, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i.i100 = shl i32 %5, 8
  %or.i101 = or i32 %shl.i.i100, -2147483648
  %call1.i102 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i101, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i.i103 = shl i32 %7, 8
  %or.i104 = or i32 %shl.i.i103, -2147483648
  %call1.i105 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i104, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i106 = shl i32 %9, 8
  %or.i107 = or i32 %shl.i.i106, -2147483648
  %call1.i108 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i107, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 28, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  %shl.i.i109 = shl i32 %11, 8
  %or.i110 = or i32 %shl.i.i109, -2147483648
  %call1.i111 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i110, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 24, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  tail call fastcc void @spca506_SetNormeInput(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %shl.i.i112 = shl i32 %13, 8
  %or.i113 = or i32 %shl.i.i112, -2147483648
  %call1.i114 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i113, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 28, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %shl.i.i115 = shl i32 %15, 8
  %or.i116 = or i32 %shl.i.i115, -2147483648
  %call1.i117 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i116, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 24, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  %shl.i.i118 = shl i32 %17, 8
  %or.i119 = or i32 %shl.i.i118, -2147483648
  %call1.i120 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i119, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  %shl.i.i121 = shl i32 %19, 8
  %or.i122 = or i32 %shl.i.i121, -2147483648
  %call1.i123 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i122, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 239, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  %shl.i.i124 = shl i32 %21, 8
  %or.i125 = or i32 %shl.i.i124, -2147483648
  %call1.i126 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i125, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 193, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 8
  %shl.i.i127 = shl i32 %23, 8
  %or.i128 = or i32 %shl.i.i127, -2147483648
  %call1.i129 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i128, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 194, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  %shl.i.i130 = shl i32 %25, 8
  %or.i131 = or i32 %shl.i.i130, -2147483648
  %call1.i132 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i131, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 24, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  %shl.i.i133 = shl i32 %27, 8
  %or.i134 = or i32 %shl.i.i133, -2147483648
  %call1.i135 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i134, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 245, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 8
  %shl.i.i136 = shl i32 %29, 8
  %or.i137 = or i32 %shl.i.i136, -2147483648
  %call1.i138 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i137, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 8
  %shl.i.i139 = shl i32 %31, 8
  %or.i140 = or i32 %shl.i.i139, -2147483648
  %call1.i141 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i140, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 251, i16 noundef zeroext 19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 8
  %shl.i.i142 = shl i32 %33, 8
  %or.i143 = or i32 %shl.i.i142, -2147483648
  %call1.i144 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i143, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 8
  %shl.i.i145 = shl i32 %35, 8
  %or.i146 = or i32 %shl.i.i145, -2147483648
  %call1.i147 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i146, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 164, i16 noundef zeroext 81, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 8
  %shl.i.i148 = shl i32 %37, 8
  %or.i149 = or i32 %shl.i.i148, -2147483648
  %call1.i150 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i149, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 82, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %shl.i.i151 = shl i32 %39, 8
  %or.i152 = or i32 %shl.i.i151, -2147483648
  %call1.i153 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i152, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 113, i16 noundef zeroext 83, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 8
  %shl.i.i154 = shl i32 %41, 8
  %or.i155 = or i32 %shl.i.i154, -2147483648
  %call1.i156 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i155, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 84, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 8
  %shl.i.i157 = shl i32 %43, 8
  %or.i158 = or i32 %shl.i.i157, -2147483648
  %call1.i159 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i158, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 8
  %shl.i.i160 = shl i32 %45, 8
  %or.i161 = or i32 %shl.i.i160, -2147483648
  %call1.i162 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i161, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 8
  %shl.i.i163 = shl i32 %47, 8
  %or.i164 = or i32 %shl.i.i163, -2147483648
  %call1.i165 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i164, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 8
  %shl.i.i166 = shl i32 %49, 8
  %or.i167 = or i32 %shl.i.i166, -2147483648
  %call1.i168 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i167, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 8
  %shl.i.i169 = shl i32 %51, 8
  %or.i170 = or i32 %shl.i.i169, -2147483648
  %call1.i171 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i170, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 8
  %shl.i.i172 = shl i32 %53, 8
  %or.i173 = or i32 %shl.i.i172, -2147483648
  %call1.i174 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i173, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 96, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 8
  %shl.i.i175 = shl i32 %55, 8
  %or.i176 = or i32 %shl.i.i175, -2147483648
  %call1.i177 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i176, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 24, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i.i = shl i32 %59, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 74, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 8, i16 noundef zeroext 1)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 192, i16 noundef zeroext 2)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 51, i16 noundef zeroext 3)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 4)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 5)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 13, i16 noundef zeroext 6)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 240, i16 noundef zeroext 7)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 152, i16 noundef zeroext 8)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 3, i16 noundef zeroext 9)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 128, i16 noundef zeroext 10)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 71, i16 noundef zeroext 11)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 72, i16 noundef zeroext 12)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 13)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 3, i16 noundef zeroext 14)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 42, i16 noundef zeroext 15)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 16)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 12, i16 noundef zeroext 17)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 184, i16 noundef zeroext 18)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 19)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 20)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 21)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 22)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 23)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 24)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 25)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 26)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 27)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 28)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 29)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 30)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext 31)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 64)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 65)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 66)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 67)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 68)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 69)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 70)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 71)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 72)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 73)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 74)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 75)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 76)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 77)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 78)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 79)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 80)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 81)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 82)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 83)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 84)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 85)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 86)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 87)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 88)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 84, i16 noundef zeroext 89)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 7, i16 noundef zeroext 90)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 131, i16 noundef zeroext 91)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 92)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 93)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 94)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 95)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 96)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 5, i16 noundef zeroext 97)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 159, i16 noundef zeroext 98)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp = icmp sgt i32 %60, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.13) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 71) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 64) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #5
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i.i97 = shl i32 %5, 8
  %or.i98 = or i32 %shl.i.i97, -2147483648
  %call1.i99 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i98, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i.i100 = shl i32 %7, 8
  %or.i101 = or i32 %shl.i.i100, -2147483648
  %call1.i102 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i101, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i.i103 = shl i32 %9, 8
  %or.i104 = or i32 %shl.i.i103, -2147483648
  %call1.i105 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i104, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  %shl.i.i106 = shl i32 %11, 8
  %or.i107 = or i32 %shl.i.i106, -2147483648
  %call1.i108 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i107, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %shl.i.i109 = shl i32 %13, 8
  %or.i110 = or i32 %shl.i.i109, -2147483648
  %call1.i111 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i110, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 96, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 8
  %shl.i.i112 = shl i32 %15, 8
  %or.i113 = or i32 %shl.i.i112, -2147483648
  %call1.i114 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i113, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 24, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 74, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 8, i16 noundef zeroext 1)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 51, i16 noundef zeroext 3)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 4)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 5)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 13, i16 noundef zeroext 6)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 240, i16 noundef zeroext 7)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 152, i16 noundef zeroext 8)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 3, i16 noundef zeroext 9)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 128, i16 noundef zeroext 10)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 71, i16 noundef zeroext 11)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 72, i16 noundef zeroext 12)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 13)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 42, i16 noundef zeroext 15)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 16)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 12, i16 noundef zeroext 17)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 184, i16 noundef zeroext 18)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 19)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 20)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 21)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 22)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 23)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 24)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 25)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 26)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 27)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 28)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 29)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 30)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 161, i16 noundef zeroext 31)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 64)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 65)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 66)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 67)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 68)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 69)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 70)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 71)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 72)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 73)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 74)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 75)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 76)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 77)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 78)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 79)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 80)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 81)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 82)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 83)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 84)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 85)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 86)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 255, i16 noundef zeroext 87)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 88)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 84, i16 noundef zeroext 89)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 7, i16 noundef zeroext 90)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 131, i16 noundef zeroext 91)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 92)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 93)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 94)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 95)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 96)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 5, i16 noundef zeroext 97)
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext 159, i16 noundef zeroext 98)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 8
  %shl.i.i115 = shl i32 %21, 8
  %or.i116 = or i32 %shl.i.i115, -2147483648
  %call1.i117 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i116, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 8
  %shl.i.i118 = shl i32 %23, 8
  %or.i119 = or i32 %shl.i.i118, -2147483648
  %call1.i120 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i119, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  %shl.i.i121 = shl i32 %25, 8
  %or.i122 = or i32 %shl.i.i121, -2147483648
  %call1.i123 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i122, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  %shl.i.i124 = shl i32 %27, 8
  %or.i125 = or i32 %shl.i.i124, -2147483648
  %call1.i126 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i125, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 120, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %28 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %30 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %31 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %29, i32 %conv, i32 7
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priv, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca506_Setsize(ptr noundef %gspca_dev, i16 noundef zeroext 0, i16 noundef zeroext 16, i16 noundef zeroext 16)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca506_Setsize(ptr noundef %gspca_dev, i16 noundef zeroext 1, i16 noundef zeroext 26, i16 noundef zeroext 26)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca506_Setsize(ptr noundef %gspca_dev, i16 noundef zeroext 2, i16 noundef zeroext 28, i16 noundef zeroext 28)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca506_Setsize(ptr noundef %gspca_dev, i16 noundef zeroext 4, i16 noundef zeroext 52, i16 noundef zeroext 52)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @spca506_Setsize(ptr noundef %gspca_dev, i16 noundef zeroext 5, i16 noundef zeroext 64, i16 noundef zeroext 64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 8
  %shl.i.i127 = shl i32 %36, 8
  %or.i128 = or i32 %shl.i.i127, -2147483648
  %call1.i129 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i128, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 8
  %shl.i.i130 = shl i32 %38, 8
  %or.i131 = or i32 %shl.i.i130, -2147483648
  %call1.i132 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i131, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i134 = shl i32 %42, 8
  %or2.i = or i32 %shl.i.i134, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or2.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %44, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %45 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp = icmp sgt i32 %45, 2
  br i1 %cmp, label %do.end8, label %do.end8.thread

do.end8.thread:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %norme1.i136 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %46 = ptrtoint ptr %norme1.i136 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %norme1.i136, align 8
  %channel2.i138 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %48 = ptrtoint ptr %channel2.i138 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %channel2.i138, align 1
  br label %spca506_GetNormeInput.exit

do.end8:                                          ; preds = %sw.epilog
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  %norme1.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %50 = ptrtoint ptr %norme1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %norme1.i, align 8
  %channel2.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %52 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %channel2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 2
  br i1 %cmp.i, label %do.end.i, label %do.end8.spca506_GetNormeInput.exit_crit_edge

do.end8.spca506_GetNormeInput.exit_crit_edge:     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca506_GetNormeInput.exit

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %51 to i32
  %conv7.i = zext i8 %53 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %spca506_GetNormeInput.exit

spca506_GetNormeInput.exit:                       ; preds = %do.end.i, %do.end8.spca506_GetNormeInput.exit_crit_edge, %do.end8.thread
  %conv3.i142.in = phi i8 [ %49, %do.end8.thread ], [ %53, %do.end8.spca506_GetNormeInput.exit_crit_edge ], [ %53, %do.end.i ]
  %conv.i141.in = phi i8 [ %47, %do.end8.thread ], [ %51, %do.end8.spca506_GetNormeInput.exit_crit_edge ], [ %51, %do.end.i ]
  %conv.i141 = zext i8 %conv.i141.in to i16
  %conv3.i142 = zext i8 %conv3.i142.in to i16
  tail call fastcc void @spca506_SetNormeInput(ptr noundef %gspca_dev, i16 noundef zeroext %conv.i141, i16 noundef zeroext %conv3.i142)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %1, label %entry.sw.epilog.sink.split_crit_edge [
    i8 0, label %sw.bb
    i8 -1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink13 = phi i32 [ 10, %sw.bb ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink12 = phi i32 [ -10, %sw.bb ], [ -1, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %data, i32 %.sink13
  %sub2 = add i32 %.sink12, %len
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink, ptr noundef %add.ptr1, i32 noundef %sub2) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef readonly %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i.i4 = shl i32 %5, 8
  %or.i5 = or i32 %shl.i.i4, -2147483648
  %call1.i6 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i5, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i.i7 = shl i32 %7, 8
  %or.i8 = or i32 %shl.i.i7, -2147483648
  %call1.i9 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i8, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca506_SetNormeInput(ptr noundef %gspca_dev, i16 noundef zeroext %norme, i16 noundef zeroext %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i.i = shl i32 %4, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call1.i.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 74, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %5 = and i16 %norme, -20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %spec.select = select i1 %tobool.not, i8 72, i8 73
  %6 = and i16 %channel, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %6)
  %switch = icmp eq i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %channel)
  %cmp14 = icmp ugt i16 %channel, 9
  %or.cond = or i1 %cmp14, %switch
  %channel.addr.0 = select i1 %or.cond, i16 0, i16 %channel
  %conv18 = zext i16 %channel.addr.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %channel.addr.0)
  %cmp19 = icmp ult i16 %channel.addr.0, 4
  %spec.select101 = select i1 %cmp19, i8 2, i8 0
  %or25 = or i8 %spec.select101, %spec.select
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %conv27 = zext i8 %or25 to i16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext %conv27, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %or30 = or i16 %channel.addr.0, 192
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext %or30, i16 noundef zeroext 2)
  %. = select i1 %tobool.not, i16 3, i16 51
  tail call fastcc void @spca506_WriteI2c(ptr noundef %gspca_dev, i16 noundef zeroext %., i16 noundef zeroext 14)
  %conv43 = trunc i16 %norme to i8
  %norme44 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %11 = ptrtoint ptr %norme44 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv43, ptr %norme44, align 8
  %conv45 = trunc i16 %channel.addr.0 to i8
  %channel46 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %12 = ptrtoint ptr %channel46 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv45, ptr %channel46, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp48 = icmp sgt i32 %13, 2
  br i1 %cmp48, label %do.body63, label %do.end3.do.end79_crit_edge

do.end3.do.end79_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end79

do.body63:                                        ; preds = %do.end3
  %name56 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv58 = zext i8 %or25 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name56, i32 noundef %conv58) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp64 = icmp sgt i32 %.pr, 2
  br i1 %cmp64, label %do.end69, label %do.body63.do.end79_crit_edge

do.body63.do.end79_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end79

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  %conv74 = zext i16 %norme to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name56, i32 noundef %conv74, i32 noundef %conv18) #8
  br label %do.end79

do.end79:                                         ; preds = %do.end69, %do.body63.do.end79_crit_edge, %do.end3.do.end79_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca506_WriteI2c(ptr nocapture noundef readonly %gspca_dev, i16 noundef zeroext %valeur, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext %reg, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i11 = shl i32 %7, 8
  %or.i12 = or i32 %shl.i.i11, -2147483648
  %call1.i13 = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i12, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext %valeur, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %retry.0 = phi i32 [ 60, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool.not = icmp eq i32 %retry.0, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %retry.0, -1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i14 = shl i32 %11, 8
  %or2.i = or i32 %shl.i.i14, -2147483520
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or2.i, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %13, i16 noundef zeroext 2, i32 noundef 500) #5
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %arrayidx3 = getelementptr i8, ptr %15, i32 1
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3, align 1
  %or10 = or i8 %19, %17
  %cmp = icmp eq i8 %or10, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

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
  %4 = load i8, ptr %streaming, align 2, !range !74
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
  %switch.tableidx = add i32 %6, -9963776
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = trunc i32 %switch.tableidx to i16
  %switch.offset = add i16 %switch.idx.cast, 10
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i.i30 = shl i32 %13, 8
  %or.i.i.i31 = or i32 %shl.i.i.i.i30, -2147483648
  %call1.i.i.i32 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i.i31, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 74, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %conv.i33 = trunc i32 %9 to i16
  tail call fastcc void @spca506_WriteI2c(ptr noundef %add.ptr, i16 noundef zeroext %conv.i33, i16 noundef zeroext %switch.offset) #5
  tail call fastcc void @spca506_WriteI2c(ptr noundef %add.ptr, i16 noundef zeroext 1, i16 noundef zeroext 9) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %14 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca506_Setsize(ptr noundef %gspca_dev, i16 noundef zeroext %code, i16 noundef zeroext %xmult, i16 noundef zeroext %ymult) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = and i16 %code, 7
  %4 = or i16 %3, 24
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %4, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %shl.i.i18 = shl i32 %8, 8
  %or.i19 = or i32 %shl.i.i18, -2147483648
  %call1.i20 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i19, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 65, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %shl.i.i21 = shl i32 %10, 8
  %or.i22 = or i32 %shl.i.i21, -2147483648
  %call1.i23 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i22, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 8
  %shl.i.i24 = shl i32 %12, 8
  %or.i25 = or i32 %shl.i.i24, -2147483648
  %call1.i26 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i25, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 8
  %shl.i.i27 = shl i32 %14, 8
  %or.i28 = or i32 %shl.i.i27, -2147483648
  %call1.i29 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i28, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 8
  %shl.i.i30 = shl i32 %16, 8
  %or.i31 = or i32 %shl.i.i30, -2147483648
  %call1.i32 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i31, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 8
  %shl.i.i33 = shl i32 %18, 8
  %or.i34 = or i32 %shl.i.i33, -2147483648
  %call1.i35 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i34, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %xmult, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 8
  %shl.i.i36 = shl i32 %20, 8
  %or.i37 = or i32 %shl.i.i36, -2147483648
  %call1.i38 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i37, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %ymult, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  %shl.i.i39 = shl i32 %22, 8
  %or.i40 = or i32 %shl.i.i39, -2147483648
  %call1.i41 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i40, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  %shl.i.i42 = shl i32 %24, 8
  %or.i43 = or i32 %shl.i.i42, -2147483648
  %call1.i44 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i43, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 8
  %shl.i.i45 = shl i32 %26, 8
  %or.i46 = or i32 %shl.i.i45, -2147483648
  %call1.i47 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i46, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 33, i16 noundef zeroext 10, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 8
  %shl.i.i48 = shl i32 %28, 8
  %or.i49 = or i32 %shl.i.i48, -2147483648
  %call1.i50 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i49, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca506.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca506.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca506.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca506__307_599_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca506__307_599_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca506.c", i32 599, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca506.c", i32 588, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca506.c", i32 587, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca506.c", i32 560, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca506.c", i32 27, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca506.c", i32 313, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/spca506.c", i32 120, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @spca506_SetNormeInput._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @spca506_SetNormeInput._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/spca506.c", i32 147, i32 2}
!32 = !{ptr @spca506_SetNormeInput._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @spca506_SetNormeInput._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/spca506.c", i32 148, i32 2}
!36 = !{ptr @spca506_SetNormeInput._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @spca506_SetNormeInput._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sd_init_controls._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/spca506.c", i32 542, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/spca506.c", i32 553, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sd_init_controls._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sd_init_controls._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @sd_ctrl_ops, !47, !"sd_ctrl_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/spca506.c", i32 533, i32 35}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/spca506.c", i32 441, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sd_start._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sd_start._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/spca506.c", i32 170, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @spca506_Setsize._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @spca506_Setsize._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/spca506.c", i32 161, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @spca506_GetNormeInput._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @spca506_GetNormeInput._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @device_table, !64, !"device_table", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/spca506.c", i32 571, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
