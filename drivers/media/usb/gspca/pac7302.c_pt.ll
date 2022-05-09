; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/pac7302.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/pac7302.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.103, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.anon.103 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, %struct.anon.108, ptr, ptr, ptr, ptr, %struct.anon.109, ptr, i8, i8, i8, %struct.atomic_t }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_dbg_match = type { i32, %union.anon.89 }
%union.anon.89 = type { i32, [28 x i8] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }

@__UNIQUE_ID_author303 = internal constant [104 x i8] c"gspca_pac7302.author=Jean-Francois Moine <http://moinejf.free.fr>, Thomas Kaiser thomas@kaiser-linux.li\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [41 x i8] c"gspca_pac7302.description=Pixart PAC7302\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_pac7302.file=drivers/media/usb/gspca/gspca_pac7302\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_pac7302.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_pac7302__307_952_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_pac7302\00", [18 x i8] zeroinitializer }, align 32
@device_table = internal constant { [17 x %struct.usb_device_id], [104 x i8] } { [17 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1784, i16 12297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1784, i16 12315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9765, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9767, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 2362, i16 9770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5215, i16 316, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6887, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_dbg_s_register, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 1196444240, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013gspca_pac7302: reg_w() failed i: %02x v: %02x error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/pac7302.c\00", [62 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pac7302:637:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_pac7302: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setbrightcont.max = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c")3BZn\80\9F\BB\D4\EC", [22 x i8] zeroinitializer }, align 32
@setbrightcont.delta = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"533/*%\1E\17\11\0B", [22 x i8] zeroinitializer }, align 32
@setcolors.a = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 217, i32 -212, i32 0, i32 -101, i32 170, i32 -67, i32 -38, i32 -315, i32 355], [60 x i8] zeroinitializer }, align 32
@setcolors.b = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 19, i32 106, i32 0, i32 19, i32 106, i32 1, i32 19, i32 106, i32 1], [60 x i8] zeroinitializer }, align 32
@start_7302 = internal constant { [306 x i8], [78 x i8] } { [306 x i8] c"\FF\01\00\00\0C\01@@@\01\E0\02\80\00\00\00\00\0D\18\03\01\00\B5\07\CB\00\00\07\C8\00\EA\07\CF\07\F7\07~\01\0B\00\00\00\11&\02\AA\AA.\0118\01\01:\03\14\FFZC\0B\00\0A\18\11\01,\88\11\00T\11U\01\00b\04\10\1E\1E\18k\01\00n\03\08\06\00r\03\00\FF\00}\17\01\01XFP<P<TFTVRPRPVd\A4\00\DA\00\00\A2\0A\22,<Ti|\9C\B9\D2\EB\AF\01\02\B5\02\08\08\B8\02\08\88\C4\04\AE\01\04\01\CC\01\00\D1\0B\010I^o\7F\8E\A9\C1\D7\EC\DC\01\01\FF\01\01\12\03\02\00\01>\02\00\00v\05\01 @\00\F2|\01\00\7F\0AK\0F\01,\02X\03 \02\00\96\05\01\10\04\01\04\C8\0E\00\00\00\00\00\07\00\00\07\00\01\07\04\01\D8\01\01\DB\02\00\01\DE\07\00\01\04\04\00\00\00\E6\04\00\00\00\01\EB\01\00\FF\01\02\22\01\00\FF\01\03\00\FF\11\01\01\FF\01\02\13\01\00\22\04\1F\A4\F0\96'\02\14\0C*\05\C8\00\18\12\22d\08\00\00\F0\01\14DDDn\01\08\FF\01\01x\01\00\00\00", [78 x i8] zeroinitializer }, align 32
@page3_7302 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\90@\03\00\C0\01\14\16\14\12\00\00\00\023\00\0F\01\00\00\00\00\00\00\00\00\00G\01\B3\01\00\00\08\00\00\0D\00\00!\00\00\00T\F4\02RT\A4\B8\E0*\F6\00\00\00\00\1E\00\00\00\00\00\00\00\FC\00\F2\1F\04\00\00\AA\00\00\C0\C0\10\00\00\00@\00\00\00\00\00\00\00@\FF\03\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C8\C8\C8\C8\00\00\00\00\00\00P\08\10$@\00\00\00\00\01\00\02G\00\00\00\00\00\00\00\00\00\00\00\00\00\02\FA\00dZ(\00\00", [39 x i8] zeroinitializer }, align 32
@reg_w_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Incorrect variable sequence\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_var\00", [22 x i8] zeroinitializer }, align 32
@reg_w_var._entry_ptr = internal global ptr @reg_w_var._entry, section ".printk_index", align 4
@reg_w_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013gspca_pac7302: reg_w_page() failed i: %02x v: %02x error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_w_page\00", [21 x i8] zeroinitializer }, align 32
@reg_w_page._entry_ptr = internal global ptr @reg_w_page._entry, section ".printk_index", align 4
@reg_w_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gspca_pac7302: reg_w_buf failed i: %02x error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_buf\00", [22 x i8] zeroinitializer }, align 32
@reg_w_buf._entry_ptr = internal global ptr @reg_w_buf._entry, section ".printk_index", align 4
@jpeg_header = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\FF\D8\FF\C0\00\11\08\02\80\01\E0\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [61 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@pac_find_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: SOF found, bytes to analyze: %u - Frame starts at byte #%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pac_find_sof\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/gspca/pac_common.h\00", [59 x i8] zeroinitializer }, align 32
@pac_find_sof._entry_ptr = internal global ptr @pac_find_sof._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 150, i64 255]
@__sancov_gen_cov_switch_values.19 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963778, i64 9963790, i64 9963791, i64 9963794, i64 9963796, i64 9963802, i64 9963803]
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 940, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 952, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 911, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 892, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 125, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 272, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 637, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 626, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 678, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 373, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 376, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 399, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 401, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"start_7302\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 143, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"page3_7302\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 209, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 333, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 307, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 249, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"jpeg_header\00", align 1
@___asan_gen_.111 = private constant [37 x i8] c"../drivers/media/usb/gspca/pac7302.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 748, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [40 x i8] c"../drivers/media/usb/gspca/pac_common.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 100, i32 5 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_pac7302__307_952_sd_driver_init6, ptr @pac_find_sof._entry, ptr @pac_find_sof._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @reg_w_buf._entry, ptr @reg_w_buf._entry_ptr, ptr @reg_w_page._entry, ptr @reg_w_page._entry_ptr, ptr @reg_w_var._entry, ptr @reg_w_var._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @.str, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sd_init_controls._key, ptr @.str.4, ptr @sd_ctrl_ops, ptr @.str.5, ptr @.str.6, ptr @setbrightcont.max, ptr @setbrightcont.delta, ptr @setcolors.a, ptr @setcolors.b, ptr @start_7302, ptr @page3_7302, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @jpeg_header, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setbrightcont.max to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setbrightcont.delta to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcolors.a to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setcolors.b to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_7302 to i32), i32 306, i32 384, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page3_7302 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_header to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_find_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %nmodes, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %3 to i8
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 0
  br i1 %cmp.i.i, label %entry.reg_w_seq.exit_crit_edge, label %if.end.i.i

entry.reg_w_seq.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_seq.exit

if.end.i.i:                                       ; preds = %entry
  %2 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i.i = shl i32 %8, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i.i) #9
  br label %reg_w.exit.3.sink.split.i

reg_w.exit.i:                                     ; preds = %if.end.i.i
  %10 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.1.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i.1.i, label %reg_w.exit.i.reg_w_seq.exit_crit_edge, label %if.end.i.1.i

reg_w.exit.i.reg_w_seq.exit_crit_edge:            ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_seq.exit

if.end.i.1.i:                                     ; preds = %reg_w.exit.i
  %11 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i.1.i = shl i32 %17, 8
  %or.i.1.i = or i32 %shl.i.i.1.i, -2147483648
  %18 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.1.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i.1.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1.i)
  %cmp4.i.1.i = icmp slt i32 %call3.i.1.i, 0
  br i1 %cmp4.i.1.i, label %do.end.i.1.i, label %reg_w.exit.1.i

do.end.i.1.i:                                     ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 0, i32 noundef %call3.i.1.i) #9
  br label %reg_w.exit.3.sink.split.i

reg_w.exit.1.i:                                   ; preds = %if.end.i.1.i
  %19 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr4.pr.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr4.pr.i)
  %cmp.i.2.i = icmp slt i32 %.pr4.pr.i, 0
  br i1 %cmp.i.2.i, label %reg_w.exit.1.i.reg_w_seq.exit_crit_edge, label %if.end.i.2.i

reg_w.exit.1.i.reg_w_seq.exit_crit_edge:          ; preds = %reg_w.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_seq.exit

if.end.i.2.i:                                     ; preds = %reg_w.exit.1.i
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 1
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i.2.i = shl i32 %26, 8
  %or.i.2.i = or i32 %shl.i.i.2.i, -2147483648
  %27 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.2.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i.2.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2.i)
  %cmp4.i.2.i = icmp slt i32 %call3.i.2.i, 0
  br i1 %cmp4.i.2.i, label %do.end.i.2.i, label %reg_w.exit.2.i

do.end.i.2.i:                                     ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i.2.i) #9
  br label %reg_w.exit.3.sink.split.i

reg_w.exit.2.i:                                   ; preds = %if.end.i.2.i
  %28 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr6.pr.i = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr6.pr.i)
  %cmp.i.3.i = icmp slt i32 %.pr6.pr.i, 0
  br i1 %cmp.i.3.i, label %reg_w.exit.2.i.reg_w_seq.exit_crit_edge, label %if.end.i.3.i

reg_w.exit.2.i.reg_w_seq.exit_crit_edge:          ; preds = %reg_w.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_seq.exit

if.end.i.3.i:                                     ; preds = %reg_w.exit.2.i
  %29 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 64, ptr %30, align 1
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i.3.i = shl i32 %35, 8
  %or.i.3.i = or i32 %shl.i.i.3.i, -2147483648
  %36 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.3.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i.3.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3.i)
  %cmp4.i.3.i = icmp slt i32 %call3.i.3.i, 0
  br i1 %cmp4.i.3.i, label %do.end.i.3.i, label %if.end.i.3.i.reg_w_seq.exit_crit_edge

if.end.i.3.i.reg_w_seq.exit_crit_edge:            ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_seq.exit

do.end.i.3.i:                                     ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 64, i32 noundef %call3.i.3.i) #9
  br label %reg_w.exit.3.sink.split.i

reg_w.exit.3.sink.split.i:                        ; preds = %do.end.i.3.i, %do.end.i.2.i, %do.end.i.1.i, %do.end.i.i
  %call3.i.1.sink.i = phi i32 [ %call3.i.1.i, %do.end.i.1.i ], [ %call3.i.i, %do.end.i.i ], [ %call3.i.2.i, %do.end.i.2.i ], [ %call3.i.3.i, %do.end.i.3.i ]
  %37 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call3.i.1.sink.i, ptr %usb_err.i.i, align 8
  br label %reg_w_seq.exit

reg_w_seq.exit:                                   ; preds = %reg_w.exit.3.sink.split.i, %if.end.i.3.i.reg_w_seq.exit_crit_edge, %reg_w.exit.2.i.reg_w_seq.exit_crit_edge, %reg_w.exit.1.i.reg_w_seq.exit_crit_edge, %reg_w.exit.i.reg_w_seq.exit_crit_edge, %entry.reg_w_seq.exit_crit_edge
  %38 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err.i.i, align 8
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 12, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.4) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 32, i64 noundef 1, i64 noundef 16) #6
  %1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %1, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %contrast, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %4 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %saturation, align 8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963802, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 55) #6
  %white_balance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %white_balance to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %white_balance, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 200, i64 noundef 1, i64 noundef 100) #6
  %red_balance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %6 = ptrtoint ptr %red_balance to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %red_balance, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 200, i64 noundef 1, i64 noundef 100) #6
  %blue_balance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %7 = ptrtoint ptr %blue_balance to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %blue_balance, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %8 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %8, align 8
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 66) #6
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %exposure, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 62, i64 noundef 1, i64 noundef 15) #6
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %gain, align 8
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %12 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %12, align 8
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %vflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %vflip, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 8) #6
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %15 = ptrtoint ptr %sharpness to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %sharpness, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %1) #6
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %8, i8 noundef zeroext 0, i1 noundef zeroext false) #6
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %19, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %entry
  %seq.addr.0.i = phi ptr [ @start_7302, %entry ], [ %seq.addr.0.i.be, %for.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %seq.addr.0.i, i32 1
  %incdec.ptr1.i = getelementptr i8, ptr %seq.addr.0.i, i32 2
  %0 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %incdec.ptr.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default.i [
    i8 0, label %for.cond.i.reg_w_var.exit_crit_edge
    i8 -1, label %sw.bb3.i
  ]

for.cond.i.reg_w_var.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_var.exit

sw.bb3.i:                                         ; preds = %for.cond.i
  %3 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp slt i32 %4, 0
  br i1 %cmp.i.i, label %sw.bb3.i.for.cond.i.backedge_crit_edge, label %sw.bb3.i.for.body.i.i_crit_edge

sw.bb3.i.for.body.i.i_crit_edge:                  ; preds = %sw.bb3.i
  br label %for.body.i.i

sw.bb3.i.for.cond.i.backedge_crit_edge:           ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb3.i.for.body.i.i_crit_edge
  %index.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb3.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr @page3_7302, i32 %index.02.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %6)
  %cmp2.i.i = icmp eq i8 %6, -86
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %7 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %8, align 1
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv9.i.i = trunc i32 %index.02.i.i to i16
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv9.i.i, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv16.i.i = zext i8 %6 to i32
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %index.02.i.i, i32 noundef %conv16.i.i, i32 noundef %call11.i.i) #9
  %15 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11.i.i, ptr %usb_err.i.i, align 8
  br label %for.cond.i.backedge

for.inc.i.i:                                      ; preds = %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %index.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 153
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.cond.i.backedge_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.cond.i.backedge_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

sw.default.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp.i = icmp ugt i8 %1, 64
  br i1 %cmp.i, label %do.end.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %sw.default.i
  %conv2.i = zext i8 %1 to i32
  %16 = ptrtoint ptr %seq.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %seq.addr.0.i, align 1
  %conv.i = zext i8 %17 to i32
  br label %while.body.i

do.end.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i) #9
  br label %reg_w_var.exit

while.body.i:                                     ; preds = %reg_w_buf.exit21.i.while.body.i_crit_edge, %while.body.preheader.i
  %seq.addr.134.i = phi ptr [ %add.ptr13.i, %reg_w_buf.exit21.i.while.body.i_crit_edge ], [ %incdec.ptr1.i, %while.body.preheader.i ]
  %len.033.i = phi i32 [ %sub.i, %reg_w_buf.exit21.i.while.body.i_crit_edge ], [ %conv2.i, %while.body.preheader.i ]
  %index.031.i = phi i32 [ %add.i, %reg_w_buf.exit21.i.while.body.i_crit_edge ], [ %conv.i, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.033.i)
  %cmp7.i = icmp ult i32 %len.033.i, 8
  %18 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i2.i = icmp slt i32 %19, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %while.body.i
  br i1 %cmp.i2.i, label %if.then9.i.reg_w_buf.exit.i_crit_edge, label %if.end.i.i

if.then9.i.reg_w_buf.exit.i_crit_edge:            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %22 = call ptr @memcpy(ptr %21, ptr %seq.addr.134.i, i32 %len.033.i)
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i5.i = shl i32 %26, 8
  %or.i6.i = or i32 %shl.i.i5.i, -2147483648
  %27 = trunc i32 %index.031.i to i16
  %conv.i.i = and i16 %27, 255
  %28 = load ptr, ptr %usb_buf.i.i, align 4
  %conv3.i.i = trunc i32 %len.033.i to i16
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i6.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef %28, i16 noundef zeroext %conv3.i.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i7.i, label %if.end.i.i.reg_w_buf.exit.i_crit_edge

if.end.i.i.reg_w_buf.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit.i

do.end.i7.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i = and i32 %index.031.i, 255
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv8.i.i, i32 noundef %call4.i.i) #9
  %29 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call4.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w_buf.exit.i

reg_w_buf.exit.i:                                 ; preds = %do.end.i7.i, %if.end.i.i.reg_w_buf.exit.i_crit_edge, %if.then9.i.reg_w_buf.exit.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %seq.addr.134.i, i32 %len.033.i
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge, %reg_w_buf.exit.i, %for.inc.i.i.for.cond.i.backedge_crit_edge, %do.end.i.i, %sw.bb3.i.for.cond.i.backedge_crit_edge
  %seq.addr.0.i.be = phi ptr [ %add.ptr.i, %reg_w_buf.exit.i ], [ %incdec.ptr1.i, %sw.bb3.i.for.cond.i.backedge_crit_edge ], [ %incdec.ptr1.i, %do.end.i.i ], [ %add.ptr13.i, %reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge ], [ %incdec.ptr1.i, %for.inc.i.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

if.end11.i:                                       ; preds = %while.body.i
  br i1 %cmp.i2.i, label %if.end11.i.reg_w_buf.exit21.i_crit_edge, label %if.end.i17.i

if.end11.i.reg_w_buf.exit21.i_crit_edge:          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit21.i

if.end.i17.i:                                     ; preds = %if.end11.i
  %30 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i.i, align 4
  %32 = ptrtoint ptr %seq.addr.134.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %seq.addr.134.i, align 1
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %31, align 1
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i12.i = shl i32 %38, 8
  %or.i13.i = or i32 %shl.i.i12.i, -2147483648
  %39 = trunc i32 %index.031.i to i16
  %conv.i14.i = and i16 %39, 255
  %40 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i15.i = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i13.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i14.i, ptr noundef %40, i16 noundef zeroext 8, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i15.i)
  %cmp5.i16.i = icmp slt i32 %call4.i15.i, 0
  br i1 %cmp5.i16.i, label %do.end.i20.i, label %if.end.i17.i.reg_w_buf.exit21.i_crit_edge

if.end.i17.i.reg_w_buf.exit21.i_crit_edge:        ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit21.i

do.end.i20.i:                                     ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i18.i = and i32 %index.031.i, 255
  %call9.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv8.i18.i, i32 noundef %call4.i15.i) #9
  %41 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call4.i15.i, ptr %usb_err.i.i, align 8
  br label %reg_w_buf.exit21.i

reg_w_buf.exit21.i:                               ; preds = %do.end.i20.i, %if.end.i17.i.reg_w_buf.exit21.i_crit_edge, %if.end11.i.reg_w_buf.exit21.i_crit_edge
  %add.ptr13.i = getelementptr i8, ptr %seq.addr.134.i, i32 8
  %add.i = add nuw nsw i32 %index.031.i, 8
  %sub.i = add nsw i32 %len.033.i, -8
  %cmp5.i = icmp ugt i32 %len.033.i, 8
  br i1 %cmp5.i, label %reg_w_buf.exit21.i.while.body.i_crit_edge, label %reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge

reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge: ; preds = %reg_w_buf.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

reg_w_buf.exit21.i.while.body.i_crit_edge:        ; preds = %reg_w_buf.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

reg_w_var.exit:                                   ; preds = %do.end.i, %for.cond.i.reg_w_var.exit_crit_edge
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %42 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %sof_read, align 1
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %43 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %autogain_ignore_frames, align 2
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %44 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  %add = add i32 %48, 270
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #6
  %49 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %add, ptr %avg_lum, align 4
  %50 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i8 = icmp slt i32 %51, 0
  br i1 %cmp.i8, label %reg_w_var.exit.reg_w.exit21_crit_edge, label %if.end.i

reg_w_var.exit.reg_w.exit21_crit_edge:            ; preds = %reg_w_var.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit21

if.end.i:                                         ; preds = %reg_w_var.exit
  %52 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %53, align 1
  %55 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %shl.i.i = shl i32 %58, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %59 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %59, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i9, label %reg_w.exit

do.end.i9:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i) #9
  br label %reg_w.exit21.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %60 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i11 = icmp slt i32 %.pr, 0
  br i1 %cmp.i11, label %reg_w.exit.reg_w.exit21_crit_edge, label %if.end.i18

reg_w.exit.reg_w.exit21_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit21

if.end.i18:                                       ; preds = %reg_w.exit
  %61 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %62, align 1
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i14 = shl i32 %67, 8
  %or.i15 = or i32 %shl.i.i14, -2147483648
  %68 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i16 = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i15, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %68, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i16)
  %cmp4.i17 = icmp slt i32 %call3.i16, 0
  br i1 %cmp4.i17, label %do.end.i20, label %if.end.i18.reg_w.exit21_crit_edge

if.end.i18.reg_w.exit21_crit_edge:                ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit21

do.end.i20:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 1, i32 noundef %call3.i16) #9
  br label %reg_w.exit21.sink.split

reg_w.exit21.sink.split:                          ; preds = %do.end.i20, %do.end.i9
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i9 ], [ %call3.i16, %do.end.i20 ]
  %69 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call3.i.sink, ptr %usb_err.i.i, align 8
  br label %reg_w.exit21

reg_w.exit21:                                     ; preds = %reg_w.exit21.sink.split, %if.end.i18.reg_w.exit21_crit_edge, %reg_w.exit.reg_w.exit21_crit_edge, %reg_w_var.exit.reg_w.exit21_crit_edge
  %70 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %usb_err.i.i, align 8
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp66.i = icmp sgt i32 %len, 0
  br i1 %cmp66.i, label %entry.for.body.i_crit_edge, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sof_read, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %1, label %for.body.i.for.inc.sink.split.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
    i8 2, label %sw.bb11.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb23.i
  ]

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb.i:                                          ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.067.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp2.i = icmp eq i8 %4, -1
  br i1 %cmp2.i, label %sw.bb.i.for.inc.sink.split.i_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i = getelementptr i8, ptr %data, i32 %i.067.i
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp7.i = icmp eq i8 %6, -1
  %..i = select i1 %cmp7.i, i8 2, i8 0
  br label %for.inc.sink.split.i

sw.bb11.i:                                        ; preds = %for.body.i
  %arrayidx12.i = getelementptr i8, ptr %data, i32 %i.067.i
  %7 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %8, label %sw.default.i [
    i8 0, label %sw.bb11.i.for.inc.sink.split.i_crit_edge
    i8 -1, label %sw.bb11.i.for.inc.i_crit_edge
  ]

sw.bb11.i.for.inc.i_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb11.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.default.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb15.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.i = getelementptr i8, ptr %data, i32 %i.067.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp18.i = icmp eq i8 %11, -1
  %.72.i = select i1 %cmp18.i, i8 4, i8 0
  br label %for.inc.sink.split.i

sw.bb23.i:                                        ; preds = %for.body.i
  %arrayidx24.i = getelementptr i8, ptr %data, i32 %i.067.i
  %12 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %13, label %sw.default36.i [
    i8 -106, label %do.body.i
    i8 -1, label %sw.bb23.i.for.inc.sink.split.i_crit_edge
  ]

sw.bb23.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

do.body.i:                                        ; preds = %sw.bb23.i
  %arrayidx24.i.le = getelementptr i8, ptr %data, i32 %i.067.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp27.i = icmp sgt i32 %15, 3
  br i1 %cmp27.i, label %do.end.i, label %do.body.i.pac_find_sof.exit_crit_edge

do.body.i.pac_find_sof.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pac_find_sof.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %add.i = add nuw nsw i32 %i.067.i, 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef %len, i32 noundef %add.i) #9
  br label %pac_find_sof.exit

sw.default36.i:                                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.default36.i, %sw.bb23.i.for.inc.sink.split.i_crit_edge, %sw.bb15.i, %sw.default.i, %sw.bb11.i.for.inc.sink.split.i_crit_edge, %sw.bb4.i, %sw.bb.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %sw.default.i ], [ 0, %sw.default36.i ], [ 1, %sw.bb.i.for.inc.sink.split.i_crit_edge ], [ %..i, %sw.bb4.i ], [ 3, %sw.bb11.i.for.inc.sink.split.i_crit_edge ], [ %.72.i, %sw.bb15.i ], [ 2, %sw.bb23.i.for.inc.sink.split.i_crit_edge ], [ 0, %for.body.i.for.inc.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink.i, ptr %sof_read, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.bb11.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %for.inc.i.if.end38_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end38_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

pac_find_sof.exit:                                ; preds = %do.end.i, %do.body.i.pac_find_sof.exit_crit_edge
  %17 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sof_read, align 1
  %add.ptr34.i = getelementptr i8, ptr %arrayidx24.i.le, i32 1
  %tobool.not = icmp eq ptr %add.ptr34.i, null
  br i1 %tobool.not, label %pac_find_sof.exit.if.end38_crit_edge, label %if.then

pac_find_sof.exit.if.end38_crit_edge:             ; preds = %pac_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then:                                          ; preds = %pac_find_sof.exit
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr34.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, -79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %18 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %image_len, align 8
  %add2 = add i32 %19, %sub
  store i32 %add2, ptr %image_len, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %sub) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %image3 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 13
  %20 = ptrtoint ptr %image3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %image3, align 4
  %cmp4.not = icmp eq ptr %21, null
  br i1 %cmp4.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %image_len5 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %22 = ptrtoint ptr %image_len5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %image_len5, align 8
  %sub6 = add i32 %23, -2
  %arrayidx = getelementptr i8, ptr %21, i32 %sub6
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp7 = icmp eq i8 %25, -1
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sub11 = add i32 %23, -1
  %arrayidx12 = getelementptr i8, ptr %21, i32 %sub11
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %27)
  %cmp14 = icmp eq i8 %27, -39
  br i1 %cmp14, label %if.then16, label %land.lhs.true9.if.end17_crit_edge

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true9.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %sub21 = sub i32 %len, %sub.ptr.sub
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %28 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp23 = icmp eq i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub.ptr.sub)
  %cmp26 = icmp sgt i32 %sub.ptr.sub, 65
  %or.cond = and i1 %cmp26, %cmp23
  br i1 %or.cond, label %if.then28, label %if.end17.if.end37_crit_edge

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %arrayidx30 = getelementptr i8, ptr %add.ptr34.i, i32 -66
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %arrayidx34 = getelementptr i8, ptr %add.ptr34.i, i32 -65
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %33 to i32
  %add36 = add nuw nsw i32 %conv35, %conv31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #6
  %34 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %add36, ptr %avg_lum, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %if.end17.if.end37_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef nonnull @jpeg_header, i32 noundef 35) #6
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %pac_find_sof.exit.if.end38_crit_edge, %for.inc.i.if.end38_crit_edge, %entry.if.end38_crit_edge
  %len.addr.0 = phi i32 [ %sub21, %if.end37 ], [ %len, %pac_find_sof.exit.if.end38_crit_edge ], [ %len, %entry.if.end38_crit_edge ], [ %len, %for.inc.i.if.end38_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr34.i, %if.end37 ], [ %data, %pac_find_sof.exit.if.end38_crit_edge ], [ %data, %entry.if.end38_crit_edge ], [ %data, %for.inc.i.if.end38_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
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
  br i1 %cmp.i, label %entry.reg_w.exit13_crit_edge, label %if.end.i

entry.reg_w.exit13_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit13

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i) #9
  br label %reg_w.exit13.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i3 = icmp slt i32 %.pr, 0
  br i1 %cmp.i3, label %reg_w.exit.reg_w.exit13_crit_edge, label %if.end.i10

reg_w.exit.reg_w.exit13_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit13

if.end.i10:                                       ; preds = %reg_w.exit
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i6 = shl i32 %17, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i8 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i7, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i8)
  %cmp4.i9 = icmp slt i32 %call3.i8, 0
  br i1 %cmp4.i9, label %do.end.i12, label %if.end.i10.reg_w.exit13_crit_edge

if.end.i10.reg_w.exit13_crit_edge:                ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit13

do.end.i12:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 0, i32 noundef %call3.i8) #9
  br label %reg_w.exit13.sink.split

reg_w.exit13.sink.split:                          ; preds = %do.end.i12, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i8, %do.end.i12 ]
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit13

reg_w.exit13:                                     ; preds = %reg_w.exit13.sink.split, %if.end.i10.reg_w.exit13_crit_edge, %reg_w.exit.reg_w.exit13_crit_edge, %entry.reg_w.exit13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %2 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %if.end
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %11, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i) #9
  br label %return.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i4 = icmp slt i32 %.pr, 0
  br i1 %cmp.i4, label %reg_w.exit.return_crit_edge, label %if.end.i11

reg_w.exit.return_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i11:                                       ; preds = %reg_w.exit
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %14, align 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i7 = shl i32 %19, 8
  %or.i8 = or i32 %shl.i.i7, -2147483648
  %20 = load ptr, ptr %usb_buf.i, align 4
  %call3.i9 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i8, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i9)
  %cmp4.i10 = icmp slt i32 %call3.i9, 0
  br i1 %cmp4.i10, label %do.end.i13, label %if.end.i11.return_crit_edge

if.end.i11.return_crit_edge:                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i13:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 64, i32 noundef %call3.i9) #9
  br label %return.sink.split

return.sink.split:                                ; preds = %do.end.i13, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i9, %do.end.i13 ]
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.i11.return_crit_edge, %reg_w.exit.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_lum1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_lum1, i32 noundef 4) #6
  %0 = ptrtoint ptr %avg_lum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %avg_lum1, align 4
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autogain_ignore_frames, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.not = icmp eq i8 %3, 0
  br i1 %cmp5.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add nsw i8 %3, -1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %add = add i32 %8, 270
  %call9 = tail call i32 @gspca_expo_autogain(ptr noundef %gspca_dev, i32 noundef %1, i32 noundef %add, i32 noundef 30, i32 noundef 42, i32 noundef 133) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then7
  %dec.sink = phi i8 [ %dec, %if.then7 ], [ 2, %if.else.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %dec.sink, ptr %autogain_ignore_frames, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_dbg_s_register(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.v4l2_dbg_match, ptr %reg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %3 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %reg1, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %4)
  %cmp2 = icmp ult i64 %4, 255
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %6)
  %cmp4 = icmp ult i64 %6, 256
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %conv = trunc i64 %4 to i32
  %conv7 = trunc i64 %6 to i8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %10, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %15, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %16, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i) #9
  br label %if.end.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i17 = icmp slt i32 %.pr, 0
  br i1 %cmp.i17, label %reg_w.exit.if.end_crit_edge, label %if.end.i24

reg_w.exit.if.end_crit_edge:                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i24:                                       ; preds = %reg_w.exit
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv7, ptr %19, align 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i20 = shl i32 %24, 8
  %or.i21 = or i32 %shl.i.i20, -2147483648
  %25 = trunc i64 %4 to i16
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call3.i22 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i21, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %25, ptr noundef %26, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i22)
  %cmp4.i23 = icmp slt i32 %call3.i22, 0
  br i1 %cmp4.i23, label %do.end.i26, label %reg_w.exit27

do.end.i26:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  %27 = trunc i64 %6 to i32
  %call9.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %27, i32 noundef %call3.i22) #9
  br label %if.end.sink.split

reg_w.exit27:                                     ; preds = %if.end.i24
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr41.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr41.pr)
  %cmp.i29 = icmp slt i32 %.pr41.pr, 0
  br i1 %cmp.i29, label %reg_w.exit27.if.end_crit_edge, label %if.end.i36

reg_w.exit27.if.end_crit_edge:                    ; preds = %reg_w.exit27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i36:                                       ; preds = %reg_w.exit27
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %30, align 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i32 = shl i32 %35, 8
  %or.i33 = or i32 %shl.i.i32, -2147483648
  %36 = load ptr, ptr %usb_buf.i, align 4
  %call3.i34 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i33, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i34)
  %cmp4.i35 = icmp slt i32 %call3.i34, 0
  br i1 %cmp4.i35, label %do.end.i38, label %if.end.i36.if.end_crit_edge

if.end.i36.if.end_crit_edge:                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i38:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i34) #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %do.end.i38, %do.end.i26, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i22, %do.end.i26 ], [ %call3.i34, %do.end.i38 ]
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i36.if.end_crit_edge, %reg_w.exit27.if.end_crit_edge, %reg_w.exit.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %38 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err, align 8
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp eq i32 %len, 2
  br i1 %cmp, label %if.then, label %entry.if.end66_crit_edge

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %arrayidx1 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %3)
  %cmp5 = icmp eq i8 %3, 17
  %or.cond = select i1 %cmp2, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then.if.then62_crit_edge, label %lor.lhs.false

if.then.if.then62_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp8 = icmp eq i8 %1, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %3)
  %cmp12 = icmp eq i8 %3, 51
  %or.cond85 = select i1 %cmp8, i1 %cmp12, i1 false
  br i1 %or.cond85, label %lor.lhs.false.if.then62_crit_edge, label %lor.lhs.false14

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %1)
  %cmp16 = icmp eq i8 %1, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %3)
  %cmp20 = icmp eq i8 %3, 85
  %or.cond86 = select i1 %cmp16, i1 %cmp20, i1 false
  br i1 %or.cond86, label %lor.lhs.false14.if.then62_crit_edge, label %lor.lhs.false22

lor.lhs.false14.if.then62_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false22:                                  ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %1)
  %cmp24 = icmp eq i8 %1, 102
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %3)
  %cmp28 = icmp eq i8 %3, 119
  %or.cond87 = select i1 %cmp24, i1 %cmp28, i1 false
  br i1 %or.cond87, label %lor.lhs.false22.if.then62_crit_edge, label %lor.lhs.false30

lor.lhs.false22.if.then62_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false30:                                  ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %1)
  %cmp32 = icmp eq i8 %1, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %3)
  %cmp36 = icmp eq i8 %3, -103
  %or.cond88 = select i1 %cmp32, i1 %cmp36, i1 false
  br i1 %or.cond88, label %lor.lhs.false30.if.then62_crit_edge, label %lor.lhs.false38

lor.lhs.false30.if.then62_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false38:                                  ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %1)
  %cmp40 = icmp eq i8 %1, -86
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %3)
  %cmp44 = icmp eq i8 %3, -69
  %or.cond89 = select i1 %cmp40, i1 %cmp44, i1 false
  br i1 %or.cond89, label %lor.lhs.false38.if.then62_crit_edge, label %lor.lhs.false46

lor.lhs.false38.if.then62_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false46:                                  ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %1)
  %cmp48 = icmp eq i8 %1, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %3)
  %cmp52 = icmp eq i8 %3, -35
  %or.cond90 = select i1 %cmp48, i1 %cmp52, i1 false
  br i1 %or.cond90, label %lor.lhs.false46.if.then62_crit_edge, label %lor.lhs.false54

lor.lhs.false46.if.then62_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false54:                                  ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %1)
  %cmp56 = icmp eq i8 %1, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp60 = icmp eq i8 %3, -1
  %or.cond91 = select i1 %cmp56, i1 %cmp60, i1 false
  br i1 %or.cond91, label %lor.lhs.false54.if.then62_crit_edge, label %lor.lhs.false54.if.end66_crit_edge

lor.lhs.false54.if.end66_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

lor.lhs.false54.if.then62_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false54.if.then62_crit_edge, %lor.lhs.false46.if.then62_crit_edge, %lor.lhs.false38.if.then62_crit_edge, %lor.lhs.false30.if.then62_crit_edge, %lor.lhs.false22.if.then62_crit_edge, %lor.lhs.false14.if.then62_crit_edge, %lor.lhs.false.if.then62_crit_edge, %if.then.if.then62_crit_edge
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 212, i32 noundef 1) #6
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 212, i32 noundef 0) #6
  %10 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %lor.lhs.false54.if.end66_crit_edge, %entry.if.end66_crit_edge
  %ret.0 = phi i32 [ 0, %if.then62 ], [ -22, %lor.lhs.false54.if.end66_crit_edge ], [ -22, %entry.if.end66_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %4)
  %cmp = icmp eq i32 %4, 9963794
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %5 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %is_new, align 4
  %6 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  %exposure = getelementptr i8, ptr %1, i32 188
  %9 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %exposure, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 66, ptr %val3, align 4
  %gain = getelementptr i8, ptr %1, i32 192
  %12 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gain, align 8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 15, ptr %val4, align 4
  %autogain_ignore_frames = getelementptr i8, ptr %1, i32 1062
  %15 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %autogain_ignore_frames, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %streaming = getelementptr i8, ptr %1, i32 238
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %streaming, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %19, label %if.end7.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963778, label %sw.bb9
    i32 9963802, label %sw.bb10
    i32 9963790, label %sw.bb11
    i32 9963791, label %sw.bb12
    i32 9963794, label %sw.bb13
    i32 9963796, label %sw.bb47
    i32 9963803, label %sw.bb48
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %21 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i = icmp slt i32 %22, 0
  br i1 %cmp.i.i, label %sw.bb.reg_w.exit.i_crit_edge, label %if.end.i.i

sw.bb.reg_w.exit.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %24, align 1
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i.i = shl i32 %29, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %30, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit.i_crit_edge

if.end.i.i.reg_w.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i.i) #9
  %31 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call3.i.i, ptr %usb_err, align 8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit.i_crit_edge, %sw.bb.reg_w.exit.i_crit_edge
  %32 = getelementptr i8, ptr %1, i32 1024
  %contrast.i = getelementptr i8, ptr %1, i32 1028
  %usb_buf.i41.i = getelementptr i8, ptr %1, i32 204
  %dev.i42.i = getelementptr i8, ptr %1, i32 -100
  br label %for.body.i

for.body.i:                                       ; preds = %reg_w.exit50.i.for.body.i_crit_edge, %reg_w.exit.i
  %i.063.i = phi i32 [ 0, %reg_w.exit.i ], [ %inc.i, %reg_w.exit50.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [10 x i8], ptr @setbrightcont.max, i32 0, i32 %i.063.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i, align 4
  %maximum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 12
  %39 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %maximum.i, align 8
  %conv2.i = trunc i64 %40 to i32
  %sub.i = sub i32 %38, %conv2.i
  %mul.i = mul i32 %sub.i, 150
  %div.i = sdiv i32 %mul.i, %conv2.i
  %add.i = add i32 %div.i, %conv.i
  %arrayidx6.i = getelementptr [10 x i8], ptr @setbrightcont.delta, i32 0, i32 %i.063.i
  %41 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %contrast.i, align 4
  %val8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val8.i, align 4
  %mul9.i = mul i32 %46, %conv7.i
  %maximum11.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 12
  %47 = ptrtoint ptr %maximum11.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %maximum11.i, align 8
  %conv12.i = trunc i64 %48 to i32
  %div13.i = sdiv i32 %mul9.i, %conv12.i
  %sub14.i = sub i32 %add.i, %div13.i
  %49 = tail call i32 @llvm.smin.i32(i32 %sub14.i, i32 255) #6
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #6
  %51 = trunc i32 %i.063.i to i8
  %conv22.i = add i8 %51, -94
  %52 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i40.i = icmp slt i32 %53, 0
  br i1 %cmp.i40.i, label %for.body.i.reg_w.exit50.i_crit_edge, label %if.end.i47.i

for.body.i.reg_w.exit50.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit50.i

if.end.i47.i:                                     ; preds = %for.body.i
  %conv23.i = trunc i32 %50 to i8
  %54 = ptrtoint ptr %usb_buf.i41.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i41.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv23.i, ptr %55, align 1
  %57 = ptrtoint ptr %dev.i42.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i42.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i43.i = shl i32 %60, 8
  %or.i44.i = or i32 %shl.i.i43.i, -2147483648
  %conv.i.i = zext i8 %conv22.i to i16
  %61 = load ptr, ptr %usb_buf.i41.i, align 4
  %call3.i45.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i44.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef %61, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i45.i)
  %cmp4.i46.i = icmp slt i32 %call3.i45.i, 0
  br i1 %cmp4.i46.i, label %do.end.i49.i, label %if.end.i47.i.reg_w.exit50.i_crit_edge

if.end.i47.i.reg_w.exit50.i_crit_edge:            ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit50.i

do.end.i49.i:                                     ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i = zext i8 %conv22.i to i32
  %call9.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv7.i.i, i32 noundef %50, i32 noundef %call3.i45.i) #9
  %62 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call3.i45.i, ptr %usb_err, align 8
  br label %reg_w.exit50.i

reg_w.exit50.i:                                   ; preds = %do.end.i49.i, %if.end.i47.i.reg_w.exit50.i_crit_edge, %for.body.i.reg_w.exit50.i_crit_edge
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.end.i, label %reg_w.exit50.i.for.body.i_crit_edge

reg_w.exit50.i.for.body.i_crit_edge:              ; preds = %reg_w.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %reg_w.exit50.i
  %63 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i52.i = icmp slt i32 %64, 0
  br i1 %cmp.i52.i, label %for.end.i.sw.epilog_crit_edge, label %if.end.i59.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i59.i:                                     ; preds = %for.end.i
  %65 = ptrtoint ptr %usb_buf.i41.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_buf.i41.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %66, align 1
  %68 = ptrtoint ptr %dev.i42.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i42.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i55.i = shl i32 %71, 8
  %or.i56.i = or i32 %shl.i.i55.i, -2147483648
  %72 = load ptr, ptr %usb_buf.i41.i, align 4
  %call3.i57.i = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i56.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %72, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i57.i)
  %cmp4.i58.i = icmp slt i32 %call3.i57.i, 0
  br i1 %cmp4.i58.i, label %do.end.i61.i, label %if.end.i59.i.sw.epilog_crit_edge

if.end.i59.i.sw.epilog_crit_edge:                 ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i61.i:                                     ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i57.i) #9
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end7
  %73 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i.i76 = icmp slt i32 %74, 0
  br i1 %cmp.i.i76, label %sw.bb9.reg_w.exit49.i_crit_edge, label %if.end.i.i83

sw.bb9.reg_w.exit49.i_crit_edge:                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit49.i

if.end.i.i83:                                     ; preds = %sw.bb9
  %usb_buf.i.i77 = getelementptr i8, ptr %1, i32 204
  %75 = ptrtoint ptr %usb_buf.i.i77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf.i.i77, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 3, ptr %76, align 1
  %dev.i.i78 = getelementptr i8, ptr %1, i32 -100
  %78 = ptrtoint ptr %dev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i78, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i.i.i79 = shl i32 %81, 8
  %or.i.i80 = or i32 %shl.i.i.i79, -2147483648
  %82 = load ptr, ptr %usb_buf.i.i77, align 4
  %call3.i.i81 = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i.i80, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %82, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i81)
  %cmp4.i.i82 = icmp slt i32 %call3.i.i81, 0
  br i1 %cmp4.i.i82, label %do.end.i.i85, label %reg_w.exit.i86

do.end.i.i85:                                     ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 3, i32 noundef %call3.i.i81) #9
  br label %reg_w.exit49.sink.split.i

reg_w.exit.i86:                                   ; preds = %if.end.i.i83
  %83 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i27.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i27.i, label %reg_w.exit.i86.reg_w.exit49.i_crit_edge, label %if.end.i34.i

reg_w.exit.i86.reg_w.exit49.i_crit_edge:          ; preds = %reg_w.exit.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit49.i

if.end.i34.i:                                     ; preds = %reg_w.exit.i86
  %84 = ptrtoint ptr %usb_buf.i.i77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i.i77, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %85, align 1
  %87 = ptrtoint ptr %dev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i78, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %shl.i.i30.i = shl i32 %90, 8
  %or.i31.i = or i32 %shl.i.i30.i, -2147483648
  %91 = load ptr, ptr %usb_buf.i.i77, align 4
  %call3.i32.i = tail call i32 @usb_control_msg(ptr noundef %88, i32 noundef %or.i31.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %91, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i32.i)
  %cmp4.i33.i = icmp slt i32 %call3.i32.i, 0
  br i1 %cmp4.i33.i, label %do.end.i36.i, label %reg_w.exit37.i

do.end.i36.i:                                     ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i32.i) #9
  br label %reg_w.exit49.sink.split.i

reg_w.exit37.i:                                   ; preds = %if.end.i34.i
  %92 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr90.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr90.pr.i)
  %cmp.i39.i = icmp slt i32 %.pr90.pr.i, 0
  br i1 %cmp.i39.i, label %reg_w.exit37.i.reg_w.exit49.i_crit_edge, label %if.end.i46.i

reg_w.exit37.i.reg_w.exit49.i_crit_edge:          ; preds = %reg_w.exit37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit49.i

if.end.i46.i:                                     ; preds = %reg_w.exit37.i
  %93 = ptrtoint ptr %usb_buf.i.i77 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %usb_buf.i.i77, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %94, align 1
  %96 = ptrtoint ptr %dev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i.i78, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 8
  %shl.i.i42.i = shl i32 %99, 8
  %or.i43.i = or i32 %shl.i.i42.i, -2147483648
  %100 = load ptr, ptr %usb_buf.i.i77, align 4
  %call3.i44.i = tail call i32 @usb_control_msg(ptr noundef %97, i32 noundef %or.i43.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %100, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i44.i)
  %cmp4.i45.i = icmp slt i32 %call3.i44.i, 0
  br i1 %cmp4.i45.i, label %do.end.i48.i, label %if.end.i46.i.reg_w.exit49.i_crit_edge

if.end.i46.i.reg_w.exit49.i_crit_edge:            ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit49.i

do.end.i48.i:                                     ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i44.i) #9
  br label %reg_w.exit49.sink.split.i

reg_w.exit49.sink.split.i:                        ; preds = %do.end.i48.i, %do.end.i36.i, %do.end.i.i85
  %call3.i.sink.i = phi i32 [ %call3.i.i81, %do.end.i.i85 ], [ %call3.i32.i, %do.end.i36.i ], [ %call3.i44.i, %do.end.i48.i ]
  %101 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call3.i.sink.i, ptr %usb_err, align 8
  br label %reg_w.exit49.i

reg_w.exit49.i:                                   ; preds = %reg_w.exit49.sink.split.i, %if.end.i46.i.reg_w.exit49.i_crit_edge, %reg_w.exit37.i.reg_w.exit49.i_crit_edge, %reg_w.exit.i86.reg_w.exit49.i_crit_edge, %sw.bb9.reg_w.exit49.i_crit_edge
  %saturation.i = getelementptr i8, ptr %1, i32 1032
  %usb_buf.i52.i = getelementptr i8, ptr %1, i32 204
  %dev.i53.i = getelementptr i8, ptr %1, i32 -100
  br label %for.body.i94

for.body.i94:                                     ; preds = %reg_w.exit76.i.for.body.i94_crit_edge, %reg_w.exit49.i
  %i.0101.i = phi i32 [ 0, %reg_w.exit49.i ], [ %inc.i97, %reg_w.exit76.i.for.body.i94_crit_edge ]
  %arrayidx.i87 = getelementptr [9 x i32], ptr @setcolors.a, i32 0, i32 %i.0101.i
  %102 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i87, align 4
  %104 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %saturation.i, align 8
  %val.i88 = getelementptr inbounds %struct.v4l2_ctrl, ptr %105, i32 0, i32 22
  %106 = ptrtoint ptr %val.i88 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i88, align 4
  %mul.i89 = mul i32 %107, %103
  %maximum.i90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %105, i32 0, i32 12
  %108 = ptrtoint ptr %maximum.i90 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %maximum.i90, align 8
  %conv.i91 = trunc i64 %109 to i32
  %div.i92 = sdiv i32 %mul.i89, %conv.i91
  %arrayidx2.i = getelementptr [9 x i32], ptr @setcolors.b, i32 0, i32 %i.0101.i
  %110 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx2.i, align 4
  %add.i93 = add i32 %111, %div.i92
  %i.0.tr.i = trunc i32 %i.0101.i to i8
  %112 = shl i8 %i.0.tr.i, 1
  %conv5.i = add i8 %112, 15
  %113 = lshr i32 %add.i93, 8
  %114 = trunc i32 %113 to i8
  %conv6.i = and i8 %114, 7
  %115 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i51.i = icmp slt i32 %116, 0
  br i1 %cmp.i51.i, label %for.body.i94.reg_w.exit76.i_crit_edge, label %if.end.i58.i

for.body.i94.reg_w.exit76.i_crit_edge:            ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit76.i

if.end.i58.i:                                     ; preds = %for.body.i94
  %117 = ptrtoint ptr %usb_buf.i52.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %usb_buf.i52.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv6.i, ptr %118, align 1
  %120 = ptrtoint ptr %dev.i53.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i53.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 8
  %shl.i.i54.i = shl i32 %123, 8
  %or.i55.i = or i32 %shl.i.i54.i, -2147483648
  %conv.i.i95 = zext i8 %conv5.i to i16
  %124 = load ptr, ptr %usb_buf.i52.i, align 4
  %call3.i56.i = tail call i32 @usb_control_msg(ptr noundef %121, i32 noundef %or.i55.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i95, ptr noundef %124, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i56.i)
  %cmp4.i57.i = icmp slt i32 %call3.i56.i, 0
  br i1 %cmp4.i57.i, label %do.end.i60.i, label %reg_w.exit61.i

do.end.i60.i:                                     ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i96 = zext i8 %conv5.i to i32
  %conv8.i.i = zext i8 %conv6.i to i32
  %call9.i59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv7.i.i96, i32 noundef %conv8.i.i, i32 noundef %call3.i56.i) #9
  br label %reg_w.exit76.sink.split.i

reg_w.exit61.i:                                   ; preds = %if.end.i58.i
  %125 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr92.i = load i32, ptr %usb_err, align 8
  %conv10.i = add i8 %112, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr92.i)
  %cmp.i63.i = icmp slt i32 %.pr92.i, 0
  br i1 %cmp.i63.i, label %reg_w.exit61.i.reg_w.exit76.i_crit_edge, label %if.end.i71.i

reg_w.exit61.i.reg_w.exit76.i_crit_edge:          ; preds = %reg_w.exit61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit76.i

if.end.i71.i:                                     ; preds = %reg_w.exit61.i
  %conv11.i = trunc i32 %add.i93 to i8
  %126 = ptrtoint ptr %usb_buf.i52.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb_buf.i52.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv11.i, ptr %127, align 1
  %129 = ptrtoint ptr %dev.i53.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i53.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  %shl.i.i66.i = shl i32 %132, 8
  %or.i67.i = or i32 %shl.i.i66.i, -2147483648
  %conv.i68.i = zext i8 %conv10.i to i16
  %133 = load ptr, ptr %usb_buf.i52.i, align 4
  %call3.i69.i = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or.i67.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i68.i, ptr noundef %133, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i69.i)
  %cmp4.i70.i = icmp slt i32 %call3.i69.i, 0
  br i1 %cmp4.i70.i, label %do.end.i75.i, label %if.end.i71.i.reg_w.exit76.i_crit_edge

if.end.i71.i.reg_w.exit76.i_crit_edge:            ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit76.i

do.end.i75.i:                                     ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i72.i = zext i8 %conv10.i to i32
  %conv8.i73.i = and i32 %add.i93, 255
  %call9.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv7.i72.i, i32 noundef %conv8.i73.i, i32 noundef %call3.i69.i) #9
  br label %reg_w.exit76.sink.split.i

reg_w.exit76.sink.split.i:                        ; preds = %do.end.i75.i, %do.end.i60.i
  %call3.i56.sink.i = phi i32 [ %call3.i56.i, %do.end.i60.i ], [ %call3.i69.i, %do.end.i75.i ]
  %134 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call3.i56.sink.i, ptr %usb_err, align 8
  br label %reg_w.exit76.i

reg_w.exit76.i:                                   ; preds = %reg_w.exit76.sink.split.i, %if.end.i71.i.reg_w.exit76.i_crit_edge, %reg_w.exit61.i.reg_w.exit76.i_crit_edge, %for.body.i94.reg_w.exit76.i_crit_edge
  %inc.i97 = add nuw nsw i32 %i.0101.i, 1
  %exitcond.not.i98 = icmp eq i32 %inc.i97, 9
  br i1 %exitcond.not.i98, label %for.end.i99, label %reg_w.exit76.i.for.body.i94_crit_edge

reg_w.exit76.i.for.body.i94_crit_edge:            ; preds = %reg_w.exit76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i94

for.end.i99:                                      ; preds = %reg_w.exit76.i
  %135 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.i78.i = icmp slt i32 %136, 0
  br i1 %cmp.i78.i, label %for.end.i99.sw.epilog_crit_edge, label %if.end.i85.i

for.end.i99.sw.epilog_crit_edge:                  ; preds = %for.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i85.i:                                     ; preds = %for.end.i99
  %137 = ptrtoint ptr %usb_buf.i52.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i52.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %138, align 1
  %140 = ptrtoint ptr %dev.i53.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i53.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %shl.i.i81.i = shl i32 %143, 8
  %or.i82.i = or i32 %shl.i.i81.i, -2147483648
  %144 = load ptr, ptr %usb_buf.i52.i, align 4
  %call3.i83.i = tail call i32 @usb_control_msg(ptr noundef %141, i32 noundef %or.i82.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %144, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i83.i)
  %cmp4.i84.i = icmp slt i32 %call3.i83.i, 0
  br i1 %cmp4.i84.i, label %do.end.i87.i, label %if.end.i85.i.sw.epilog_crit_edge

if.end.i85.i.sw.epilog_crit_edge:                 ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i87.i:                                     ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i83.i) #9
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end7
  %145 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp.i.i101 = icmp slt i32 %146, 0
  br i1 %cmp.i.i101, label %sw.bb10.sw.epilog_crit_edge, label %if.end.i.i108

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i108:                                    ; preds = %sw.bb10
  %usb_buf.i.i102 = getelementptr i8, ptr %1, i32 204
  %147 = ptrtoint ptr %usb_buf.i.i102 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %usb_buf.i.i102, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %148, align 1
  %dev.i.i103 = getelementptr i8, ptr %1, i32 -100
  %150 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i.i103, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 8
  %shl.i.i.i104 = shl i32 %153, 8
  %or.i.i105 = or i32 %shl.i.i.i104, -2147483648
  %154 = load ptr, ptr %usb_buf.i.i102, align 4
  %call3.i.i106 = tail call i32 @usb_control_msg(ptr noundef %151, i32 noundef %or.i.i105, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %154, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i106)
  %cmp4.i.i107 = icmp slt i32 %call3.i.i106, 0
  br i1 %cmp4.i.i107, label %do.end.i.i110, label %reg_w.exit.i113

do.end.i.i110:                                    ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i.i106) #9
  br label %sw.epilog.sink.split

reg_w.exit.i113:                                  ; preds = %if.end.i.i108
  %155 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr.i111 = load i32, ptr %usb_err, align 8
  %white_balance.i = getelementptr i8, ptr %1, i32 1036
  %156 = ptrtoint ptr %white_balance.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %white_balance.i, align 4
  %val.i112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %157, i32 0, i32 22
  %158 = ptrtoint ptr %val.i112 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %val.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i111)
  %cmp.i5.i = icmp slt i32 %.pr.i111, 0
  br i1 %cmp.i5.i, label %reg_w.exit.i113.reg_w.exit15.i_crit_edge, label %if.end.i12.i

reg_w.exit.i113.reg_w.exit15.i_crit_edge:         ; preds = %reg_w.exit.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit15.i

if.end.i12.i:                                     ; preds = %reg_w.exit.i113
  %conv.i114 = trunc i32 %159 to i8
  %160 = ptrtoint ptr %usb_buf.i.i102 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %usb_buf.i.i102, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv.i114, ptr %161, align 1
  %163 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i.i103, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i8.i = shl i32 %166, 8
  %or.i9.i = or i32 %shl.i.i8.i, -2147483648
  %167 = load ptr, ptr %usb_buf.i.i102, align 4
  %call3.i10.i = tail call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i9.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 198, ptr noundef %167, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i10.i)
  %cmp4.i11.i = icmp slt i32 %call3.i10.i, 0
  br i1 %cmp4.i11.i, label %reg_w.exit15.thread.i, label %if.end.i12.i.reg_w.exit15.i_crit_edge

if.end.i12.i.reg_w.exit15.i_crit_edge:            ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit15.i

reg_w.exit15.thread.i:                            ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i115 = and i32 %159, 255
  %call9.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef %conv8.i.i115, i32 noundef %call3.i10.i) #9
  br label %sw.epilog.sink.split

reg_w.exit15.i:                                   ; preds = %if.end.i12.i.reg_w.exit15.i_crit_edge, %reg_w.exit.i113.reg_w.exit15.i_crit_edge
  %168 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pr32.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr32.pr.i)
  %cmp.i17.i = icmp slt i32 %.pr32.pr.i, 0
  br i1 %cmp.i17.i, label %reg_w.exit15.i.sw.epilog_crit_edge, label %if.end.i24.i

reg_w.exit15.i.sw.epilog_crit_edge:               ; preds = %reg_w.exit15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i24.i:                                     ; preds = %reg_w.exit15.i
  %169 = ptrtoint ptr %usb_buf.i.i102 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %usb_buf.i.i102, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %170, align 1
  %172 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i.i103, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 8
  %shl.i.i20.i = shl i32 %175, 8
  %or.i21.i = or i32 %shl.i.i20.i, -2147483648
  %176 = load ptr, ptr %usb_buf.i.i102, align 4
  %call3.i22.i = tail call i32 @usb_control_msg(ptr noundef %173, i32 noundef %or.i21.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %176, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i22.i)
  %cmp4.i23.i = icmp slt i32 %call3.i22.i, 0
  br i1 %cmp4.i23.i, label %do.end.i26.i, label %if.end.i24.i.sw.epilog_crit_edge

if.end.i24.i.sw.epilog_crit_edge:                 ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i26.i:                                     ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i22.i) #9
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end7
  %177 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i.i118 = icmp slt i32 %178, 0
  br i1 %cmp.i.i118, label %sw.bb11.reg_w.exit.i131_crit_edge, label %if.end.i.i125

sw.bb11.reg_w.exit.i131_crit_edge:                ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i131

if.end.i.i125:                                    ; preds = %sw.bb11
  %usb_buf.i.i119 = getelementptr i8, ptr %1, i32 204
  %179 = ptrtoint ptr %usb_buf.i.i119 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %usb_buf.i.i119, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %180, align 1
  %dev.i.i120 = getelementptr i8, ptr %1, i32 -100
  %182 = ptrtoint ptr %dev.i.i120 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev.i.i120, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 8
  %shl.i.i.i121 = shl i32 %185, 8
  %or.i.i122 = or i32 %shl.i.i.i121, -2147483648
  %186 = load ptr, ptr %usb_buf.i.i119, align 4
  %call3.i.i123 = tail call i32 @usb_control_msg(ptr noundef %183, i32 noundef %or.i.i122, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %186, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i123)
  %cmp4.i.i124 = icmp slt i32 %call3.i.i123, 0
  br i1 %cmp4.i.i124, label %do.end.i.i127, label %if.end.i.i125.reg_w.exit.i131_crit_edge

if.end.i.i125.reg_w.exit.i131_crit_edge:          ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i131

do.end.i.i127:                                    ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i.i123) #9
  %187 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call3.i.i123, ptr %usb_err, align 8
  br label %reg_w.exit.i131

reg_w.exit.i131:                                  ; preds = %do.end.i.i127, %if.end.i.i125.reg_w.exit.i131_crit_edge, %sw.bb11.reg_w.exit.i131_crit_edge
  %red_balance.i = getelementptr i8, ptr %1, i32 1040
  %188 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %red_balance.i, align 8
  %val.i128 = getelementptr inbounds %struct.v4l2_ctrl, ptr %189, i32 0, i32 22
  %190 = ptrtoint ptr %val.i128 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %val.i128, align 4
  %mul.i.i = mul i32 %191, 1000
  %div.i.i = udiv i32 %mul.i.i, 200
  %mul1.i.i = shl nuw nsw i32 %div.i.i, 6
  %mul2.i.i = mul i32 %mul1.i.i, %div.i.i
  %div3.i.i = udiv i32 %mul2.i.i, 1000000
  %mul4.i.i = shl nuw nsw i32 %div.i.i, 5
  %div5.i.i = udiv i32 %mul4.i.i, 1000
  %add.i.i = add nuw nsw i32 %div3.i.i, %div5.i.i
  %192 = trunc i32 %add.i.i to i8
  %conv.i.i129 = add i8 %192, 32
  %193 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i5.i130 = icmp slt i32 %194, 0
  br i1 %cmp.i5.i130, label %reg_w.exit.i131.sw.epilog_crit_edge, label %if.end.i12.i136

reg_w.exit.i131.sw.epilog_crit_edge:              ; preds = %reg_w.exit.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i12.i136:                                  ; preds = %reg_w.exit.i131
  %usb_buf.i6.i = getelementptr i8, ptr %1, i32 204
  %195 = ptrtoint ptr %usb_buf.i6.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %usb_buf.i6.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv.i.i129, ptr %196, align 1
  %dev.i7.i = getelementptr i8, ptr %1, i32 -100
  %198 = ptrtoint ptr %dev.i7.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i7.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 8
  %shl.i.i8.i132 = shl i32 %201, 8
  %or.i9.i133 = or i32 %shl.i.i8.i132, -2147483648
  %202 = load ptr, ptr %usb_buf.i6.i, align 4
  %call3.i10.i134 = tail call i32 @usb_control_msg(ptr noundef %199, i32 noundef %or.i9.i133, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %202, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i10.i134)
  %cmp4.i11.i135 = icmp slt i32 %call3.i10.i134, 0
  br i1 %cmp4.i11.i135, label %do.end.i14.i, label %reg_w.exit15.i141

do.end.i14.i:                                     ; preds = %if.end.i12.i136
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i137 = zext i8 %conv.i.i129 to i32
  %call9.i13.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %conv8.i.i137, i32 noundef %call3.i10.i134) #9
  br label %sw.epilog.sink.split

reg_w.exit15.i141:                                ; preds = %if.end.i12.i136
  %203 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %203)
  %.pr.i139 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i139)
  %cmp.i17.i140 = icmp slt i32 %.pr.i139, 0
  br i1 %cmp.i17.i140, label %reg_w.exit15.i141.sw.epilog_crit_edge, label %if.end.i24.i146

reg_w.exit15.i141.sw.epilog_crit_edge:            ; preds = %reg_w.exit15.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i24.i146:                                  ; preds = %reg_w.exit15.i141
  %204 = ptrtoint ptr %usb_buf.i6.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %usb_buf.i6.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %205, align 1
  %207 = ptrtoint ptr %dev.i7.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i7.i, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 8
  %shl.i.i20.i142 = shl i32 %210, 8
  %or.i21.i143 = or i32 %shl.i.i20.i142, -2147483648
  %211 = load ptr, ptr %usb_buf.i6.i, align 4
  %call3.i22.i144 = tail call i32 @usb_control_msg(ptr noundef %208, i32 noundef %or.i21.i143, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %211, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i22.i144)
  %cmp4.i23.i145 = icmp slt i32 %call3.i22.i144, 0
  br i1 %cmp4.i23.i145, label %do.end.i26.i148, label %if.end.i24.i146.sw.epilog_crit_edge

if.end.i24.i146.sw.epilog_crit_edge:              ; preds = %if.end.i24.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i26.i148:                                  ; preds = %if.end.i24.i146
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i25.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i22.i144) #9
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %if.end7
  %212 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp.i.i151 = icmp slt i32 %213, 0
  br i1 %cmp.i.i151, label %sw.bb12.reg_w.exit.i172_crit_edge, label %if.end.i.i158

sw.bb12.reg_w.exit.i172_crit_edge:                ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i172

if.end.i.i158:                                    ; preds = %sw.bb12
  %usb_buf.i.i152 = getelementptr i8, ptr %1, i32 204
  %214 = ptrtoint ptr %usb_buf.i.i152 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %usb_buf.i.i152, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %215, align 1
  %dev.i.i153 = getelementptr i8, ptr %1, i32 -100
  %217 = ptrtoint ptr %dev.i.i153 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i.i153, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %218, align 8
  %shl.i.i.i154 = shl i32 %220, 8
  %or.i.i155 = or i32 %shl.i.i.i154, -2147483648
  %221 = load ptr, ptr %usb_buf.i.i152, align 4
  %call3.i.i156 = tail call i32 @usb_control_msg(ptr noundef %218, i32 noundef %or.i.i155, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %221, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i156)
  %cmp4.i.i157 = icmp slt i32 %call3.i.i156, 0
  br i1 %cmp4.i.i157, label %do.end.i.i160, label %if.end.i.i158.reg_w.exit.i172_crit_edge

if.end.i.i158.reg_w.exit.i172_crit_edge:          ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i172

do.end.i.i160:                                    ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i.i156) #9
  %222 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call3.i.i156, ptr %usb_err, align 8
  br label %reg_w.exit.i172

reg_w.exit.i172:                                  ; preds = %do.end.i.i160, %if.end.i.i158.reg_w.exit.i172_crit_edge, %sw.bb12.reg_w.exit.i172_crit_edge
  %blue_balance.i = getelementptr i8, ptr %1, i32 1044
  %223 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %blue_balance.i, align 4
  %val.i161 = getelementptr inbounds %struct.v4l2_ctrl, ptr %224, i32 0, i32 22
  %225 = ptrtoint ptr %val.i161 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %val.i161, align 4
  %mul.i.i162 = mul i32 %226, 1000
  %div.i.i163 = udiv i32 %mul.i.i162, 200
  %mul1.i.i164 = shl nuw nsw i32 %div.i.i163, 6
  %mul2.i.i165 = mul i32 %mul1.i.i164, %div.i.i163
  %div3.i.i166 = udiv i32 %mul2.i.i165, 1000000
  %mul4.i.i167 = shl nuw nsw i32 %div.i.i163, 5
  %div5.i.i168 = udiv i32 %mul4.i.i167, 1000
  %add.i.i169 = add nuw nsw i32 %div3.i.i166, %div5.i.i168
  %227 = trunc i32 %add.i.i169 to i8
  %conv.i.i170 = add i8 %227, 32
  %228 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp.i5.i171 = icmp slt i32 %229, 0
  br i1 %cmp.i5.i171, label %reg_w.exit.i172.sw.epilog_crit_edge, label %if.end.i12.i179

reg_w.exit.i172.sw.epilog_crit_edge:              ; preds = %reg_w.exit.i172
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i12.i179:                                  ; preds = %reg_w.exit.i172
  %usb_buf.i6.i173 = getelementptr i8, ptr %1, i32 204
  %230 = ptrtoint ptr %usb_buf.i6.i173 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %usb_buf.i6.i173, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv.i.i170, ptr %231, align 1
  %dev.i7.i174 = getelementptr i8, ptr %1, i32 -100
  %233 = ptrtoint ptr %dev.i7.i174 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i7.i174, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %234, align 8
  %shl.i.i8.i175 = shl i32 %236, 8
  %or.i9.i176 = or i32 %shl.i.i8.i175, -2147483648
  %237 = load ptr, ptr %usb_buf.i6.i173, align 4
  %call3.i10.i177 = tail call i32 @usb_control_msg(ptr noundef %234, i32 noundef %or.i9.i176, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %237, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i10.i177)
  %cmp4.i11.i178 = icmp slt i32 %call3.i10.i177, 0
  br i1 %cmp4.i11.i178, label %do.end.i14.i182, label %reg_w.exit15.i185

do.end.i14.i182:                                  ; preds = %if.end.i12.i179
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i180 = zext i8 %conv.i.i170 to i32
  %call9.i13.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef %conv8.i.i180, i32 noundef %call3.i10.i177) #9
  br label %sw.epilog.sink.split

reg_w.exit15.i185:                                ; preds = %if.end.i12.i179
  %238 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %238)
  %.pr.i183 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i183)
  %cmp.i17.i184 = icmp slt i32 %.pr.i183, 0
  br i1 %cmp.i17.i184, label %reg_w.exit15.i185.sw.epilog_crit_edge, label %if.end.i24.i190

reg_w.exit15.i185.sw.epilog_crit_edge:            ; preds = %reg_w.exit15.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i24.i190:                                  ; preds = %reg_w.exit15.i185
  %239 = ptrtoint ptr %usb_buf.i6.i173 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %usb_buf.i6.i173, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 1, ptr %240, align 1
  %242 = ptrtoint ptr %dev.i7.i174 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev.i7.i174, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 8
  %shl.i.i20.i186 = shl i32 %245, 8
  %or.i21.i187 = or i32 %shl.i.i20.i186, -2147483648
  %246 = load ptr, ptr %usb_buf.i6.i173, align 4
  %call3.i22.i188 = tail call i32 @usb_control_msg(ptr noundef %243, i32 noundef %or.i21.i187, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %246, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i22.i188)
  %cmp4.i23.i189 = icmp slt i32 %call3.i22.i188, 0
  br i1 %cmp4.i23.i189, label %do.end.i26.i192, label %if.end.i24.i190.sw.epilog_crit_edge

if.end.i24.i190.sw.epilog_crit_edge:              ; preds = %if.end.i24.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i26.i192:                                  ; preds = %if.end.i24.i190
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i25.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i22.i188) #9
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end7
  %exposure14 = getelementptr i8, ptr %1, i32 188
  %247 = ptrtoint ptr %exposure14 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %exposure14, align 4
  %is_new15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %is_new15 to i32
  call void @__asan_load4_noabort(i32 %249)
  %bf.load16 = load i32, ptr %is_new15, align 4
  %250 = and i32 %bf.load16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool19.not = icmp eq i32 %250, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %sw.bb13.if.then28_crit_edge

sw.bb13.if.then28_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

lor.lhs.false:                                    ; preds = %sw.bb13
  %is_new20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %251 = ptrtoint ptr %is_new20 to i32
  call void @__asan_load4_noabort(i32 %251)
  %bf.load21 = load i32, ptr %is_new20, align 4
  %252 = and i32 %bf.load21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool24.not = icmp eq i32 %252, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end29_crit_edge, label %land.lhs.true25

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %253 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %val26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool27.not = icmp eq i32 %254, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end29_crit_edge, label %land.lhs.true25.if.then28_crit_edge

land.lhs.true25.if.then28_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true25.if.then28_crit_edge, %sw.bb13.if.then28_crit_edge
  %255 = ptrtoint ptr %exposure14 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %exposure14, align 4
  %val.i195 = getelementptr inbounds %struct.v4l2_ctrl, ptr %256, i32 0, i32 22
  %257 = ptrtoint ptr %val.i195 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %val.i195, align 4
  %mul.i196 = mul i32 %258, 90
  %add.i197 = add i32 %mul.i196, 1999
  %div.i198 = sdiv i32 %add.i197, 2000
  %conv2.i199 = and i32 %div.i198, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv2.i199)
  %cmp.i = icmp ult i32 %conv2.i199, 6
  %conv.i200 = trunc i32 %div.i198 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %conv2.i199)
  %cmp5.i = icmp ugt i32 %conv2.i199, 63
  %spec.store.select.i = select i1 %cmp5.i, i8 63, i8 %conv.i200
  %clockdiv.0.i = select i1 %cmp.i, i8 6, i8 %spec.store.select.i
  %conv9.i = zext i8 %clockdiv.0.i to i32
  %259 = add i8 %clockdiv.0.i, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %259)
  %260 = icmp ult i8 %259, -7
  %add17.i = add nuw nsw i32 %conv9.i, 2
  %.lhs.trunc.i = trunc i32 %add17.i to i16
  %261 = urem i16 %.lhs.trunc.i, 3
  %.zext.i = zext i16 %261 to i32
  %mul19.i = sub nuw nsw i32 %add17.i, %.zext.i
  %conv20.i = trunc i32 %mul19.i to i8
  %clockdiv.1.i = select i1 %260, i8 %conv20.i, i8 %clockdiv.0.i
  %mul25.i = mul i32 %258, 20160
  %conv26.i = zext i8 %clockdiv.1.i to i32
  %mul27.i = mul nuw nsw i32 %conv26.i, 1000
  %div28.i = sdiv i32 %mul25.i, %mul27.i
  %conv31.i = sub i32 448, %div28.i
  %262 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp.i.i202 = icmp slt i32 %263, 0
  br i1 %cmp.i.i202, label %if.then28.if.end29_crit_edge, label %if.end.i.i209

if.then28.if.end29_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i.i209:                                    ; preds = %if.then28
  %usb_buf.i.i203 = getelementptr i8, ptr %1, i32 204
  %264 = ptrtoint ptr %usb_buf.i.i203 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %usb_buf.i.i203, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 3, ptr %265, align 1
  %dev.i.i204 = getelementptr i8, ptr %1, i32 -100
  %267 = ptrtoint ptr %dev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev.i.i204, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %268, align 8
  %shl.i.i.i205 = shl i32 %270, 8
  %or.i.i206 = or i32 %shl.i.i.i205, -2147483648
  %271 = load ptr, ptr %usb_buf.i.i203, align 4
  %call3.i.i207 = tail call i32 @usb_control_msg(ptr noundef %268, i32 noundef %or.i.i206, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %271, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i207)
  %cmp4.i.i208 = icmp slt i32 %call3.i.i207, 0
  br i1 %cmp4.i.i208, label %do.end.i.i211, label %reg_w.exit.i214

do.end.i.i211:                                    ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 3, i32 noundef %call3.i.i207) #9
  br label %reg_w.exit99.sink.split.i

reg_w.exit.i214:                                  ; preds = %if.end.i.i209
  %272 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %272)
  %.pr.i212 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i212)
  %cmp.i51.i213 = icmp slt i32 %.pr.i212, 0
  br i1 %cmp.i51.i213, label %reg_w.exit.i214.if.end29_crit_edge, label %if.end.i58.i219

reg_w.exit.i214.if.end29_crit_edge:               ; preds = %reg_w.exit.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i58.i219:                                  ; preds = %reg_w.exit.i214
  %273 = ptrtoint ptr %usb_buf.i.i203 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %usb_buf.i.i203, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %clockdiv.1.i, ptr %274, align 1
  %276 = ptrtoint ptr %dev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev.i.i204, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %277, align 8
  %shl.i.i54.i215 = shl i32 %279, 8
  %or.i55.i216 = or i32 %shl.i.i54.i215, -2147483648
  %280 = load ptr, ptr %usb_buf.i.i203, align 4
  %call3.i56.i217 = tail call i32 @usb_control_msg(ptr noundef %277, i32 noundef %or.i55.i216, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %280, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i56.i217)
  %cmp4.i57.i218 = icmp slt i32 %call3.i56.i217, 0
  br i1 %cmp4.i57.i218, label %do.end.i60.i221, label %reg_w.exit61.i223

do.end.i60.i221:                                  ; preds = %if.end.i58.i219
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i59.i220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %conv26.i, i32 noundef %call3.i56.i217) #9
  br label %reg_w.exit99.sink.split.i

reg_w.exit61.i223:                                ; preds = %if.end.i58.i219
  %281 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %281)
  %.pr101.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr101.pr.i)
  %cmp.i63.i222 = icmp slt i32 %.pr101.pr.i, 0
  br i1 %cmp.i63.i222, label %reg_w.exit61.i223.if.end29_crit_edge, label %if.end.i70.i

reg_w.exit61.i223.if.end29_crit_edge:             ; preds = %reg_w.exit61.i223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i70.i:                                     ; preds = %reg_w.exit61.i223
  %conv33.i = trunc i32 %conv31.i to i8
  %282 = ptrtoint ptr %usb_buf.i.i203 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %usb_buf.i.i203, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %conv33.i, ptr %283, align 1
  %285 = ptrtoint ptr %dev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev.i.i204, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %286, align 8
  %shl.i.i66.i224 = shl i32 %288, 8
  %or.i67.i225 = or i32 %shl.i.i66.i224, -2147483648
  %289 = load ptr, ptr %usb_buf.i.i203, align 4
  %call3.i68.i = tail call i32 @usb_control_msg(ptr noundef %286, i32 noundef %or.i67.i225, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 14, ptr noundef %289, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i68.i)
  %cmp4.i69.i = icmp slt i32 %call3.i68.i, 0
  br i1 %cmp4.i69.i, label %do.end.i73.i, label %reg_w.exit74.i

do.end.i73.i:                                     ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i71.i = and i32 %conv31.i, 255
  %call9.i72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef %conv8.i71.i, i32 noundef %call3.i68.i) #9
  br label %reg_w.exit99.sink.split.i

reg_w.exit74.i:                                   ; preds = %if.end.i70.i
  %290 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %290)
  %.pr104.pr.i = load i32, ptr %usb_err, align 8
  %conv32.i = lshr i32 %conv31.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr104.pr.i)
  %cmp.i76.i = icmp slt i32 %.pr104.pr.i, 0
  br i1 %cmp.i76.i, label %reg_w.exit74.i.if.end29_crit_edge, label %if.end.i83.i

reg_w.exit74.i.if.end29_crit_edge:                ; preds = %reg_w.exit74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i83.i:                                     ; preds = %reg_w.exit74.i
  %conv35.i = trunc i32 %conv32.i to i8
  %291 = ptrtoint ptr %usb_buf.i.i203 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %usb_buf.i.i203, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv35.i, ptr %292, align 1
  %294 = ptrtoint ptr %dev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev.i.i204, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %295, align 8
  %shl.i.i79.i = shl i32 %297, 8
  %or.i80.i = or i32 %shl.i.i79.i, -2147483648
  %298 = load ptr, ptr %usb_buf.i.i203, align 4
  %call3.i81.i = tail call i32 @usb_control_msg(ptr noundef %295, i32 noundef %or.i80.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef %298, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i81.i)
  %cmp4.i82.i = icmp slt i32 %call3.i81.i, 0
  br i1 %cmp4.i82.i, label %do.end.i86.i, label %reg_w.exit87.i

do.end.i86.i:                                     ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i84.i = and i32 %conv32.i, 255
  %call9.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef %conv8.i84.i, i32 noundef %call3.i81.i) #9
  br label %reg_w.exit99.sink.split.i

reg_w.exit87.i:                                   ; preds = %if.end.i83.i
  %299 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %299)
  %.pr108.pr.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr108.pr.pr.i)
  %cmp.i89.i = icmp slt i32 %.pr108.pr.pr.i, 0
  br i1 %cmp.i89.i, label %reg_w.exit87.i.if.end29_crit_edge, label %if.end.i96.i

reg_w.exit87.i.if.end29_crit_edge:                ; preds = %reg_w.exit87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i96.i:                                     ; preds = %reg_w.exit87.i
  %300 = ptrtoint ptr %usb_buf.i.i203 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %usb_buf.i.i203, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 1, ptr %301, align 1
  %303 = ptrtoint ptr %dev.i.i204 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev.i.i204, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %304, align 8
  %shl.i.i92.i = shl i32 %306, 8
  %or.i93.i = or i32 %shl.i.i92.i, -2147483648
  %307 = load ptr, ptr %usb_buf.i.i203, align 4
  %call3.i94.i = tail call i32 @usb_control_msg(ptr noundef %304, i32 noundef %or.i93.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %307, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i94.i)
  %cmp4.i95.i = icmp slt i32 %call3.i94.i, 0
  br i1 %cmp4.i95.i, label %do.end.i98.i, label %if.end.i96.i.if.end29_crit_edge

if.end.i96.i.if.end29_crit_edge:                  ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end.i98.i:                                     ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i94.i) #9
  br label %reg_w.exit99.sink.split.i

reg_w.exit99.sink.split.i:                        ; preds = %do.end.i98.i, %do.end.i86.i, %do.end.i73.i, %do.end.i60.i221, %do.end.i.i211
  %call3.i.sink.i226 = phi i32 [ %call3.i.i207, %do.end.i.i211 ], [ %call3.i68.i, %do.end.i73.i ], [ %call3.i56.i217, %do.end.i60.i221 ], [ %call3.i81.i, %do.end.i86.i ], [ %call3.i94.i, %do.end.i98.i ]
  %308 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %call3.i.sink.i226, ptr %usb_err, align 8
  br label %if.end29

if.end29:                                         ; preds = %reg_w.exit99.sink.split.i, %if.end.i96.i.if.end29_crit_edge, %reg_w.exit87.i.if.end29_crit_edge, %reg_w.exit74.i.if.end29_crit_edge, %reg_w.exit61.i223.if.end29_crit_edge, %reg_w.exit.i214.if.end29_crit_edge, %if.then28.if.end29_crit_edge, %land.lhs.true25.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %gain30 = getelementptr i8, ptr %1, i32 192
  %309 = ptrtoint ptr %gain30 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %gain30, align 8
  %is_new31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %310, i32 0, i32 5
  %311 = ptrtoint ptr %is_new31 to i32
  call void @__asan_load4_noabort(i32 %311)
  %bf.load32 = load i32, ptr %is_new31, align 4
  %312 = and i32 %bf.load32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool35.not = icmp eq i32 %312, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end29.if.then45_crit_edge

if.end29.if.then45_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false36:                                  ; preds = %if.end29
  %is_new37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %313 = ptrtoint ptr %is_new37 to i32
  call void @__asan_load4_noabort(i32 %313)
  %bf.load38 = load i32, ptr %is_new37, align 4
  %314 = and i32 %bf.load38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool41.not = icmp eq i32 %314, 0
  br i1 %tobool41.not, label %lor.lhs.false36.sw.epilog_crit_edge, label %land.lhs.true42

lor.lhs.false36.sw.epilog_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true42:                                  ; preds = %lor.lhs.false36
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %315 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool44.not = icmp eq i32 %316, 0
  br i1 %tobool44.not, label %land.lhs.true42.sw.epilog_crit_edge, label %land.lhs.true42.if.then45_crit_edge

land.lhs.true42.if.then45_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

land.lhs.true42.sw.epilog_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then45:                                        ; preds = %land.lhs.true42.if.then45_crit_edge, %if.end29.if.then45_crit_edge
  %317 = ptrtoint ptr %gain30 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %gain30, align 8
  %val.i227 = getelementptr inbounds %struct.v4l2_ctrl, ptr %318, i32 0, i32 22
  %319 = ptrtoint ptr %val.i227 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %val.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %320)
  %cmp.i228 = icmp slt i32 %320, 32
  %conv.i229 = trunc i32 %320 to i8
  %conv5.i230 = add i8 %conv.i229, -31
  %reg10.0.i = select i1 %cmp.i228, i8 %conv.i229, i8 31
  %reg12.0.i = select i1 %cmp.i228, i8 0, i8 %conv5.i230
  %321 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %cmp.i.i232 = icmp slt i32 %322, 0
  br i1 %cmp.i.i232, label %if.then45.sw.epilog_crit_edge, label %if.end.i.i239

if.then45.sw.epilog_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i239:                                    ; preds = %if.then45
  %usb_buf.i.i233 = getelementptr i8, ptr %1, i32 204
  %323 = ptrtoint ptr %usb_buf.i.i233 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %usb_buf.i.i233, align 4
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 3, ptr %324, align 1
  %dev.i.i234 = getelementptr i8, ptr %1, i32 -100
  %326 = ptrtoint ptr %dev.i.i234 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dev.i.i234, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 8
  %shl.i.i.i235 = shl i32 %329, 8
  %or.i.i236 = or i32 %shl.i.i.i235, -2147483648
  %330 = load ptr, ptr %usb_buf.i.i233, align 4
  %call3.i.i237 = tail call i32 @usb_control_msg(ptr noundef %327, i32 noundef %or.i.i236, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %330, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i237)
  %cmp4.i.i238 = icmp slt i32 %call3.i.i237, 0
  br i1 %cmp4.i.i238, label %do.end.i.i241, label %reg_w.exit.i243

do.end.i.i241:                                    ; preds = %if.end.i.i239
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 3, i32 noundef %call3.i.i237) #9
  br label %sw.epilog.sink.split

reg_w.exit.i243:                                  ; preds = %if.end.i.i239
  %331 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %331)
  %.pr.i242 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i242)
  %cmp.i13.i = icmp slt i32 %.pr.i242, 0
  br i1 %cmp.i13.i, label %reg_w.exit.i243.sw.epilog_crit_edge, label %if.end.i20.i

reg_w.exit.i243.sw.epilog_crit_edge:              ; preds = %reg_w.exit.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i20.i:                                     ; preds = %reg_w.exit.i243
  %332 = ptrtoint ptr %usb_buf.i.i233 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %usb_buf.i.i233, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %reg10.0.i, ptr %333, align 1
  %335 = ptrtoint ptr %dev.i.i234 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev.i.i234, align 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %336, align 8
  %shl.i.i16.i = shl i32 %338, 8
  %or.i17.i = or i32 %shl.i.i16.i, -2147483648
  %339 = load ptr, ptr %usb_buf.i.i233, align 4
  %call3.i18.i = tail call i32 @usb_control_msg(ptr noundef %336, i32 noundef %or.i17.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %339, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i18.i)
  %cmp4.i19.i = icmp slt i32 %call3.i18.i, 0
  br i1 %cmp4.i19.i, label %do.end.i22.i, label %reg_w.exit23.i

do.end.i22.i:                                     ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i244 = zext i8 %reg10.0.i to i32
  %call9.i21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 16, i32 noundef %conv8.i.i244, i32 noundef %call3.i18.i) #9
  br label %sw.epilog.sink.split

reg_w.exit23.i:                                   ; preds = %if.end.i20.i
  %340 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %340)
  %.pr50.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr50.pr.i)
  %cmp.i25.i = icmp slt i32 %.pr50.pr.i, 0
  br i1 %cmp.i25.i, label %reg_w.exit23.i.sw.epilog_crit_edge, label %if.end.i32.i

reg_w.exit23.i.sw.epilog_crit_edge:               ; preds = %reg_w.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i32.i:                                     ; preds = %reg_w.exit23.i
  %341 = ptrtoint ptr %usb_buf.i.i233 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %usb_buf.i.i233, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %reg12.0.i, ptr %342, align 1
  %344 = ptrtoint ptr %dev.i.i234 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %dev.i.i234, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 8
  %shl.i.i28.i = shl i32 %347, 8
  %or.i29.i = or i32 %shl.i.i28.i, -2147483648
  %348 = load ptr, ptr %usb_buf.i.i233, align 4
  %call3.i30.i = tail call i32 @usb_control_msg(ptr noundef %345, i32 noundef %or.i29.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %348, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i30.i)
  %cmp4.i31.i = icmp slt i32 %call3.i30.i, 0
  br i1 %cmp4.i31.i, label %do.end.i35.i, label %reg_w.exit36.i

do.end.i35.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i33.i = zext i8 %reg12.0.i to i32
  %call9.i34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef %conv8.i33.i, i32 noundef %call3.i30.i) #9
  br label %sw.epilog.sink.split

reg_w.exit36.i:                                   ; preds = %if.end.i32.i
  %349 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %349)
  %.pr52.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr52.pr.i)
  %cmp.i38.i = icmp slt i32 %.pr52.pr.i, 0
  br i1 %cmp.i38.i, label %reg_w.exit36.i.sw.epilog_crit_edge, label %if.end.i45.i

reg_w.exit36.i.sw.epilog_crit_edge:               ; preds = %reg_w.exit36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i45.i:                                     ; preds = %reg_w.exit36.i
  %350 = ptrtoint ptr %usb_buf.i.i233 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %usb_buf.i.i233, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 1, ptr %351, align 1
  %353 = ptrtoint ptr %dev.i.i234 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %dev.i.i234, align 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 8
  %shl.i.i41.i = shl i32 %356, 8
  %or.i42.i = or i32 %shl.i.i41.i, -2147483648
  %357 = load ptr, ptr %usb_buf.i.i233, align 4
  %call3.i43.i = tail call i32 @usb_control_msg(ptr noundef %354, i32 noundef %or.i42.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %357, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i43.i)
  %cmp4.i44.i = icmp slt i32 %call3.i43.i, 0
  br i1 %cmp4.i44.i, label %do.end.i47.i, label %if.end.i45.i.sw.epilog_crit_edge

if.end.i45.i.sw.epilog_crit_edge:                 ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i47.i:                                     ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i43.i) #9
  br label %sw.epilog.sink.split

sw.bb47:                                          ; preds = %if.end7
  %358 = getelementptr i8, ptr %1, i32 1048
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 8
  %val.i245 = getelementptr inbounds %struct.v4l2_ctrl, ptr %360, i32 0, i32 22
  %361 = ptrtoint ptr %val.i245 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %val.i245, align 4
  %flags.i = getelementptr i8, ptr %1, i32 1060
  %363 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %flags.i, align 4
  %365 = and i8 %364, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %tobool.not.i = icmp eq i8 %365, 0
  %conv.i246 = trunc i32 %362 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i246)
  %tobool3.not.i = icmp eq i8 %conv.i246, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  %hflip.0.i = select i1 %tobool.not.i, i32 %362, i32 %lnot.ext.i
  %vflip5.i = getelementptr i8, ptr %1, i32 1052
  %366 = ptrtoint ptr %vflip5.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %vflip5.i, align 4
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %367, i32 0, i32 22
  %368 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %val6.i, align 4
  %370 = and i8 %364, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool11.not.i = icmp eq i8 %370, 0
  %conv7.i247 = trunc i32 %369 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7.i247)
  %tobool13.not.i = icmp eq i8 %conv7.i247, 0
  %lnot.ext15.i = zext i1 %tobool13.not.i to i32
  %vflip.0.i = select i1 %tobool11.not.i, i32 %369, i32 %lnot.ext15.i
  %371 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %cmp.i.i249 = icmp slt i32 %372, 0
  br i1 %cmp.i.i249, label %sw.bb47.reg_w.exit.i260_crit_edge, label %if.end.i.i256

sw.bb47.reg_w.exit.i260_crit_edge:                ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i260

if.end.i.i256:                                    ; preds = %sw.bb47
  %usb_buf.i.i250 = getelementptr i8, ptr %1, i32 204
  %373 = ptrtoint ptr %usb_buf.i.i250 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %usb_buf.i.i250, align 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 3, ptr %374, align 1
  %dev.i.i251 = getelementptr i8, ptr %1, i32 -100
  %376 = ptrtoint ptr %dev.i.i251 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %dev.i.i251, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %377, align 8
  %shl.i.i.i252 = shl i32 %379, 8
  %or.i.i253 = or i32 %shl.i.i.i252, -2147483648
  %380 = load ptr, ptr %usb_buf.i.i250, align 4
  %call3.i.i254 = tail call i32 @usb_control_msg(ptr noundef %377, i32 noundef %or.i.i253, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %380, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i254)
  %cmp4.i.i255 = icmp slt i32 %call3.i.i254, 0
  br i1 %cmp4.i.i255, label %do.end.i.i258, label %if.end.i.i256.reg_w.exit.i260_crit_edge

if.end.i.i256.reg_w.exit.i260_crit_edge:          ; preds = %if.end.i.i256
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i260

do.end.i.i258:                                    ; preds = %if.end.i.i256
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 3, i32 noundef %call3.i.i254) #9
  %381 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %call3.i.i254, ptr %usb_err, align 8
  br label %reg_w.exit.i260

reg_w.exit.i260:                                  ; preds = %do.end.i.i258, %if.end.i.i256.reg_w.exit.i260_crit_edge, %sw.bb47.reg_w.exit.i260_crit_edge
  %conv18.i = and i32 %hflip.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18.i)
  %tobool19.not.i = icmp eq i32 %conv18.i, 0
  %cond.i = select i1 %tobool19.not.i, i8 0, i8 8
  %conv20.i259 = and i32 %vflip.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20.i259)
  %tobool21.not.i = icmp eq i32 %conv20.i259, 0
  %cond22.i = select i1 %tobool21.not.i, i8 0, i8 4
  %or.i = or i8 %cond22.i, %cond.i
  %382 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %cmp.i33.i = icmp slt i32 %383, 0
  br i1 %cmp.i33.i, label %reg_w.exit.i260.sw.epilog_crit_edge, label %if.end.i40.i

reg_w.exit.i260.sw.epilog_crit_edge:              ; preds = %reg_w.exit.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i40.i:                                     ; preds = %reg_w.exit.i260
  %usb_buf.i34.i = getelementptr i8, ptr %1, i32 204
  %384 = ptrtoint ptr %usb_buf.i34.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %usb_buf.i34.i, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %or.i, ptr %385, align 1
  %dev.i35.i = getelementptr i8, ptr %1, i32 -100
  %387 = ptrtoint ptr %dev.i35.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev.i35.i, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %388, align 8
  %shl.i.i36.i = shl i32 %390, 8
  %or.i37.i = or i32 %shl.i.i36.i, -2147483648
  %391 = load ptr, ptr %usb_buf.i34.i, align 4
  %call3.i38.i = tail call i32 @usb_control_msg(ptr noundef %388, i32 noundef %or.i37.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %391, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i38.i)
  %cmp4.i39.i = icmp slt i32 %call3.i38.i, 0
  br i1 %cmp4.i39.i, label %do.end.i42.i, label %reg_w.exit43.i

do.end.i42.i:                                     ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i261 = zext i8 %or.i to i32
  %call9.i41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 33, i32 noundef %conv8.i.i261, i32 noundef %call3.i38.i) #9
  br label %sw.epilog.sink.split

reg_w.exit43.i:                                   ; preds = %if.end.i40.i
  %392 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %392)
  %.pr.i262 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i262)
  %cmp.i45.i = icmp slt i32 %.pr.i262, 0
  br i1 %cmp.i45.i, label %reg_w.exit43.i.sw.epilog_crit_edge, label %if.end.i52.i

reg_w.exit43.i.sw.epilog_crit_edge:               ; preds = %reg_w.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i52.i:                                     ; preds = %reg_w.exit43.i
  %393 = ptrtoint ptr %usb_buf.i34.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %usb_buf.i34.i, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 1, ptr %394, align 1
  %396 = ptrtoint ptr %dev.i35.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %dev.i35.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %397, align 8
  %shl.i.i48.i = shl i32 %399, 8
  %or.i49.i = or i32 %shl.i.i48.i, -2147483648
  %400 = load ptr, ptr %usb_buf.i34.i, align 4
  %call3.i50.i = tail call i32 @usb_control_msg(ptr noundef %397, i32 noundef %or.i49.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %400, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i50.i)
  %cmp4.i51.i = icmp slt i32 %call3.i50.i, 0
  br i1 %cmp4.i51.i, label %do.end.i54.i, label %if.end.i52.i.sw.epilog_crit_edge

if.end.i52.i.sw.epilog_crit_edge:                 ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i54.i:                                     ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i50.i) #9
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %if.end7
  %401 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %cmp.i.i264 = icmp slt i32 %402, 0
  br i1 %cmp.i.i264, label %sw.bb48.sw.epilog_crit_edge, label %if.end.i.i271

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i271:                                    ; preds = %sw.bb48
  %usb_buf.i.i265 = getelementptr i8, ptr %1, i32 204
  %403 = ptrtoint ptr %usb_buf.i.i265 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %usb_buf.i.i265, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %404, align 1
  %dev.i.i266 = getelementptr i8, ptr %1, i32 -100
  %406 = ptrtoint ptr %dev.i.i266 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev.i.i266, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %407, align 8
  %shl.i.i.i267 = shl i32 %409, 8
  %or.i.i268 = or i32 %shl.i.i.i267, -2147483648
  %410 = load ptr, ptr %usb_buf.i.i265, align 4
  %call3.i.i269 = tail call i32 @usb_control_msg(ptr noundef %407, i32 noundef %or.i.i268, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %410, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i269)
  %cmp4.i.i270 = icmp slt i32 %call3.i.i269, 0
  br i1 %cmp4.i.i270, label %do.end.i.i273, label %reg_w.exit.i277

do.end.i.i273:                                    ; preds = %if.end.i.i271
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i.i272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 0, i32 noundef %call3.i.i269) #9
  br label %sw.epilog.sink.split

reg_w.exit.i277:                                  ; preds = %if.end.i.i271
  %411 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %411)
  %.pr.i274 = load i32, ptr %usb_err, align 8
  %sharpness.i = getelementptr i8, ptr %1, i32 1056
  %412 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %sharpness.i, align 8
  %val.i275 = getelementptr inbounds %struct.v4l2_ctrl, ptr %413, i32 0, i32 22
  %414 = ptrtoint ptr %val.i275 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %val.i275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i274)
  %cmp.i5.i276 = icmp slt i32 %.pr.i274, 0
  br i1 %cmp.i5.i276, label %reg_w.exit.i277.reg_w.exit15.i289_crit_edge, label %if.end.i12.i283

reg_w.exit.i277.reg_w.exit15.i289_crit_edge:      ; preds = %reg_w.exit.i277
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit15.i289

if.end.i12.i283:                                  ; preds = %reg_w.exit.i277
  %conv.i278 = trunc i32 %415 to i8
  %416 = ptrtoint ptr %usb_buf.i.i265 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %usb_buf.i.i265, align 4
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %conv.i278, ptr %417, align 1
  %419 = ptrtoint ptr %dev.i.i266 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %dev.i.i266, align 4
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %420, align 8
  %shl.i.i8.i279 = shl i32 %422, 8
  %or.i9.i280 = or i32 %shl.i.i8.i279, -2147483648
  %423 = load ptr, ptr %usb_buf.i.i265, align 4
  %call3.i10.i281 = tail call i32 @usb_control_msg(ptr noundef %420, i32 noundef %or.i9.i280, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 182, ptr noundef %423, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i10.i281)
  %cmp4.i11.i282 = icmp slt i32 %call3.i10.i281, 0
  br i1 %cmp4.i11.i282, label %reg_w.exit15.thread.i286, label %if.end.i12.i283.reg_w.exit15.i289_crit_edge

if.end.i12.i283.reg_w.exit15.i289_crit_edge:      ; preds = %if.end.i12.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit15.i289

reg_w.exit15.thread.i286:                         ; preds = %if.end.i12.i283
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i284 = and i32 %415, 255
  %call9.i13.i285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 182, i32 noundef %conv8.i.i284, i32 noundef %call3.i10.i281) #9
  br label %sw.epilog.sink.split

reg_w.exit15.i289:                                ; preds = %if.end.i12.i283.reg_w.exit15.i289_crit_edge, %reg_w.exit.i277.reg_w.exit15.i289_crit_edge
  %424 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %424)
  %.pr32.pr.i287 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr32.pr.i287)
  %cmp.i17.i288 = icmp slt i32 %.pr32.pr.i287, 0
  br i1 %cmp.i17.i288, label %reg_w.exit15.i289.sw.epilog_crit_edge, label %if.end.i24.i294

reg_w.exit15.i289.sw.epilog_crit_edge:            ; preds = %reg_w.exit15.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i24.i294:                                  ; preds = %reg_w.exit15.i289
  %425 = ptrtoint ptr %usb_buf.i.i265 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %usb_buf.i.i265, align 4
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 1, ptr %426, align 1
  %428 = ptrtoint ptr %dev.i.i266 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev.i.i266, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 8
  %shl.i.i20.i290 = shl i32 %431, 8
  %or.i21.i291 = or i32 %shl.i.i20.i290, -2147483648
  %432 = load ptr, ptr %usb_buf.i.i265, align 4
  %call3.i22.i292 = tail call i32 @usb_control_msg(ptr noundef %429, i32 noundef %or.i21.i291, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 220, ptr noundef %432, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i22.i292)
  %cmp4.i23.i293 = icmp slt i32 %call3.i22.i292, 0
  br i1 %cmp4.i23.i293, label %do.end.i26.i296, label %if.end.i24.i294.sw.epilog_crit_edge

if.end.i24.i294.sw.epilog_crit_edge:              ; preds = %if.end.i24.i294
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i26.i296:                                  ; preds = %if.end.i24.i294
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i25.i295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 1, i32 noundef %call3.i22.i292) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end.i26.i296, %reg_w.exit15.thread.i286, %do.end.i.i273, %do.end.i54.i, %do.end.i42.i, %do.end.i47.i, %do.end.i35.i, %do.end.i22.i, %do.end.i.i241, %do.end.i26.i192, %do.end.i14.i182, %do.end.i26.i148, %do.end.i14.i, %do.end.i26.i, %reg_w.exit15.thread.i, %do.end.i.i110, %do.end.i87.i, %do.end.i61.i
  %call3.i.sink.i297.sink = phi i32 [ %call3.i83.i, %do.end.i87.i ], [ %call3.i57.i, %do.end.i61.i ], [ %call3.i.i106, %do.end.i.i110 ], [ %call3.i10.i, %reg_w.exit15.thread.i ], [ %call3.i22.i, %do.end.i26.i ], [ %call3.i10.i134, %do.end.i14.i ], [ %call3.i22.i144, %do.end.i26.i148 ], [ %call3.i10.i177, %do.end.i14.i182 ], [ %call3.i22.i188, %do.end.i26.i192 ], [ %call3.i18.i, %do.end.i22.i ], [ %call3.i.i237, %do.end.i.i241 ], [ %call3.i30.i, %do.end.i35.i ], [ %call3.i43.i, %do.end.i47.i ], [ %call3.i38.i, %do.end.i42.i ], [ %call3.i50.i, %do.end.i54.i ], [ %call3.i.i269, %do.end.i.i273 ], [ %call3.i10.i281, %reg_w.exit15.thread.i286 ], [ %call3.i22.i292, %do.end.i26.i296 ]
  %433 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %call3.i.sink.i297.sink, ptr %usb_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i24.i294.sw.epilog_crit_edge, %reg_w.exit15.i289.sw.epilog_crit_edge, %sw.bb48.sw.epilog_crit_edge, %if.end.i52.i.sw.epilog_crit_edge, %reg_w.exit43.i.sw.epilog_crit_edge, %reg_w.exit.i260.sw.epilog_crit_edge, %if.end.i45.i.sw.epilog_crit_edge, %reg_w.exit36.i.sw.epilog_crit_edge, %reg_w.exit23.i.sw.epilog_crit_edge, %reg_w.exit.i243.sw.epilog_crit_edge, %if.then45.sw.epilog_crit_edge, %land.lhs.true42.sw.epilog_crit_edge, %lor.lhs.false36.sw.epilog_crit_edge, %if.end.i24.i190.sw.epilog_crit_edge, %reg_w.exit15.i185.sw.epilog_crit_edge, %reg_w.exit.i172.sw.epilog_crit_edge, %if.end.i24.i146.sw.epilog_crit_edge, %reg_w.exit15.i141.sw.epilog_crit_edge, %reg_w.exit.i131.sw.epilog_crit_edge, %if.end.i24.i.sw.epilog_crit_edge, %reg_w.exit15.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end.i85.i.sw.epilog_crit_edge, %for.end.i99.sw.epilog_crit_edge, %if.end.i59.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge
  %434 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %435, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 95, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 96, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 97, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_pac7302__307_952_sd_driver_init6, !8, !"__initcall__kmod_gspca_pac7302__307_952_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 952, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sd_driver, !12, !"sd_driver", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 940, i32 26}
!13 = !{ptr @sd_desc, !14, !"sd_desc", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 892, i32 29}
!15 = !{ptr @vga_mode, !16, !"vga_mode", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 125, i32 37}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 272, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @reg_w._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @reg_w._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"init_7302", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 136, i32 17}
!25 = !{ptr @sd_init_controls._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 637, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 678, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sd_init_controls._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sd_init_controls._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sd_ctrl_ops, !34, !"sd_ctrl_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 626, i32 35}
!35 = !{ptr @setbrightcont.max, !36, !"max", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 373, i32 18}
!37 = !{ptr @setbrightcont.delta, !38, !"delta", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 376, i32 18}
!39 = !{ptr @setcolors.a, !40, !"a", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 399, i32 19}
!41 = !{ptr @setcolors.b, !42, !"b", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 401, i32 19}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 333, i32 5}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @reg_w_var._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @reg_w_var._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 307, i32 4}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @reg_w_page._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @reg_w_page._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 249, i32 3}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @reg_w_buf._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @reg_w_buf._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @start_7302, !59, !"start_7302", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 143, i32 17}
!60 = !{ptr @page3_7302, !61, !"page3_7302", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 209, i32 17}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/pac_common.h", i32 100, i32 5}
!64 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pac_find_sof._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @pac_find_sof._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @jpeg_header, !69, !"jpeg_header", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 748, i32 17}
!70 = !{ptr @device_table, !71, !"device_table", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/pac7302.c", i32 911, i32 35}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
