; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/mars.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/mars.c"
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.sd = type { %struct.gspca_dev, ptr, ptr, ptr, ptr, %struct.anon.107, [589 x i8] }
%struct.anon.107 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [64 x i8] c"gspca_mars.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [52 x i8] c"gspca_mars.description=GSPCA/Mars USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [51 x i8] c"gspca_mars.file=drivers/media/usb/gspca/gspca_mars\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [23 x i8] c"gspca_mars.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_mars__307_427_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gspca_mars\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mars\00", [27 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2362, i16 1295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mars:196:(hdl)->_lock\00", [42 x i8] zeroinitializer }, align 32
@mars_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mars_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_mars: Could not initialize controls\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/usb/gspca/mars.c\00", [33 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gspca_mars: reg write [%02x] error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@mi_data = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"H\22\01G\10\00\00\00\00\010\010\010\010\00\04\00\06\01\E2\02\82\00 \17\80\08\0C\00", [32 x i8] zeroinitializer }, align 32
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: sof offset: %d len: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963778, i64 9963792, i64 9963803, i64 9963813]
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 415, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 427, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 416, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 401, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 390, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 43, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 196, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"mars_ctrl_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 185, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 212, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 83, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"mi_data\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 56, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 19, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [34 x i8] c"../drivers/media/usb/gspca/mars.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 372, i32 5 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_mars__307_427_sd_driver_init6, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @sd_init_controls._key, ptr @.str.2, ptr @mars_ctrl_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mi_data, ptr @jpeg_head, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mars_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3224, ptr noundef null) #7
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
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.2) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mars_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 30, i64 noundef 1, i64 noundef 15) #7
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %brightness, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mars_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 200) #7
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %2 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %saturation, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mars_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 1) #7
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %3 = ptrtoint ptr %gamma to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %gamma, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mars_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 2, i64 noundef 1, i64 noundef 1) #7
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %sharpness, align 8
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mars_ctrl_ops, i32 noundef 9963813, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %5 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %5, align 8
  %flags = getelementptr inbounds %struct.v4l2_ctrl, ptr %call6, i32 0, i32 20
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 8
  store i32 %or, ptr %flags, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mars_ctrl_ops, i32 noundef 9963814, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %illum_bottom = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %illum_bottom to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %illum_bottom, align 4
  %flags10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call8, i32 0, i32 20
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags10, align 4
  %or11 = or i32 %11, 8
  store i32 %or11, ptr %flags10, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %15, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %alen.i.i241 = alloca i32, align 4
  %alen.i227 = alloca i32, align 4
  %alen.i.i = alloca i32, align 4
  %alen.i211 = alloca i32, align 4
  %alen.i197 = alloca i32, align 4
  %alen.i183 = alloca i32, align 4
  %alen.i169 = alloca i32, align 4
  %alen.i155 = alloca i32, align 4
  %alen.i141 = alloca i32, align 4
  %alen.i127 = alloca i32, align 4
  %alen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  %2 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixfmt, align 8
  %4 = call ptr @memcpy(ptr %jpeg_hdr, ptr @jpeg_head, i32 589)
  %5 = lshr i32 %1, 8
  %conv.i = trunc i32 %5 to i8
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %arrayidx9.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.01.i, 7
  %arrayidx.i124 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i124, align 1
  %conv.i125 = zext i8 %13 to i16
  %mul6.i = mul nuw nsw i16 %conv.i125, 100
  %add7.i = add nuw nsw i16 %mul6.i, 50
  %div8.i = udiv i16 %add7.i, 100
  %conv9.i = trunc i16 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.01.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %16 to i16
  %mul15.i = mul nuw nsw i16 %conv14.i, 100
  %add16.i = add nuw nsw i16 %mul15.i, 50
  %div17.i = udiv i16 %add16.i, 100
  %conv18.i = trunc i16 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %18 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %19, align 1
  %arrayidx4 = getelementptr i8, ptr %19, i32 1
  %21 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i) #7
  %22 = ptrtoint ptr %alen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %alen.i, align 4, !annotation !55
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp slt i32 %24, 0
  br i1 %cmp.i, label %jpeg_set_qual.exit.reg_w.exit_crit_edge, label %if.end.i

jpeg_set_qual.exit.reg_w.exit_crit_edge:          ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %jpeg_set_qual.exit
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i = shl i32 %28, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %29 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %26, i32 noundef %or.i, ptr noundef %30, i32 noundef 2, ptr noundef nonnull %alen.i, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i126 = zext i8 %34 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i126, i32 noundef %call2.i) #10
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %jpeg_set_qual.exit.reg_w.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i) #7
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %19, align 1
  %37 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 13, ptr %arrayidx4, align 1
  %arrayidx7 = getelementptr i8, ptr %19, i32 2
  %38 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %arrayidx7, align 1
  %39 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixfmt, align 8
  %div122 = lshr i32 %40, 3
  %conv = trunc i32 %div122 to i8
  %arrayidx10 = getelementptr i8, ptr %19, i32 3
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv, ptr %arrayidx10, align 1
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  %div13123 = lshr i32 %43, 3
  %conv14 = trunc i32 %div13123 to i8
  %arrayidx15 = getelementptr i8, ptr %19, i32 4
  %44 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv14, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %19, i32 5
  %45 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 48, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i8, ptr %19, i32 6
  %46 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %arrayidx17, align 1
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %47 = ptrtoint ptr %gamma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gamma, align 4
  %call = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %48) #7
  %call.tr = trunc i32 %call to i8
  %conv18 = shl i8 %call.tr, 6
  %arrayidx19 = getelementptr i8, ptr %19, i32 7
  %49 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv18, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %19, i32 8
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %19, i32 9
  %51 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 82, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr i8, ptr %19, i32 10
  %52 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 24, ptr %arrayidx22, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i127) #7
  %53 = ptrtoint ptr %alen.i127 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %alen.i127, align 4, !annotation !55
  %54 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i129 = icmp slt i32 %55, 0
  br i1 %cmp.i129, label %reg_w.exit.reg_w.exit140_crit_edge, label %if.end.i136

reg_w.exit.reg_w.exit140_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit140

if.end.i136:                                      ; preds = %reg_w.exit
  %dev.i130 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %56 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i130, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i131 = shl i32 %59, 8
  %or.i132 = or i32 %shl.i.i131, -1073610752
  %60 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf, align 4
  %call2.i134 = call i32 @usb_bulk_msg(ptr noundef %57, i32 noundef %or.i132, ptr noundef %61, i32 noundef 11, ptr noundef nonnull %alen.i127, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i134)
  %cmp3.i135 = icmp slt i32 %call2.i134, 0
  br i1 %cmp3.i135, label %do.end.i139, label %if.end.i136.reg_w.exit140_crit_edge

if.end.i136.reg_w.exit140_crit_edge:              ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit140

do.end.i139:                                      ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb_buf, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %conv.i137 = zext i8 %65 to i32
  %call6.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i137, i32 noundef %call2.i134) #10
  %66 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call2.i134, ptr %usb_err.i, align 8
  br label %reg_w.exit140

reg_w.exit140:                                    ; preds = %do.end.i139, %if.end.i136.reg_w.exit140_crit_edge, %reg_w.exit.reg_w.exit140_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i127) #7
  %67 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 35, ptr %19, align 1
  %68 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 9, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i141) #7
  %69 = ptrtoint ptr %alen.i141 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %alen.i141, align 4, !annotation !55
  %70 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i143 = icmp slt i32 %71, 0
  br i1 %cmp.i143, label %reg_w.exit140.reg_w.exit154_crit_edge, label %if.end.i150

reg_w.exit140.reg_w.exit154_crit_edge:            ; preds = %reg_w.exit140
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit154

if.end.i150:                                      ; preds = %reg_w.exit140
  %dev.i144 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %72 = ptrtoint ptr %dev.i144 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i144, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %shl.i.i145 = shl i32 %75, 8
  %or.i146 = or i32 %shl.i.i145, -1073610752
  %76 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf, align 4
  %call2.i148 = call i32 @usb_bulk_msg(ptr noundef %73, i32 noundef %or.i146, ptr noundef %77, i32 noundef 2, ptr noundef nonnull %alen.i141, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i148)
  %cmp3.i149 = icmp slt i32 %call2.i148, 0
  br i1 %cmp3.i149, label %do.end.i153, label %if.end.i150.reg_w.exit154_crit_edge

if.end.i150.reg_w.exit154_crit_edge:              ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit154

do.end.i153:                                      ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %conv.i151 = zext i8 %81 to i32
  %call6.i152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i151, i32 noundef %call2.i148) #10
  %82 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call2.i148, ptr %usb_err.i, align 8
  br label %reg_w.exit154

reg_w.exit154:                                    ; preds = %do.end.i153, %if.end.i150.reg_w.exit154_crit_edge, %reg_w.exit140.reg_w.exit154_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i141) #7
  %83 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 60, ptr %19, align 1
  %84 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 50, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i155) #7
  %85 = ptrtoint ptr %alen.i155 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %alen.i155, align 4, !annotation !55
  %86 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i157 = icmp slt i32 %87, 0
  br i1 %cmp.i157, label %reg_w.exit154.reg_w.exit168_crit_edge, label %if.end.i164

reg_w.exit154.reg_w.exit168_crit_edge:            ; preds = %reg_w.exit154
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit168

if.end.i164:                                      ; preds = %reg_w.exit154
  %dev.i158 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %88 = ptrtoint ptr %dev.i158 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i158, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %shl.i.i159 = shl i32 %91, 8
  %or.i160 = or i32 %shl.i.i159, -1073610752
  %92 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_buf, align 4
  %call2.i162 = call i32 @usb_bulk_msg(ptr noundef %89, i32 noundef %or.i160, ptr noundef %93, i32 noundef 2, ptr noundef nonnull %alen.i155, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i162)
  %cmp3.i163 = icmp slt i32 %call2.i162, 0
  br i1 %cmp3.i163, label %do.end.i167, label %if.end.i164.reg_w.exit168_crit_edge

if.end.i164.reg_w.exit168_crit_edge:              ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit168

do.end.i167:                                      ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb_buf, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  %conv.i165 = zext i8 %97 to i32
  %call6.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i165, i32 noundef %call2.i162) #10
  %98 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call2.i162, ptr %usb_err.i, align 8
  br label %reg_w.exit168

reg_w.exit168:                                    ; preds = %do.end.i167, %if.end.i164.reg_w.exit168_crit_edge, %reg_w.exit154.reg_w.exit168_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i155) #7
  %99 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 94, ptr %19, align 1
  %100 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx4, align 1
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %101 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %saturation, align 4
  %call29 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %102) #7
  %call29.tr = trunc i32 %call29 to i8
  %conv30 = shl i8 %call29.tr, 3
  %103 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv30, ptr %arrayidx7, align 1
  %104 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %saturation, align 4
  %call33 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %105) #7
  %106 = lshr i32 %call33, 2
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, -8
  %conv34 = or i8 %108, 4
  %109 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv34, ptr %arrayidx10, align 1
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %110 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %brightness, align 8
  %call36 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %111) #7
  %conv37 = trunc i32 %call36 to i8
  %112 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv37, ptr %arrayidx15, align 1
  %113 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx16, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i169) #7
  %114 = ptrtoint ptr %alen.i169 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %alen.i169, align 4, !annotation !55
  %115 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i171 = icmp slt i32 %116, 0
  br i1 %cmp.i171, label %reg_w.exit168.reg_w.exit182_crit_edge, label %if.end.i178

reg_w.exit168.reg_w.exit182_crit_edge:            ; preds = %reg_w.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit182

if.end.i178:                                      ; preds = %reg_w.exit168
  %dev.i172 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %117 = ptrtoint ptr %dev.i172 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i172, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 8
  %shl.i.i173 = shl i32 %120, 8
  %or.i174 = or i32 %shl.i.i173, -1073610752
  %121 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %usb_buf, align 4
  %call2.i176 = call i32 @usb_bulk_msg(ptr noundef %118, i32 noundef %or.i174, ptr noundef %122, i32 noundef 6, ptr noundef nonnull %alen.i169, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i176)
  %cmp3.i177 = icmp slt i32 %call2.i176, 0
  br i1 %cmp3.i177, label %do.end.i181, label %if.end.i178.reg_w.exit182_crit_edge

if.end.i178.reg_w.exit182_crit_edge:              ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit182

do.end.i181:                                      ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %usb_buf, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 1
  %conv.i179 = zext i8 %126 to i32
  %call6.i180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i179, i32 noundef %call2.i176) #10
  %127 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call2.i176, ptr %usb_err.i, align 8
  br label %reg_w.exit182

reg_w.exit182:                                    ; preds = %do.end.i181, %if.end.i178.reg_w.exit182_crit_edge, %reg_w.exit168.reg_w.exit182_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i169) #7
  %128 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 103, ptr %19, align 1
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %129 = ptrtoint ptr %sharpness to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sharpness, align 8
  %call41 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %130) #7
  %call41.tr = trunc i32 %call41 to i8
  %131 = shl i8 %call41.tr, 2
  %conv43 = or i8 %131, 3
  %132 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv43, ptr %arrayidx4, align 1
  %133 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 20, ptr %arrayidx7, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i183) #7
  %134 = ptrtoint ptr %alen.i183 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %alen.i183, align 4, !annotation !55
  %135 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.i185 = icmp slt i32 %136, 0
  br i1 %cmp.i185, label %reg_w.exit182.reg_w.exit196_crit_edge, label %if.end.i192

reg_w.exit182.reg_w.exit196_crit_edge:            ; preds = %reg_w.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit196

if.end.i192:                                      ; preds = %reg_w.exit182
  %dev.i186 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %137 = ptrtoint ptr %dev.i186 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i186, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 8
  %shl.i.i187 = shl i32 %140, 8
  %or.i188 = or i32 %shl.i.i187, -1073610752
  %141 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %usb_buf, align 4
  %call2.i190 = call i32 @usb_bulk_msg(ptr noundef %138, i32 noundef %or.i188, ptr noundef %142, i32 noundef 3, ptr noundef nonnull %alen.i183, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i190)
  %cmp3.i191 = icmp slt i32 %call2.i190, 0
  br i1 %cmp3.i191, label %do.end.i195, label %if.end.i192.reg_w.exit196_crit_edge

if.end.i192.reg_w.exit196_crit_edge:              ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit196

do.end.i195:                                      ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %usb_buf, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  %conv.i193 = zext i8 %146 to i32
  %call6.i194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i193, i32 noundef %call2.i190) #10
  %147 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call2.i190, ptr %usb_err.i, align 8
  br label %reg_w.exit196

reg_w.exit196:                                    ; preds = %do.end.i195, %if.end.i192.reg_w.exit196_crit_edge, %reg_w.exit182.reg_w.exit196_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i183) #7
  %148 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 105, ptr %19, align 1
  %149 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 47, ptr %arrayidx4, align 1
  %150 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 40, ptr %arrayidx7, align 1
  %151 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 66, ptr %arrayidx10, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i197) #7
  %152 = ptrtoint ptr %alen.i197 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %alen.i197, align 4, !annotation !55
  %153 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i199 = icmp slt i32 %154, 0
  br i1 %cmp.i199, label %reg_w.exit196.reg_w.exit210_crit_edge, label %if.end.i206

reg_w.exit196.reg_w.exit210_crit_edge:            ; preds = %reg_w.exit196
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit210

if.end.i206:                                      ; preds = %reg_w.exit196
  %dev.i200 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %155 = ptrtoint ptr %dev.i200 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i200, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  %shl.i.i201 = shl i32 %158, 8
  %or.i202 = or i32 %shl.i.i201, -1073610752
  %159 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %usb_buf, align 4
  %call2.i204 = call i32 @usb_bulk_msg(ptr noundef %156, i32 noundef %or.i202, ptr noundef %160, i32 noundef 4, ptr noundef nonnull %alen.i197, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i204)
  %cmp3.i205 = icmp slt i32 %call2.i204, 0
  br i1 %cmp3.i205, label %do.end.i209, label %if.end.i206.reg_w.exit210_crit_edge

if.end.i206.reg_w.exit210_crit_edge:              ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit210

do.end.i209:                                      ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %usb_buf, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 1
  %conv.i207 = zext i8 %164 to i32
  %call6.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i207, i32 noundef %call2.i204) #10
  %165 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %call2.i204, ptr %usb_err.i, align 8
  br label %reg_w.exit210

reg_w.exit210:                                    ; preds = %do.end.i209, %if.end.i206.reg_w.exit210_crit_edge, %reg_w.exit196.reg_w.exit210_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i197) #7
  %166 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 99, ptr %19, align 1
  %167 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 7, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i211) #7
  %168 = ptrtoint ptr %alen.i211 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %alen.i211, align 4, !annotation !55
  %169 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.i213 = icmp slt i32 %170, 0
  br i1 %cmp.i213, label %reg_w.exit210.reg_w.exit224_crit_edge, label %if.end.i220

reg_w.exit210.reg_w.exit224_crit_edge:            ; preds = %reg_w.exit210
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit224

if.end.i220:                                      ; preds = %reg_w.exit210
  %dev.i214 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %171 = ptrtoint ptr %dev.i214 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i214, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 8
  %shl.i.i215 = shl i32 %174, 8
  %or.i216 = or i32 %shl.i.i215, -1073610752
  %175 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %usb_buf, align 4
  %call2.i218 = call i32 @usb_bulk_msg(ptr noundef %172, i32 noundef %or.i216, ptr noundef %176, i32 noundef 2, ptr noundef nonnull %alen.i211, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i218)
  %cmp3.i219 = icmp slt i32 %call2.i218, 0
  br i1 %cmp3.i219, label %do.end.i223, label %if.end.i220.reg_w.exit224_crit_edge

if.end.i220.reg_w.exit224_crit_edge:              ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit224

do.end.i223:                                      ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %usb_buf, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %178, align 1
  %conv.i221 = zext i8 %180 to i32
  %call6.i222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i221, i32 noundef %call2.i218) #10
  %181 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %call2.i218, ptr %usb_err.i, align 8
  br label %reg_w.exit224

reg_w.exit224:                                    ; preds = %do.end.i223, %if.end.i220.reg_w.exit224_crit_edge, %reg_w.exit210.reg_w.exit224_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i211) #7
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %mi_w.exit.for.body_crit_edge, %reg_w.exit224
  %i.0254 = phi i32 [ 0, %reg_w.exit224 ], [ %add53, %mi_w.exit.for.body_crit_edge ]
  %add53 = add nuw nsw i32 %i.0254, 1
  %conv54 = trunc i32 %add53 to i8
  %arrayidx55 = getelementptr [32 x i8], ptr @mi_data, i32 0, i32 %i.0254
  %182 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx55, align 1
  %184 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %usb_buf, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 31, ptr %185, align 1
  %187 = load ptr, ptr %usb_buf, align 4
  %arrayidx2.i226 = getelementptr i8, ptr %187, i32 1
  %188 = ptrtoint ptr %arrayidx2.i226 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %arrayidx2.i226, align 1
  %189 = load ptr, ptr %usb_buf, align 4
  %arrayidx4.i = getelementptr i8, ptr %189, i32 2
  %190 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv54, ptr %arrayidx4.i, align 1
  %191 = load ptr, ptr %usb_buf, align 4
  %arrayidx6.i = getelementptr i8, ptr %191, i32 3
  %192 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %183, ptr %arrayidx6.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i) #7
  %193 = ptrtoint ptr %alen.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %alen.i.i, align 4, !annotation !55
  %194 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp.i.i = icmp slt i32 %195, 0
  br i1 %cmp.i.i, label %for.body.mi_w.exit_crit_edge, label %if.end.i.i

for.body.mi_w.exit_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mi_w.exit

if.end.i.i:                                       ; preds = %for.body
  %196 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev.i.i, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 8
  %shl.i.i.i = shl i32 %199, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %200 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %usb_buf, align 4
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %197, i32 noundef %or.i.i, ptr noundef %201, i32 noundef 4, ptr noundef nonnull %alen.i.i, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.mi_w.exit_crit_edge

if.end.i.i.mi_w.exit_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mi_w.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %202 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %usb_buf, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %203, align 1
  %conv.i.i = zext i8 %205 to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i, i32 noundef %call2.i.i) #10
  %206 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %mi_w.exit

mi_w.exit:                                        ; preds = %do.end.i.i, %if.end.i.i.mi_w.exit_crit_edge, %for.body.mi_w.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i) #7
  %exitcond.not = icmp eq i32 %add53, 32
  br i1 %exitcond.not, label %for.end, label %mi_w.exit.for.body_crit_edge

mi_w.exit.for.body_crit_edge:                     ; preds = %mi_w.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %mi_w.exit
  %207 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %19, align 1
  %208 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 77, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i227) #7
  %209 = ptrtoint ptr %alen.i227 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 -1, ptr %alen.i227, align 4, !annotation !55
  %210 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp.i229 = icmp slt i32 %211, 0
  br i1 %cmp.i229, label %for.end.reg_w.exit240_crit_edge, label %if.end.i236

for.end.reg_w.exit240_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit240

if.end.i236:                                      ; preds = %for.end
  %212 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev.i.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %213, align 8
  %shl.i.i231 = shl i32 %215, 8
  %or.i232 = or i32 %shl.i.i231, -1073610752
  %216 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %usb_buf, align 4
  %call2.i234 = call i32 @usb_bulk_msg(ptr noundef %213, i32 noundef %or.i232, ptr noundef %217, i32 noundef 2, ptr noundef nonnull %alen.i227, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i234)
  %cmp3.i235 = icmp slt i32 %call2.i234, 0
  br i1 %cmp3.i235, label %do.end.i239, label %if.end.i236.reg_w.exit240_crit_edge

if.end.i236.reg_w.exit240_crit_edge:              ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit240

do.end.i239:                                      ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %usb_buf, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 1
  %conv.i237 = zext i8 %221 to i32
  %call6.i238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i237, i32 noundef %call2.i234) #10
  %222 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call2.i234, ptr %usb_err.i, align 8
  br label %reg_w.exit240

reg_w.exit240:                                    ; preds = %do.end.i239, %if.end.i236.reg_w.exit240_crit_edge, %for.end.reg_w.exit240_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i227) #7
  %223 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 8
  %call58 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %225) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool.not = icmp eq i32 %call58, 0
  %illum_bottom = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %226 = ptrtoint ptr %illum_bottom to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %illum_bottom, align 4
  %call59 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %227) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %228 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %usb_buf, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 34, ptr %229, align 1
  %231 = load ptr, ptr %usb_buf, align 4
  %arrayidx3.i = getelementptr i8, ptr %231, i32 1
  %..i = select i1 %tobool60.not, i8 126, i8 122
  %.sink.i = select i1 %tobool.not, i8 %..i, i8 118
  %232 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %.sink.i, ptr %arrayidx3.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i241) #7
  %233 = ptrtoint ptr %alen.i.i241 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %alen.i.i241, align 4, !annotation !55
  %234 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp.i.i244 = icmp slt i32 %235, 0
  br i1 %cmp.i.i244, label %reg_w.exit240.setilluminators.exit_crit_edge, label %if.end.i.i250

reg_w.exit240.setilluminators.exit_crit_edge:     ; preds = %reg_w.exit240
  call void @__sanitizer_cov_trace_pc() #9
  br label %setilluminators.exit

if.end.i.i250:                                    ; preds = %reg_w.exit240
  %236 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev.i.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 8
  %shl.i.i.i246 = shl i32 %239, 8
  %or.i.i247 = or i32 %shl.i.i.i246, -1073610752
  %240 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %usb_buf, align 4
  %call2.i.i248 = call i32 @usb_bulk_msg(ptr noundef %237, i32 noundef %or.i.i247, ptr noundef %241, i32 noundef 2, ptr noundef nonnull %alen.i.i241, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i248)
  %cmp3.i.i249 = icmp slt i32 %call2.i.i248, 0
  br i1 %cmp3.i.i249, label %do.end.i.i253, label %if.end.i.i250.setilluminators.exit_crit_edge

if.end.i.i250.setilluminators.exit_crit_edge:     ; preds = %if.end.i.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %setilluminators.exit

do.end.i.i253:                                    ; preds = %if.end.i.i250
  call void @__sanitizer_cov_trace_pc() #9
  %242 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %usb_buf, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %243, align 1
  %conv.i.i251 = zext i8 %245 to i32
  %call6.i.i252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i251, i32 noundef %call2.i.i248) #10
  %246 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call2.i.i248, ptr %usb_err.i, align 8
  br label %setilluminators.exit

setilluminators.exit:                             ; preds = %do.end.i.i253, %if.end.i.i250.setilluminators.exit_crit_edge, %reg_w.exit240.setilluminators.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i241) #7
  %247 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %usb_err.i, align 8
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %len)
  %cmp = icmp slt i32 %len, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %sub = add nsw i32 %len, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1100.not = icmp eq i32 %sub, 0
  br i1 %cmp1100.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p.0101 = phi i32 [ %add4, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %p.0101
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp2 = icmp eq i8 %1, -1
  %add4 = add nuw nsw i32 %p.0101, 1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx5 = getelementptr i8, ptr %data, i32 %add4
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp7 = icmp eq i8 %3, -1
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %add10 = add nuw i32 %p.0101, 2
  %arrayidx11 = getelementptr i8, ptr %data, i32 %add10
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp13 = icmp eq i8 %5, 0
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true9
  %add16 = add nuw i32 %p.0101, 3
  %arrayidx17 = getelementptr i8, ptr %data, i32 %add16
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp19 = icmp eq i8 %7, -1
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true15
  %add22 = add nuw i32 %p.0101, 4
  %arrayidx23 = getelementptr i8, ptr %data, i32 %add22
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %9)
  %cmp25 = icmp eq i8 %9, -106
  br i1 %cmp25, label %if.then27, label %land.lhs.true21.for.inc_crit_edge

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true21
  %add28 = add nuw i32 %p.0101, 5
  %arrayidx29 = getelementptr i8, ptr %data, i32 %add28
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx29, align 1
  %12 = and i8 %11, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %12)
  %switch = icmp eq i8 %12, 100
  br i1 %switch, label %do.body, label %if.then27.for.inc_crit_edge

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %if.then27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp51 = icmp sgt i32 %13, 4
  br i1 %cmp51, label %do.end, label %do.body.do.end57_crit_edge

do.body.do.end57_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %p.0101, i32 noundef %len) #10
  br label %do.end57

do.end57:                                         ; preds = %do.end, %do.body.do.end57_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef %p.0101) #7
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #7
  %add59 = add nuw i32 %p.0101, 16
  %add.ptr = getelementptr i8, ptr %data, i32 %add59
  %sub61 = sub i32 %len, %add59
  br label %for.end

for.inc:                                          ; preds = %if.then27.for.inc_crit_edge, %land.lhs.true21.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %exitcond.not = icmp eq i32 %add4, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end57, %for.cond.preheader.for.end_crit_edge
  %len.addr.0 = phi i32 [ %sub61, %do.end57 ], [ 6, %for.cond.preheader.for.end_crit_edge ], [ %len, %for.inc.for.end_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr, %do.end57 ], [ %data, %for.cond.preheader.for.end_crit_edge ], [ %data, %for.inc.for.end_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  %alen.i = alloca i32, align 4
  %alen.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %illum_bottom = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %illum_bottom to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %illum_bottom, align 4
  %call1 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %5 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 34, ptr %6, align 1
  %8 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx3.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 126, ptr %arrayidx3.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i) #7
  %10 = ptrtoint ptr %alen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %alen.i.i, align 4, !annotation !55
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %11 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i = icmp slt i32 %12, 0
  br i1 %cmp.i.i, label %if.then.setilluminators.exit_crit_edge, label %if.end.i.i

if.then.setilluminators.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %setilluminators.exit

if.end.i.i:                                       ; preds = %if.then
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %14, i32 noundef %or.i.i, ptr noundef %18, i32 noundef 2, ptr noundef nonnull %alen.i.i, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.setilluminators.exit_crit_edge

if.end.i.i.setilluminators.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setilluminators.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv.i.i = zext i8 %22 to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i, i32 noundef %call2.i.i) #10
  %23 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %setilluminators.exit

setilluminators.exit:                             ; preds = %do.end.i.i, %if.end.i.i.setilluminators.exit_crit_edge, %if.then.setilluminators.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i) #7
  call void @msleep(i32 noundef 20) #7
  br label %if.end

if.end:                                           ; preds = %setilluminators.exit, %lor.lhs.false.if.end_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %24 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %25, align 1
  %27 = load ptr, ptr %usb_buf, align 4
  %arrayidx4 = getelementptr i8, ptr %27, i32 1
  %28 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i) #7
  %29 = ptrtoint ptr %alen.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %alen.i, align 4, !annotation !55
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp slt i32 %31, 0
  br i1 %cmp.i, label %if.end.reg_w.exit_crit_edge, label %if.end.i

if.end.reg_w.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

if.end.i:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i = shl i32 %35, 8
  %or.i = or i32 %shl.i.i, -1073610752
  %36 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf, align 4
  %call2.i = call i32 @usb_bulk_msg(ptr noundef %33, i32 noundef %or.i, ptr noundef %37, i32 noundef 2, ptr noundef nonnull %alen.i, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.reg_w.exit_crit_edge

if.end.i.reg_w.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i = zext i8 %41 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i, i32 noundef %call2.i) #10
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i, %if.end.i.reg_w.exit_crit_edge, %if.end.reg_w.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mars_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %alen.i.i103 = alloca i32, align 4
  %alen.i.i90 = alloca i32, align 4
  %alen.i.i74 = alloca i32, align 4
  %alen.i.i59 = alloca i32, align 4
  %alen.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963813, i32 %4)
  %cmp = icmp eq i32 %4, 9963813
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %entry
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %5 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %is_new, align 4
  %6 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %illum_bottom = getelementptr i8, ptr %1, i32 1044
  %9 = ptrtoint ptr %illum_bottom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %illum_bottom, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %12 = getelementptr i8, ptr %1, i32 1040
  %illum_bottom4 = getelementptr i8, ptr %1, i32 1044
  %13 = ptrtoint ptr %illum_bottom4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %illum_bottom4, align 4
  %is_new5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %is_new5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load6 = load i32, ptr %is_new5, align 4
  %16 = and i32 %bf.load6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %land.lhs.true10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true10:                                  ; preds = %if.end
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %17 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not = icmp eq i32 %18, 0
  br i1 %tobool13.not, label %land.lhs.true10.if.end17_crit_edge, label %if.then14

land.lhs.true10.if.end17_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 8
  %val15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true10.if.end17_crit_edge, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %streaming = getelementptr i8, ptr %1, i32 238
  %22 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %streaming, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end20.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963778, label %sw.bb23
    i32 9963792, label %sw.bb25
    i32 9963813, label %sw.bb27
    i32 9963803, label %sw.bb34
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val22, align 4
  %usb_buf.i = getelementptr i8, ptr %1, i32 204
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 97, ptr %30, align 1
  %conv.i = trunc i32 %28 to i8
  %32 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %32, i32 1
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i) #7
  %34 = ptrtoint ptr %alen.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %alen.i.i, align 4, !annotation !55
  %35 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp slt i32 %36, 0
  br i1 %cmp.i.i, label %sw.bb.setbrightness.exit_crit_edge, label %if.end.i.i

sw.bb.setbrightness.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %setbrightness.exit

if.end.i.i:                                       ; preds = %sw.bb
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i.i = shl i32 %40, 8
  %or.i.i = or i32 %shl.i.i.i, -1073610752
  %41 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i, align 4
  %call2.i.i = call i32 @usb_bulk_msg(ptr noundef %38, i32 noundef %or.i.i, ptr noundef %42, i32 noundef 2, ptr noundef nonnull %alen.i.i, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.setbrightness.exit_crit_edge

if.end.i.i.setbrightness.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setbrightness.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv.i.i = zext i8 %46 to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i, i32 noundef %call2.i.i) #10
  %47 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call2.i.i, ptr %usb_err, align 8
  br label %setbrightness.exit

setbrightness.exit:                               ; preds = %do.end.i.i, %if.end.i.i.setbrightness.exit_crit_edge, %sw.bb.setbrightness.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end20
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val24, align 4
  %usb_buf.i60 = getelementptr i8, ptr %1, i32 204
  %50 = ptrtoint ptr %usb_buf.i60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i60, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 95, ptr %51, align 1
  %val.tr.i = trunc i32 %49 to i8
  %conv.i61 = shl i8 %val.tr.i, 3
  %53 = load ptr, ptr %usb_buf.i60, align 4
  %arrayidx2.i62 = getelementptr i8, ptr %53, i32 1
  %54 = ptrtoint ptr %arrayidx2.i62 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i61, ptr %arrayidx2.i62, align 1
  %55 = lshr i32 %49, 2
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, -8
  %conv3.i = or i8 %57, 4
  %58 = load ptr, ptr %usb_buf.i60, align 4
  %arrayidx5.i = getelementptr i8, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv3.i, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i59) #7
  %60 = ptrtoint ptr %alen.i.i59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %alen.i.i59, align 4, !annotation !55
  %61 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i64 = icmp slt i32 %62, 0
  br i1 %cmp.i.i64, label %sw.bb23.setcolors.exit_crit_edge, label %if.end.i.i70

sw.bb23.setcolors.exit_crit_edge:                 ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %setcolors.exit

if.end.i.i70:                                     ; preds = %sw.bb23
  %dev.i.i65 = getelementptr i8, ptr %1, i32 -100
  %63 = ptrtoint ptr %dev.i.i65 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i65, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i.i66 = shl i32 %66, 8
  %or.i.i67 = or i32 %shl.i.i.i66, -1073610752
  %67 = ptrtoint ptr %usb_buf.i60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf.i60, align 4
  %call2.i.i68 = call i32 @usb_bulk_msg(ptr noundef %64, i32 noundef %or.i.i67, ptr noundef %68, i32 noundef 3, ptr noundef nonnull %alen.i.i59, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i68)
  %cmp3.i.i69 = icmp slt i32 %call2.i.i68, 0
  br i1 %cmp3.i.i69, label %do.end.i.i73, label %if.end.i.i70.setcolors.exit_crit_edge

if.end.i.i70.setcolors.exit_crit_edge:            ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %setcolors.exit

do.end.i.i73:                                     ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %usb_buf.i60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i60, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %conv.i.i71 = zext i8 %72 to i32
  %call6.i.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i71, i32 noundef %call2.i.i68) #10
  %73 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call2.i.i68, ptr %usb_err, align 8
  br label %setcolors.exit

setcolors.exit:                                   ; preds = %do.end.i.i73, %if.end.i.i70.setcolors.exit_crit_edge, %sw.bb23.setcolors.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i59) #7
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end20
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %74 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val26, align 4
  %usb_buf.i75 = getelementptr i8, ptr %1, i32 204
  %76 = ptrtoint ptr %usb_buf.i75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i75, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 6, ptr %77, align 1
  %val.tr.i76 = trunc i32 %75 to i8
  %conv.i77 = shl i8 %val.tr.i76, 6
  %79 = load ptr, ptr %usb_buf.i75, align 4
  %arrayidx2.i78 = getelementptr i8, ptr %79, i32 1
  %80 = ptrtoint ptr %arrayidx2.i78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv.i77, ptr %arrayidx2.i78, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i74) #7
  %81 = ptrtoint ptr %alen.i.i74 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %alen.i.i74, align 4, !annotation !55
  %82 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i.i80 = icmp slt i32 %83, 0
  br i1 %cmp.i.i80, label %sw.bb25.setgamma.exit_crit_edge, label %if.end.i.i86

sw.bb25.setgamma.exit_crit_edge:                  ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %setgamma.exit

if.end.i.i86:                                     ; preds = %sw.bb25
  %dev.i.i81 = getelementptr i8, ptr %1, i32 -100
  %84 = ptrtoint ptr %dev.i.i81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i81, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i.i.i82 = shl i32 %87, 8
  %or.i.i83 = or i32 %shl.i.i.i82, -1073610752
  %88 = ptrtoint ptr %usb_buf.i75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_buf.i75, align 4
  %call2.i.i84 = call i32 @usb_bulk_msg(ptr noundef %85, i32 noundef %or.i.i83, ptr noundef %89, i32 noundef 2, ptr noundef nonnull %alen.i.i74, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i84)
  %cmp3.i.i85 = icmp slt i32 %call2.i.i84, 0
  br i1 %cmp3.i.i85, label %do.end.i.i89, label %if.end.i.i86.setgamma.exit_crit_edge

if.end.i.i86.setgamma.exit_crit_edge:             ; preds = %if.end.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %setgamma.exit

do.end.i.i89:                                     ; preds = %if.end.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %usb_buf.i75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb_buf.i75, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %conv.i.i87 = zext i8 %93 to i32
  %call6.i.i88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i87, i32 noundef %call2.i.i84) #10
  %94 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call2.i.i84, ptr %usb_err, align 8
  br label %setgamma.exit

setgamma.exit:                                    ; preds = %do.end.i.i89, %if.end.i.i86.setgamma.exit_crit_edge, %sw.bb25.setgamma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i74) #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end20
  %95 = getelementptr i8, ptr %1, i32 1040
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %97, i32 0, i32 22
  %98 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool30.not = icmp eq i32 %99, 0
  %illum_bottom31 = getelementptr i8, ptr %1, i32 1044
  %100 = ptrtoint ptr %illum_bottom31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %illum_bottom31, align 4
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %101, i32 0, i32 22
  %102 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool33.not = icmp eq i32 %103, 0
  %usb_buf.i91 = getelementptr i8, ptr %1, i32 204
  %104 = ptrtoint ptr %usb_buf.i91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %usb_buf.i91, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 34, ptr %105, align 1
  %107 = load ptr, ptr %usb_buf.i91, align 4
  %arrayidx3.i = getelementptr i8, ptr %107, i32 1
  %..i = select i1 %tobool33.not, i8 126, i8 122
  %.sink.i = select i1 %tobool30.not, i8 %..i, i8 118
  %108 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %.sink.i, ptr %arrayidx3.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i90) #7
  %109 = ptrtoint ptr %alen.i.i90 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %alen.i.i90, align 4, !annotation !55
  %110 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i.i93 = icmp slt i32 %111, 0
  br i1 %cmp.i.i93, label %sw.bb27.setilluminators.exit_crit_edge, label %if.end.i.i99

sw.bb27.setilluminators.exit_crit_edge:           ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %setilluminators.exit

if.end.i.i99:                                     ; preds = %sw.bb27
  %dev.i.i94 = getelementptr i8, ptr %1, i32 -100
  %112 = ptrtoint ptr %dev.i.i94 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i94, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 8
  %shl.i.i.i95 = shl i32 %115, 8
  %or.i.i96 = or i32 %shl.i.i.i95, -1073610752
  %116 = ptrtoint ptr %usb_buf.i91 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb_buf.i91, align 4
  %call2.i.i97 = call i32 @usb_bulk_msg(ptr noundef %113, i32 noundef %or.i.i96, ptr noundef %117, i32 noundef 2, ptr noundef nonnull %alen.i.i90, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i97)
  %cmp3.i.i98 = icmp slt i32 %call2.i.i97, 0
  br i1 %cmp3.i.i98, label %do.end.i.i102, label %if.end.i.i99.setilluminators.exit_crit_edge

if.end.i.i99.setilluminators.exit_crit_edge:      ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  br label %setilluminators.exit

do.end.i.i102:                                    ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %usb_buf.i91 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %usb_buf.i91, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %119, align 1
  %conv.i.i100 = zext i8 %121 to i32
  %call6.i.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i100, i32 noundef %call2.i.i97) #10
  %122 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call2.i.i97, ptr %usb_err, align 8
  br label %setilluminators.exit

setilluminators.exit:                             ; preds = %do.end.i.i102, %if.end.i.i99.setilluminators.exit_crit_edge, %sw.bb27.setilluminators.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i90) #7
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end20
  %val35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %123 = ptrtoint ptr %val35 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val35, align 4
  %usb_buf.i104 = getelementptr i8, ptr %1, i32 204
  %125 = ptrtoint ptr %usb_buf.i104 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %usb_buf.i104, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 103, ptr %126, align 1
  %val.tr.i105 = trunc i32 %124 to i8
  %128 = shl i8 %val.tr.i105, 2
  %conv.i106 = or i8 %128, 3
  %129 = load ptr, ptr %usb_buf.i104, align 4
  %arrayidx2.i107 = getelementptr i8, ptr %129, i32 1
  %130 = ptrtoint ptr %arrayidx2.i107 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv.i106, ptr %arrayidx2.i107, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i.i103) #7
  %131 = ptrtoint ptr %alen.i.i103 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %alen.i.i103, align 4, !annotation !55
  %132 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.i.i109 = icmp slt i32 %133, 0
  br i1 %cmp.i.i109, label %sw.bb34.setsharpness.exit_crit_edge, label %if.end.i.i115

sw.bb34.setsharpness.exit_crit_edge:              ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %setsharpness.exit

if.end.i.i115:                                    ; preds = %sw.bb34
  %dev.i.i110 = getelementptr i8, ptr %1, i32 -100
  %134 = ptrtoint ptr %dev.i.i110 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev.i.i110, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 8
  %shl.i.i.i111 = shl i32 %137, 8
  %or.i.i112 = or i32 %shl.i.i.i111, -1073610752
  %138 = ptrtoint ptr %usb_buf.i104 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %usb_buf.i104, align 4
  %call2.i.i113 = call i32 @usb_bulk_msg(ptr noundef %135, i32 noundef %or.i.i112, ptr noundef %139, i32 noundef 2, ptr noundef nonnull %alen.i.i103, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i113)
  %cmp3.i.i114 = icmp slt i32 %call2.i.i113, 0
  br i1 %cmp3.i.i114, label %do.end.i.i118, label %if.end.i.i115.setsharpness.exit_crit_edge

if.end.i.i115.setsharpness.exit_crit_edge:        ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %setsharpness.exit

do.end.i.i118:                                    ; preds = %if.end.i.i115
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %usb_buf.i104 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %usb_buf.i104, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 1
  %conv.i.i116 = zext i8 %143 to i32
  %call6.i.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i.i116, i32 noundef %call2.i.i113) #10
  %144 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call2.i.i113, ptr %usb_err, align 8
  br label %setsharpness.exit

setsharpness.exit:                                ; preds = %do.end.i.i118, %if.end.i.i115.setsharpness.exit_crit_edge, %sw.bb34.setsharpness.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i.i103) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %setsharpness.exit, %setilluminators.exit, %setgamma.exit, %setcolors.exit, %setbrightness.exit
  %145 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end20.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ %146, %sw.epilog ], [ 0, %if.end17.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/mars.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/mars.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/mars.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_mars__307_427_sd_driver_init6, !8, !"__initcall__kmod_gspca_mars__307_427_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/mars.c", i32 427, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/mars.c", i32 416, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/mars.c", i32 415, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/mars.c", i32 390, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/mars.c", i32 43, i32 37}
!19 = !{ptr @sd_init_controls._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/mars.c", i32 196, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/mars.c", i32 212, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sd_init_controls._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @sd_init_controls._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mars_ctrl_ops, !29, !"mars_ctrl_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/mars.c", i32 185, i32 35}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/mars.c", i32 83, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @reg_w._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @reg_w._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @jpeg_head, !36, !"jpeg_head", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!37 = !{ptr @mi_data, !38, !"mi_data", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/mars.c", i32 56, i32 19}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/mars.c", i32 372, i32 5}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sd_pkt_scan._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sd_pkt_scan._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @device_table, !45, !"device_table", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/mars.c", i32 401, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i8 0, i8 2}
