; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stk014.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stk014.c"
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
%struct.sd = type { %struct.gspca_dev, [589 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [65 x i8] c"gspca_stk014.author=Jean-Francois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [66 x i8] c"gspca_stk014.description=Syntek DV4000 (STK014) USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_stk014.file=drivers/media/usb/gspca/gspca_stk014\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_stk014.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_stk014__307_434_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_stk014\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stk014\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1505, i16 2195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gspca_stk014: init reg: 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/stk014.c\00", [63 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_stk014: reg_r err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stk014:377:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_stk014: Could not initialize controls\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@snd_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gspca_stk014: snd_val err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_val\00", [24 x i8] zeroinitializer }, align 32
@snd_val._entry_ptr = internal global ptr @snd_val._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_stk014: reg_w err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_stk014: set intf %d %d failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_start._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: camera started alt: 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.18 = internal global ptr @sd_start._entry.16, section ".printk_index", align 4
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@rcv_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013gspca_stk014: rcv_val err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rcv_val\00", [24 x i8] zeroinitializer }, align 32
@rcv_val._entry_ptr = internal global ptr @rcv_val._entry, section ".printk_index", align 4
@sd_pkt_scan.ffd9 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\D9", [30 x i8] zeroinitializer }, align 32
@sd_stopN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: camera stopped\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_stopN\00", [23 x i8] zeroinitializer }, align 32
@sd_stopN._entry_ptr = internal global ptr @sd_stopN._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963800]
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 422, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 434, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 423, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 408, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 397, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 27, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 226, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 57, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 377, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 368, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 390, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 155, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 82, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 261, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 284, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 19, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 112, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [5 x i8] c"ffd9\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 314, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [36 x i8] c"../drivers/media/usb/gspca/stk014.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 306, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_stk014__307_434_sd_driver_init6, ptr @rcv_val._entry, ptr @rcv_val._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.16, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.18, ptr @sd_stopN._entry, ptr @sd_stopN._entry_ptr, ptr @snd_val._entry, ptr @snd_val._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sd_init_controls._key, ptr @.str.7, ptr @sd_ctrl_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @jpeg_head, ptr @.str.19, ptr @.str.20, ptr @sd_pkt_scan.ffd9, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan.ffd9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3200, ptr noundef null) #6
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
  store i8 2, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv, i32 noundef 1) #6
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1856, ptr noundef %11, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i) #9
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %if.end8.i, %do.end.i, %entry.reg_r.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %16, %if.end8.i ], [ 0, %entry.reg_r.exit_crit_edge ]
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i)
  %cmp4.not = icmp eq i8 %retval.0.i, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %reg_r.exit.if.end10_crit_edge, label %do.end

reg_r.exit.if.end10_crit_edge:                    ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = zext i8 %retval.0.i to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv3) #9
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -5, ptr %usb_err.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %reg_r.exit.if.end10_crit_edge
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i, align 8
  ret i32 %21
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.7) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #6
  %call5 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 1, i8 noundef zeroext 1) #6
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
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
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %arrayidx9.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.01.i, 7
  %arrayidx.i81 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i81, align 1
  %conv.i82 = zext i8 %13 to i16
  %mul6.i = mul nuw nsw i16 %conv.i82, 100
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %20 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iface, align 1
  %conv = zext i8 %21 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %19, i32 noundef %conv, i32 noundef 1) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 268435456) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 0) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef -2147295231) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 335544320) #6
  %22 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %23)
  %cmp = icmp ugt i32 %23, 320
  %. = select i1 %cmp, i32 -2147295231, i32 1073868800
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef %.) #6
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iface, align 1
  %conv9 = zext i8 %27 to i32
  %alt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %28 = ptrtoint ptr %alt to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %alt, align 2
  %conv10 = zext i8 %29 to i32
  %call11 = tail call i32 @usb_set_interface(ptr noundef %25, i32 noundef %conv9, i32 noundef %conv10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end, label %if.end20

do.end:                                           ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iface, align 1
  %conv16 = zext i8 %31 to i32
  %32 = ptrtoint ptr %alt to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %alt, align 2
  %conv18 = zext i8 %33 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv16, i32 noundef %conv18) #9
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %34 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call11, ptr %usb_err, align 8
  br label %out

if.end20:                                         ; preds = %jpeg_set_qual.exit
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp slt i32 %36, 0
  br i1 %cmp.i, label %if.end20.reg_r.exit_crit_edge, label %if.end.i

if.end20.reg_r.exit_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end.i:                                         ; preds = %if.end20
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i = shl i32 %40, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %41 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1584, ptr noundef %42, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r.exit_crit_edge

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i) #9
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %if.end20.reg_r.exit_crit_edge
  tail call fastcc void @rcv_val(ptr noundef %gspca_dev)
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i84 = icmp slt i32 %45, 0
  br i1 %cmp.i84, label %reg_r.exit.reg_r.exit96_crit_edge, label %if.end.i91

reg_r.exit.reg_r.exit96_crit_edge:                ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit96

if.end.i91:                                       ; preds = %reg_r.exit
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i86 = shl i32 %49, 8
  %or2.i87 = or i32 %shl.i.i86, -2147483520
  %usb_buf.i88 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %50 = ptrtoint ptr %usb_buf.i88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i88, align 4
  %call3.i89 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or2.i87, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1616, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i89)
  %cmp4.i90 = icmp slt i32 %call3.i89, 0
  br i1 %cmp4.i90, label %do.end.i93, label %if.end.i91.reg_r.exit96_crit_edge

if.end.i91.reg_r.exit96_crit_edge:                ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit96

do.end.i93:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i89) #9
  %52 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call3.i89, ptr %usb_err.i, align 8
  br label %reg_r.exit96

reg_r.exit96:                                     ; preds = %do.end.i93, %if.end.i91.reg_r.exit96_crit_edge, %reg_r.exit.reg_r.exit96_crit_edge
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 32, i32 noundef -1)
  %53 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i98 = icmp slt i32 %54, 0
  br i1 %cmp.i98, label %reg_r.exit96.reg_w.exit146_crit_edge, label %if.end.i101

reg_r.exit96.reg_w.exit146_crit_edge:             ; preds = %reg_r.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146

if.end.i101:                                      ; preds = %reg_r.exit96
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %shl.i.i100 = shl i32 %58, 8
  %or.i = or i32 %shl.i.i100, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %56, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1568, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i101.reg_w.exit146.sink.split_crit_edge, label %reg_w.exit

if.end.i101.reg_w.exit146.sink.split_crit_edge:   ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146.sink.split

reg_w.exit:                                       ; preds = %if.end.i101
  %59 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i104 = icmp slt i32 %.pr, 0
  br i1 %cmp.i104, label %reg_w.exit.reg_w.exit146_crit_edge, label %if.end.i110

reg_w.exit.reg_w.exit146_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146

if.end.i110:                                      ; preds = %reg_w.exit
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %shl.i.i106 = shl i32 %63, 8
  %or.i107 = or i32 %shl.i.i106, -2147483648
  %call2.i108 = tail call i32 @usb_control_msg(ptr noundef %61, i32 noundef %or.i107, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1584, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i108)
  %cmp3.i109 = icmp slt i32 %call2.i108, 0
  br i1 %cmp3.i109, label %if.end.i110.reg_w.exit146.sink.split_crit_edge, label %reg_w.exit113

if.end.i110.reg_w.exit146.sink.split_crit_edge:   ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146.sink.split

reg_w.exit113:                                    ; preds = %if.end.i110
  %64 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr148.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr148.pr)
  %cmp.i115 = icmp slt i32 %.pr148.pr, 0
  br i1 %cmp.i115, label %reg_w.exit113.reg_w.exit146_crit_edge, label %if.end.i121

reg_w.exit113.reg_w.exit146_crit_edge:            ; preds = %reg_w.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146

if.end.i121:                                      ; preds = %reg_w.exit113
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i117 = shl i32 %68, 8
  %or.i118 = or i32 %shl.i.i117, -2147483648
  %call2.i119 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i118, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1600, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i119)
  %cmp3.i120 = icmp slt i32 %call2.i119, 0
  br i1 %cmp3.i120, label %if.end.i121.reg_w.exit146.sink.split_crit_edge, label %reg_w.exit124

if.end.i121.reg_w.exit146.sink.split_crit_edge:   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146.sink.split

reg_w.exit124:                                    ; preds = %if.end.i121
  %69 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr150.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr150.pr)
  %cmp.i126 = icmp slt i32 %.pr150.pr, 0
  br i1 %cmp.i126, label %reg_w.exit124.reg_w.exit146_crit_edge, label %if.end.i132

reg_w.exit124.reg_w.exit146_crit_edge:            ; preds = %reg_w.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146

if.end.i132:                                      ; preds = %reg_w.exit124
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i128 = shl i32 %73, 8
  %or.i129 = or i32 %shl.i.i128, -2147483648
  %call2.i130 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i129, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1616, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i130)
  %cmp3.i131 = icmp slt i32 %call2.i130, 0
  br i1 %cmp3.i131, label %if.end.i132.reg_w.exit146.sink.split_crit_edge, label %reg_w.exit135

if.end.i132.reg_w.exit146.sink.split_crit_edge:   ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146.sink.split

reg_w.exit135:                                    ; preds = %if.end.i132
  %74 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr152.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr152.pr.pr)
  %cmp.i137 = icmp slt i32 %.pr152.pr.pr, 0
  br i1 %cmp.i137, label %reg_w.exit135.reg_w.exit146_crit_edge, label %if.end.i143

reg_w.exit135.reg_w.exit146_crit_edge:            ; preds = %reg_w.exit135
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146

if.end.i143:                                      ; preds = %reg_w.exit135
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i139 = shl i32 %78, 8
  %or.i140 = or i32 %shl.i.i139, -2147483648
  %call2.i141 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i140, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1632, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i141)
  %cmp3.i142 = icmp slt i32 %call2.i141, 0
  br i1 %cmp3.i142, label %if.end.i143.reg_w.exit146.sink.split_crit_edge, label %if.end.i143.reg_w.exit146_crit_edge

if.end.i143.reg_w.exit146_crit_edge:              ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146

if.end.i143.reg_w.exit146.sink.split_crit_edge:   ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit146.sink.split

reg_w.exit146.sink.split:                         ; preds = %if.end.i143.reg_w.exit146.sink.split_crit_edge, %if.end.i132.reg_w.exit146.sink.split_crit_edge, %if.end.i121.reg_w.exit146.sink.split_crit_edge, %if.end.i110.reg_w.exit146.sink.split_crit_edge, %if.end.i101.reg_w.exit146.sink.split_crit_edge
  %call2.i.sink174 = phi i32 [ %call2.i, %if.end.i101.reg_w.exit146.sink.split_crit_edge ], [ %call2.i108, %if.end.i110.reg_w.exit146.sink.split_crit_edge ], [ %call2.i119, %if.end.i121.reg_w.exit146.sink.split_crit_edge ], [ %call2.i130, %if.end.i132.reg_w.exit146.sink.split_crit_edge ], [ %call2.i141, %if.end.i143.reg_w.exit146.sink.split_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i.sink174) #9
  %79 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call2.i.sink174, ptr %usb_err.i, align 8
  br label %reg_w.exit146

reg_w.exit146:                                    ; preds = %reg_w.exit146.sink.split, %if.end.i143.reg_w.exit146_crit_edge, %reg_w.exit135.reg_w.exit146_crit_edge, %reg_w.exit124.reg_w.exit146_crit_edge, %reg_w.exit113.reg_w.exit146_crit_edge, %reg_w.exit.reg_w.exit146_crit_edge, %reg_r.exit96.reg_w.exit146_crit_edge
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 159383552) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 176160768) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 192937984) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 218300416) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 16777216) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 16777216) #6
  %80 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp24 = icmp sgt i32 %81, -1
  br i1 %cmp24, label %do.body27, label %reg_w.exit146.out_crit_edge

reg_w.exit146.out_crit_edge:                      ; preds = %reg_w.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body27:                                        ; preds = %reg_w.exit146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %82 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp28 = icmp sgt i32 %82, 2
  br i1 %cmp28, label %do.end33, label %do.body27.out_crit_edge

do.body27.out_crit_edge:                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %83 = ptrtoint ptr %alt to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %alt, align 2
  %conv37 = zext i8 %84 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %conv37) #9
  br label %out

out:                                              ; preds = %do.end33, %do.body27.out_crit_edge, %reg_w.exit146.out_crit_edge, %do.end
  %usb_err43 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %85 = ptrtoint ptr %usb_err43 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %usb_err43, align 8
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %3)
  %cmp4 = icmp eq i8 %3, -2
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef nonnull @sd_pkt_scan.ffd9, i32 noundef 2) #6
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #6
  %add.ptr = getelementptr i8, ptr %data, i32 12
  %sub = add i32 %len, -12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %data, %land.lhs.true.if.end_crit_edge ], [ %data, %entry.if.end_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %if.then ], [ %len, %land.lhs.true.if.end_crit_edge ], [ %len, %entry.if.end_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 33554432) #6
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 16136, i32 noundef 33554432) #6
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %conv, i32 noundef 1) #6
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.reg_r.exit_crit_edge, label %if.end.i

entry.reg_r.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1584, ptr noundef %11, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r.exit_crit_edge

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i) #9
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call3.i, ptr %usb_err.i, align 8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %entry.reg_r.exit_crit_edge
  tail call fastcc void @rcv_val(ptr noundef %gspca_dev)
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i23 = icmp slt i32 %14, 0
  br i1 %cmp.i23, label %reg_r.exit.reg_r.exit35_crit_edge, label %if.end.i30

reg_r.exit.reg_r.exit35_crit_edge:                ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit35

if.end.i30:                                       ; preds = %reg_r.exit
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i25 = shl i32 %18, 8
  %or2.i26 = or i32 %shl.i.i25, -2147483520
  %usb_buf.i27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %19 = ptrtoint ptr %usb_buf.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i27, align 4
  %call3.i28 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or2.i26, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1616, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i28)
  %cmp4.i29 = icmp slt i32 %call3.i28, 0
  br i1 %cmp4.i29, label %do.end.i32, label %if.end.i30.reg_r.exit35_crit_edge

if.end.i30.reg_r.exit35_crit_edge:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit35

do.end.i32:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i28) #9
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call3.i28, ptr %usb_err.i, align 8
  br label %reg_r.exit35

reg_r.exit35:                                     ; preds = %do.end.i32, %if.end.i30.reg_r.exit35_crit_edge, %reg_r.exit.reg_r.exit35_crit_edge
  tail call fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef 32, i32 noundef -1)
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i37 = icmp slt i32 %23, 0
  br i1 %cmp.i37, label %reg_r.exit35.reg_w.exit85_crit_edge, label %if.end.i40

reg_r.exit35.reg_w.exit85_crit_edge:              ; preds = %reg_r.exit35
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85

if.end.i40:                                       ; preds = %reg_r.exit35
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i39 = shl i32 %27, 8
  %or.i = or i32 %shl.i.i39, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1568, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i40.reg_w.exit85.sink.split_crit_edge, label %reg_w.exit

if.end.i40.reg_w.exit85.sink.split_crit_edge:     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85.sink.split

reg_w.exit:                                       ; preds = %if.end.i40
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i43 = icmp slt i32 %.pr, 0
  br i1 %cmp.i43, label %reg_w.exit.reg_w.exit85_crit_edge, label %if.end.i49

reg_w.exit.reg_w.exit85_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85

if.end.i49:                                       ; preds = %reg_w.exit
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i45 = shl i32 %32, 8
  %or.i46 = or i32 %shl.i.i45, -2147483648
  %call2.i47 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i46, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1584, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i47)
  %cmp3.i48 = icmp slt i32 %call2.i47, 0
  br i1 %cmp3.i48, label %if.end.i49.reg_w.exit85.sink.split_crit_edge, label %reg_w.exit52

if.end.i49.reg_w.exit85.sink.split_crit_edge:     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85.sink.split

reg_w.exit52:                                     ; preds = %if.end.i49
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr87.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr87.pr)
  %cmp.i54 = icmp slt i32 %.pr87.pr, 0
  br i1 %cmp.i54, label %reg_w.exit52.reg_w.exit85_crit_edge, label %if.end.i60

reg_w.exit52.reg_w.exit85_crit_edge:              ; preds = %reg_w.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85

if.end.i60:                                       ; preds = %reg_w.exit52
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i56 = shl i32 %37, 8
  %or.i57 = or i32 %shl.i.i56, -2147483648
  %call2.i58 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i57, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1600, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i58)
  %cmp3.i59 = icmp slt i32 %call2.i58, 0
  br i1 %cmp3.i59, label %if.end.i60.reg_w.exit85.sink.split_crit_edge, label %reg_w.exit63

if.end.i60.reg_w.exit85.sink.split_crit_edge:     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85.sink.split

reg_w.exit63:                                     ; preds = %if.end.i60
  %38 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr89.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr89.pr)
  %cmp.i65 = icmp slt i32 %.pr89.pr, 0
  br i1 %cmp.i65, label %reg_w.exit63.reg_w.exit85_crit_edge, label %if.end.i71

reg_w.exit63.reg_w.exit85_crit_edge:              ; preds = %reg_w.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85

if.end.i71:                                       ; preds = %reg_w.exit63
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i67 = shl i32 %42, 8
  %or.i68 = or i32 %shl.i.i67, -2147483648
  %call2.i69 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i68, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1616, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69)
  %cmp3.i70 = icmp slt i32 %call2.i69, 0
  br i1 %cmp3.i70, label %if.end.i71.reg_w.exit85.sink.split_crit_edge, label %reg_w.exit74

if.end.i71.reg_w.exit85.sink.split_crit_edge:     ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85.sink.split

reg_w.exit74:                                     ; preds = %if.end.i71
  %43 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr91.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr91.pr.pr)
  %cmp.i76 = icmp slt i32 %.pr91.pr.pr, 0
  br i1 %cmp.i76, label %reg_w.exit74.reg_w.exit85_crit_edge, label %if.end.i82

reg_w.exit74.reg_w.exit85_crit_edge:              ; preds = %reg_w.exit74
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85

if.end.i82:                                       ; preds = %reg_w.exit74
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i78 = shl i32 %47, 8
  %or.i79 = or i32 %shl.i.i78, -2147483648
  %call2.i80 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i79, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1632, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i80)
  %cmp3.i81 = icmp slt i32 %call2.i80, 0
  br i1 %cmp3.i81, label %if.end.i82.reg_w.exit85.sink.split_crit_edge, label %if.end.i82.reg_w.exit85_crit_edge

if.end.i82.reg_w.exit85_crit_edge:                ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85

if.end.i82.reg_w.exit85.sink.split_crit_edge:     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit85.sink.split

reg_w.exit85.sink.split:                          ; preds = %if.end.i82.reg_w.exit85.sink.split_crit_edge, %if.end.i71.reg_w.exit85.sink.split_crit_edge, %if.end.i60.reg_w.exit85.sink.split_crit_edge, %if.end.i49.reg_w.exit85.sink.split_crit_edge, %if.end.i40.reg_w.exit85.sink.split_crit_edge
  %call2.i.sink113 = phi i32 [ %call2.i, %if.end.i40.reg_w.exit85.sink.split_crit_edge ], [ %call2.i47, %if.end.i49.reg_w.exit85.sink.split_crit_edge ], [ %call2.i58, %if.end.i60.reg_w.exit85.sink.split_crit_edge ], [ %call2.i69, %if.end.i71.reg_w.exit85.sink.split_crit_edge ], [ %call2.i80, %if.end.i82.reg_w.exit85.sink.split_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i.sink113) #9
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call2.i.sink113, ptr %usb_err.i, align 8
  br label %reg_w.exit85

reg_w.exit85:                                     ; preds = %reg_w.exit85.sink.split, %if.end.i82.reg_w.exit85_crit_edge, %reg_w.exit74.reg_w.exit85_crit_edge, %reg_w.exit63.reg_w.exit85_crit_edge, %reg_w.exit52.reg_w.exit85_crit_edge, %reg_w.exit.reg_w.exit85_crit_edge, %reg_r.exit35.reg_w.exit85_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp = icmp sgt i32 %49, 2
  br i1 %cmp, label %do.end, label %reg_w.exit85.do.end8_crit_edge

reg_w.exit85.do.end8_crit_edge:                   ; preds = %reg_w.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %reg_w.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %reg_w.exit85.do.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = load i8, ptr %streaming, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
    i32 9963778, label %sw.bb3
    i32 9963800, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %shl.i = shl i32 %9, 16
  %add.i = add i32 %shl.i, 100663296
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val2, align 4
  %shl.i19 = shl i32 %11, 16
  %add.i20 = add i32 %shl.i19, 117440512
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val4, align 4
  %shl.i21 = shl i32 %13, 16
  %add.i22 = add i32 %shl.i21, 134217728
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  %cond.i = select i1 %cmp.i, i32 862191616, i32 863502336
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %cond.i.sink = phi i32 [ %cond.i, %sw.bb5 ], [ %add.i22, %sw.bb3 ], [ %add.i20, %sw.bb1 ], [ %add.i, %sw.bb ]
  tail call fastcc void @snd_val(ptr noundef %add.ptr, i32 noundef 16136, i32 noundef %cond.i.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %16 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_val(ptr noundef %gspca_dev, i32 noundef %ads, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #6
  %2 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alen, align 4, !annotation !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 16136, i32 %ads)
  %cmp = icmp eq i32 %ads, 16136
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.reg_w.exit_crit_edge, label %if.end.i

if.then.reg_w.exit_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1796, ptr noundef %8, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i) #9
  br label %reg_w.exit.sink.split

reg_r.exit:                                       ; preds = %if.end.i
  %9 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i87 = icmp slt i32 %.pr, 0
  br i1 %cmp.i87, label %reg_r.exit.reg_w.exit_crit_edge, label %if.end.i94

reg_r.exit.reg_w.exit_crit_edge:                  ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

if.end.i94:                                       ; preds = %reg_r.exit
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i89 = shl i32 %13, 8
  %or2.i90 = or i32 %shl.i.i89, -2147483520
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i92 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or2.i90, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1797, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i92)
  %cmp4.i93 = icmp slt i32 %call3.i92, 0
  br i1 %cmp4.i93, label %do.end.i96, label %reg_r.exit99

do.end.i96:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i92) #9
  br label %reg_w.exit.sink.split

reg_r.exit99:                                     ; preds = %if.end.i94
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr232.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr232.pr)
  %cmp.i101 = icmp slt i32 %.pr232.pr, 0
  br i1 %cmp.i101, label %reg_r.exit99.reg_w.exit_crit_edge, label %if.end.i108

reg_r.exit99.reg_w.exit_crit_edge:                ; preds = %reg_r.exit99
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

if.end.i108:                                      ; preds = %reg_r.exit99
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i103 = shl i32 %24, 8
  %or2.i104 = or i32 %shl.i.i103, -2147483520
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call3.i106 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or2.i104, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1616, ptr noundef %26, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i106)
  %cmp4.i107 = icmp slt i32 %call3.i106, 0
  br i1 %cmp4.i107, label %do.end.i110, label %reg_r.exit113

do.end.i110:                                      ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call3.i106) #9
  br label %reg_w.exit.sink.split

reg_r.exit113:                                    ; preds = %if.end.i108
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr236.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr236.pr)
  %cmp.i115 = icmp slt i32 %.pr236.pr, 0
  br i1 %cmp.i115, label %reg_r.exit113.reg_w.exit_crit_edge, label %if.end.i118

reg_r.exit113.reg_w.exit_crit_edge:               ; preds = %reg_r.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

if.end.i118:                                      ; preds = %reg_r.exit113
  %conv = zext i8 %19 to i16
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i117 = shl i32 %31, 8
  %or.i = or i32 %shl.i.i117, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 1620, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i119, label %if.end.i118.reg_w.exit_crit_edge

if.end.i118.reg_w.exit_crit_edge:                 ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end.i119:                                      ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i) #9
  br label %reg_w.exit.sink.split

reg_w.exit.sink.split:                            ; preds = %do.end.i119, %do.end.i110, %do.end.i96, %do.end.i
  %call3.i92.sink = phi i32 [ %call3.i92, %do.end.i96 ], [ %call3.i, %do.end.i ], [ %call3.i106, %do.end.i110 ], [ %call2.i, %do.end.i119 ]
  %retval.0.i98235240.ph = phi i8 [ 0, %do.end.i96 ], [ 0, %do.end.i ], [ %19, %do.end.i110 ], [ %19, %do.end.i119 ]
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call3.i92.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %reg_w.exit.sink.split, %if.end.i118.reg_w.exit_crit_edge, %reg_r.exit113.reg_w.exit_crit_edge, %reg_r.exit99.reg_w.exit_crit_edge, %reg_r.exit.reg_w.exit_crit_edge, %if.then.reg_w.exit_crit_edge
  %retval.0.i98235240 = phi i8 [ %19, %reg_r.exit113.reg_w.exit_crit_edge ], [ %19, %if.end.i118.reg_w.exit_crit_edge ], [ %19, %reg_r.exit99.reg_w.exit_crit_edge ], [ 0, %if.then.reg_w.exit_crit_edge ], [ 0, %reg_r.exit.reg_w.exit_crit_edge ], [ %retval.0.i98235240.ph, %reg_w.exit.sink.split ]
  %phi.bo = add i8 %retval.0.i98235240, 4
  %33 = and i8 %phi.bo, 63
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %if.else.if.end_crit_edge, label %if.end.i127

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i127:                                      ; preds = %if.else
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 8
  %shl.i.i123 = shl i32 %35, 8
  %or.i124 = or i32 %shl.i.i123, -2147483648
  %call2.i125 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i124, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1620, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i125)
  %cmp3.i126 = icmp slt i32 %call2.i125, 0
  br i1 %cmp3.i126, label %do.end.i129, label %if.end.i127.if.end_crit_edge

if.end.i127.if.end_crit_edge:                     ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i129:                                      ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i125) #9
  %36 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call2.i125, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %do.end.i129, %if.end.i127.if.end_crit_edge, %if.else.if.end_crit_edge, %reg_w.exit
  %seq.0 = phi i8 [ %33, %reg_w.exit ], [ 4, %if.else.if.end_crit_edge ], [ 4, %if.end.i127.if.end_crit_edge ], [ 4, %do.end.i129 ]
  %37 = trunc i32 %ads to i16
  %usb_err.i131 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %38 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i132 = icmp slt i32 %39, 0
  br i1 %cmp.i132, label %if.end.cleanup_crit_edge, label %if.end.i138

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i138:                                      ; preds = %if.end
  %40 = lshr i16 %37, 8
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i134 = shl i32 %44, 8
  %or.i135 = or i32 %shl.i.i134, -2147483648
  %call2.i136 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i135, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %40, i16 noundef zeroext 1621, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i136)
  %cmp3.i137 = icmp slt i32 %call2.i136, 0
  br i1 %cmp3.i137, label %do.end.i140, label %reg_w.exit141

do.end.i140:                                      ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i136) #9
  br label %cleanup.sink.split

reg_w.exit141:                                    ; preds = %if.end.i138
  %45 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr241 = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr241)
  %cmp.i143 = icmp slt i32 %.pr241, 0
  br i1 %cmp.i143, label %reg_w.exit141.cleanup_crit_edge, label %if.end.i149

reg_w.exit141.cleanup_crit_edge:                  ; preds = %reg_w.exit141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i149:                                      ; preds = %reg_w.exit141
  %conv9 = and i16 %37, 255
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i145 = shl i32 %49, 8
  %or.i146 = or i32 %shl.i.i145, -2147483648
  %call2.i147 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i146, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv9, i16 noundef zeroext 1622, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %cmp3.i148 = icmp slt i32 %call2.i147, 0
  br i1 %cmp3.i148, label %do.end.i151, label %reg_w.exit152

do.end.i151:                                      ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i147) #9
  br label %cleanup.sink.split

reg_w.exit152:                                    ; preds = %if.end.i149
  %50 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr244.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr244.pr)
  %cmp.i154 = icmp slt i32 %.pr244.pr, 0
  br i1 %cmp.i154, label %reg_w.exit152.cleanup_crit_edge, label %if.end.i160

reg_w.exit152.cleanup_crit_edge:                  ; preds = %reg_w.exit152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i160:                                      ; preds = %reg_w.exit152
  %51 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i156 = shl i32 %54, 8
  %or.i157 = or i32 %shl.i.i156, -2147483648
  %call2.i158 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i157, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1623, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i158)
  %cmp3.i159 = icmp slt i32 %call2.i158, 0
  br i1 %cmp3.i159, label %do.end.i162, label %reg_w.exit163

do.end.i162:                                      ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i158) #9
  br label %cleanup.sink.split

reg_w.exit163:                                    ; preds = %if.end.i160
  %55 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr246.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr246.pr)
  %cmp.i165 = icmp slt i32 %.pr246.pr, 0
  br i1 %cmp.i165, label %reg_w.exit163.cleanup_crit_edge, label %if.end.i171

reg_w.exit163.cleanup_crit_edge:                  ; preds = %reg_w.exit163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i171:                                      ; preds = %reg_w.exit163
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i167 = shl i32 %59, 8
  %or.i168 = or i32 %shl.i.i167, -2147483648
  %call2.i169 = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i168, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 1624, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i169)
  %cmp3.i170 = icmp slt i32 %call2.i169, 0
  br i1 %cmp3.i170, label %do.end.i173, label %reg_w.exit174

do.end.i173:                                      ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i169) #9
  br label %cleanup.sink.split

reg_w.exit174:                                    ; preds = %if.end.i171
  %60 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr248.pr.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr248.pr.pr)
  %cmp.i176 = icmp slt i32 %.pr248.pr.pr, 0
  br i1 %cmp.i176, label %reg_w.exit174.cleanup_crit_edge, label %if.end.i182

reg_w.exit174.cleanup_crit_edge:                  ; preds = %reg_w.exit174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i182:                                      ; preds = %reg_w.exit174
  %61 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i178 = shl i32 %64, 8
  %or.i179 = or i32 %shl.i.i178, -2147483648
  %call2.i180 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i179, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1625, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i180)
  %cmp3.i181 = icmp slt i32 %call2.i180, 0
  br i1 %cmp3.i181, label %do.end.i184, label %reg_w.exit185

do.end.i184:                                      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i180) #9
  br label %cleanup.sink.split

reg_w.exit185:                                    ; preds = %if.end.i182
  %65 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr250.pr.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr250.pr.pr)
  %cmp.i187 = icmp slt i32 %.pr250.pr.pr, 0
  br i1 %cmp.i187, label %reg_w.exit185.cleanup_crit_edge, label %if.end.i193

reg_w.exit185.cleanup_crit_edge:                  ; preds = %reg_w.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i193:                                      ; preds = %reg_w.exit185
  %66 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i189 = shl i32 %69, 8
  %or.i190 = or i32 %shl.i.i189, -2147483648
  %call2.i191 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i190, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1626, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i191)
  %cmp3.i192 = icmp slt i32 %call2.i191, 0
  br i1 %cmp3.i192, label %do.end.i195, label %reg_w.exit196

do.end.i195:                                      ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i191) #9
  br label %cleanup.sink.split

reg_w.exit196:                                    ; preds = %if.end.i193
  %70 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr252.pr.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr252.pr.pr)
  %cmp.i198 = icmp slt i32 %.pr252.pr.pr, 0
  br i1 %cmp.i198, label %reg_w.exit196.cleanup_crit_edge, label %if.end.i204

reg_w.exit196.cleanup_crit_edge:                  ; preds = %reg_w.exit196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i204:                                      ; preds = %reg_w.exit196
  %71 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i200 = shl i32 %74, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %call2.i202 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or.i201, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1627, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i202)
  %cmp3.i203 = icmp slt i32 %call2.i202, 0
  br i1 %cmp3.i203, label %do.end.i206, label %reg_w.exit207

do.end.i206:                                      ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i202) #9
  br label %cleanup.sink.split

reg_w.exit207:                                    ; preds = %if.end.i204
  %75 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr254.pr.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr254.pr.pr)
  %cmp.i209 = icmp slt i32 %.pr254.pr.pr, 0
  br i1 %cmp.i209, label %reg_w.exit207.cleanup_crit_edge, label %if.end.i215

reg_w.exit207.cleanup_crit_edge:                  ; preds = %reg_w.exit207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i215:                                      ; preds = %reg_w.exit207
  %76 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i.i211 = shl i32 %79, 8
  %or.i212 = or i32 %shl.i.i211, -2147483648
  %call2.i213 = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i212, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 1616, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i213)
  %cmp3.i214 = icmp slt i32 %call2.i213, 0
  br i1 %cmp3.i214, label %do.end.i217, label %reg_w.exit218

do.end.i217:                                      ; preds = %if.end.i215
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i213) #9
  br label %cleanup.sink.split

reg_w.exit218:                                    ; preds = %if.end.i215
  %80 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr256.pr.pr.pr = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr256.pr.pr.pr)
  %cmp10 = icmp slt i32 %.pr256.pr.pr.pr, 0
  br i1 %cmp10, label %reg_w.exit218.cleanup_crit_edge, label %if.end13

reg_w.exit218.cleanup_crit_edge:                  ; preds = %reg_w.exit218
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %reg_w.exit218
  %shr14 = lshr i32 %val, 24
  %conv15 = trunc i32 %shr14 to i8
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %81 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %usb_buf, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv15, ptr %82, align 1
  %shr16 = lshr i32 %val, 16
  %conv17 = trunc i32 %shr16 to i8
  %84 = load ptr, ptr %usb_buf, align 4
  %arrayidx19 = getelementptr i8, ptr %84, i32 1
  %85 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv17, ptr %arrayidx19, align 1
  %shr20 = lshr i32 %val, 8
  %conv21 = trunc i32 %shr20 to i8
  %86 = load ptr, ptr %usb_buf, align 4
  %arrayidx23 = getelementptr i8, ptr %86, i32 2
  %87 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv21, ptr %arrayidx23, align 1
  %conv24 = trunc i32 %val to i8
  %88 = load ptr, ptr %usb_buf, align 4
  %arrayidx26 = getelementptr i8, ptr %88, i32 3
  %89 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv24, ptr %arrayidx26, align 1
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %1, align 8
  %shl.i = shl i32 %91, 8
  %or = or i32 %shl.i, -1073545216
  %92 = load ptr, ptr %usb_buf, align 4
  %call29 = call i32 @usb_bulk_msg(ptr noundef %1, i32 noundef %or, ptr noundef %92, i32 noundef 4, ptr noundef nonnull %alen, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end, label %if.else35

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call29) #9
  br label %cleanup.sink.split

if.else35:                                        ; preds = %if.end13
  br i1 %cmp, label %if.then38, label %if.else35.cleanup_crit_edge

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %if.else35
  %93 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usb_err.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i221 = icmp slt i32 %94, 0
  br i1 %cmp.i221, label %if.then38.cleanup_crit_edge, label %if.end.i227

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i227:                                      ; preds = %if.then38
  %conv44 = zext i8 %seq.0 to i16
  %95 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev1, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 8
  %shl.i.i223 = shl i32 %98, 8
  %or.i224 = or i32 %shl.i.i223, -2147483648
  %call2.i225 = call i32 @usb_control_msg(ptr noundef %96, i32 noundef %or.i224, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv44, i16 noundef zeroext 1797, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i225)
  %cmp3.i226 = icmp slt i32 %call2.i225, 0
  br i1 %cmp3.i226, label %do.end.i229, label %if.end.i227.cleanup_crit_edge

if.end.i227.cleanup_crit_edge:                    ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i229:                                      ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i225) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end.i229, %do.end, %do.end.i217, %do.end.i206, %do.end.i195, %do.end.i184, %do.end.i173, %do.end.i162, %do.end.i151, %do.end.i140
  %call2.i136.sink = phi i32 [ %call2.i136, %do.end.i140 ], [ %call2.i180, %do.end.i184 ], [ %call2.i169, %do.end.i173 ], [ %call2.i158, %do.end.i162 ], [ %call2.i147, %do.end.i151 ], [ %call2.i202, %do.end.i206 ], [ %call2.i191, %do.end.i195 ], [ %call2.i213, %do.end.i217 ], [ %call2.i225, %do.end.i229 ], [ %call29, %do.end ]
  %99 = ptrtoint ptr %usb_err.i131 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call2.i136.sink, ptr %usb_err.i131, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i227.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.else35.cleanup_crit_edge, %reg_w.exit218.cleanup_crit_edge, %reg_w.exit207.cleanup_crit_edge, %reg_w.exit196.cleanup_crit_edge, %reg_w.exit185.cleanup_crit_edge, %reg_w.exit174.cleanup_crit_edge, %reg_w.exit163.cleanup_crit_edge, %reg_w.exit152.cleanup_crit_edge, %reg_w.exit141.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcv_val(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #6
  %2 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %alen, align 4, !annotation !85
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %3 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1588, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i) #9
  br label %cleanup.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i2 = icmp slt i32 %.pr, 0
  br i1 %cmp.i2, label %reg_w.exit.cleanup_crit_edge, label %if.end.i8

reg_w.exit.cleanup_crit_edge:                     ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i8:                                        ; preds = %reg_w.exit
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i4 = shl i32 %11, 8
  %or.i5 = or i32 %shl.i.i4, -2147483648
  %call2.i6 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i5, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1589, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i6)
  %cmp3.i7 = icmp slt i32 %call2.i6, 0
  br i1 %cmp3.i7, label %do.end.i10, label %reg_w.exit11

do.end.i10:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i6) #9
  br label %cleanup.sink.split

reg_w.exit11:                                     ; preds = %if.end.i8
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr91.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr91.pr)
  %cmp.i13 = icmp slt i32 %.pr91.pr, 0
  br i1 %cmp.i13, label %reg_w.exit11.cleanup_crit_edge, label %if.end.i19

reg_w.exit11.cleanup_crit_edge:                   ; preds = %reg_w.exit11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i19:                                       ; preds = %reg_w.exit11
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i15 = shl i32 %16, 8
  %or.i16 = or i32 %shl.i.i15, -2147483648
  %call2.i17 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i16, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 1590, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i17)
  %cmp3.i18 = icmp slt i32 %call2.i17, 0
  br i1 %cmp3.i18, label %do.end.i21, label %reg_w.exit22

do.end.i21:                                       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i17) #9
  br label %cleanup.sink.split

reg_w.exit22:                                     ; preds = %if.end.i19
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr93.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr93.pr)
  %cmp.i24 = icmp slt i32 %.pr93.pr, 0
  br i1 %cmp.i24, label %reg_w.exit22.cleanup_crit_edge, label %if.end.i30

reg_w.exit22.cleanup_crit_edge:                   ; preds = %reg_w.exit22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i30:                                       ; preds = %reg_w.exit22
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i26 = shl i32 %21, 8
  %or.i27 = or i32 %shl.i.i26, -2147483648
  %call2.i28 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i27, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1591, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i28)
  %cmp3.i29 = icmp slt i32 %call2.i28, 0
  br i1 %cmp3.i29, label %do.end.i32, label %reg_w.exit33

do.end.i32:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i28) #9
  br label %cleanup.sink.split

reg_w.exit33:                                     ; preds = %if.end.i30
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr95.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr95.pr.pr)
  %cmp.i35 = icmp slt i32 %.pr95.pr.pr, 0
  br i1 %cmp.i35, label %reg_w.exit33.cleanup_crit_edge, label %if.end.i41

reg_w.exit33.cleanup_crit_edge:                   ; preds = %reg_w.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i41:                                       ; preds = %reg_w.exit33
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i37 = shl i32 %26, 8
  %or.i38 = or i32 %shl.i.i37, -2147483648
  %call2.i39 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i38, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 1592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i39)
  %cmp3.i40 = icmp slt i32 %call2.i39, 0
  br i1 %cmp3.i40, label %do.end.i43, label %reg_w.exit44

do.end.i43:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i39) #9
  br label %cleanup.sink.split

reg_w.exit44:                                     ; preds = %if.end.i41
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr97.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr97.pr.pr)
  %cmp.i46 = icmp slt i32 %.pr97.pr.pr, 0
  br i1 %cmp.i46, label %reg_w.exit44.cleanup_crit_edge, label %if.end.i52

reg_w.exit44.cleanup_crit_edge:                   ; preds = %reg_w.exit44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i52:                                       ; preds = %reg_w.exit44
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i48 = shl i32 %31, 8
  %or.i49 = or i32 %shl.i.i48, -2147483648
  %call2.i50 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i49, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1593, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i50)
  %cmp3.i51 = icmp slt i32 %call2.i50, 0
  br i1 %cmp3.i51, label %do.end.i54, label %reg_w.exit55

do.end.i54:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i50) #9
  br label %cleanup.sink.split

reg_w.exit55:                                     ; preds = %if.end.i52
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr99.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr99.pr.pr)
  %cmp.i57 = icmp slt i32 %.pr99.pr.pr, 0
  br i1 %cmp.i57, label %reg_w.exit55.cleanup_crit_edge, label %if.end.i63

reg_w.exit55.cleanup_crit_edge:                   ; preds = %reg_w.exit55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i63:                                       ; preds = %reg_w.exit55
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i59 = shl i32 %36, 8
  %or.i60 = or i32 %shl.i.i59, -2147483648
  %call2.i61 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i60, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1594, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i61)
  %cmp3.i62 = icmp slt i32 %call2.i61, 0
  br i1 %cmp3.i62, label %do.end.i65, label %reg_w.exit66

do.end.i65:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i61) #9
  br label %cleanup.sink.split

reg_w.exit66:                                     ; preds = %if.end.i63
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr101.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr101.pr.pr)
  %cmp.i68 = icmp slt i32 %.pr101.pr.pr, 0
  br i1 %cmp.i68, label %reg_w.exit66.cleanup_crit_edge, label %if.end.i74

reg_w.exit66.cleanup_crit_edge:                   ; preds = %reg_w.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i74:                                       ; preds = %reg_w.exit66
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i70 = shl i32 %41, 8
  %or.i71 = or i32 %shl.i.i70, -2147483648
  %call2.i72 = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i71, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1595, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i72)
  %cmp3.i73 = icmp slt i32 %call2.i72, 0
  br i1 %cmp3.i73, label %do.end.i76, label %reg_w.exit77

do.end.i76:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i72) #9
  br label %cleanup.sink.split

reg_w.exit77:                                     ; preds = %if.end.i74
  %42 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr103.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr103.pr.pr.pr)
  %cmp.i79 = icmp slt i32 %.pr103.pr.pr.pr, 0
  br i1 %cmp.i79, label %reg_w.exit77.cleanup_crit_edge, label %if.end.i85

reg_w.exit77.cleanup_crit_edge:                   ; preds = %reg_w.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i85:                                       ; preds = %reg_w.exit77
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i81 = shl i32 %46, 8
  %or.i82 = or i32 %shl.i.i81, -2147483648
  %call2.i83 = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i82, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 1584, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i83)
  %cmp3.i84 = icmp slt i32 %call2.i83, 0
  br i1 %cmp3.i84, label %do.end.i87, label %reg_w.exit88

do.end.i87:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2.i83) #9
  br label %cleanup.sink.split

reg_w.exit88:                                     ; preds = %if.end.i85
  %47 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr105.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr105.pr.pr.pr)
  %cmp = icmp slt i32 %.pr105.pr.pr.pr, 0
  br i1 %cmp, label %reg_w.exit88.cleanup_crit_edge, label %if.end

reg_w.exit88.cleanup_crit_edge:                   ; preds = %reg_w.exit88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %reg_w.exit88
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 8
  %shl.i = shl i32 %49, 8
  %or8 = or i32 %shl.i, -1073577856
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %50 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf, align 4
  %call9 = call i32 @usb_bulk_msg(ptr noundef %1, i32 noundef %or8, ptr noundef %51, i32 noundef 4, ptr noundef nonnull %alen, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call9) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %do.end.i87, %do.end.i76, %do.end.i65, %do.end.i54, %do.end.i43, %do.end.i32, %do.end.i21, %do.end.i10, %do.end.i
  %call2.i6.sink = phi i32 [ %call2.i6, %do.end.i10 ], [ %call2.i, %do.end.i ], [ %call2.i50, %do.end.i54 ], [ %call2.i39, %do.end.i43 ], [ %call2.i28, %do.end.i32 ], [ %call2.i17, %do.end.i21 ], [ %call2.i72, %do.end.i76 ], [ %call2.i61, %do.end.i65 ], [ %call2.i83, %do.end.i87 ], [ %call9, %do.end ]
  %52 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call2.i6.sink, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %reg_w.exit88.cleanup_crit_edge, %reg_w.exit77.cleanup_crit_edge, %reg_w.exit66.cleanup_crit_edge, %reg_w.exit55.cleanup_crit_edge, %reg_w.exit44.cleanup_crit_edge, %reg_w.exit33.cleanup_crit_edge, %reg_w.exit22.cleanup_crit_edge, %reg_w.exit11.cleanup_crit_edge, %reg_w.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stk014.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stk014.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/stk014.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_stk014__307_434_sd_driver_init6, !8, !"__initcall__kmod_gspca_stk014__307_434_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/stk014.c", i32 434, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/stk014.c", i32 423, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stk014.c", i32 422, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stk014.c", i32 397, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/stk014.c", i32 27, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/stk014.c", i32 226, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sd_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sd_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/stk014.c", i32 57, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @reg_r._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @reg_r._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @sd_init_controls._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/stk014.c", i32 377, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/stk014.c", i32 390, i32 3}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sd_init_controls._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sd_init_controls._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sd_ctrl_ops, !39, !"sd_ctrl_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/stk014.c", i32 368, i32 35}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/stk014.c", i32 155, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @snd_val._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @snd_val._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/stk014.c", i32 82, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @reg_w._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @reg_w._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/stk014.c", i32 261, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sd_start._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sd_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/stk014.c", i32 284, i32 3}
!57 = !{ptr @sd_start._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sd_start._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @jpeg_head, !60, !"jpeg_head", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/stk014.c", i32 112, i32 3}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rcv_val._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rcv_val._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @sd_pkt_scan.ffd9, !67, !"ffd9", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/stk014.c", i32 314, i32 23}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/stk014.c", i32 306, i32 2}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sd_stopN._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sd_stopN._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @device_table, !74, !"device_table", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/stk014.c", i32 408, i32 35}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"auto-init"}
