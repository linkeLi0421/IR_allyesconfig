; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/jeilinj.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/jeilinj.c"
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
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.sd = type { %struct.gspca_dev, i32, ptr, ptr, ptr, i8, i8, [589 x i8] }
%struct.jlj_command = type { [2 x i8], i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }

@__UNIQUE_ID_author303 = internal constant [59 x i8] c"gspca_jeilinj.author=Theodore Kilgore <kilgota@auburn.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_jeilinj.description=GSPCA/JEILINJ USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_jeilinj.file=drivers/media/usb/gspca/gspca_jeilinj\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_jeilinj.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_jeilinj__307_537_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_jeilinj\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jeilinj\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2425, i16 640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2425, i16 624, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sd_desc_sakar_57379, ptr @sd_desc_sportscam_dv15], [24 x i8] zeroinitializer }, align 32
@sd_desc_sakar_57379 = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_desc_sportscam_dv15 = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr @sd_get_jcomp, ptr @sd_set_jcomp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@jlj_mode = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 76800, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 307200, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Start streaming at %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/jeilinj.c\00", [62 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@jlj_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Start streaming command failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jlj_start\00", [22 x i8] zeroinitializer }, align 32
@jlj_start._entry_ptr = internal global ptr @jlj_start._entry, section ".printk_index", align 4
@jlj_write2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_jeilinj: command write [%02x] error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jlj_write2\00", [21 x i8] zeroinitializer }, align 32
@jlj_write2._entry_ptr = internal global ptr @jlj_write2._entry, section ".printk_index", align 4
@jlj_read1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_jeilinj: read command [%02x] error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jlj_read1\00", [22 x i8] zeroinitializer }, align 32
@jlj_read1._entry_ptr = internal global ptr @jlj_read1._entry, section ".printk_index", align 4
@sd_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Got %d bytes out of %d for Block 0\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_pkt_scan\00", [20 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr = internal global ptr @sd_pkt_scan._entry, section ".printk_index", align 4
@sd_pkt_scan._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: bad length\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.15 = internal global ptr @sd_pkt_scan._entry.13, section ".printk_index", align 4
@sd_pkt_scan._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: blocks_left = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.18 = internal global ptr @sd_pkt_scan._entry.16, section ".printk_index", align 4
@sd_pkt_scan._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %d blocks remaining for frame\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_pkt_scan._entry_ptr.21 = internal global ptr @sd_pkt_scan._entry.19, section ".printk_index", align 4
@sd_init_controls.custom_autogain = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @sd_ctrl_ops, ptr null, i32 9963794, ptr @.str.22, i32 1, i64 0, i64 3, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Automatic Gain (and Exposure)\00", [34 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"jeilinj:442:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_jeilinj: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 9963790, i64 9963791, i64 9963794, i64 9963795, i64 9963800, i64 10291459]
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 525, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 537, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 526, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 380, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 510, i32 30 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"sd_desc_sakar_57379\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 488, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"sd_desc_sportscam_dv15\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 498, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"jlj_mode\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 67, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 373, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 19, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 256, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 97, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 115, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 267, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 270, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 277, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 287, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"custom_autogain\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 431, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 423, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 435, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 442, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [37 x i8] c"../drivers/media/usb/gspca/jeilinj.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 459, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_jeilinj__307_537_sd_driver_init6, ptr @jlj_read1._entry, ptr @jlj_read1._entry_ptr, ptr @jlj_start._entry, ptr @jlj_start._entry_ptr, ptr @jlj_write2._entry, ptr @jlj_write2._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan._entry, ptr @sd_pkt_scan._entry.13, ptr @sd_pkt_scan._entry.16, ptr @sd_pkt_scan._entry.19, ptr @sd_pkt_scan._entry_ptr, ptr @sd_pkt_scan._entry_ptr.15, ptr @sd_pkt_scan._entry_ptr.18, ptr @sd_pkt_scan._entry_ptr.21, ptr @sd_start._entry, ptr @sd_start._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sd_desc_sakar_57379, ptr @sd_desc_sportscam_dv15, ptr @jlj_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @jpeg_head, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @sd_init_controls.custom_autogain, ptr @sd_ctrl_ops, ptr @.str.22, ptr @sd_init_controls._key, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_sakar_57379 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc_sportscam_dv15 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jlj_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jlj_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jlj_write2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jlj_read1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls.custom_autogain to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
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
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @sd_desc, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef %3, i32 noundef 3216, ptr noundef null) #7
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
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %1 to i8
  %type = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %type, align 8
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %3 = ptrtoint ptr %quality to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 85, ptr %quality, align 1
  %4 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @jlj_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %nmodes, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bulk, align 1
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bulk_nurbs, align 2
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %bulk_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readonly %gspca_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  %start_commands.i = alloca [23 x %struct.jlj_command], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
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
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 7, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %arrayidx9.i, align 1
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %12 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %quality, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.i = icmp eq i8 %13, 0
  br i1 %cmp.i, label %entry.if.end4.i_crit_edge, label %if.else.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %13)
  %cmp1.i = icmp ult i8 %13, 50
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %div31.rhs.trunc.i = zext i8 %13 to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.neg.i = mul nsw i32 %conv, -2
  %sub.i = add nsw i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i, %entry.if.end4.i_crit_edge
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ], [ 5000, %entry.if.end4.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i23 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %14 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i23, align 1
  %conv.i24 = zext i8 %15 to i32
  %mul6.i = mul nsw i32 %sc.0.i, %conv.i24
  %add7.i = add nsw i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %18 to i32
  %mul15.i = mul nsw i32 %sc.0.i, %conv14.i
  %add16.i = add nsw i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp sgt i32 %20, 2
  br i1 %cmp, label %do.end, label %jpeg_set_qual.exit.do.end12_crit_edge

jpeg_set_qual.exit.do.end12_crit_edge:            ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %1, i32 noundef %3) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %jpeg_set_qual.exit.do.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %start_commands.i) #7
  %21 = getelementptr inbounds i8, ptr %start_commands.i, i32 89
  %22 = call ptr @memset(ptr %21, i32 255, i32 3)
  %23 = ptrtoint ptr %start_commands.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 113, ptr %start_commands.i, align 1
  %arrayinit.element.i = getelementptr inbounds i8, ptr %start_commands.i, i32 1
  %24 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %arrayinit.element.i, align 1
  %ack_wanted.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 0, i32 1
  %25 = ptrtoint ptr %ack_wanted.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ack_wanted.i, align 1
  %delay.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 0, i32 2
  %26 = ptrtoint ptr %delay.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %delay.i, align 1
  %arrayinit.element2.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 1
  %27 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 112, ptr %arrayinit.element2.i, align 1
  %arrayinit.element5.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %arrayinit.element5.i, align 1
  %ack_wanted6.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 1, i32 1
  %29 = ptrtoint ptr %ack_wanted6.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %ack_wanted6.i, align 1
  %delay7.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 1, i32 2
  %30 = ptrtoint ptr %delay7.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -96, ptr %delay7.i, align 1
  %arrayinit.element8.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 2
  %31 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -107, ptr %arrayinit.element8.i, align 1
  %arrayinit.element11.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %arrayinit.element11.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 112, ptr %arrayinit.element11.i, align 1
  %ack_wanted12.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 2, i32 1
  %33 = ptrtoint ptr %ack_wanted12.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %ack_wanted12.i, align 1
  %delay13.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 2, i32 2
  %34 = ptrtoint ptr %delay13.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %delay13.i, align 1
  %arrayinit.element14.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 3
  %35 = ptrtoint ptr %arrayinit.element14.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 113, ptr %arrayinit.element14.i, align 1
  %arrayinit.element17.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 3, i32 0, i32 1
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %36 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %curr_mode.i, align 1
  %sub.i25 = sub i8 -127, %37
  %38 = ptrtoint ptr %arrayinit.element17.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %sub.i25, ptr %arrayinit.element17.i, align 1
  %ack_wanted19.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 3, i32 1
  %39 = ptrtoint ptr %ack_wanted19.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ack_wanted19.i, align 1
  %delay20.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 3, i32 2
  %40 = ptrtoint ptr %delay20.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %delay20.i, align 1
  %arrayinit.element21.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 4
  %41 = ptrtoint ptr %arrayinit.element21.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 112, ptr %arrayinit.element21.i, align 1
  %arrayinit.element24.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %arrayinit.element24.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %arrayinit.element24.i, align 1
  %ack_wanted25.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 4, i32 1
  %43 = ptrtoint ptr %ack_wanted25.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ack_wanted25.i, align 1
  %delay26.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 4, i32 2
  %44 = ptrtoint ptr %delay26.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -96, ptr %delay26.i, align 1
  %arrayinit.element27.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 5
  %45 = ptrtoint ptr %arrayinit.element27.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -107, ptr %arrayinit.element27.i, align 1
  %arrayinit.element30.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %arrayinit.element30.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 112, ptr %arrayinit.element30.i, align 1
  %ack_wanted31.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 5, i32 1
  %47 = ptrtoint ptr %ack_wanted31.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %ack_wanted31.i, align 1
  %delay32.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 5, i32 2
  %48 = ptrtoint ptr %delay32.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %delay32.i, align 1
  %arrayinit.element33.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 6
  %49 = ptrtoint ptr %arrayinit.element33.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 113, ptr %arrayinit.element33.i, align 1
  %arrayinit.element36.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 6, i32 0, i32 1
  %50 = ptrtoint ptr %arrayinit.element36.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayinit.element36.i, align 1
  %ack_wanted37.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 6, i32 1
  %51 = ptrtoint ptr %ack_wanted37.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ack_wanted37.i, align 1
  %delay38.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 6, i32 2
  %52 = ptrtoint ptr %delay38.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %delay38.i, align 1
  %arrayinit.element39.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 7
  %53 = ptrtoint ptr %arrayinit.element39.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 112, ptr %arrayinit.element39.i, align 1
  %arrayinit.element42.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %arrayinit.element42.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %arrayinit.element42.i, align 1
  %ack_wanted43.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 7, i32 1
  %55 = ptrtoint ptr %ack_wanted43.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ack_wanted43.i, align 1
  %delay44.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 7, i32 2
  %56 = ptrtoint ptr %delay44.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -96, ptr %delay44.i, align 1
  %arrayinit.element45.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 8
  %57 = ptrtoint ptr %arrayinit.element45.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -107, ptr %arrayinit.element45.i, align 1
  %arrayinit.element48.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 8, i32 0, i32 1
  %58 = ptrtoint ptr %arrayinit.element48.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 112, ptr %arrayinit.element48.i, align 1
  %ack_wanted49.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 8, i32 1
  %59 = ptrtoint ptr %ack_wanted49.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %ack_wanted49.i, align 1
  %delay50.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 8, i32 2
  %60 = ptrtoint ptr %delay50.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %delay50.i, align 1
  %arrayinit.element51.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 9
  %61 = ptrtoint ptr %arrayinit.element51.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -108, ptr %arrayinit.element51.i, align 1
  %arrayinit.element54.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 9, i32 0, i32 1
  %62 = ptrtoint ptr %arrayinit.element54.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %arrayinit.element54.i, align 1
  %ack_wanted55.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 9, i32 1
  %63 = ptrtoint ptr %ack_wanted55.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ack_wanted55.i, align 1
  %delay56.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 9, i32 2
  %64 = ptrtoint ptr %delay56.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %delay56.i, align 1
  %arrayinit.element57.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 10
  %65 = ptrtoint ptr %arrayinit.element57.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -34, ptr %arrayinit.element57.i, align 1
  %arrayinit.element60.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 10, i32 0, i32 1
  %66 = ptrtoint ptr %arrayinit.element60.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 36, ptr %arrayinit.element60.i, align 1
  %ack_wanted61.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 10, i32 1
  %67 = ptrtoint ptr %ack_wanted61.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %ack_wanted61.i, align 1
  %delay62.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 10, i32 2
  %68 = ptrtoint ptr %delay62.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %delay62.i, align 1
  %arrayinit.element63.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 11
  %69 = ptrtoint ptr %arrayinit.element63.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -108, ptr %arrayinit.element63.i, align 1
  %arrayinit.element66.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 11, i32 0, i32 1
  %70 = ptrtoint ptr %arrayinit.element66.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 2, ptr %arrayinit.element66.i, align 1
  %ack_wanted67.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 11, i32 1
  %71 = ptrtoint ptr %ack_wanted67.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %ack_wanted67.i, align 1
  %delay68.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 11, i32 2
  %72 = ptrtoint ptr %delay68.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %delay68.i, align 1
  %arrayinit.element69.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 12
  %73 = ptrtoint ptr %arrayinit.element69.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -35, ptr %arrayinit.element69.i, align 1
  %arrayinit.element72.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 12, i32 0, i32 1
  %74 = ptrtoint ptr %arrayinit.element72.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -16, ptr %arrayinit.element72.i, align 1
  %ack_wanted73.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 12, i32 1
  %75 = ptrtoint ptr %ack_wanted73.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %ack_wanted73.i, align 1
  %delay74.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 12, i32 2
  %76 = ptrtoint ptr %delay74.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %delay74.i, align 1
  %arrayinit.element75.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 13
  %77 = ptrtoint ptr %arrayinit.element75.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -108, ptr %arrayinit.element75.i, align 1
  %arrayinit.element78.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 13, i32 0, i32 1
  %78 = ptrtoint ptr %arrayinit.element78.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %arrayinit.element78.i, align 1
  %ack_wanted79.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 13, i32 1
  %79 = ptrtoint ptr %ack_wanted79.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %ack_wanted79.i, align 1
  %delay80.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 13, i32 2
  %80 = ptrtoint ptr %delay80.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %delay80.i, align 1
  %arrayinit.element81.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 14
  %81 = ptrtoint ptr %arrayinit.element81.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -29, ptr %arrayinit.element81.i, align 1
  %arrayinit.element84.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 14, i32 0, i32 1
  %82 = ptrtoint ptr %arrayinit.element84.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 44, ptr %arrayinit.element84.i, align 1
  %ack_wanted85.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 14, i32 1
  %83 = ptrtoint ptr %ack_wanted85.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %ack_wanted85.i, align 1
  %delay86.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 14, i32 2
  %84 = ptrtoint ptr %delay86.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %delay86.i, align 1
  %arrayinit.element87.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 15
  %85 = ptrtoint ptr %arrayinit.element87.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -108, ptr %arrayinit.element87.i, align 1
  %arrayinit.element90.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 15, i32 0, i32 1
  %86 = ptrtoint ptr %arrayinit.element90.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %arrayinit.element90.i, align 1
  %ack_wanted91.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 15, i32 1
  %87 = ptrtoint ptr %ack_wanted91.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %ack_wanted91.i, align 1
  %delay92.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 15, i32 2
  %88 = ptrtoint ptr %delay92.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %delay92.i, align 1
  %arrayinit.element93.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 16
  %89 = ptrtoint ptr %arrayinit.element93.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -28, ptr %arrayinit.element93.i, align 1
  %arrayinit.element96.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 16, i32 0, i32 1
  %90 = ptrtoint ptr %arrayinit.element96.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayinit.element96.i, align 1
  %ack_wanted97.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 16, i32 1
  %91 = ptrtoint ptr %ack_wanted97.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %ack_wanted97.i, align 1
  %delay98.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 16, i32 2
  %92 = ptrtoint ptr %delay98.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %delay98.i, align 1
  %arrayinit.element99.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 17
  %93 = ptrtoint ptr %arrayinit.element99.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -108, ptr %arrayinit.element99.i, align 1
  %arrayinit.element102.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 17, i32 0, i32 1
  %94 = ptrtoint ptr %arrayinit.element102.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %arrayinit.element102.i, align 1
  %ack_wanted103.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 17, i32 1
  %95 = ptrtoint ptr %ack_wanted103.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %ack_wanted103.i, align 1
  %delay104.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 17, i32 2
  %96 = ptrtoint ptr %delay104.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %delay104.i, align 1
  %arrayinit.element105.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 18
  %97 = ptrtoint ptr %arrayinit.element105.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -27, ptr %arrayinit.element105.i, align 1
  %arrayinit.element108.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 18, i32 0, i32 1
  %98 = ptrtoint ptr %arrayinit.element108.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayinit.element108.i, align 1
  %ack_wanted109.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 18, i32 1
  %99 = ptrtoint ptr %ack_wanted109.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %ack_wanted109.i, align 1
  %delay110.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 18, i32 2
  %100 = ptrtoint ptr %delay110.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %delay110.i, align 1
  %arrayinit.element111.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 19
  %101 = ptrtoint ptr %arrayinit.element111.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -108, ptr %arrayinit.element111.i, align 1
  %arrayinit.element114.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 19, i32 0, i32 1
  %102 = ptrtoint ptr %arrayinit.element114.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 2, ptr %arrayinit.element114.i, align 1
  %ack_wanted115.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 19, i32 1
  %103 = ptrtoint ptr %ack_wanted115.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %ack_wanted115.i, align 1
  %delay116.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 19, i32 2
  %104 = ptrtoint ptr %delay116.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %delay116.i, align 1
  %arrayinit.element117.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 20
  %105 = ptrtoint ptr %arrayinit.element117.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -26, ptr %arrayinit.element117.i, align 1
  %arrayinit.element120.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 20, i32 0, i32 1
  %106 = ptrtoint ptr %arrayinit.element120.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 44, ptr %arrayinit.element120.i, align 1
  %ack_wanted121.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 20, i32 1
  %107 = ptrtoint ptr %ack_wanted121.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %ack_wanted121.i, align 1
  %delay122.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 20, i32 2
  %108 = ptrtoint ptr %delay122.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %delay122.i, align 1
  %arrayinit.element123.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 21
  %109 = ptrtoint ptr %arrayinit.element123.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -108, ptr %arrayinit.element123.i, align 1
  %arrayinit.element126.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 21, i32 0, i32 1
  %110 = ptrtoint ptr %arrayinit.element126.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %arrayinit.element126.i, align 1
  %ack_wanted127.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 21, i32 1
  %111 = ptrtoint ptr %ack_wanted127.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %ack_wanted127.i, align 1
  %delay128.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 21, i32 2
  %112 = ptrtoint ptr %delay128.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %delay128.i, align 1
  %arrayinit.element129.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 22
  %113 = ptrtoint ptr %arrayinit.element129.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -86, ptr %arrayinit.element129.i, align 1
  %114 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %21, align 1
  %ack_wanted133.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 22, i32 1
  %115 = ptrtoint ptr %ack_wanted133.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %ack_wanted133.i, align 1
  %delay134.i = getelementptr inbounds %struct.jlj_command, ptr %start_commands.i, i32 22, i32 2
  %116 = ptrtoint ptr %delay134.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %delay134.i, align 1
  %blocks_left.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %117 = ptrtoint ptr %blocks_left.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %blocks_left.i, align 8
  %type.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %118 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %119)
  %cmp.i26 = icmp eq i8 %119, 1
  %..i = select i1 %cmp.i26, i32 9, i32 23
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.inc.i.for.body.i27_crit_edge, %do.end12
  %i.010.i = phi i32 [ 0, %do.end12 ], [ %inc.i29, %for.inc.i.for.body.i27_crit_edge ]
  %120 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i.i = icmp slt i32 %121, 0
  br i1 %cmp.i.i, label %for.body.i27.jlj_write2.exit.i_crit_edge, label %if.end.i.i

for.body.i27.jlj_write2.exit.i_crit_edge:         ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.i

if.end.i.i:                                       ; preds = %for.body.i27
  %arrayidx.i28 = getelementptr [23 x %struct.jlj_command], ptr %start_commands.i, i32 0, i32 %i.010.i
  %122 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb_buf.i.i, align 4
  %124 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %arrayidx.i28, align 1
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %123, align 1
  %127 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  %shl.i.i.i = shl i32 %130, 8
  %or.i.i = or i32 %shl.i.i.i, -1073643520
  %131 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_bulk_msg(ptr noundef %128, i32 noundef %or.i.i, ptr noundef %131, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.jlj_write2.exit.i_crit_edge

if.end.i.i.jlj_write2.exit.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %usb_buf.i.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  %conv.i.i = zext i8 %135 to i32
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i.i, i32 noundef %call3.i.i) #10
  %136 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %jlj_write2.exit.i

jlj_write2.exit.i:                                ; preds = %do.end.i.i, %if.end.i.i.jlj_write2.exit.i_crit_edge, %for.body.i27.jlj_write2.exit.i_crit_edge
  %delay141.i = getelementptr [23 x %struct.jlj_command], ptr %start_commands.i, i32 0, i32 %i.010.i, i32 2
  %137 = ptrtoint ptr %delay141.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %delay141.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i = icmp eq i8 %138, 0
  br i1 %tobool.not.i, label %jlj_write2.exit.i.if.end146.i_crit_edge, label %if.then142.i

jlj_write2.exit.i.if.end146.i_crit_edge:          ; preds = %jlj_write2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then142.i:                                     ; preds = %jlj_write2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv145.i = zext i8 %138 to i32
  tail call void @msleep(i32 noundef %conv145.i) #7
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then142.i, %jlj_write2.exit.i.if.end146.i_crit_edge
  %ack_wanted148.i = getelementptr [23 x %struct.jlj_command], ptr %start_commands.i, i32 0, i32 %i.010.i, i32 1
  %139 = ptrtoint ptr %ack_wanted148.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ack_wanted148.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool149.not.i = icmp eq i8 %140, 0
  br i1 %tobool149.not.i, label %if.end146.i.for.inc.i_crit_edge, label %if.then150.i

if.end146.i.for.inc.i_crit_edge:                  ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then150.i:                                     ; preds = %if.end146.i
  %141 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp.i2.i = icmp slt i32 %142, 0
  br i1 %cmp.i2.i, label %if.then150.i.for.inc.i_crit_edge, label %if.end.i7.i

if.then150.i.for.inc.i_crit_edge:                 ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i7.i:                                      ; preds = %if.then150.i
  %143 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 8
  %shl.i.i4.i = shl i32 %146, 8
  %or2.i.i = or i32 %shl.i.i4.i, -1069416320
  %147 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i6.i = tail call i32 @usb_bulk_msg(ptr noundef %144, i32 noundef %or2.i.i, ptr noundef %148, i32 noundef 1, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i6.i)
  %cmp5.i.i = icmp slt i32 %call3.i6.i, 0
  br i1 %cmp5.i.i, label %do.end.i9.i, label %if.end.i7.i.for.inc.i_crit_edge

if.end.i7.i.for.inc.i_crit_edge:                  ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i9.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %usb_buf.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 1
  %conv.i8.i = zext i8 %152 to i32
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv.i8.i, i32 noundef %call3.i6.i) #10
  %153 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %call3.i6.i, ptr %usb_err.i.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i9.i, %if.end.i7.i.for.inc.i_crit_edge, %if.then150.i.for.inc.i_crit_edge, %if.end146.i.for.inc.i_crit_edge
  %inc.i29 = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, %..i
  br i1 %exitcond.not.i30, label %for.end.i, label %for.inc.i.for.body.i27_crit_edge

for.inc.i.for.body.i27_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i27

for.end.i:                                        ; preds = %for.inc.i
  %jpegqual.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %154 = ptrtoint ptr %jpegqual.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %jpegqual.i, align 4
  %call.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %155) #7
  tail call fastcc void @setcamquality(ptr noundef %gspca_dev, i32 noundef %call.i) #7
  tail call void @msleep(i32 noundef 2) #7
  %freq.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %156 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %freq.i, align 8
  %call152.i = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %157) #7
  tail call fastcc void @setfreq(ptr noundef %gspca_dev, i32 noundef %call152.i) #7
  %158 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp153.i = icmp slt i32 %159, 0
  br i1 %cmp153.i, label %do.end.i, label %for.end.i.jlj_start.exit_crit_edge

for.end.i.jlj_start.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_start.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i) #10
  br label %jlj_start.exit

jlj_start.exit:                                   ; preds = %do.end.i, %for.end.i.jlj_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %start_commands.i) #7
  %160 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %usb_err.i.i, align 8
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %len, i32 noundef 512) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %len)
  %cmp4.not = icmp eq i32 %len, 512
  br i1 %cmp4.not, label %if.end20, label %do.body6

do.body6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp7 = icmp sgt i32 %1, 4
  br i1 %cmp7, label %do.end11, label %do.body6.discard_crit_edge

do.body6.discard_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %name14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name14) #10
  br label %discard

if.end20:                                         ; preds = %do.end3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp21 = icmp eq i32 %3, -1
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  %arrayidx23 = getelementptr i8, ptr %data, i32 10
  %4 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx23, align 1
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -1
  %blocks_left = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %6 = ptrtoint ptr %blocks_left to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %blocks_left, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp25 = icmp sgt i32 %7, 2
  br i1 %cmp25, label %do.end30, label %if.then22.do.end39_crit_edge

if.then22.do.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %name33 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name33, i32 noundef %sub) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %if.then22.do.end39_crit_edge
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #7
  %add.ptr = getelementptr i8, ptr %data, i32 16
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr, i32 noundef 496) #7
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %blocks_left41 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %8 = ptrtoint ptr %blocks_left41 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks_left41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp42 = icmp sgt i32 %9, 0
  br i1 %cmp42, label %do.body45, label %if.else.discard_crit_edge

if.else.discard_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %discard

do.body45:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp46 = icmp sgt i32 %10, 2
  br i1 %cmp46, label %do.end51, label %do.body45.do.end60_crit_edge

do.body45.do.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %name54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name54, i32 noundef %9) #10
  br label %do.end60

do.end60:                                         ; preds = %do.end51, %do.body45.do.end60_crit_edge
  %11 = ptrtoint ptr %blocks_left41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blocks_left41, align 8
  %sub62 = add i32 %12, -1
  store i32 %sub62, ptr %blocks_left41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub62)
  %cmp64 = icmp eq i32 %sub62, 0
  %. = select i1 %cmp64, i32 3, i32 2
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %., ptr noundef %data, i32 noundef 512) #7
  br label %cleanup

discard:                                          ; preds = %if.else.discard_crit_edge, %do.end11, %do.body6.discard_crit_edge
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %13 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %discard, %do.end60, %do.end39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %urb = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %while.body.for.cond_crit_edge, %entry
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 8
  %pipe = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %call = tail call i32 @usb_bulk_msg(ptr noundef %1, i32 noundef %5, ptr noundef %7, i32 noundef 512, ptr noundef null, i32 noundef 1000) #7
  %8 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb, align 8
  %transfer_buffer5 = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_buffer5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer5, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %for.cond
  %i.033 = phi i32 [ 0, %for.cond ], [ %add, %while.body.land.rhs_crit_edge ]
  %arrayidx6 = getelementptr i8, ptr %11, i32 %i.033
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp7.not = icmp eq i8 %13, -1
  %add = add nuw nsw i32 %i.033, 1
  br i1 %cmp7.not, label %lor.rhs, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx9 = getelementptr i8, ptr %11, i32 %add
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %15)
  %cmp11.not = icmp eq i8 %15, -39
  br i1 %cmp11.not, label %for.cond15.preheader, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %exitcond.not = icmp eq i32 %add, 511
  br i1 %exitcond.not, label %while.body.for.cond_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body.for.cond_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.cond15.preheader:                             ; preds = %lor.rhs
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp slt i32 %17, 0
  br i1 %cmp.i, label %for.cond15.preheader.jlj_write2.exit.3_crit_edge, label %if.end.i

for.cond15.preheader.jlj_write2.exit.3_crit_edge: ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3

if.end.i:                                         ; preds = %for.cond15.preheader
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 28928, ptr %19, align 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -1073643520
  %25 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_bulk_msg(ptr noundef %22, i32 noundef %or.i, ptr noundef %25, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.jlj_write2.exit.3.sink.split_crit_edge, label %jlj_write2.exit

if.end.i.jlj_write2.exit.3.sink.split_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3.sink.split

jlj_write2.exit:                                  ; preds = %if.end.i
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i.1 = icmp slt i32 %.pr, 0
  br i1 %cmp.i.1, label %jlj_write2.exit.jlj_write2.exit.3_crit_edge, label %if.end.i.1

jlj_write2.exit.jlj_write2.exit.3_crit_edge:      ; preds = %jlj_write2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3

if.end.i.1:                                       ; preds = %jlj_write2.exit
  %27 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 28681, ptr %28, align 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i.1 = shl i32 %33, 8
  %or.i.1 = or i32 %shl.i.i.1, -1073643520
  %34 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.1 = tail call i32 @usb_bulk_msg(ptr noundef %31, i32 noundef %or.i.1, ptr noundef %34, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %cmp4.i.1 = icmp slt i32 %call3.i.1, 0
  br i1 %cmp4.i.1, label %if.end.i.1.jlj_write2.exit.3.sink.split_crit_edge, label %jlj_write2.exit.1

if.end.i.1.jlj_write2.exit.3.sink.split_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3.sink.split

jlj_write2.exit.1:                                ; preds = %if.end.i.1
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr41.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr41.pr)
  %cmp.i.2 = icmp slt i32 %.pr41.pr, 0
  br i1 %cmp.i.2, label %jlj_write2.exit.1.jlj_write2.exit.3_crit_edge, label %if.end.i.2

jlj_write2.exit.1.jlj_write2.exit.3_crit_edge:    ; preds = %jlj_write2.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3

if.end.i.2:                                       ; preds = %jlj_write2.exit.1
  %36 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 29056, ptr %37, align 1
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i.2 = shl i32 %42, 8
  %or.i.2 = or i32 %shl.i.i.2, -1073643520
  %43 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.2 = tail call i32 @usb_bulk_msg(ptr noundef %40, i32 noundef %or.i.2, ptr noundef %43, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2)
  %cmp4.i.2 = icmp slt i32 %call3.i.2, 0
  br i1 %cmp4.i.2, label %if.end.i.2.jlj_write2.exit.3.sink.split_crit_edge, label %jlj_write2.exit.2

if.end.i.2.jlj_write2.exit.3.sink.split_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3.sink.split

jlj_write2.exit.2:                                ; preds = %if.end.i.2
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr43.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr43.pr)
  %cmp.i.3 = icmp slt i32 %.pr43.pr, 0
  br i1 %cmp.i.3, label %jlj_write2.exit.2.jlj_write2.exit.3_crit_edge, label %if.end.i.3

jlj_write2.exit.2.jlj_write2.exit.3_crit_edge:    ; preds = %jlj_write2.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3

if.end.i.3:                                       ; preds = %jlj_write2.exit.2
  %45 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 28677, ptr %46, align 1
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i.3 = shl i32 %51, 8
  %or.i.3 = or i32 %shl.i.i.3, -1073643520
  %52 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.3 = tail call i32 @usb_bulk_msg(ptr noundef %49, i32 noundef %or.i.3, ptr noundef %52, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3)
  %cmp4.i.3 = icmp slt i32 %call3.i.3, 0
  br i1 %cmp4.i.3, label %if.end.i.3.jlj_write2.exit.3.sink.split_crit_edge, label %if.end.i.3.jlj_write2.exit.3_crit_edge

if.end.i.3.jlj_write2.exit.3_crit_edge:           ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3

if.end.i.3.jlj_write2.exit.3.sink.split_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit.3.sink.split

jlj_write2.exit.3.sink.split:                     ; preds = %if.end.i.3.jlj_write2.exit.3.sink.split_crit_edge, %if.end.i.2.jlj_write2.exit.3.sink.split_crit_edge, %if.end.i.1.jlj_write2.exit.3.sink.split_crit_edge, %if.end.i.jlj_write2.exit.3.sink.split_crit_edge
  %call3.i.1.sink55 = phi i32 [ %call3.i, %if.end.i.jlj_write2.exit.3.sink.split_crit_edge ], [ %call3.i.1, %if.end.i.1.jlj_write2.exit.3.sink.split_crit_edge ], [ %call3.i.2, %if.end.i.2.jlj_write2.exit.3.sink.split_crit_edge ], [ %call3.i.3, %if.end.i.3.jlj_write2.exit.3.sink.split_crit_edge ]
  %53 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv.i.1 = zext i8 %56 to i32
  %call7.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i.1, i32 noundef %call3.i.1.sink55) #10
  %57 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call3.i.1.sink55, ptr %usb_err.i, align 8
  br label %jlj_write2.exit.3

jlj_write2.exit.3:                                ; preds = %jlj_write2.exit.3.sink.split, %if.end.i.3.jlj_write2.exit.3_crit_edge, %jlj_write2.exit.2.jlj_write2.exit.3_crit_edge, %jlj_write2.exit.1.jlj_write2.exit.3_crit_edge, %jlj_write2.exit.jlj_write2.exit.3_crit_edge, %for.cond15.preheader.jlj_write2.exit.3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setcamquality(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.jlj_write2.exit21_crit_edge, label %if.end.i

entry.jlj_write2.exit21_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit21

if.end.i:                                         ; preds = %entry
  %sub = sub i32 85, %val
  %mul = mul i32 %sub, 97
  %div = sdiv i32 %mul, 50
  %2 = trunc i32 %div to i8
  %conv4 = add i8 %2, 30
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %quality_commands.sroa.0.sroa.4.0.insert.ext = zext i8 %conv4 to i16
  %quality_commands.sroa.0.sroa.0.0.insert.insert = or i16 %quality_commands.sroa.0.sroa.4.0.insert.ext, 28928
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %quality_commands.sroa.0.sroa.0.0.insert.insert, ptr %4, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -1073643520
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_bulk_msg(ptr noundef %7, i32 noundef %or.i, ptr noundef %10, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.jlj_write2.exit21.sink.split_crit_edge, label %jlj_write2.exit

if.end.i.jlj_write2.exit21.sink.split_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit21.sink.split

jlj_write2.exit:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i10 = icmp slt i32 %.pr, 0
  br i1 %cmp.i10, label %jlj_write2.exit.jlj_write2.exit21_crit_edge, label %if.end.i17

jlj_write2.exit.jlj_write2.exit21_crit_edge:      ; preds = %jlj_write2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit21

if.end.i17:                                       ; preds = %jlj_write2.exit
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 28678, ptr %13, align 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i13 = shl i32 %18, 8
  %or.i14 = or i32 %shl.i.i13, -1073643520
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call3.i15 = tail call i32 @usb_bulk_msg(ptr noundef %16, i32 noundef %or.i14, ptr noundef %19, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i15)
  %cmp4.i16 = icmp slt i32 %call3.i15, 0
  br i1 %cmp4.i16, label %if.end.i17.jlj_write2.exit21.sink.split_crit_edge, label %if.end.i17.jlj_write2.exit21_crit_edge

if.end.i17.jlj_write2.exit21_crit_edge:           ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit21

if.end.i17.jlj_write2.exit21.sink.split_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit21.sink.split

jlj_write2.exit21.sink.split:                     ; preds = %if.end.i17.jlj_write2.exit21.sink.split_crit_edge, %if.end.i.jlj_write2.exit21.sink.split_crit_edge
  %call3.i.sink24 = phi i32 [ %call3.i, %if.end.i.jlj_write2.exit21.sink.split_crit_edge ], [ %call3.i15, %if.end.i17.jlj_write2.exit21.sink.split_crit_edge ]
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv.i = zext i8 %23 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i, i32 noundef %call3.i.sink24) #10
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i.sink24, ptr %usb_err.i, align 8
  br label %jlj_write2.exit21

jlj_write2.exit21:                                ; preds = %jlj_write2.exit21.sink.split, %if.end.i17.jlj_write2.exit21_crit_edge, %jlj_write2.exit.jlj_write2.exit21_crit_edge, %entry.jlj_write2.exit21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setfreq(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.jlj_write2.exit19_crit_edge, label %if.end.i

entry.jlj_write2.exit19_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit19

if.end.i:                                         ; preds = %entry
  %2 = trunc i32 %val to i8
  %3 = lshr i8 %2, 1
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %freq_commands.sroa.0.sroa.4.0.insert.ext = zext i8 %3 to i16
  %freq_commands.sroa.0.sroa.0.0.insert.insert = or i16 %freq_commands.sroa.0.sroa.4.0.insert.ext, 29056
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %freq_commands.sroa.0.sroa.0.0.insert.insert, ptr %5, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -1073643520
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_bulk_msg(ptr noundef %8, i32 noundef %or.i, ptr noundef %11, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.jlj_write2.exit19.sink.split_crit_edge, label %jlj_write2.exit

if.end.i.jlj_write2.exit19.sink.split_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit19.sink.split

jlj_write2.exit:                                  ; preds = %if.end.i
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i8 = icmp slt i32 %.pr, 0
  br i1 %cmp.i8, label %jlj_write2.exit.jlj_write2.exit19_crit_edge, label %if.end.i15

jlj_write2.exit.jlj_write2.exit19_crit_edge:      ; preds = %jlj_write2.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit19

if.end.i15:                                       ; preds = %jlj_write2.exit
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 28679, ptr %14, align 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i11 = shl i32 %19, 8
  %or.i12 = or i32 %shl.i.i11, -1073643520
  %20 = load ptr, ptr %usb_buf.i, align 4
  %call3.i13 = tail call i32 @usb_bulk_msg(ptr noundef %17, i32 noundef %or.i12, ptr noundef %20, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i13)
  %cmp4.i14 = icmp slt i32 %call3.i13, 0
  br i1 %cmp4.i14, label %if.end.i15.jlj_write2.exit19.sink.split_crit_edge, label %if.end.i15.jlj_write2.exit19_crit_edge

if.end.i15.jlj_write2.exit19_crit_edge:           ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit19

if.end.i15.jlj_write2.exit19.sink.split_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit19.sink.split

jlj_write2.exit19.sink.split:                     ; preds = %if.end.i15.jlj_write2.exit19.sink.split_crit_edge, %if.end.i.jlj_write2.exit19.sink.split_crit_edge
  %call3.i.sink22 = phi i32 [ %call3.i, %if.end.i.jlj_write2.exit19.sink.split_crit_edge ], [ %call3.i13, %if.end.i15.jlj_write2.exit19.sink.split_crit_edge ]
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv.i = zext i8 %24 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i, i32 noundef %call3.i.sink22) #10
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call3.i.sink22, ptr %usb_err.i, align 8
  br label %jlj_write2.exit19

jlj_write2.exit19:                                ; preds = %jlj_write2.exit19.sink.split, %if.end.i15.jlj_write2.exit19_crit_edge, %jlj_write2.exit.jlj_write2.exit19_crit_edge, %entry.jlj_write2.exit19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.23) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 1, i8 noundef zeroext 2) #7
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %freq, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_init_controls.custom_autogain, ptr noundef null) #7
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 2) #7
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 2) #7
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 2) #7
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 10291459, i64 noundef 35, i64 noundef 85, i64 noundef 1, i64 noundef 85) #7
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %jpegqual to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %jpegqual, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_get_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef writeonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %jcomp, i32 0, i32 140)
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %1 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jpegqual, align 4
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %2) #7
  %3 = ptrtoint ptr %jcomp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %jcomp, align 4
  %jpeg_markers = getelementptr inbounds %struct.v4l2_jpegcompression, ptr %jcomp, i32 0, i32 6
  %4 = ptrtoint ptr %jpeg_markers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %jpeg_markers, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_set_jcomp(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %jcomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jpegqual = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = ptrtoint ptr %jpegqual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jpegqual, align 4
  %2 = ptrtoint ptr %jcomp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jcomp, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #7
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %1, i32 noundef %3) #7
  %8 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %11) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
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
  %4 = load i8, ptr %streaming, align 2, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963800, label %sw.bb
    i32 9963790, label %sw.bb1
    i32 9963795, label %sw.bb3
    i32 9963791, label %sw.bb5
    i32 9963794, label %sw.bb7
    i32 10291459, label %sw.bb9
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call fastcc void @setfreq(ptr noundef %add.ptr, i32 noundef %9)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val2, align 4
  %12 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 0
  br i1 %cmp.i.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb1
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %14 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 -27646, ptr %15, align 1
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i.i = shl i32 %20, 8
  %or.i.i = or i32 %shl.i.i.i, -1073643520
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_bulk_msg(ptr noundef %18, i32 noundef %or.i.i, ptr noundef %21, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.jlj_write2.exit18.sink.split.i_crit_edge, label %jlj_write2.exit.i

if.end.i.i.jlj_write2.exit18.sink.split.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i

jlj_write2.exit.i:                                ; preds = %if.end.i.i
  %22 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i7.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i7.i, label %jlj_write2.exit.i.sw.epilog_crit_edge, label %if.end.i14.i

jlj_write2.exit.i.sw.epilog_crit_edge:            ; preds = %jlj_write2.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i:                                     ; preds = %jlj_write2.exit.i
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %25 = trunc i32 %11 to i16
  %setred_commands.sroa.4.sroa.4.0.insert.ext.i = and i16 %25, 255
  %setred_commands.sroa.4.sroa.0.0.insert.insert.i = or i16 %setred_commands.sroa.4.sroa.4.0.insert.ext.i, -6656
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %setred_commands.sroa.4.sroa.0.0.insert.insert.i, ptr %24, align 1
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i10.i = shl i32 %30, 8
  %or.i11.i = or i32 %shl.i.i10.i, -1073643520
  %31 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i12.i = tail call i32 @usb_bulk_msg(ptr noundef %28, i32 noundef %or.i11.i, ptr noundef %31, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i12.i)
  %cmp4.i13.i = icmp slt i32 %call3.i12.i, 0
  br i1 %cmp4.i13.i, label %if.end.i14.i.jlj_write2.exit18.sink.split.i_crit_edge, label %if.end.i14.i.sw.epilog_crit_edge

if.end.i14.i.sw.epilog_crit_edge:                 ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i.jlj_write2.exit18.sink.split.i_crit_edge: ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i

jlj_write2.exit18.sink.split.i:                   ; preds = %if.end.i14.i.jlj_write2.exit18.sink.split.i_crit_edge, %if.end.i.i.jlj_write2.exit18.sink.split.i_crit_edge
  %call3.i.sink20.i = phi i32 [ %call3.i.i, %if.end.i.i.jlj_write2.exit18.sink.split.i_crit_edge ], [ %call3.i12.i, %if.end.i14.i.jlj_write2.exit18.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i.i = zext i8 %35 to i32
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i.i, i32 noundef %call3.i.sink20.i) #10
  %36 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call3.i.sink20.i, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val4, align 4
  %39 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i32 = icmp slt i32 %40, 0
  br i1 %cmp.i.i32, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i.i39

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i39:                                     ; preds = %sw.bb3
  %usb_buf.i.i33 = getelementptr i8, ptr %1, i32 204
  %41 = ptrtoint ptr %usb_buf.i.i33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb_buf.i.i33, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -27646, ptr %42, align 1
  %dev.i.i34 = getelementptr i8, ptr %1, i32 -100
  %44 = ptrtoint ptr %dev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i34, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i.i35 = shl i32 %47, 8
  %or.i.i36 = or i32 %shl.i.i.i35, -1073643520
  %48 = load ptr, ptr %usb_buf.i.i33, align 4
  %call3.i.i37 = tail call i32 @usb_bulk_msg(ptr noundef %45, i32 noundef %or.i.i36, ptr noundef %48, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i37)
  %cmp4.i.i38 = icmp slt i32 %call3.i.i37, 0
  br i1 %cmp4.i.i38, label %if.end.i.i39.jlj_write2.exit18.sink.split.i51_crit_edge, label %jlj_write2.exit.i42

if.end.i.i39.jlj_write2.exit18.sink.split.i51_crit_edge: ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i51

jlj_write2.exit.i42:                              ; preds = %if.end.i.i39
  %49 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i40 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i40)
  %cmp.i7.i41 = icmp slt i32 %.pr.i40, 0
  br i1 %cmp.i7.i41, label %jlj_write2.exit.i42.sw.epilog_crit_edge, label %if.end.i14.i47

jlj_write2.exit.i42.sw.epilog_crit_edge:          ; preds = %jlj_write2.exit.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i47:                                   ; preds = %jlj_write2.exit.i42
  %50 = ptrtoint ptr %usb_buf.i.i33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i.i33, align 4
  %52 = trunc i32 %38 to i16
  %setgreen_commands.sroa.4.sroa.4.0.insert.ext.i = and i16 %52, 255
  %setgreen_commands.sroa.4.sroa.0.0.insert.insert.i = or i16 %setgreen_commands.sroa.4.sroa.4.0.insert.ext.i, -6400
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %setgreen_commands.sroa.4.sroa.0.0.insert.insert.i, ptr %51, align 1
  %54 = ptrtoint ptr %dev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i.i34, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i10.i43 = shl i32 %57, 8
  %or.i11.i44 = or i32 %shl.i.i10.i43, -1073643520
  %58 = load ptr, ptr %usb_buf.i.i33, align 4
  %call3.i12.i45 = tail call i32 @usb_bulk_msg(ptr noundef %55, i32 noundef %or.i11.i44, ptr noundef %58, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i12.i45)
  %cmp4.i13.i46 = icmp slt i32 %call3.i12.i45, 0
  br i1 %cmp4.i13.i46, label %if.end.i14.i47.jlj_write2.exit18.sink.split.i51_crit_edge, label %if.end.i14.i47.sw.epilog_crit_edge

if.end.i14.i47.sw.epilog_crit_edge:               ; preds = %if.end.i14.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i47.jlj_write2.exit18.sink.split.i51_crit_edge: ; preds = %if.end.i14.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i51

jlj_write2.exit18.sink.split.i51:                 ; preds = %if.end.i14.i47.jlj_write2.exit18.sink.split.i51_crit_edge, %if.end.i.i39.jlj_write2.exit18.sink.split.i51_crit_edge
  %call3.i.sink20.i48 = phi i32 [ %call3.i.i37, %if.end.i.i39.jlj_write2.exit18.sink.split.i51_crit_edge ], [ %call3.i12.i45, %if.end.i14.i47.jlj_write2.exit18.sink.split.i51_crit_edge ]
  %59 = ptrtoint ptr %usb_buf.i.i33 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usb_buf.i.i33, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %conv.i.i49 = zext i8 %62 to i32
  %call7.i.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i.i49, i32 noundef %call3.i.sink20.i48) #10
  %63 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call3.i.sink20.i48, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %64 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val6, align 4
  %66 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i53 = icmp slt i32 %67, 0
  br i1 %cmp.i.i53, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i.i60

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i60:                                     ; preds = %sw.bb5
  %usb_buf.i.i54 = getelementptr i8, ptr %1, i32 204
  %68 = ptrtoint ptr %usb_buf.i.i54 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb_buf.i.i54, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 -27646, ptr %69, align 1
  %dev.i.i55 = getelementptr i8, ptr %1, i32 -100
  %71 = ptrtoint ptr %dev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i55, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i.i56 = shl i32 %74, 8
  %or.i.i57 = or i32 %shl.i.i.i56, -1073643520
  %75 = load ptr, ptr %usb_buf.i.i54, align 4
  %call3.i.i58 = tail call i32 @usb_bulk_msg(ptr noundef %72, i32 noundef %or.i.i57, ptr noundef %75, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i58)
  %cmp4.i.i59 = icmp slt i32 %call3.i.i58, 0
  br i1 %cmp4.i.i59, label %if.end.i.i60.jlj_write2.exit18.sink.split.i72_crit_edge, label %jlj_write2.exit.i63

if.end.i.i60.jlj_write2.exit18.sink.split.i72_crit_edge: ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i72

jlj_write2.exit.i63:                              ; preds = %if.end.i.i60
  %76 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr.i61 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i61)
  %cmp.i7.i62 = icmp slt i32 %.pr.i61, 0
  br i1 %cmp.i7.i62, label %jlj_write2.exit.i63.sw.epilog_crit_edge, label %if.end.i14.i68

jlj_write2.exit.i63.sw.epilog_crit_edge:          ; preds = %jlj_write2.exit.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i68:                                   ; preds = %jlj_write2.exit.i63
  %77 = ptrtoint ptr %usb_buf.i.i54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb_buf.i.i54, align 4
  %79 = trunc i32 %65 to i16
  %setblue_commands.sroa.4.sroa.4.0.insert.ext.i = and i16 %79, 255
  %setblue_commands.sroa.4.sroa.0.0.insert.insert.i = or i16 %setblue_commands.sroa.4.sroa.4.0.insert.ext.i, -5888
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %setblue_commands.sroa.4.sroa.0.0.insert.insert.i, ptr %78, align 1
  %81 = ptrtoint ptr %dev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i.i55, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i10.i64 = shl i32 %84, 8
  %or.i11.i65 = or i32 %shl.i.i10.i64, -1073643520
  %85 = load ptr, ptr %usb_buf.i.i54, align 4
  %call3.i12.i66 = tail call i32 @usb_bulk_msg(ptr noundef %82, i32 noundef %or.i11.i65, ptr noundef %85, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i12.i66)
  %cmp4.i13.i67 = icmp slt i32 %call3.i12.i66, 0
  br i1 %cmp4.i13.i67, label %if.end.i14.i68.jlj_write2.exit18.sink.split.i72_crit_edge, label %if.end.i14.i68.sw.epilog_crit_edge

if.end.i14.i68.sw.epilog_crit_edge:               ; preds = %if.end.i14.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i68.jlj_write2.exit18.sink.split.i72_crit_edge: ; preds = %if.end.i14.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i72

jlj_write2.exit18.sink.split.i72:                 ; preds = %if.end.i14.i68.jlj_write2.exit18.sink.split.i72_crit_edge, %if.end.i.i60.jlj_write2.exit18.sink.split.i72_crit_edge
  %call3.i.sink20.i69 = phi i32 [ %call3.i.i58, %if.end.i.i60.jlj_write2.exit18.sink.split.i72_crit_edge ], [ %call3.i12.i66, %if.end.i14.i68.jlj_write2.exit18.sink.split.i72_crit_edge ]
  %86 = ptrtoint ptr %usb_buf.i.i54 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_buf.i.i54, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv.i.i70 = zext i8 %89 to i32
  %call7.i.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i.i70, i32 noundef %call3.i.sink20.i69) #10
  %90 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call3.i.sink20.i69, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %91 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val8, align 4
  %val.tr.i = trunc i32 %92 to i8
  %conv.i = shl i8 %val.tr.i, 4
  %93 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.i74 = icmp slt i32 %94, 0
  br i1 %cmp.i.i74, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i.i81

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i81:                                     ; preds = %sw.bb7
  %usb_buf.i.i75 = getelementptr i8, ptr %1, i32 204
  %95 = ptrtoint ptr %usb_buf.i.i75 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_buf.i.i75, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 -27646, ptr %96, align 1
  %dev.i.i76 = getelementptr i8, ptr %1, i32 -100
  %98 = ptrtoint ptr %dev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i.i76, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %shl.i.i.i77 = shl i32 %101, 8
  %or.i.i78 = or i32 %shl.i.i.i77, -1073643520
  %102 = load ptr, ptr %usb_buf.i.i75, align 4
  %call3.i.i79 = tail call i32 @usb_bulk_msg(ptr noundef %99, i32 noundef %or.i.i78, ptr noundef %102, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i79)
  %cmp4.i.i80 = icmp slt i32 %call3.i.i79, 0
  br i1 %cmp4.i.i80, label %if.end.i.i81.jlj_write2.exit18.sink.split.i93_crit_edge, label %jlj_write2.exit.i84

if.end.i.i81.jlj_write2.exit18.sink.split.i93_crit_edge: ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i93

jlj_write2.exit.i84:                              ; preds = %if.end.i.i81
  %103 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr.i82 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i82)
  %cmp.i7.i83 = icmp slt i32 %.pr.i82, 0
  br i1 %cmp.i7.i83, label %jlj_write2.exit.i84.sw.epilog_crit_edge, label %if.end.i14.i89

jlj_write2.exit.i84.sw.epilog_crit_edge:          ; preds = %jlj_write2.exit.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i89:                                   ; preds = %jlj_write2.exit.i84
  %104 = ptrtoint ptr %usb_buf.i.i75 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %usb_buf.i.i75, align 4
  %autogain_commands.sroa.4.sroa.4.0.insert.ext.i = zext i8 %conv.i to i16
  %autogain_commands.sroa.4.sroa.0.0.insert.insert.i = or i16 %autogain_commands.sroa.4.sroa.4.0.insert.ext.i, -12544
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %autogain_commands.sroa.4.sroa.0.0.insert.insert.i, ptr %105, align 1
  %107 = ptrtoint ptr %dev.i.i76 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i.i76, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 8
  %shl.i.i10.i85 = shl i32 %110, 8
  %or.i11.i86 = or i32 %shl.i.i10.i85, -1073643520
  %111 = load ptr, ptr %usb_buf.i.i75, align 4
  %call3.i12.i87 = tail call i32 @usb_bulk_msg(ptr noundef %108, i32 noundef %or.i11.i86, ptr noundef %111, i32 noundef 2, ptr noundef null, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i12.i87)
  %cmp4.i13.i88 = icmp slt i32 %call3.i12.i87, 0
  br i1 %cmp4.i13.i88, label %if.end.i14.i89.jlj_write2.exit18.sink.split.i93_crit_edge, label %if.end.i14.i89.sw.epilog_crit_edge

if.end.i14.i89.sw.epilog_crit_edge:               ; preds = %if.end.i14.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i14.i89.jlj_write2.exit18.sink.split.i93_crit_edge: ; preds = %if.end.i14.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %jlj_write2.exit18.sink.split.i93

jlj_write2.exit18.sink.split.i93:                 ; preds = %if.end.i14.i89.jlj_write2.exit18.sink.split.i93_crit_edge, %if.end.i.i81.jlj_write2.exit18.sink.split.i93_crit_edge
  %call3.i.sink20.i90 = phi i32 [ %call3.i.i79, %if.end.i.i81.jlj_write2.exit18.sink.split.i93_crit_edge ], [ %call3.i12.i87, %if.end.i14.i89.jlj_write2.exit18.sink.split.i93_crit_edge ]
  %112 = ptrtoint ptr %usb_buf.i.i75 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %usb_buf.i.i75, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  %conv.i.i91 = zext i8 %115 to i32
  %call7.i.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv.i.i91, i32 noundef %call3.i.sink20.i90) #10
  %116 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call3.i.sink20.i90, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %jpeg_hdr = getelementptr i8, ptr %1, i32 1042
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %117 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %118)
  %cmp.i = icmp slt i32 %118, 1
  br i1 %cmp.i, label %sw.bb9.if.end4.i_crit_edge, label %if.else.i

sw.bb9.if.end4.i_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %118)
  %cmp1.i = icmp ult i32 %118, 50
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %div31.rhs.trunc.i = trunc i32 %118 to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.neg.i = mul i32 %118, -2
  %sub.i = add i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i, %sw.bb9.if.end4.i_crit_edge
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ], [ 5000, %sw.bb9.if.end4.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i, align 1
  %conv.i94 = zext i8 %120 to i32
  %mul6.i = mul i32 %sc.0.i, %conv.i94
  %add7.i = add i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %121 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %122 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %123 to i32
  %mul15.i = mul i32 %sc.0.i, %conv14.i
  %add16.i = add i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %124 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val10, align 4
  tail call fastcc void @setcamquality(ptr noundef %add.ptr, i32 noundef %126)
  br label %sw.epilog

sw.epilog:                                        ; preds = %jpeg_set_qual.exit, %jlj_write2.exit18.sink.split.i93, %if.end.i14.i89.sw.epilog_crit_edge, %jlj_write2.exit.i84.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %jlj_write2.exit18.sink.split.i72, %if.end.i14.i68.sw.epilog_crit_edge, %jlj_write2.exit.i63.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %jlj_write2.exit18.sink.split.i51, %if.end.i14.i47.sw.epilog_crit_edge, %jlj_write2.exit.i42.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %jlj_write2.exit18.sink.split.i, %if.end.i14.i.sw.epilog_crit_edge, %jlj_write2.exit.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  %127 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %128, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_jeilinj__307_537_sd_driver_init6, !8, !"__initcall__kmod_gspca_jeilinj__307_537_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 537, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 526, i32 16}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 525, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 510, i32 30}
!17 = !{ptr @sd_desc_sakar_57379, !18, !"sd_desc_sakar_57379", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 488, i32 29}
!19 = !{ptr @jlj_mode, !20, !"jlj_mode", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 67, i32 31}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 373, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sd_start._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_start._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @jpeg_head, !28, !"jpeg_head", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 256, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jlj_start._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jlj_start._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 97, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jlj_write2._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @jlj_write2._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 115, i32 3}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @jlj_read1._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @jlj_read1._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 267, i32 2}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sd_pkt_scan._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sd_pkt_scan._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 270, i32 3}
!51 = !{ptr @sd_pkt_scan._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sd_pkt_scan._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 277, i32 3}
!55 = !{ptr @sd_pkt_scan._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sd_pkt_scan._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 287, i32 3}
!59 = !{ptr @sd_pkt_scan._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sd_pkt_scan._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"stop_commands", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 326, i32 12}
!63 = !{ptr @sd_desc_sportscam_dv15, !64, !"sd_desc_sportscam_dv15", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 498, i32 29}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 435, i32 11}
!67 = !{ptr @sd_init_controls.custom_autogain, !68, !"custom_autogain", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 431, i32 39}
!69 = !{ptr @sd_init_controls._key, !70, !"_key", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 442, i32 2}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 459, i32 3}
!74 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sd_init_controls._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_init_controls._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @sd_ctrl_ops, !78, !"sd_ctrl_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 423, i32 35}
!79 = !{ptr @device_table, !80, !"device_table", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/jeilinj.c", i32 380, i32 35}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
