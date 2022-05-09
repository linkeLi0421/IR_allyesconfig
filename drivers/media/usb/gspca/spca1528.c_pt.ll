; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca1528.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca1528.c"
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.102 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.sd = type { %struct.gspca_dev, i8, [589 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca1528.author=Jean-Francois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [54 x i8] c"gspca_spca1528.description=SPCA1528 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [59 x i8] c"gspca_spca1528.file=drivers/media/usb/gspca/gspca_spca1528\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [27 x i8] c"gspca_spca1528.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca1528__307_438_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gspca_spca1528\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spca1528\00", [23 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1276, i16 5416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 38990, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/gspca/spca1528.c\00", [61 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: SET %02x %04x %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gspca_spca1528: reg_w err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.9 = internal global ptr @reg_w._entry.7, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: GET %02x 0000 %04x %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gspca_spca1528: reg_r err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.14 = internal global ptr @reg_r._entry.12, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spca1528:376:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gspca_spca1528: Could not initialize controls\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@reg_wb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: SET %02x %04x %04x %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_wb\00", [25 x i8] zeroinitializer }, align 32
@reg_wb._entry_ptr = internal global ptr @reg_wb._entry, section ".printk_index", align 4
@reg_wb._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.19, ptr @.str.4, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@reg_wb._entry_ptr.21 = internal global ptr @reg_wb._entry.20, section ".printk_index", align 4
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@wait_status_0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: wait_status_0 timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait_status_0\00", [18 x i8] zeroinitializer }, align 32
@wait_status_0._entry_ptr = internal global ptr @wait_status_0._entry, section ".printk_index", align 4
@wait_status_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: wait_status_1 timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wait_status_1\00", [18 x i8] zeroinitializer }, align 32
@wait_status_1._entry_ptr = internal global ptr @wait_status_1._entry, section ".printk_index", align 4
@sd_pkt_scan.ffd9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\D9", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963803]
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 426, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 438, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 427, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 408, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 396, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 28, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 216, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 92, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 99, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 69, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 72, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 376, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 367, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 389, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 115, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 124, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 19, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 142, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 160, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [5 x i8] c"ffd9\00", align 1
@___asan_gen_.138 = private constant [38 x i8] c"../drivers/media/usb/gspca/spca1528.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 307, i32 18 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca1528__307_438_sd_driver_init6, ptr @reg_r._entry, ptr @reg_r._entry.12, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.14, ptr @reg_w._entry, ptr @reg_w._entry.7, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.9, ptr @reg_wb._entry, ptr @reg_wb._entry.20, ptr @reg_wb._entry_ptr, ptr @reg_wb._entry_ptr.21, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @wait_status_0._entry, ptr @wait_status_0._entry_ptr, ptr @wait_status_1._entry, ptr @wait_status_1._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @sd_init_controls._key, ptr @.str.15, ptr @sd_ctrl_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @jpeg_head, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @sd_pkt_scan.ffd9], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_wb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_wb._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_status_0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_status_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan.ffd9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
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
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @gspca_dev_probe2(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3200, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %nmodes, align 4
  %npkt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %npkt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %npkt, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
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
  br i1 %cmp.i, label %entry.reg_w.exit66_crit_edge, label %do.body.i

entry.reg_w.exit66_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp2.i = icmp sgt i32 %4, 6
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 0, i32 noundef 1, i32 noundef 8295) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8295, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end9.i.reg_w.exit66.sink.split_crit_edge, label %reg_w.exit

do.end9.i.reg_w.exit66.sink.split_crit_edge:      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66.sink.split

reg_w.exit:                                       ; preds = %do.end9.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i21 = icmp slt i32 %.pr, 0
  br i1 %cmp.i21, label %reg_w.exit.reg_w.exit66_crit_edge, label %do.body.i23

reg_w.exit.reg_w.exit66_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66

do.body.i23:                                      ; preds = %reg_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp2.i22 = icmp sgt i32 %10, 6
  br i1 %cmp2.i22, label %do.end.i26, label %do.body.i23.do.end9.i31_crit_edge

do.body.i23.do.end9.i31_crit_edge:                ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i31

do.end.i26:                                       ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #7
  %name.i24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i24, i32 noundef 0, i32 noundef 208, i32 noundef 8299) #8
  br label %do.end9.i31

do.end9.i31:                                      ; preds = %do.end.i26, %do.body.i23.do.end9.i31_crit_edge
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %9, align 8
  %shl.i.i27 = shl i32 %12, 8
  %or.i28 = or i32 %shl.i.i27, -2147483648
  %call11.i29 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i28, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 208, i16 noundef zeroext 8299, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i29)
  %cmp12.i30 = icmp slt i32 %call11.i29, 0
  br i1 %cmp12.i30, label %do.end9.i31.reg_w.exit66.sink.split_crit_edge, label %reg_w.exit34

do.end9.i31.reg_w.exit66.sink.split_crit_edge:    ; preds = %do.end9.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66.sink.split

reg_w.exit34:                                     ; preds = %do.end9.i31
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr176.pr = load i32, ptr %usb_err.i, align 8
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr176.pr)
  %cmp.i37 = icmp slt i32 %.pr176.pr, 0
  br i1 %cmp.i37, label %reg_w.exit34.reg_w.exit66_crit_edge, label %do.body.i39

reg_w.exit34.reg_w.exit66_crit_edge:              ; preds = %reg_w.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66

do.body.i39:                                      ; preds = %reg_w.exit34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp2.i38 = icmp sgt i32 %16, 6
  br i1 %cmp2.i38, label %do.end.i42, label %do.body.i39.do.end9.i47_crit_edge

do.body.i39.do.end9.i47_crit_edge:                ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i47

do.end.i42:                                       ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #7
  %name.i40 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i40, i32 noundef 0, i32 noundef 0, i32 noundef 8300) #8
  br label %do.end9.i47

do.end9.i47:                                      ; preds = %do.end.i42, %do.body.i39.do.end9.i47_crit_edge
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %15, align 8
  %shl.i.i43 = shl i32 %18, 8
  %or.i44 = or i32 %shl.i.i43, -2147483648
  %call11.i45 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i44, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8300, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i45)
  %cmp12.i46 = icmp slt i32 %call11.i45, 0
  br i1 %cmp12.i46, label %do.end9.i47.reg_w.exit66.sink.split_crit_edge, label %reg_w.exit50

do.end9.i47.reg_w.exit66.sink.split_crit_edge:    ; preds = %do.end9.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66.sink.split

reg_w.exit50:                                     ; preds = %do.end9.i47
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr178.pr = load i32, ptr %usb_err.i, align 8
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr178.pr)
  %cmp.i53 = icmp slt i32 %.pr178.pr, 0
  br i1 %cmp.i53, label %reg_w.exit50.reg_w.exit66_crit_edge, label %do.body.i55

reg_w.exit50.reg_w.exit66_crit_edge:              ; preds = %reg_w.exit50
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66

do.body.i55:                                      ; preds = %reg_w.exit50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp2.i54 = icmp sgt i32 %22, 6
  br i1 %cmp2.i54, label %do.end.i58, label %do.body.i55.do.end9.i63_crit_edge

do.body.i55.do.end9.i63_crit_edge:                ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i63

do.end.i58:                                       ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #7
  %name.i56 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i56, i32 noundef 0, i32 noundef 1, i32 noundef 8297) #8
  br label %do.end9.i63

do.end9.i63:                                      ; preds = %do.end.i58, %do.body.i55.do.end9.i63_crit_edge
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %21, align 8
  %shl.i.i59 = shl i32 %24, 8
  %or.i60 = or i32 %shl.i.i59, -2147483648
  %call11.i61 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i60, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8297, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i61)
  %cmp12.i62 = icmp slt i32 %call11.i61, 0
  br i1 %cmp12.i62, label %do.end9.i63.reg_w.exit66.sink.split_crit_edge, label %do.end9.i63.reg_w.exit66_crit_edge

do.end9.i63.reg_w.exit66_crit_edge:               ; preds = %do.end9.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66

do.end9.i63.reg_w.exit66.sink.split_crit_edge:    ; preds = %do.end9.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit66.sink.split

reg_w.exit66.sink.split:                          ; preds = %do.end9.i63.reg_w.exit66.sink.split_crit_edge, %do.end9.i47.reg_w.exit66.sink.split_crit_edge, %do.end9.i31.reg_w.exit66.sink.split_crit_edge, %do.end9.i.reg_w.exit66.sink.split_crit_edge
  %call11.i29.sink219 = phi i32 [ %call11.i, %do.end9.i.reg_w.exit66.sink.split_crit_edge ], [ %call11.i29, %do.end9.i31.reg_w.exit66.sink.split_crit_edge ], [ %call11.i45, %do.end9.i47.reg_w.exit66.sink.split_crit_edge ], [ %call11.i61, %do.end9.i63.reg_w.exit66.sink.split_crit_edge ]
  %call19.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i29.sink219) #8
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call11.i29.sink219, ptr %usb_err.i, align 8
  br label %reg_w.exit66

reg_w.exit66:                                     ; preds = %reg_w.exit66.sink.split, %do.end9.i63.reg_w.exit66_crit_edge, %reg_w.exit50.reg_w.exit66_crit_edge, %reg_w.exit34.reg_w.exit66_crit_edge, %reg_w.exit.reg_w.exit66_crit_edge, %entry.reg_w.exit66_crit_edge
  tail call void @msleep(i32 noundef 8) #5
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 4
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i69 = icmp slt i32 %29, 0
  br i1 %cmp.i69, label %reg_w.exit66.reg_r.exit156_crit_edge, label %do.body.i71

reg_w.exit66.reg_r.exit156_crit_edge:             ; preds = %reg_w.exit66
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

do.body.i71:                                      ; preds = %reg_w.exit66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp2.i70 = icmp sgt i32 %30, 6
  br i1 %cmp2.i70, label %do.end.i74, label %do.body.i71.do.end9.i79_crit_edge

do.body.i71.do.end9.i79_crit_edge:                ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i79

do.end.i74:                                       ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #7
  %name.i72 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i72, i32 noundef 0, i32 noundef 192, i32 noundef 8299) #8
  br label %do.end9.i79

do.end9.i79:                                      ; preds = %do.end.i74, %do.body.i71.do.end9.i79_crit_edge
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 8
  %shl.i.i75 = shl i32 %32, 8
  %or.i76 = or i32 %shl.i.i75, -2147483648
  %call11.i77 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i76, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 192, i16 noundef zeroext 8299, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i77)
  %cmp12.i78 = icmp slt i32 %call11.i77, 0
  br i1 %cmp12.i78, label %do.end17.i81, label %reg_w.exit82

do.end17.i81:                                     ; preds = %do.end9.i79
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i77) #8
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call11.i77, ptr %usb_err.i, align 8
  br label %reg_r.exit156

reg_w.exit82:                                     ; preds = %do.end9.i79
  %34 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr180 = load i32, ptr %usb_err.i, align 8
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr180)
  %cmp.i85 = icmp slt i32 %.pr180, 0
  br i1 %cmp.i85, label %reg_w.exit82.reg_r.exit156_crit_edge, label %do.body.i87

reg_w.exit82.reg_r.exit156_crit_edge:             ; preds = %reg_w.exit82
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

do.body.i87:                                      ; preds = %reg_w.exit82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp2.i86 = icmp sgt i32 %37, 6
  br i1 %cmp2.i86, label %do.end.i90, label %do.body.i87.do.end9.i95_crit_edge

do.body.i87.do.end9.i95_crit_edge:                ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i95

do.end.i90:                                       ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #7
  %name.i88 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i88, i32 noundef 0, i32 noundef 0, i32 noundef 8300) #8
  br label %do.end9.i95

do.end9.i95:                                      ; preds = %do.end.i90, %do.body.i87.do.end9.i95_crit_edge
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %36, align 8
  %shl.i.i91 = shl i32 %39, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %call11.i93 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i92, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8300, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i93)
  %cmp12.i94 = icmp slt i32 %call11.i93, 0
  br i1 %cmp12.i94, label %do.end17.i97, label %reg_w.exit98

do.end17.i97:                                     ; preds = %do.end9.i95
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i93) #8
  %40 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call11.i93, ptr %usb_err.i, align 8
  br label %reg_r.exit156

reg_w.exit98:                                     ; preds = %do.end9.i95
  %41 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr182.pr = load i32, ptr %usb_err.i, align 8
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr182.pr)
  %cmp.i101 = icmp slt i32 %.pr182.pr, 0
  br i1 %cmp.i101, label %reg_w.exit98.reg_r.exit156_crit_edge, label %do.body.i103

reg_w.exit98.reg_r.exit156_crit_edge:             ; preds = %reg_w.exit98
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

do.body.i103:                                     ; preds = %reg_w.exit98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp2.i102 = icmp sgt i32 %44, 6
  br i1 %cmp2.i102, label %do.end.i106, label %do.body.i103.do.end9.i111_crit_edge

do.body.i103.do.end9.i111_crit_edge:              ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i111

do.end.i106:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #7
  %name.i104 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i104, i32 noundef 0, i32 noundef 1, i32 noundef 8297) #8
  br label %do.end9.i111

do.end9.i111:                                     ; preds = %do.end.i106, %do.body.i103.do.end9.i111_crit_edge
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %43, align 8
  %shl.i.i107 = shl i32 %46, 8
  %or.i108 = or i32 %shl.i.i107, -2147483648
  %call11.i109 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i108, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 8297, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i109)
  %cmp12.i110 = icmp slt i32 %call11.i109, 0
  br i1 %cmp12.i110, label %do.end17.i113, label %reg_w.exit114

do.end17.i113:                                    ; preds = %do.end9.i111
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i109) #8
  %47 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call11.i109, ptr %usb_err.i, align 8
  br label %reg_r.exit156

reg_w.exit114:                                    ; preds = %do.end9.i111
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr184.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr184.pr)
  %cmp.i116 = icmp slt i32 %.pr184.pr, 0
  br i1 %cmp.i116, label %reg_w.exit114.reg_r.exit156_crit_edge, label %if.end.i

reg_w.exit114.reg_r.exit156_crit_edge:            ; preds = %reg_w.exit114
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

if.end.i:                                         ; preds = %reg_w.exit114
  %49 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i118 = shl i32 %52, 8
  %or2.i = or i32 %shl.i.i118, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %53 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or2.i, i8 noundef zeroext 32, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %54, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %55 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %cmp4.i = icmp sgt i32 %55, 5
  br i1 %cmp4.i, label %do.end.i120, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end.i120:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i119 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %56 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv11.i = zext i8 %59 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i119, i32 noundef 32, i32 noundef 0, i32 noundef %conv11.i) #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i120, %if.end.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp16.i = icmp slt i32 %call3.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %do.end15.i.reg_r.exit_crit_edge

do.end15.i.reg_r.exit_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end21.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #8
  %60 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %61 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf.i, align 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end21.i, %do.end15.i.reg_r.exit_crit_edge
  %64 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr186.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr186.pr.pr)
  %cmp.i122 = icmp slt i32 %.pr186.pr.pr, 0
  br i1 %cmp.i122, label %reg_r.exit.reg_r.exit156_crit_edge, label %if.end.i129

reg_r.exit.reg_r.exit156_crit_edge:               ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

if.end.i129:                                      ; preds = %reg_r.exit
  %65 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i124 = shl i32 %68, 8
  %or2.i125 = or i32 %shl.i.i124, -2147483520
  %69 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i, align 4
  %call3.i127 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or2.i125, i8 noundef zeroext 32, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %70, i16 noundef zeroext 5, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %71 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %71)
  %cmp4.i128 = icmp sgt i32 %71, 5
  br i1 %cmp4.i128, label %do.end.i133, label %if.end.i129.do.end15.i135_crit_edge

if.end.i129.do.end15.i135_crit_edge:              ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i135

do.end.i133:                                      ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #7
  %name.i130 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %72 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv11.i131 = zext i8 %75 to i32
  %call12.i132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i130, i32 noundef 32, i32 noundef 0, i32 noundef %conv11.i131) #8
  br label %do.end15.i135

do.end15.i135:                                    ; preds = %do.end.i133, %if.end.i129.do.end15.i135_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i127)
  %cmp16.i134 = icmp slt i32 %call3.i127, 0
  br i1 %cmp16.i134, label %do.end21.i137, label %do.end15.i135.reg_r.exit138_crit_edge

do.end15.i135.reg_r.exit138_crit_edge:            ; preds = %do.end15.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit138

do.end21.i137:                                    ; preds = %do.end15.i135
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i127) #8
  %76 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call3.i127, ptr %usb_err.i, align 8
  %77 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb_buf.i, align 4
  %79 = call ptr @memset(ptr %78, i32 0, i32 64)
  br label %reg_r.exit138

reg_r.exit138:                                    ; preds = %do.end21.i137, %do.end15.i135.reg_r.exit138_crit_edge
  %80 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr188 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr188)
  %cmp.i140 = icmp slt i32 %.pr188, 0
  br i1 %cmp.i140, label %reg_r.exit138.reg_r.exit156_crit_edge, label %if.end.i147

reg_r.exit138.reg_r.exit156_crit_edge:            ; preds = %reg_r.exit138
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

if.end.i147:                                      ; preds = %reg_r.exit138
  %81 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i142 = shl i32 %84, 8
  %or2.i143 = or i32 %shl.i.i142, -2147483520
  %85 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %usb_buf.i, align 4
  %call3.i145 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or2.i143, i8 noundef zeroext 35, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %86, i16 noundef zeroext 64, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %87 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %87)
  %cmp4.i146 = icmp sgt i32 %87, 5
  br i1 %cmp4.i146, label %do.end.i151, label %if.end.i147.do.end15.i153_crit_edge

if.end.i147.do.end15.i153_crit_edge:              ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i153

do.end.i151:                                      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #7
  %name.i148 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %88 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_buf.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %89, align 1
  %conv11.i149 = zext i8 %91 to i32
  %call12.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i148, i32 noundef 35, i32 noundef 0, i32 noundef %conv11.i149) #8
  br label %do.end15.i153

do.end15.i153:                                    ; preds = %do.end.i151, %if.end.i147.do.end15.i153_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i145)
  %cmp16.i152 = icmp slt i32 %call3.i145, 0
  br i1 %cmp16.i152, label %do.end21.i155, label %do.end15.i153.reg_r.exit156_crit_edge

do.end15.i153.reg_r.exit156_crit_edge:            ; preds = %do.end15.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit156

do.end21.i155:                                    ; preds = %do.end15.i153
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i145) #8
  %92 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call3.i145, ptr %usb_err.i, align 8
  %93 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %usb_buf.i, align 4
  %95 = call ptr @memset(ptr %94, i32 0, i32 64)
  br label %reg_r.exit156

reg_r.exit156:                                    ; preds = %do.end21.i155, %do.end15.i153.reg_r.exit156_crit_edge, %reg_r.exit138.reg_r.exit156_crit_edge, %reg_r.exit.reg_r.exit156_crit_edge, %reg_w.exit114.reg_r.exit156_crit_edge, %do.end17.i113, %reg_w.exit98.reg_r.exit156_crit_edge, %do.end17.i97, %reg_w.exit82.reg_r.exit156_crit_edge, %do.end17.i81, %reg_w.exit66.reg_r.exit156_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %96 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp = icmp sgt i32 %96, 0
  br i1 %cmp, label %do.end, label %reg_r.exit156.do.end4_crit_edge

reg_r.exit156.do.end4_crit_edge:                  ; preds = %reg_r.exit156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %reg_r.exit156
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %97 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %usb_buf, align 4
  %arrayidx = getelementptr i8, ptr %98, i32 28
  %arrayidx3 = getelementptr i8, ptr %98, i32 48
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %arrayidx, ptr noundef %arrayidx3) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %reg_r.exit156.do.end4_crit_edge
  %99 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i158 = icmp slt i32 %100, 0
  br i1 %cmp.i158, label %do.end4.reg_r.exit174_crit_edge, label %if.end.i165

do.end4.reg_r.exit174_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit174

if.end.i165:                                      ; preds = %do.end4
  %101 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev1.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %shl.i.i160 = shl i32 %104, 8
  %or2.i161 = or i32 %shl.i.i160, -2147483520
  %usb_buf.i162 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %105 = ptrtoint ptr %usb_buf.i162 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %usb_buf.i162, align 4
  %call3.i163 = tail call i32 @usb_control_msg(ptr noundef %102, i32 noundef %or2.i161, i8 noundef zeroext 35, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %106, i16 noundef zeroext 64, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %107 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %107)
  %cmp4.i164 = icmp sgt i32 %107, 5
  br i1 %cmp4.i164, label %do.end.i169, label %if.end.i165.do.end15.i171_crit_edge

if.end.i165.do.end15.i171_crit_edge:              ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i171

do.end.i169:                                      ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #7
  %name.i166 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %108 = ptrtoint ptr %usb_buf.i162 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %usb_buf.i162, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  %conv11.i167 = zext i8 %111 to i32
  %call12.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i166, i32 noundef 35, i32 noundef 1, i32 noundef %conv11.i167) #8
  br label %do.end15.i171

do.end15.i171:                                    ; preds = %do.end.i169, %if.end.i165.do.end15.i171_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i163)
  %cmp16.i170 = icmp slt i32 %call3.i163, 0
  br i1 %cmp16.i170, label %do.end21.i173, label %do.end15.i171.reg_r.exit174_crit_edge

do.end15.i171.reg_r.exit174_crit_edge:            ; preds = %do.end15.i171
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit174

do.end21.i173:                                    ; preds = %do.end15.i171
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i163) #8
  %112 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call3.i163, ptr %usb_err.i, align 8
  %113 = ptrtoint ptr %usb_buf.i162 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %usb_buf.i162, align 4
  %115 = call ptr @memset(ptr %114, i32 0, i32 64)
  br label %reg_r.exit174

reg_r.exit174:                                    ; preds = %do.end21.i173, %do.end15.i171.reg_r.exit174_crit_edge, %do.end4.reg_r.exit174_crit_edge
  %116 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %usb_err.i, align 8
  ret i32 %117
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.15) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 8, i64 noundef 1, i64 noundef 1) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #5
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 8, i64 noundef 1, i64 noundef 1) #5
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #5
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
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
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
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
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
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %arrayidx9.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.01.i, 7
  %arrayidx.i14 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i14, align 1
  %conv.i15 = zext i8 %13 to i16
  %mul6.i = mul nuw nsw i16 %conv.i15, 30
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
  %mul15.i = mul nuw nsw i16 %conv14.i, 30
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %18 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp slt i32 %19, 0
  br i1 %cmp.i, label %jpeg_set_qual.exit.reg_r.exit_crit_edge, label %if.end.i

jpeg_set_qual.exit.reg_r.exit_crit_edge:          ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end.i:                                         ; preds = %jpeg_set_qual.exit
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 9504, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp4.i = icmp sgt i32 %26, 5
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv11.i = zext i8 %30 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 0, i32 noundef 9504, i32 noundef %conv11.i) #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %if.end.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp16.i = icmp slt i32 %call3.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %do.end15.i.reg_r.exit_crit_edge

do.end15.i.reg_r.exit_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end21.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #8
  %31 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %32 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i, align 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end21.i, %do.end15.i.reg_r.exit_crit_edge, %jpeg_set_qual.exit.reg_r.exit_crit_edge
  tail call void @msleep(i32 noundef 8) #5
  tail call fastcc void @wait_status_0(ptr noundef %gspca_dev)
  %dev1.i16 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %35 = ptrtoint ptr %dev1.i16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i16, align 4
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i18 = icmp slt i32 %38, 0
  br i1 %cmp.i18, label %reg_r.exit.reg_w.exit_crit_edge, label %do.body.i

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.body.i:                                        ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %39 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %cmp2.i = icmp sgt i32 %39, 6
  br i1 %cmp2.i, label %do.end.i20, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i20:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i19, i32 noundef 49, i32 noundef 0, i32 noundef 4) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i20, %do.body.i.do.end9.i_crit_edge
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %36, align 8
  %shl.i.i21 = shl i32 %41, 8
  %or.i = or i32 %shl.i.i21, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end9.i.reg_w.exit_crit_edge

do.end9.i.reg_w.exit_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end17.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i) #8
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end17.i, %do.end9.i.reg_w.exit_crit_edge, %reg_r.exit.reg_w.exit_crit_edge
  tail call fastcc void @wait_status_1(ptr noundef %gspca_dev)
  tail call fastcc void @wait_status_0(ptr noundef %gspca_dev)
  tail call void @msleep(i32 noundef 200) #5
  %pkt_seq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %43 = ptrtoint ptr %pkt_seq to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %pkt_seq, align 8
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usb_err.i, align 8
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp slt i32 %len, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1 = icmp eq i8 %1, 2
  br i1 %cmp1, label %if.then3, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %3 to i32
  %and = and i32 %conv4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.then3
  %and8 = and i8 %3, 1
  %4 = xor i8 %and8, 1
  %pkt_seq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %5 = ptrtoint ptr %pkt_seq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pkt_seq, align 8
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %sub = add nsw i32 %len, -2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then5
  %data.addr.0.i = phi ptr [ %add.ptr, %if.then5 ], [ %data.addr.1.i, %do.cond.i.do.body.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %sub, %if.then5 ], [ %len.addr.1.i, %do.cond.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.then5 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data.addr.0.i, i32 %i.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp eq i8 %7, -1
  br i1 %cmp.i, label %if.then.i, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nsw i32 %i.0.i, 1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0.i, i32 noundef %add.i) #5
  %sub.i = sub i32 %len.addr.0.i, %i.0.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx.i, align 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then.i, %do.body.i.do.cond.i_crit_edge
  %data.addr.1.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %data.addr.0.i, %do.body.i.do.cond.i_crit_edge ]
  %len.addr.1.i = phi i32 [ %sub.i, %if.then.i ], [ %len.addr.0.i, %do.body.i.do.cond.i_crit_edge ]
  %i.1.i = phi i32 [ 0, %if.then.i ], [ %i.0.i, %do.body.i.do.cond.i_crit_edge ]
  %inc.i = add i32 %i.1.i, 1
  %cmp2.i = icmp slt i32 %inc.i, %len.addr.1.i
  br i1 %cmp2.i, label %do.cond.i.do.body.i_crit_edge, label %add_packet.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

add_packet.exit:                                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.1.i, i32 noundef %len.addr.1.i) #5
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef nonnull @sd_pkt_scan.ffd9, i32 noundef 2) #5
  br label %cleanup

if.end11:                                         ; preds = %if.then3
  %and14 = and i32 %conv4, 1
  %pkt_seq15 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %9 = ptrtoint ptr %pkt_seq15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pkt_seq15, align 8
  %conv16 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv16)
  %cmp17.not = icmp eq i32 %and14, %conv16
  br i1 %cmp17.not, label %if.end20, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end20:                                         ; preds = %if.end11
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %11 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp22 = icmp eq i8 %12, 3
  br i1 %cmp22, label %if.then24, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %add.ptr26 = getelementptr i8, ptr %data, i32 2
  %sub27 = add nsw i32 %len, -2
  br label %do.body.i50

do.body.i50:                                      ; preds = %do.cond.i59.do.body.i50_crit_edge, %if.end25
  %data.addr.0.i45 = phi ptr [ %add.ptr26, %if.end25 ], [ %data.addr.1.i54, %do.cond.i59.do.body.i50_crit_edge ]
  %len.addr.0.i46 = phi i32 [ %sub27, %if.end25 ], [ %len.addr.1.i55, %do.cond.i59.do.body.i50_crit_edge ]
  %i.0.i47 = phi i32 [ 0, %if.end25 ], [ %inc.i57, %do.cond.i59.do.body.i50_crit_edge ]
  %arrayidx.i48 = getelementptr i8, ptr %data.addr.0.i45, i32 %i.0.i47
  %13 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp.i49 = icmp eq i8 %14, -1
  br i1 %cmp.i49, label %if.then.i53, label %do.body.i50.do.cond.i59_crit_edge

do.body.i50.do.cond.i59_crit_edge:                ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i59

if.then.i53:                                      ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #7
  %add.i51 = add nsw i32 %i.0.i47, 1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0.i45, i32 noundef %add.i51) #5
  %sub.i52 = sub i32 %len.addr.0.i46, %i.0.i47
  %15 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i48, align 1
  br label %do.cond.i59

do.cond.i59:                                      ; preds = %if.then.i53, %do.body.i50.do.cond.i59_crit_edge
  %data.addr.1.i54 = phi ptr [ %arrayidx.i48, %if.then.i53 ], [ %data.addr.0.i45, %do.body.i50.do.cond.i59_crit_edge ]
  %len.addr.1.i55 = phi i32 [ %sub.i52, %if.then.i53 ], [ %len.addr.0.i46, %do.body.i50.do.cond.i59_crit_edge ]
  %i.1.i56 = phi i32 [ 0, %if.then.i53 ], [ %i.0.i47, %do.body.i50.do.cond.i59_crit_edge ]
  %inc.i57 = add i32 %i.1.i56, 1
  %cmp2.i58 = icmp slt i32 %inc.i57, %len.addr.1.i55
  br i1 %cmp2.i58, label %do.cond.i59.do.body.i50_crit_edge, label %add_packet.exit60

do.cond.i59.do.body.i50_crit_edge:                ; preds = %do.cond.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i50

add_packet.exit60:                                ; preds = %do.cond.i59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.1.i54, i32 noundef %len.addr.1.i55) #5
  br label %cleanup

err:                                              ; preds = %if.end11.err_crit_edge, %if.end.err_crit_edge
  %last_packet_type29 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %16 = ptrtoint ptr %last_packet_type29 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %last_packet_type29, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %add_packet.exit60, %add_packet.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_isoc_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 9504, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp4.i = icmp sgt i32 %8, 5
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv11.i = zext i8 %12 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 0, i32 noundef 9504, i32 noundef %conv11.i) #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %if.end.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp16.i = icmp slt i32 %call3.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %do.end15.i.reg_r.exit_crit_edge

do.end15.i.reg_r.exit_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end21.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end21.i, %do.end15.i.reg_r.exit_crit_edge, %entry.reg_r.exit_crit_edge
  tail call fastcc void @wait_status_0(ptr noundef %gspca_dev)
  %dev1.i12 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %17 = ptrtoint ptr %dev1.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i12, align 4
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i14 = icmp slt i32 %20, 0
  br i1 %cmp.i14, label %reg_r.exit.reg_w.exit_crit_edge, label %do.body.i

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.body.i:                                        ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp2.i = icmp sgt i32 %21, 6
  br i1 %cmp2.i, label %do.end.i16, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i16:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i15, i32 noundef 197, i32 noundef 3, i32 noundef 0) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i16, %do.body.i.do.end9.i_crit_edge
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 8
  %shl.i.i17 = shl i32 %23, 8
  %or.i = or i32 %shl.i.i17, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end9.i.reg_w.exit_crit_edge

do.end9.i.reg_w.exit_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end17.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i) #8
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end17.i, %do.end9.i.reg_w.exit_crit_edge, %reg_r.exit.reg_w.exit_crit_edge
  tail call fastcc void @wait_status_1(ptr noundef %gspca_dev)
  tail call fastcc void @wait_status_0(ptr noundef %gspca_dev)
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %25 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %27 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %28 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %26, i32 %idxprom, i32 7
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %priv, align 4
  %conv = trunc i32 %30 to i8
  %31 = ptrtoint ptr %dev1.i12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i12, align 4
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i20 = icmp slt i32 %34, 0
  br i1 %cmp.i20, label %reg_w.exit.reg_r.exit81_crit_edge, label %do.body.i22

reg_w.exit.reg_r.exit81_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit81

do.body.i22:                                      ; preds = %reg_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp2.i21 = icmp sgt i32 %35, 6
  br i1 %cmp2.i21, label %do.end.i25, label %do.body.i22.do.end10.i_crit_edge

do.body.i22.do.end10.i_crit_edge:                 ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i25:                                       ; preds = %do.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  %name.i23 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i = and i32 %30, 255
  %call.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i23, i32 noundef 37, i32 noundef 0, i32 noundef 4, i32 noundef %conv7.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i25, %do.body.i22.do.end10.i_crit_edge
  %usb_buf.i26 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %36 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i26, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %37, align 1
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %32, align 8
  %shl.i.i27 = shl i32 %40, 8
  %or.i28 = or i32 %shl.i.i27, -2147483648
  %41 = load ptr, ptr %usb_buf.i26, align 4
  %call13.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i28, i8 noundef zeroext 37, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %41, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end19.i, label %reg_wb.exit

do.end19.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call13.i) #8
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call13.i, ptr %usb_err.i, align 8
  br label %reg_r.exit81

reg_wb.exit:                                      ; preds = %do.end10.i
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i30 = icmp slt i32 %.pr, 0
  br i1 %cmp.i30, label %reg_wb.exit.reg_r.exit81_crit_edge, label %if.end.i37

reg_wb.exit.reg_r.exit81_crit_edge:               ; preds = %reg_wb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit81

if.end.i37:                                       ; preds = %reg_wb.exit
  %44 = ptrtoint ptr %dev1.i12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i12, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i32 = shl i32 %47, 8
  %or2.i33 = or i32 %shl.i.i32, -2147483520
  %48 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %usb_buf.i26, align 4
  %call3.i35 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or2.i33, i8 noundef zeroext 37, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %49, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %50)
  %cmp4.i36 = icmp sgt i32 %50, 5
  br i1 %cmp4.i36, label %do.end.i41, label %if.end.i37.do.end15.i43_crit_edge

if.end.i37.do.end15.i43_crit_edge:                ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i43

do.end.i41:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #7
  %name.i38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb_buf.i26, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %conv11.i39 = zext i8 %54 to i32
  %call12.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i38, i32 noundef 37, i32 noundef 4, i32 noundef %conv11.i39) #8
  br label %do.end15.i43

do.end15.i43:                                     ; preds = %do.end.i41, %if.end.i37.do.end15.i43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i35)
  %cmp16.i42 = icmp slt i32 %call3.i35, 0
  br i1 %cmp16.i42, label %do.end21.i45, label %do.end15.i43.reg_r.exit46_crit_edge

do.end15.i43.reg_r.exit46_crit_edge:              ; preds = %do.end15.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit46

do.end21.i45:                                     ; preds = %do.end15.i43
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i35) #8
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call3.i35, ptr %usb_err.i, align 8
  %56 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i26, align 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 64)
  br label %reg_r.exit46

reg_r.exit46:                                     ; preds = %do.end21.i45, %do.end15.i43.reg_r.exit46_crit_edge
  %59 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr83.pr = load i32, ptr %usb_err.i, align 8
  %60 = ptrtoint ptr %dev1.i12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr83.pr)
  %cmp.i49 = icmp slt i32 %.pr83.pr, 0
  br i1 %cmp.i49, label %reg_r.exit46.reg_r.exit81_crit_edge, label %do.body.i51

reg_r.exit46.reg_r.exit81_crit_edge:              ; preds = %reg_r.exit46
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit81

do.body.i51:                                      ; preds = %reg_r.exit46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %62 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp2.i50 = icmp sgt i32 %62, 6
  br i1 %cmp2.i50, label %do.end.i54, label %do.body.i51.do.end10.i60_crit_edge

do.body.i51.do.end10.i60_crit_edge:               ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i60

do.end.i54:                                       ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #7
  %name.i52 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i52, i32 noundef 39, i32 noundef 0, i32 noundef 0, i32 noundef 6) #8
  br label %do.end10.i60

do.end10.i60:                                     ; preds = %do.end.i54, %do.body.i51.do.end10.i60_crit_edge
  %63 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_buf.i26, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 6, ptr %64, align 1
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %61, align 8
  %shl.i.i56 = shl i32 %67, 8
  %or.i57 = or i32 %shl.i.i56, -2147483648
  %68 = load ptr, ptr %usb_buf.i26, align 4
  %call13.i58 = tail call i32 @usb_control_msg(ptr noundef %61, i32 noundef %or.i57, i8 noundef zeroext 39, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %68, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i58)
  %cmp14.i59 = icmp slt i32 %call13.i58, 0
  br i1 %cmp14.i59, label %do.end19.i62, label %reg_wb.exit63

do.end19.i62:                                     ; preds = %do.end10.i60
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call13.i58) #8
  %69 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call13.i58, ptr %usb_err.i, align 8
  br label %reg_r.exit81

reg_wb.exit63:                                    ; preds = %do.end10.i60
  %70 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr85 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr85)
  %cmp.i65 = icmp slt i32 %.pr85, 0
  br i1 %cmp.i65, label %reg_wb.exit63.reg_r.exit81_crit_edge, label %if.end.i72

reg_wb.exit63.reg_r.exit81_crit_edge:             ; preds = %reg_wb.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit81

if.end.i72:                                       ; preds = %reg_wb.exit63
  %71 = ptrtoint ptr %dev1.i12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i12, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i67 = shl i32 %74, 8
  %or2.i68 = or i32 %shl.i.i67, -2147483520
  %75 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf.i26, align 4
  %call3.i70 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or2.i68, i8 noundef zeroext 39, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %76, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp4.i71 = icmp sgt i32 %77, 5
  br i1 %cmp4.i71, label %do.end.i76, label %if.end.i72.do.end15.i78_crit_edge

if.end.i72.do.end15.i78_crit_edge:                ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i78

do.end.i76:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #7
  %name.i73 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i26, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %conv11.i74 = zext i8 %81 to i32
  %call12.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i73, i32 noundef 39, i32 noundef 0, i32 noundef %conv11.i74) #8
  br label %do.end15.i78

do.end15.i78:                                     ; preds = %do.end.i76, %if.end.i72.do.end15.i78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i70)
  %cmp16.i77 = icmp slt i32 %call3.i70, 0
  br i1 %cmp16.i77, label %do.end21.i80, label %do.end15.i78.reg_r.exit81_crit_edge

do.end15.i78.reg_r.exit81_crit_edge:              ; preds = %do.end15.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit81

do.end21.i80:                                     ; preds = %do.end15.i78
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i70) #8
  %82 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call3.i70, ptr %usb_err.i, align 8
  %83 = ptrtoint ptr %usb_buf.i26 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb_buf.i26, align 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 64)
  br label %reg_r.exit81

reg_r.exit81:                                     ; preds = %do.end21.i80, %do.end15.i78.reg_r.exit81_crit_edge, %reg_wb.exit63.reg_r.exit81_crit_edge, %do.end19.i62, %reg_r.exit46.reg_r.exit81_crit_edge, %reg_wb.exit.reg_r.exit81_crit_edge, %do.end19.i, %reg_w.exit.reg_r.exit81_crit_edge
  %86 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usb_err.i, align 8
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @wait_status_0(ptr noundef %gspca_dev)
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
  br i1 %cmp.i, label %entry.reg_w.exit_crit_edge, label %do.body.i

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp2.i = icmp sgt i32 %4, 6
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i, i32 noundef 49, i32 noundef 0, i32 noundef 0) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %do.body.i.do.end9.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end9.i.reg_w.exit_crit_edge

do.end9.i.reg_w.exit_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end17.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call11.i) #8
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end17.i, %do.end9.i.reg_w.exit_crit_edge, %entry.reg_w.exit_crit_edge
  tail call fastcc void @wait_status_1(ptr noundef %gspca_dev)
  tail call fastcc void @wait_status_0(ptr noundef %gspca_dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !86
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963779, label %sw.bb3
    i32 9963778, label %sw.bb5
    i32 9963803, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv.i = trunc i32 %9 to i8
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %12 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 0
  br i1 %cmp.i.i, label %sw.bb.sw.epilog_crit_edge, label %do.body.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body.i.i:                                      ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp2.i.i = icmp sgt i32 %14, 6
  br i1 %cmp2.i.i, label %do.end.i.i, label %do.body.i.i.do.end10.i.i_crit_edge

do.body.i.i.do.end10.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i = and i32 %9, 255
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i.i, i32 noundef 192, i32 noundef 0, i32 noundef 192, i32 noundef %conv7.i.i) #8
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end10.i.i_crit_edge
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %15 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i, ptr %16, align 1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %call13.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext -64, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 192, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %do.end10.i.i.sw.epilog.sink.split_crit_edge, label %do.end10.i.i.sw.epilog_crit_edge

do.end10.i.i.sw.epilog_crit_edge:                 ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i.sw.epilog.sink.split_crit_edge:      ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val2, align 4
  %conv.i23 = trunc i32 %22 to i8
  %dev1.i.i24 = getelementptr i8, ptr %1, i32 -100
  %23 = ptrtoint ptr %dev1.i.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i.i24, align 4
  %25 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i26 = icmp slt i32 %26, 0
  br i1 %cmp.i.i26, label %sw.bb1.sw.epilog_crit_edge, label %do.body.i.i28

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body.i.i28:                                    ; preds = %sw.bb1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp2.i.i27 = icmp sgt i32 %27, 6
  br i1 %cmp2.i.i27, label %do.end.i.i32, label %do.body.i.i28.do.end10.i.i38_crit_edge

do.body.i.i28.do.end10.i.i38_crit_edge:           ; preds = %do.body.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i38

do.end.i.i32:                                     ; preds = %do.body.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i29 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i30 = and i32 %22, 255
  %call.i.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i.i29, i32 noundef 193, i32 noundef 0, i32 noundef 193, i32 noundef %conv7.i.i30) #8
  br label %do.end10.i.i38

do.end10.i.i38:                                   ; preds = %do.end.i.i32, %do.body.i.i28.do.end10.i.i38_crit_edge
  %usb_buf.i.i33 = getelementptr i8, ptr %1, i32 204
  %28 = ptrtoint ptr %usb_buf.i.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i.i33, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i23, ptr %29, align 1
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %24, align 8
  %shl.i.i.i34 = shl i32 %32, 8
  %or.i.i35 = or i32 %shl.i.i.i34, -2147483648
  %33 = load ptr, ptr %usb_buf.i.i33, align 4
  %call13.i.i36 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i.i35, i8 noundef zeroext -63, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 193, ptr noundef %33, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i36)
  %cmp14.i.i37 = icmp slt i32 %call13.i.i36, 0
  br i1 %cmp14.i.i37, label %do.end10.i.i38.sw.epilog.sink.split_crit_edge, label %do.end10.i.i38.sw.epilog_crit_edge

do.end10.i.i38.sw.epilog_crit_edge:               ; preds = %do.end10.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i38.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val4, align 4
  %conv.i41 = trunc i32 %35 to i8
  %dev1.i.i42 = getelementptr i8, ptr %1, i32 -100
  %36 = ptrtoint ptr %dev1.i.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i.i42, align 4
  %38 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i44 = icmp slt i32 %39, 0
  br i1 %cmp.i.i44, label %sw.bb3.sw.epilog_crit_edge, label %do.body.i.i46

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body.i.i46:                                    ; preds = %sw.bb3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %40 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %cmp2.i.i45 = icmp sgt i32 %40, 6
  br i1 %cmp2.i.i45, label %do.end.i.i50, label %do.body.i.i46.do.end10.i.i56_crit_edge

do.body.i.i46.do.end10.i.i56_crit_edge:           ; preds = %do.body.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i56

do.end.i.i50:                                     ; preds = %do.body.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i47 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i48 = and i32 %35, 255
  %call.i.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i.i47, i32 noundef 194, i32 noundef 0, i32 noundef 0, i32 noundef %conv7.i.i48) #8
  br label %do.end10.i.i56

do.end10.i.i56:                                   ; preds = %do.end.i.i50, %do.body.i.i46.do.end10.i.i56_crit_edge
  %usb_buf.i.i51 = getelementptr i8, ptr %1, i32 204
  %41 = ptrtoint ptr %usb_buf.i.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i.i51, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i41, ptr %42, align 1
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %37, align 8
  %shl.i.i.i52 = shl i32 %45, 8
  %or.i.i53 = or i32 %shl.i.i.i52, -2147483648
  %46 = load ptr, ptr %usb_buf.i.i51, align 4
  %call13.i.i54 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i.i53, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %46, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i54)
  %cmp14.i.i55 = icmp slt i32 %call13.i.i54, 0
  br i1 %cmp14.i.i55, label %do.end10.i.i56.sw.epilog.sink.split_crit_edge, label %do.end10.i.i56.sw.epilog_crit_edge

do.end10.i.i56.sw.epilog_crit_edge:               ; preds = %do.end10.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i56.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val6, align 4
  %conv.i59 = trunc i32 %48 to i8
  %dev1.i.i60 = getelementptr i8, ptr %1, i32 -100
  %49 = ptrtoint ptr %dev1.i.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i.i60, align 4
  %51 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i62 = icmp slt i32 %52, 0
  br i1 %cmp.i.i62, label %sw.bb5.sw.epilog_crit_edge, label %do.body.i.i64

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body.i.i64:                                    ; preds = %sw.bb5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %53 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %53)
  %cmp2.i.i63 = icmp sgt i32 %53, 6
  br i1 %cmp2.i.i63, label %do.end.i.i68, label %do.body.i.i64.do.end10.i.i74_crit_edge

do.body.i.i64.do.end10.i.i74_crit_edge:           ; preds = %do.body.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i74

do.end.i.i68:                                     ; preds = %do.body.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i65 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i66 = and i32 %48, 255
  %call.i.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i.i65, i32 noundef 195, i32 noundef 0, i32 noundef 195, i32 noundef %conv7.i.i66) #8
  br label %do.end10.i.i74

do.end10.i.i74:                                   ; preds = %do.end.i.i68, %do.body.i.i64.do.end10.i.i74_crit_edge
  %usb_buf.i.i69 = getelementptr i8, ptr %1, i32 204
  %54 = ptrtoint ptr %usb_buf.i.i69 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i.i69, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i59, ptr %55, align 1
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %50, align 8
  %shl.i.i.i70 = shl i32 %58, 8
  %or.i.i71 = or i32 %shl.i.i.i70, -2147483648
  %59 = load ptr, ptr %usb_buf.i.i69, align 4
  %call13.i.i72 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i.i71, i8 noundef zeroext -61, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 195, ptr noundef %59, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i72)
  %cmp14.i.i73 = icmp slt i32 %call13.i.i72, 0
  br i1 %cmp14.i.i73, label %do.end10.i.i74.sw.epilog.sink.split_crit_edge, label %do.end10.i.i74.sw.epilog_crit_edge

do.end10.i.i74.sw.epilog_crit_edge:               ; preds = %do.end10.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i74.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val8, align 4
  %conv.i77 = trunc i32 %61 to i8
  %dev1.i.i78 = getelementptr i8, ptr %1, i32 -100
  %62 = ptrtoint ptr %dev1.i.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i.i78, align 4
  %64 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i80 = icmp slt i32 %65, 0
  br i1 %cmp.i.i80, label %sw.bb7.sw.epilog_crit_edge, label %do.body.i.i82

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body.i.i82:                                    ; preds = %sw.bb7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %66 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %66)
  %cmp2.i.i81 = icmp sgt i32 %66, 6
  br i1 %cmp2.i.i81, label %do.end.i.i86, label %do.body.i.i82.do.end10.i.i92_crit_edge

do.body.i.i82.do.end10.i.i92_crit_edge:           ; preds = %do.body.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i92

do.end.i.i86:                                     ; preds = %do.body.i.i82
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i83 = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i84 = and i32 %61, 255
  %call.i.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i.i83, i32 noundef 196, i32 noundef 0, i32 noundef 196, i32 noundef %conv7.i.i84) #8
  br label %do.end10.i.i92

do.end10.i.i92:                                   ; preds = %do.end.i.i86, %do.body.i.i82.do.end10.i.i92_crit_edge
  %usb_buf.i.i87 = getelementptr i8, ptr %1, i32 204
  %67 = ptrtoint ptr %usb_buf.i.i87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb_buf.i.i87, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i77, ptr %68, align 1
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %63, align 8
  %shl.i.i.i88 = shl i32 %71, 8
  %or.i.i89 = or i32 %shl.i.i.i88, -2147483648
  %72 = load ptr, ptr %usb_buf.i.i87, align 4
  %call13.i.i90 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i.i89, i8 noundef zeroext -60, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 196, ptr noundef %72, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i90)
  %cmp14.i.i91 = icmp slt i32 %call13.i.i90, 0
  br i1 %cmp14.i.i91, label %do.end10.i.i92.sw.epilog.sink.split_crit_edge, label %do.end10.i.i92.sw.epilog_crit_edge

do.end10.i.i92.sw.epilog_crit_edge:               ; preds = %do.end10.i.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end10.i.i92.sw.epilog.sink.split_crit_edge:    ; preds = %do.end10.i.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end10.i.i92.sw.epilog.sink.split_crit_edge, %do.end10.i.i74.sw.epilog.sink.split_crit_edge, %do.end10.i.i56.sw.epilog.sink.split_crit_edge, %do.end10.i.i38.sw.epilog.sink.split_crit_edge, %do.end10.i.i.sw.epilog.sink.split_crit_edge
  %call13.i.i90.sink95 = phi i32 [ %call13.i.i, %do.end10.i.i.sw.epilog.sink.split_crit_edge ], [ %call13.i.i36, %do.end10.i.i38.sw.epilog.sink.split_crit_edge ], [ %call13.i.i54, %do.end10.i.i56.sw.epilog.sink.split_crit_edge ], [ %call13.i.i72, %do.end10.i.i74.sw.epilog.sink.split_crit_edge ], [ %call13.i.i90, %do.end10.i.i92.sw.epilog.sink.split_crit_edge ]
  %call21.i.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call13.i.i90.sink95) #8
  %73 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call13.i.i90.sink95, ptr %usb_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end10.i.i92.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %do.end10.i.i74.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %do.end10.i.i56.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %do.end10.i.i38.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %do.end10.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %74 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %75, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_status_0(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %w.0 = phi i32 [ 0, %entry ], [ %add, %if.end.do.body_crit_edge ]
  %i.0 = phi i32 [ 16, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %do.body.reg_r.exit_crit_edge, label %if.end.i

do.body.reg_r.exit_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end.i:                                         ; preds = %do.body
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp4.i = icmp sgt i32 %8, 5
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv11.i = zext i8 %12 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 33, i32 noundef 0, i32 noundef %conv11.i) #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %if.end.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp16.i = icmp slt i32 %call3.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %do.end15.i.reg_r.exit_crit_edge

do.end15.i.reg_r.exit_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end21.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end21.i, %do.end15.i.reg_r.exit_crit_edge, %do.body.reg_r.exit_crit_edge
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  br i1 %cmp, label %reg_r.exit.cleanup_crit_edge, label %if.end

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %reg_r.exit
  %add = add nuw nsw i32 %w.0, 15
  tail call void @msleep(i32 noundef %add) #5
  %dec = add nsw i32 %i.0, -1
  %cmp2.not = icmp eq i32 %dec, 0
  br i1 %cmp2.not, label %do.end6, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i) #8
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -62, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %reg_r.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_status_1(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 10, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %do.body.reg_r.exit_crit_edge, label %if.end.i

do.body.reg_r.exit_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

if.end.i:                                         ; preds = %do.body
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp4.i = icmp sgt i32 %8, 5
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.do.end15.i_crit_edge

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv11.i = zext i8 %12 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 33, i32 noundef 1, i32 noundef %conv11.i) #8
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %if.end.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp16.i = icmp slt i32 %call3.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %do.end15.i.reg_r.exit_crit_edge

do.end15.i.reg_r.exit_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end21.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i) #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end21.i, %do.end15.i.reg_r.exit_crit_edge, %do.body.reg_r.exit_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %reg_r.exit
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i14 = icmp slt i32 %24, 0
  br i1 %cmp.i14, label %if.then.cleanup_crit_edge, label %do.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp2.i = icmp sgt i32 %25, 6
  br i1 %cmp2.i, label %do.end.i16, label %do.body.i.do.end10.i_crit_edge

do.body.i.do.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i16:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef 33, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i16, %do.body.i.do.end10.i_crit_edge
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %27, align 1
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %22, align 8
  %shl.i.i18 = shl i32 %30, 8
  %or.i = or i32 %shl.i.i18, -2147483648
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call13.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i, i8 noundef zeroext 33, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end19.i, label %reg_wb.exit

do.end19.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call13.i) #8
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call13.i, ptr %usb_err.i, align 8
  br label %cleanup

reg_wb.exit:                                      ; preds = %do.end10.i
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i20 = icmp slt i32 %.pr, 0
  br i1 %cmp.i20, label %reg_wb.exit.cleanup_crit_edge, label %if.end.i27

reg_wb.exit.cleanup_crit_edge:                    ; preds = %reg_wb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i27:                                       ; preds = %reg_wb.exit
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i22 = shl i32 %37, 8
  %or2.i23 = or i32 %shl.i.i22, -2147483520
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %call3.i25 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or2.i23, i8 noundef zeroext 33, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %39, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %40 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %cmp4.i26 = icmp sgt i32 %40, 5
  br i1 %cmp4.i26, label %do.end.i31, label %if.end.i27.do.end15.i33_crit_edge

if.end.i27.do.end15.i33_crit_edge:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i33

do.end.i31:                                       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv11.i29 = zext i8 %44 to i32
  %call12.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 33, i32 noundef 1, i32 noundef %conv11.i29) #8
  br label %do.end15.i33

do.end15.i33:                                     ; preds = %do.end.i31, %if.end.i27.do.end15.i33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i25)
  %cmp16.i32 = icmp slt i32 %call3.i25, 0
  br i1 %cmp16.i32, label %do.end21.i35, label %do.end15.i33.cleanup_crit_edge

do.end15.i33.cleanup_crit_edge:                   ; preds = %do.end15.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21.i35:                                     ; preds = %do.end15.i33
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call3.i25) #8
  %45 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call3.i25, ptr %usb_err.i, align 8
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 64)
  br label %cleanup

do.cond:                                          ; preds = %reg_r.exit
  %dec = add nsw i32 %i.0, -1
  %cmp2.not = icmp eq i32 %dec, 0
  br i1 %cmp2.not, label %do.end6, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end6:                                          ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name.i) #8
  %49 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -62, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end21.i35, %do.end15.i33.cleanup_crit_edge, %reg_wb.exit.cleanup_crit_edge, %do.end19.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca1528__307_438_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca1528__307_438_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 438, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 427, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 426, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 396, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 28, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 216, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 92, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @reg_w._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @reg_w._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 99, i32 3}
!32 = !{ptr @reg_w._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @reg_w._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 69, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @reg_r._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @reg_r._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 72, i32 3}
!41 = !{ptr @reg_r._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @reg_r._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sd_init_controls._key, !44, !"_key", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 376, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 389, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sd_init_controls._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sd_init_controls._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @sd_ctrl_ops, !52, !"sd_ctrl_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 367, i32 35}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 115, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @reg_wb._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @reg_wb._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @reg_wb._entry.20, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 124, i32 3}
!60 = !{ptr @reg_wb._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @jpeg_head, !62, !"jpeg_head", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 142, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @wait_status_0._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @wait_status_0._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 160, i32 2}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @wait_status_1._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @wait_status_1._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @sd_pkt_scan.ffd9, !74, !"ffd9", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 307, i32 18}
!75 = !{ptr @device_table, !76, !"device_table", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/spca1528.c", i32 408, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
