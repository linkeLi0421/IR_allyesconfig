; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/sonixj.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/sonixj.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.sd = type { %struct.gspca_dev, %struct.atomic_t, ptr, ptr, ptr, %struct.anon.108, %struct.anon.109, ptr, ptr, ptr, ptr, i32, %struct.work_struct, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [589 x i8] }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.atomic_t = type { i32 }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [66 x i8] c"gspca_sonixj.author=Jean-Fran\C3\A7ois Moine <http://moinejf.free.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [60 x i8] c"gspca_sonixj.description=GSPCA/SONIX JPEG USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_sonixj.file=drivers/media/usb/gspca/gspca_sonixj\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_sonixj.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_sonixj__307_2981_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_sonixj\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sonixj\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [39 x %struct.usb_device_id], [248 x i8] } { [39 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1112, i16 28709, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 197633 }, %struct.usb_device_id { i16 3, i16 1112, i16 28718, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 199168 }, %struct.usb_device_id { i16 3, i16 1118, i16 245, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 68097 }, %struct.usb_device_id { i16 3, i16 1118, i16 247, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 68097 }, %struct.usb_device_id { i16 3, i16 1137, i16 807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 66304 }, %struct.usb_device_id { i16 3, i16 1137, i16 808, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 66304 }, %struct.usb_device_id { i16 3, i16 1137, i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 66304 }, %struct.usb_device_id { i16 3, i16 1784, i16 12292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 68096 }, %struct.usb_device_id { i16 3, i16 1784, i16 12296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 68096 }, %struct.usb_device_id { i16 3, i16 3141, i16 24640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 3141, i16 24700, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 512 }, %struct.usb_device_id { i16 3, i16 3141, i16 24768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 66306 }, %struct.usb_device_id { i16 3, i16 3141, i16 24782, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 69120 }, %struct.usb_device_id { i16 3, i16 3141, i16 24812, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 66816 }, %struct.usb_device_id { i16 3, i16 3141, i16 24827, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 68096 }, %struct.usb_device_id { i16 3, i16 3141, i16 24828, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 66048 }, %struct.usb_device_id { i16 3, i16 3141, i16 24830, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67584 }, %struct.usb_device_id { i16 3, i16 3141, i16 24832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 197376 }, %struct.usb_device_id { i16 3, i16 3141, i16 24834, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 199680 }, %struct.usb_device_id { i16 3, i16 3141, i16 24842, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198912 }, %struct.usb_device_id { i16 3, i16 3141, i16 24843, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 199168 }, %struct.usb_device_id { i16 3, i16 3141, i16 24844, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 197120 }, %struct.usb_device_id { i16 3, i16 3141, i16 24846, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198656 }, %struct.usb_device_id { i16 3, i16 3141, i16 24872, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198400 }, %struct.usb_device_id { i16 3, i16 3141, i16 24874, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198912 }, %struct.usb_device_id { i16 3, i16 3141, i16 24875, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 131072 }, %struct.usb_device_id { i16 3, i16 3141, i16 24876, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 132352 }, %struct.usb_device_id { i16 3, i16 3141, i16 24878, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 133120 }, %struct.usb_device_id { i16 3, i16 3141, i16 24880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 197376 }, %struct.usb_device_id { i16 3, i16 3141, i16 24888, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 197888 }, %struct.usb_device_id { i16 3, i16 3141, i16 24890, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198912 }, %struct.usb_device_id { i16 3, i16 3141, i16 24891, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 199168 }, %struct.usb_device_id { i16 3, i16 3141, i16 24892, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 197120 }, %struct.usb_device_id { i16 3, i16 3141, i16 24894, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198656 }, %struct.usb_device_id { i16 3, i16 3141, i16 24898, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 199680 }, %struct.usb_device_id { i16 3, i16 3141, i16 24899, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 200192 }, %struct.usb_device_id { i16 3, i16 3141, i16 24904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 198400 }, %struct.usb_device_id { i16 3, i16 3141, i16 24906, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 196610 }, %struct.usb_device_id zeroinitializer], [248 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@cif_mode = internal constant { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 352, i32 51278, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1195724874, i32 1, i32 160, i32 10190, i32 7, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 230990, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&sd->work)\00", [35 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@qual_upd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: qual_upd %d%%\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qual_upd\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/sonixj.c\00", [63 x i8] zeroinitializer }, align 32
@qual_upd._entry_ptr = internal global ptr @qual_upd._entry, section ".printk_index", align 4
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@reg_w1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: reg_w1 [%04x] = %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg_w1\00", [25 x i8] zeroinitializer }, align 32
@reg_w1._entry_ptr = internal global ptr @reg_w1._entry, section ".printk_index", align 4
@reg_w1._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_sonixj: reg_w1 err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@reg_w1._entry_ptr.10 = internal global ptr @reg_w1._entry.8, section ".printk_index", align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 1559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Sonix chip id: %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sn_tb = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @sn_adcm1700, ptr @sn_gc0307, ptr @sn_hv7131, ptr @sn_mi0360, ptr @sn_mi0360b, ptr @sn_mo4000, ptr @sn_mt9v111, ptr @sn_om6802, ptr @sn_ov7630, ptr @sn_ov7648, ptr @sn_ov7660, ptr @sn_po1030, ptr @sn_po2030n, ptr @sn_soi768, ptr @sn_sp80708], [36 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 1149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_r: buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_r._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: reg_r [%02x] -> %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.17 = internal global ptr @reg_r._entry.15, section ".printk_index", align 4
@reg_r._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_sonixj: reg_r err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.20 = internal global ptr @reg_r._entry.18, section ".printk_index", align 4
@mi0360_probe.probe_tb = internal constant { [2 x [4 x [8 x i8]]], [32 x i8] } { [2 x [4 x [8 x i8]]] [[4 x [8 x i8]] [[8 x i8] c"\B0]\07\00\02\00\00\10", [8 x i8] c"\90]\00\00\00\00\00\10", [8 x i8] c"\A2]\00\00\00\00\00\10", [8 x i8] c"\B0]\07\00\00\00\00\10"], [4 x [8 x i8]] [[8 x i8] c"\B0\\\01\00\04\00\00\10", [8 x i8] c"\90\\6\00\00\00\00\10", [8 x i8] c"\A2\\\00\00\00\00\00\10", [8 x i8] zeroinitializer]], [32 x i8] zeroinitializer }, align 32
@mi0360_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Sensor mi0360b\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mi0360_probe\00", [19 x i8] zeroinitializer }, align 32
@mi0360_probe._entry_ptr = internal global ptr @mi0360_probe._entry, section ".printk_index", align 4
@mi0360_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Sensor mt9v111\0A\00", [42 x i8] zeroinitializer }, align 32
@mi0360_probe._entry_ptr.25 = internal global ptr @mi0360_probe._entry.23, section ".printk_index", align 4
@mi0360_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 1404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor mi0360\0A\00", [43 x i8] zeroinitializer }, align 32
@mi0360_probe._entry_ptr.28 = internal global ptr @mi0360_probe._entry.26, section ".printk_index", align 4
@mi0360_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.5, i32 1408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Unknown sensor %04x - forced to mi0360\0A\00", [50 x i8] zeroinitializer }, align 32
@mi0360_probe._entry_ptr.31 = internal global ptr @mi0360_probe._entry.29, section ".printk_index", align 4
@i2c_w8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: i2c_w8 [%02x] = %02x ..\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_w8\00", [25 x i8] zeroinitializer }, align 32
@i2c_w8._entry_ptr = internal global ptr @i2c_w8._entry, section ".printk_index", align 4
@i2c_w8._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_sonixj: i2c_w8 err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_w8._entry_ptr.36 = internal global ptr @i2c_w8._entry.34, section ".printk_index", align 4
@ov7630_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor soi768\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov7630_probe\00", [19 x i8] zeroinitializer }, align 32
@ov7630_probe._entry_ptr = internal global ptr @ov7630_probe._entry, section ".printk_index", align 4
@ov7630_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor ov%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@ov7630_probe._entry_ptr.41 = internal global ptr @ov7630_probe._entry.39, section ".printk_index", align 4
@ov7648_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.42, ptr @.str.5, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov7648_probe\00", [19 x i8] zeroinitializer }, align 32
@ov7648_probe._entry_ptr = internal global ptr @ov7648_probe._entry, section ".printk_index", align 4
@ov7648_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor po1030\0A\00", [43 x i8] zeroinitializer }, align 32
@ov7648_probe._entry_ptr.45 = internal global ptr @ov7648_probe._entry.43, section ".printk_index", align 4
@ov7648_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.5, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_sonixj: Unknown sensor %04x\0A\00", [59 x i8] zeroinitializer }, align 32
@ov7648_probe._entry_ptr.48 = internal global ptr @ov7648_probe._entry.46, section ".printk_index", align 4
@po2030n_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Sensor gc0307\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"po2030n_probe\00", [18 x i8] zeroinitializer }, align 32
@po2030n_probe._entry_ptr = internal global ptr @po2030n_probe._entry, section ".printk_index", align 4
@po2030n_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Sensor po2030n\0A\00", [42 x i8] zeroinitializer }, align 32
@po2030n_probe._entry_ptr.53 = internal global ptr @po2030n_probe._entry.51, section ".printk_index", align 4
@po2030n_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.5, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013gspca_sonixj: Unknown sensor ID %04x\0A\00", [56 x i8] zeroinitializer }, align 32
@po2030n_probe._entry_ptr.56 = internal global ptr @po2030n_probe._entry.54, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 1206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: reg_w [%04x] = %02x %02x ..\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_w: buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.61 = internal global ptr @reg_w._entry.59, section ".printk_index", align 4
@reg_w._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.5, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_sonixj: reg_w err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.64 = internal global ptr @reg_w._entry.62, section ".printk_index", align 4
@sn_adcm1700 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00C`\00\1A\00\00\00\80Q\00\00\00\00\00\00\03\00\05\01\05\16\12B\06\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_gc0307 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00ab\00\1A\00\00\00\80!\00\00\00\00\00\00\03\00\03\01\08(\1E\02\06\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_hv7131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\03`\00\1A   \81\11\00\00\00\00\00\00\03\00\00\01\03(\1EA\0A\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_mi0360 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00c@\00\1A   \81]\00\00\00\00\00\00\03\00\00\02\0A(\1Ea\06\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_mi0360b = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00a@\00\1A\00\00\00\81]\00\00\00\00\00\00\03\00\00\02\0A(\1E@\06\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_mo4000 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00#`\00\1A\00 \18\81!\00\00\00\00\00\00\03\00\0B\0F\14(\1E@\08\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_mt9v111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00a@\00\1A   \81\\\00\00\00\00\00\00\03\00\00\02\1C(\1E@\06\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_om6802 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00#r\00\1A  \19\804\00\00\00\00\00\00\03\00Q\01\00(\1E@\05\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_ov7630 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00!@\00\1A\00\00\00\81!\00\00\00\00\00\00\03\00\04\01\0A(\1E\C2\0B\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_ov7648 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00c@\00\1A   \81!\00\00\00\00\00\00\03\00\00\01\00(\1E\00\0B\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_ov7660 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00a@\00\1A\00\00\00\81!\00\00\00\00\00\00\03\00\01\01\08(\1E \07\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_po1030 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00!b\00\1A   \81n\00\00\00\00\00\00\03\00\00\06\06(\1E\00\07\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_po2030n = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00c@\00\1A\00\00\00\81n\00\00\00\00\00\00\03\00\00\01\14(\1E\00\07\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_soi768 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00!@\00\1A\00\00\00\81!\00\00\00\00\00\00\03\00\00\01\08(\1E\00\07\00\00\00", [36 x i8] zeroinitializer }, align 32
@sn_sp80708 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00c`\00\1A   \81\18\00\00\00\00\00\00\03\00\00\03\04(\1E\00\07\00\00\00", [36 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sonixj:1623:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 1680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_sonixj: Could not initialize controls\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@expo_adjust.doit = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\B1]\07\00\03\00\00\10", [24 x i8] zeroinitializer }, align 32
@expo_adjust.sensorgo = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\B1]\07\00\02\00\00\10", [24 x i8] zeroinitializer }, align 32
@expo_adjust.gainMo = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A1!\00\10\00\00\00\1D", [24 x i8] zeroinitializer }, align 32
@expo_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: set exposure %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"expo_adjust\00", [20 x i8] zeroinitializer }, align 32
@expo_adjust._entry_ptr = internal global ptr @expo_adjust._entry, section ".printk_index", align 4
@expo_adjust._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 1790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@expo_adjust._entry_ptr.71 = internal global ptr @expo_adjust._entry.70, section ".printk_index", align 4
@i2c_w1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: i2c_w1 [%02x] = %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_w1\00", [25 x i8] zeroinitializer }, align 32
@i2c_w1._entry_ptr = internal global ptr @i2c_w1._entry, section ".printk_index", align 4
@i2c_w1._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.5, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gspca_sonixj: i2c_w1 err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_w1._entry_ptr.76 = internal global ptr @i2c_w1._entry.74, section ".printk_index", align 4
@gamma_spec_0 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0F9Zt\86\95\A6\B4\BD\C4\CC\D4\D5\DE\E4\ED\F5", [47 x i8] zeroinitializer }, align 32
@gamma_spec_1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\08:Reu\83\91\9D\A9\B4\BE\C8\D2\DB\E4\ED\F5", [47 x i8] zeroinitializer }, align 32
@gamma_spec_2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\147Pj|\8D\9D\AB\B5\BF\C2\CB\D1\D6\DB\E1\EB", [47 x i8] zeroinitializer }, align 32
@gamma_spec_3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A-Nh}\8F\9F\AB\B7\C2\CC\D3\D8\DE\E2\E5\E6", [47 x i8] zeroinitializer }, align 32
@gamma_def = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00-FZl|\8B\99\A6\B2\BF\CA\D5\E0\EB\F5\FF", [47 x i8] zeroinitializer }, align 32
@sd_start.reg9a_def = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00@ \00\00\00", [26 x i8] zeroinitializer }, align 32
@sd_start.reg9a_spec = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00@80\00 ", [26 x i8] zeroinitializer }, align 32
@sd_start.regd4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"`\00\00", [29 x i8] zeroinitializer }, align 32
@sd_start.C0 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"--:\05\04?", [26 x i8] zeroinitializer }, align 32
@om6802_init0 = internal constant { [2 x [8 x i8]], [16 x i8] } { [2 x [8 x i8]] [[8 x i8] c"\A04)\0E\00\00\00\10", [8 x i8] c"\A04#\B0\00\00\00\10"], [16 x i8] zeroinitializer }, align 32
@sensor_init = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @adcm1700_sensor_init, ptr @gc0307_sensor_init, ptr @hv7131r_sensor_init, ptr @mi0360_sensor_init, ptr @mi0360b_sensor_init, ptr @mo4000_sensor_init, ptr @mt9v111_sensor_init, ptr @om6802_sensor_init, ptr @ov7630_sensor_init, ptr @ov7648_sensor_init, ptr @ov7660_sensor_init, ptr @po1030_sensor_init, ptr @po2030n_sensor_init, ptr @soi768_sensor_init, ptr @sp80708_sensor_init], [36 x i8] zeroinitializer }, align 32
@reg84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\14\00'\00\07\00\E8\0F\DA\0F@\00>\00\CD\0F\F7\0F\00\00\00", [43 x i8] zeroinitializer }, align 32
@adcm1700_sensor_param1 = internal constant { [12 x [8 x i8]], [32 x i8] } { [12 x [8 x i8]] [[8 x i8] c"\B0Q&\F9\01\00\00\10", [8 x i8] c"\D0Q\1E\8E\8E\8E\8E\10", [8 x i8] c"\A0Q\FE\01\00\00\00\10", [8 x i8] c"\B0Q\00\02\00\00\00\10", [8 x i8] c"\A0Q\FE\10\00\00\00\10", [8 x i8] c"\B0Q2\00r\00\00\10", [8 x i8] c"\D0Q\1E\BE\D7\E8\BE\10", [8 x i8] c"\A0Q\FE\01\00\00\00\10", [8 x i8] c"\B0Q\00\02\00\00\00\10", [8 x i8] c"\A0Q\FE\10\00\00\00\10", [8 x i8] c"\B0Q2\00\A2\00\00\10", [8 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gc0307_sensor_param1 = internal constant { [7 x [8 x i8]], [40 x i8] } { [7 x [8 x i8]] [[8 x i8] c"\A0!h\13\00\00\00\10", [8 x i8] c"\D0!a\80\00\80\00\10", [8 x i8] c"\C0!e\80\00\80\00\10", [8 x i8] c"\C0!c\A0\00\A6\00\10", [8 x i8] c"\A0!\01n\00\00\00\10", [8 x i8] c"\A0!\02\88\00\00\00\10", [8 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mi0360b_sensor_param1 = internal constant { [9 x [8 x i8]], [56 x i8] } { [9 x [8 x i8]] [[8 x i8] c"\B1]\0A\00\00\00\00\10", [8 x i8] c"\B1]\06\00S\00\00\10", [8 x i8] c"\B1]\05\00\09\00\00\10", [8 x i8] c"\B1]\09\025\00\00\10", [8 x i8] c"\D1]+\00\D1\01\C9\10", [8 x i8] c"\D1]-\00\ED\00\D1\10", [8 x i8] c"\B1]\07\00\03\00\00\10", [8 x i8] c"\B1]\07\00\02\00\00\10", [8 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mt9v111_sensor_param1 = internal constant { [6 x [8 x i8]], [48 x i8] } { [6 x [8 x i8]] [[8 x i8] c"\D1\\+\003\00\AD\10", [8 x i8] c"\D1\\-\00\AD\003\10", [8 x i8] c"\B1\\\06\00@\00\00\10", [8 x i8] c"\B1\\\05\00\09\00\00\10", [8 x i8] c"\B1\\5\01\C0\00\00\10", [8 x i8] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@om6802_sensor_param1 = internal constant { [5 x [8 x i8]], [56 x i8] } { [5 x [8 x i8]] [[8 x i8] c"\A04q\84\00\00\00\10", [8 x i8] c"\A04r\05\00\00\00\10", [8 x i8] c"\A04h\80\00\00\00\10", [8 x i8] c"\A04i\01\00\00\00\10", [8 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ov7630_sensor_param1 = internal constant { [7 x [8 x i8]], [40 x i8] } { [7 x [8 x i8]] [[8 x i8] c"\A1!\12H\00\00\00\10", [8 x i8] c"\A1!\12H\00\00\00\10", [8 x i8] c"\A1!\102\00\00\00\10", [8 x i8] c"\A1!\00\00\00\00\00\10", [8 x i8] c"\B1!\01\80\80\00\00\10", [8 x i8] c"\A1!\10\83\00\00\00\10", [8 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ov7648_sensor_param1 = internal constant { [4 x [8 x i8]], [32 x i8] } { [4 x [8 x i8]] [[8 x i8] c"\A1!\19\02\00\00\00\10", [8 x i8] c"\A1!\102\00\00\00\10", [8 x i8] c"\A1!\11\81\00\00\00\10", [8 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ov7660_sensor_param1 = internal constant { [17 x [8 x i8]], [56 x i8] } { [17 x [8 x i8]] [[8 x i8] c"\A1!\1E\01\00\00\00\10", [8 x i8] c"\A1!\1E\01\00\00\00\10", [8 x i8] c"\A1!\03\00\00\00\00\10", [8 x i8] c"\A1!\03\00\00\00\00\10", [8 x i8] c"\A1!\10 \00\00\00\10", [8 x i8] c"\A1!-\00\00\00\00\10", [8 x i8] c"\A1!.\00\00\00\00\10", [8 x i8] c"\A1!\00\1F\00\00\00\10", [8 x i8] c"\A1!\93\00\00\00\00\10", [8 x i8] c"\A1!\92%\00\00\00\10", [8 x i8] c"\A1!*\00\00\00\00\10", [8 x i8] c"\A1!+\00\00\00\00\10", [8 x i8] c"\A1!\93\01\00\00\00\10", [8 x i8] c"\A1!\92\FF\00\00\00\10", [8 x i8] c"\A1!*\00\00\00\00\10", [8 x i8] c"\A1!+\C3\00\00\00\10", [8 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@po1030_sensor_param1 = internal constant { [9 x [8 x i8]], [56 x i8] } { [9 x [8 x i8]] [[8 x i8] c"\A1n\1E\03\00\00\00\10", [8 x i8] c"\A1n\1E\03\00\00\00\10", [8 x i8] c"\C1n\1A\02\D4\A4\00\10", [8 x i8] c"\A1n\15\04\00\00\00\10", [8 x i8] c"\C1n\16@@@\00\10", [8 x i8] c"\A1n\1D\08\00\00\00\10", [8 x i8] c"\A1n\06\02\00\00\00\10", [8 x i8] c"\A1n\07\D5\00\00\00\10", [8 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@po2030n_sensor_param1 = internal constant { [11 x [8 x i8]], [40 x i8] } { [11 x [8 x i8]] [[8 x i8] c"\A1n\1A\01\00\00\00\10", [8 x i8] c"\DD\08\00\00\00\00\00\00", [8 x i8] c"\A1n\1B\F4\00\00\00\10", [8 x i8] c"\A1n\15\04\00\00\00\10", [8 x i8] c"\D1n\16@@@@\10", [8 x i8] c"\A1n\1D\00\00\00\00\10", [8 x i8] c"\A1n\04\03\00\00\00\10", [8 x i8] c"\A1n\05o\00\00\00\10", [8 x i8] c"\A1n\06\02\00\00\00\10", [8 x i8] c"\A1n\07%\00\00\00\10", [8 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@soi768_sensor_param1 = internal constant { [12 x [8 x i8]], [32 x i8] } { [12 x [8 x i8]] [[8 x i8] c"\A1!\10\10\00\00\00\10", [8 x i8] c"\A1!-\00\00\00\00\10", [8 x i8] c"\A1!.\00\00\00\00\10", [8 x i8] c"\A1!\00\00\00\00\00\10", [8 x i8] c"\B1!\01\7F\7F\00\00\10", [8 x i8] c"\A1!+\00\00\00\00\10", [8 x i8] c"\A1!\02\8D\00\00\00\10", [8 x i8] c"\A1!\00\07\00\00\00\10", [8 x i8] c"\A1!\10?\00\00\00\10", [8 x i8] c"\A1!\04\06\00\00\00\10", [8 x i8] c"\B1!-c\03\00\00\10", [8 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sp80708_sensor_param1 = internal constant { [8 x [8 x i8]], [32 x i8] } { [8 x [8 x i8]] [[8 x i8] c"\A1\18\0C\04\00\00\00\10", [8 x i8] c"\A1\18\0C\04\00\00\00\10", [8 x i8] c"\A1\18\03\01\00\00\00\10", [8 x i8] c"\A1\18\04\A4\00\00\00\10", [8 x i8] c"\A1\18\14?\00\00\00\10", [8 x i8] c"\A1\18]\80\00\00\00\10", [8 x i8] c"\B1\18\11@@\00\00\10", [8 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hv7131r_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Sensor HV7131R found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hv7131r_probe\00", [18 x i8] zeroinitializer }, align 32
@hv7131r_probe._entry_ptr = internal global ptr @hv7131r_probe._entry, section ".printk_index", align 4
@hv7131r_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014gspca_sonixj: Erroneous HV7131R ID 0x%02x 0x%02x 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@hv7131r_probe._entry_ptr.81 = internal global ptr @hv7131r_probe._entry.79, section ".printk_index", align 4
@adcm1700_sensor_init = internal constant { [18 x [8 x i8]], [48 x i8] } { [18 x [8 x i8]] [[8 x i8] c"\A0Q\FE\00\00\00\00\10", [8 x i8] c"\B0Q\04\08\00\00\00\10", [8 x i8] c"\DD\80\00\00\00\00\00\00", [8 x i8] c"\B0Q\04\00\00\00\00\10", [8 x i8] c"\DD\80\00\00\00\00\00\00", [8 x i8] c"\B0Q\0C\E0.\00\00\10", [8 x i8] c"\B0Q\10\02\02\00\00\10", [8 x i8] c"\B0Q\14\0E\0E\00\00\10", [8 x i8] c"\B0Q\1C\00\80\00\00\10", [8 x i8] c"\B0Q \01\00\00\00\10", [8 x i8] c"\DD\FF\00\00\00\00\00\00", [8 x i8] c"\B0Q\04\04\00\00\00\10", [8 x i8] c"\DD\FF\00\00\00\00\00\00", [8 x i8] c"\B0Q\04\01\00\00\00\10", [8 x i8] c"\A0Q\FE\10\00\00\00\10", [8 x i8] c"\B0Q\14\01\00\00\00\10", [8 x i8] c"\B0Q2\00\00\00\00\10", [8 x i8] zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gc0307_sensor_init = internal constant { [39 x [8 x i8]], [72 x i8] } { [39 x [8 x i8]] [[8 x i8] c"\A0!C\00\00\00\00\10", [8 x i8] c"\A0!D\A2\00\00\00\10", [8 x i8] c"\A0!\01j\00\00\00\10", [8 x i8] c"\A0!\02p\00\00\00\10", [8 x i8] c"\A0!\10\00\00\00\00\10", [8 x i8] c"\A0!\1C\00\00\00\00\10", [8 x i8] c"\A0!\1D\00\00\00\00\10", [8 x i8] c"\A0!\11\05\00\00\00\10", [8 x i8] c"\A0!\05\00\00\00\00\10", [8 x i8] c"\A0!\06\00\00\00\00\10", [8 x i8] c"\A0!\07\00\00\00\00\10", [8 x i8] c"\A0!\08\02\00\00\00\10", [8 x i8] c"\A0!\09\01\00\00\00\10", [8 x i8] c"\A0!\0A\E8\00\00\00\10", [8 x i8] c"\A0!\0B\02\00\00\00\10", [8 x i8] c"\A0!\0C\80\00\00\00\10", [8 x i8] c"\A0!\0D\22\00\00\00\10", [8 x i8] c"\A0!\0E\02\00\00\00\10", [8 x i8] c"\A0!\0F\B2\00\00\00\10", [8 x i8] c"\A0!\12p\00\00\00\10", [8 x i8] c"\DD\0A\00\00\00\00\00\00", [8 x i8] c"\A0!\13\00\00\00\00\10", [8 x i8] c"\A0!\15\B8\00\00\00\10", [8 x i8] c"\A0!\16\13\00\00\00\10", [8 x i8] c"\A0!\17R\00\00\00\10", [8 x i8] c"\A0!\18P\00\00\00\10", [8 x i8] c"\A0!\1E\0D\00\00\00\10", [8 x i8] c"\A0!\1F2\00\00\00\10", [8 x i8] c"\A0!a\90\00\00\00\10", [8 x i8] c"\A0!cp\00\00\00\10", [8 x i8] c"\A0!e\98\00\00\00\10", [8 x i8] c"\A0!g\90\00\00\00\10", [8 x i8] c"\A0!\03\00\00\00\00\10", [8 x i8] c"\A0!\04\96\00\00\00\10", [8 x i8] c"\A0!E'\00\00\00\10", [8 x i8] c"\A0!G,\00\00\00\10", [8 x i8] c"\A0!CG\00\00\00\10", [8 x i8] c"\A0!D\D8\00\00\00\10", [8 x i8] zeroinitializer], [72 x i8] zeroinitializer }, align 32
@hv7131r_sensor_init = internal constant { [25 x [8 x i8]], [56 x i8] } { [25 x [8 x i8]] [[8 x i8] c"\C1\11\01\08\01\00\00\10", [8 x i8] c"\B1\114\17\7F\00\00\10", [8 x i8] c"\D1\11@\FF\7F\7F\7F\10", [8 x i8] c"\D1\11\10\00\00\00\00\10", [8 x i8] c"\D1\11\14\01\E2\02\82\10", [8 x i8] c"\A1\11\01\08\00\00\00\10", [8 x i8] c"\A1\11\01\08\00\00\00\10", [8 x i8] c"\C1\11%\00a\A8\00\10", [8 x i8] c"\A1\110\22\00\00\00\10", [8 x i8] c"\C1\111 . \00\10", [8 x i8] c"\C1\11%\00\C3P\00\10", [8 x i8] c"\A1\110\07\00\00\00\10", [8 x i8] c"\C1\111\10\10\10\00\10", [8 x i8] c"\A1\11\01\08\00\00\00\10", [8 x i8] c"\A1\11 \00\00\00\00\10", [8 x i8] c"\A1\11!\D0\00\00\00\10", [8 x i8] c"\A1\11\22\00\00\00\00\10", [8 x i8] c"\A1\11#\09\00\00\00\10", [8 x i8] c"\A1\11\01\08\00\00\00\10", [8 x i8] c"\A1\11 \00\00\00\00\10", [8 x i8] c"\A1\11!\D0\00\00\00\10", [8 x i8] c"\A1\11\22\00\00\00\00\10", [8 x i8] c"\A1\11#\10\00\00\00\10", [8 x i8] c"\A1\11\01\18\00\00\00\10", [8 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mi0360_sensor_init = internal constant { [47 x [8 x i8]], [72 x i8] } { [47 x [8 x i8]] [[8 x i8] c"\B1]\07\00\02\00\00\10", [8 x i8] c"\B1]\0D\00\01\00\00\10", [8 x i8] c"\B1]\0D\00\00\00\00\10", [8 x i8] c"\D1]\01\00\08\00\16\10", [8 x i8] c"\D1]\03\01\E2\02\82\10", [8 x i8] c"\D1]\05\00\09\00S\10", [8 x i8] c"\B1]\0D\00\02\00\00\10", [8 x i8] c"\D1]\0A\00\00\00\00\10", [8 x i8] c"\D1]\0C\00\00\00\00\10", [8 x i8] c"\D1]\0E\00\00\00\00\10", [8 x i8] c"\D1]\10\00\00\00\00\10", [8 x i8] c"\D1]\12\00\00\00\00\10", [8 x i8] c"\D1]\14\00\00\00\00\10", [8 x i8] c"\D1]\16\00\00\00\00\10", [8 x i8] c"\D1]\18\00\00\00\00\10", [8 x i8] c"\D1]\1A\00\00\00\00\10", [8 x i8] c"\D1]\1C\00\00\00\00\10", [8 x i8] c"\B1]2\00\00\00\00\10", [8 x i8] c"\D1] \91\01\00\00\10", [8 x i8] c"\D1]\22\00\00\00\00\10", [8 x i8] c"\D1]$\00\00\00\00\10", [8 x i8] c"\D1]&\00\00\00$\10", [8 x i8] c"\D1]/\F7\B0\00\04\10", [8 x i8] c"\D1]1\00\00\00\00\10", [8 x i8] c"\D1]3\00\00\01\00\10", [8 x i8] c"\B1]=\06\8F\00\00\10", [8 x i8] c"\D1]@\01\E0\00\D1\10", [8 x i8] c"\B1]D\00\82\00\00\10", [8 x i8] c"\D1]X\00x\00C\10", [8 x i8] c"\D1]Z\00\00\00\00\10", [8 x i8] c"\D1]\\\00\00\00\00\10", [8 x i8] c"\D1]^\00\00\A3\1D\10", [8 x i8] c"\B1]b\04\11\00\00\10", [8 x i8] c"\B1] \91\01\00\00\10", [8 x i8] c"\B1] \11\01\00\00\10", [8 x i8] c"\B1]\09\00d\00\00\10", [8 x i8] c"\D1]+\00\A0\00\B0\10", [8 x i8] c"\D1]-\00\A0\00\A0\10", [8 x i8] c"\B1]\0A\00\02\00\00\10", [8 x i8] c"\B1]\06\000\00\00\10", [8 x i8] c"\B1]\05\00\0A\00\00\10", [8 x i8] c"\B1]\09\025\00\00\10", [8 x i8] c"\D1]+\00\B9\00\E3\10", [8 x i8] c"\D1]-\00_\00\B9\10", [8 x i8] c"\B1]\07\00\03\00\00\10", [8 x i8] c"\B1]\07\00\02\00\00\10", [8 x i8] zeroinitializer], [72 x i8] zeroinitializer }, align 32
@mi0360b_sensor_init = internal constant { [41 x [8 x i8]], [88 x i8] } { [41 x [8 x i8]] [[8 x i8] c"\B1]\07\00\02\00\00\10", [8 x i8] c"\B1]\0D\00\01\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\B1]\0D\00\00\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\D1]\01\00\08\00\16\10", [8 x i8] c"\D1]\03\01\E2\02\82\10", [8 x i8] c"\D1]\05\00\00\00\00\10", [8 x i8] c"\B1]\0D\00\02\00\00\10", [8 x i8] c"\D1]\0A\00\00\00\00\10", [8 x i8] c"\D1]\0C\00\00\00\00\10", [8 x i8] c"\D1]\0E\00\00\00\00\10", [8 x i8] c"\D1]\10\00\00\00\00\10", [8 x i8] c"\D1]\12\00\00\00\00\10", [8 x i8] c"\D1]\14\00\00\00\00\10", [8 x i8] c"\D1]\16\00\00\00\00\10", [8 x i8] c"\D1]\18\00\00\00\00\10", [8 x i8] c"\D1]\1A\00\00\00\00\10", [8 x i8] c"\D1]\1C\00\00\00\00\10", [8 x i8] c"\B1]2\00\00\00\00\10", [8 x i8] c"\D1] \11\01\00\00\10", [8 x i8] c"\D1]\22\00\00\00\00\10", [8 x i8] c"\D1]$\00\00\00\00\10", [8 x i8] c"\D1]&\00\00\00$\10", [8 x i8] c"\D1]/\F7\B0\00\04\10", [8 x i8] c"\D1]1\00\00\00\00\10", [8 x i8] c"\D1]3\00\00\01\00\10", [8 x i8] c"\B1]=\06\8F\00\00\10", [8 x i8] c"\D1]@\01\E0\00\D1\10", [8 x i8] c"\B1]D\00\82\00\00\10", [8 x i8] c"\D1]X\00x\00C\10", [8 x i8] c"\D1]Z\00\00\00\00\10", [8 x i8] c"\D1]\\\00\00\00\00\10", [8 x i8] c"\D1]^\00\00\A3\1D\10", [8 x i8] c"\B1]b\04\11\00\00\10", [8 x i8] c"\B1] \11\01\00\00\10", [8 x i8] c"\B1] \11\01\00\00\10", [8 x i8] c"\B1]\09\00d\00\00\10", [8 x i8] c"\D1]+\003\00\A0\10", [8 x i8] c"\D1]-\00\A0\003\10", [8 x i8] zeroinitializer], [88 x i8] zeroinitializer }, align 32
@mo4000_sensor_init = internal constant { [21 x [8 x i8]], [56 x i8] } { [21 x [8 x i8]] [[8 x i8] c"\A1!\01\02\00\00\00\10", [8 x i8] c"\A1!\02\00\00\00\00\10", [8 x i8] c"\A1!\03\00\00\00\00\10", [8 x i8] c"\A1!\04\00\00\00\00\10", [8 x i8] c"\A1!\05\00\00\00\00\10", [8 x i8] c"\A1!\05\04\00\00\00\10", [8 x i8] c"\A1!\06\80\00\00\00\10", [8 x i8] c"\A1!\06\81\00\00\00\10", [8 x i8] c"\A1!\0E\00\00\00\00\10", [8 x i8] c"\A1!\11\00\00\00\00\10", [8 x i8] c"\A1!\11 \00\00\00\10", [8 x i8] c"\A1!\110\00\00\00\10", [8 x i8] c"\A1!\118\00\00\00\10", [8 x i8] c"\A1!\118\00\00\00\10", [8 x i8] c"\A1!\12\00\00\00\00\10", [8 x i8] c"\A1!\10\00\00\00\00\10", [8 x i8] c"\A1!\0F \00\00\00\10", [8 x i8] c"\A1!\10 \00\00\00\10", [8 x i8] c"\A1!\00\00\00\00\00\10", [8 x i8] c"\A1!\118\00\00\00\10", [8 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mt9v111_sensor_init = internal constant { [19 x [8 x i8]], [40 x i8] } { [19 x [8 x i8]] [[8 x i8] c"\B1\\\0D\00\01\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\B1\\\0D\00\00\00\00\10", [8 x i8] c"\B1\\\01\00\01\00\00\10", [8 x i8] c"\B1\\\08\04\80\00\00\10", [8 x i8] c"\B1\\\06\00\00\00\00\10", [8 x i8] c"\B1\\\01\00\04\00\00\10", [8 x i8] c"\B1\\\08\00\08\00\00\10", [8 x i8] c"\B1\\\02\00\16\00\00\10", [8 x i8] c"\B1\\\03\01\E7\00\00\10", [8 x i8] c"\B1\\\04\02\87\00\00\10", [8 x i8] c"\B1\\\070\02\00\00\10", [8 x i8] c"\B1\\\0C\00\00\00\00\10", [8 x i8] c"\B1\\\12\00\B0\00\00\10", [8 x i8] c"\B1\\\13\00|\00\00\10", [8 x i8] c"\B1\\\1E\00\00\00\00\10", [8 x i8] c"\B1\\ \00\00\00\00\10", [8 x i8] c"\B1\\ \00\00\00\00\10", [8 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@om6802_sensor_init = internal constant { [8 x [8 x i8]], [32 x i8] } { [8 x [8 x i8]] [[8 x i8] c"\A04\DFm\00\00\00\10", [8 x i8] c"\A04\DD\18\00\00\00\10", [8 x i8] c"\A04Z\C0\00\00\00\10", [8 x i8] c"\A04\F0\04\00\00\00\10", [8 x i8] c"\A04\E9\0F\00\00\00\10", [8 x i8] c"\A04\E4\FF\00\00\00\10", [8 x i8] c"\A04]\80\00\00\00\10", [8 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ov7630_sensor_init = internal constant { [34 x [8 x i8]], [80 x i8] } { [34 x [8 x i8]] [[8 x i8] c"\A1!v\01\00\00\00\10", [8 x i8] c"\A1!\12\C8\00\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\A1!\12H\00\00\00\10", [8 x i8] c"\A1!\12\C8\00\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\A1!\12H\00\00\00\10", [8 x i8] c"\D1!\03\80\10 \80\10", [8 x i8] c"\B1!\0C  \00\00\10", [8 x i8] c"\D1!\11\01H\C3\00\10", [8 x i8] c"\B1!\15\80\03\00\00\10", [8 x i8] c"\D1!\17\1B\BD\05\F6\10", [8 x i8] c"\A1!\1B\04\00\00\00\10", [8 x i8] c"\D1!\1F\00\80\80\80\10", [8 x i8] c"\D1!#\DE\10\8A\A0\10", [8 x i8] c"\C1!'\CA\A2t\00\10", [8 x i8] c"\D1!*\88\00\88\01\10", [8 x i8] c"\C1!.\80\00\18\00\10", [8 x i8] c"\A1!!\08\00\00\00\10", [8 x i8] c"\A1!\22\00\00\00\00\10", [8 x i8] c"\A1!.\00\00\00\00\10", [8 x i8] c"\B1!2\C2\08\00\00\10", [8 x i8] c"\B1!L\00\00\00\00\10", [8 x i8] c"\D1!`\05@\12W\10", [8 x i8] c"\A1!ds\00\00\00\10", [8 x i8] c"\D1!e\00U\01\AC\10", [8 x i8] c"\A1!i8\00\00\00\10", [8 x i8] c"\D1!o\1F\01\00\10\10", [8 x i8] c"\D1!sP \02\01\10", [8 x i8] c"\D1!w\F3\90\98\98\10", [8 x i8] c"\C1!{\00L\F7\00\10", [8 x i8] c"\D1!\17\1B\BD\05\F6\10", [8 x i8] c"\A1!\1B\04\00\00\00\10", [8 x i8] zeroinitializer], [80 x i8] zeroinitializer }, align 32
@ov7648_sensor_init = internal constant { [24 x [8 x i8]], [32 x i8] } { [24 x [8 x i8]] [[8 x i8] c"\A1!v\00\00\00\00\10", [8 x i8] c"\A1!\12\80\00\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\A1!\12\00\00\00\00\10", [8 x i8] c"\D1!\03\A40\88\00\10", [8 x i8] c"\B1!\11\80\08\00\00\10", [8 x i8] c"\C1!\13\A0\04\84\00\10", [8 x i8] c"\D1!\17\1A\02\BA\F4\10", [8 x i8] c"\A1!\1B\04\00\00\00\10", [8 x i8] c"\D1!\1FA\C0\80\80\10", [8 x i8] c"\D1!#\DE\A0\802\10", [8 x i8] c"\D1!'\FE\A0\00\91\10", [8 x i8] c"\D1!+\00\88\85\80\10", [8 x i8] c"\C1!/\9C\00\C4\00\10", [8 x i8] c"\D1!`\A6`\88\12\10", [8 x i8] c"\D1!d\88\00\00\94\10", [8 x i8] c"\D1!hz\0C\00\00\10", [8 x i8] c"\D1!l\113\22\00\10", [8 x i8] c"\D1!p\11\00\10P\10", [8 x i8] c"\D1!t \06\00\B5\10", [8 x i8] c"\D1!x\8A\00\00\00\10", [8 x i8] c"\B1!|\00C\00\00\10", [8 x i8] c"\D1!!\86\00\DE\A0\10", [8 x i8] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ov7660_sensor_init = internal constant { [47 x [8 x i8]], [72 x i8] } { [47 x [8 x i8]] [[8 x i8] c"\A1!\12\80\00\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\A1!\12\05\00\00\00\10", [8 x i8] c"\A1!\13\B8\00\00\00\10", [8 x i8] c"\D1!\00\01t\92\00\10", [8 x i8] c"\D1!\04\00}b\00\10", [8 x i8] c"\B1!\08\83\01\00\00\10", [8 x i8] c"\D1!\0C\00\08\04O\10", [8 x i8] c"\D1!\10\7F@\05\FF\10", [8 x i8] c"\C1!\14,\00\02\00\10", [8 x i8] c"\D1!\17\10`\02{\10", [8 x i8] c"\A1!\1B\02\00\00\00\10", [8 x i8] c"\B1!\1E\01\0E\00\00\10", [8 x i8] c"\D1! \07\07\07\07\10", [8 x i8] c"\D1!$xh\D4\80\10", [8 x i8] c"\D1!(\800\00\00\10", [8 x i8] c"\D1!,\80\00\00b\10", [8 x i8] c"\C1!0\080\B4\00\10", [8 x i8] c"\D1!3\00\07\84\00\10", [8 x i8] c"\D1!7\0C\02C\00\10", [8 x i8] c"\D1!;\02l\19\0E\10", [8 x i8] c"\D1!?A\C1\22\08\10", [8 x i8] c"\D1!C\F0\10x\A8\10", [8 x i8] c"\D1!G`\80\00\00\10", [8 x i8] c"\D1!K\00\00\00\00\10", [8 x i8] c"\D1!OF6\0F\17\10", [8 x i8] c"\D1!S\7F\96@@\10", [8 x i8] c"\B1!W@\0F\00\00\10", [8 x i8] c"\D1!Y\BA\9A\22\B9\10", [8 x i8] c"\D1!]\9B\10\F0\05\10", [8 x i8] c"\A1!a`\00\00\00\10", [8 x i8] c"\D1!b\00\00P0\10", [8 x i8] c"\A1!f\00\00\00\00\10", [8 x i8] c"\D1!g\80z\90\80\10", [8 x i8] c"\A1!k\0A\00\00\00\10", [8 x i8] c"\D1!l0H\80t\10", [8 x i8] c"\D1!pd`\\X\10", [8 x i8] c"\D1!tTL@8\10", [8 x i8] c"\D1!x40/+\10", [8 x i8] c"\D1!|\03\07\174\10", [8 x i8] c"\D1!\80AMXc\10", [8 x i8] c"\D1!\84nw\87\95\10", [8 x i8] c"\C1!\88\AF\C7\DF\00\10", [8 x i8] c"\C1!\8B\99\99\CF\00\10", [8 x i8] c"\B1!\92\00\00\00\00\10", [8 x i8] c"\A1!\A1\00\00\00\00\10", [8 x i8] zeroinitializer], [72 x i8] zeroinitializer }, align 32
@po1030_sensor_init = internal constant { [34 x [8 x i8]], [80 x i8] } { [34 x [8 x i8]] [[8 x i8] c"\A1n? \00\00\00\10", [8 x i8] c"\DD\14\00\00\00\00\00\00", [8 x i8] c"\A1n?\00\00\00\00\10", [8 x i8] c"\A1n>\00\00\00\00\10", [8 x i8] c"\D1n\04\02\B1\029\10", [8 x i8] c"\D1n\08\00\01\00\00\10", [8 x i8] c"\D1n\0C\02\7F\01\E0\10", [8 x i8] c"\D1n\12\03\02\00\03\10", [8 x i8] c"\D1n\16\85@J@\10", [8 x i8] c"\C1n\1A\00\80\00\00\10", [8 x i8] c"\D1n\1D\08\03\00\00\10", [8 x i8] c"\D1n#\00\B0\00\94\10", [8 x i8] c"\D1n'X\00\00\00\10", [8 x i8] c"\B1n+\00\00\00\00\10", [8 x i8] c"\D1n-\145a\84\10", [8 x i8] c"\D1n1\A2\BD\D8\FF\10", [8 x i8] c"\D1n5\06\1E\12\02\10", [8 x i8] c"\D1n9\AAS7\D5\10", [8 x i8] c"\A1n=\F2\00\00\00\10", [8 x i8] c"\D1n>\00\00\80\03\10", [8 x i8] c"\D1nB\03\00\00\00\10", [8 x i8] c"\C1nF\00\80\80\00\10", [8 x i8] c"\D1nK\02\EF\08\CD\10", [8 x i8] c"\D1nO\00\D0\00\A0\10", [8 x i8] c"\D1nS\01\AA\01@\10", [8 x i8] c"\D1nZP\040\03\10", [8 x i8] c"\A1n^\00\00\00\00\10", [8 x i8] c"\D1n_\10@\FF\00\10", [8 x i8] c"\D1nc@@\00\00\10", [8 x i8] c"\D1ng\00\00\00\00\10", [8 x i8] c"\D1nk\00\00\00\00\10", [8 x i8] c"\D1no\00\00\00\00\10", [8 x i8] c"\C1ns\10\80\EB\00\10", [8 x i8] zeroinitializer], [80 x i8] zeroinitializer }, align 32
@po2030n_sensor_init = internal constant { [51 x [8 x i8]], [104 x i8] } { [51 x [8 x i8]] [[8 x i8] c"\A1n\1E\1A\00\00\00\10", [8 x i8] c"\A1n\1F\99\00\00\00\10", [8 x i8] c"\DD\0A\00\00\00\00\00\00", [8 x i8] c"\A1n\1E\0A\00\00\00\10", [8 x i8] c"\A1n\1F\19\00\00\00\10", [8 x i8] c"\DD\0A\00\00\00\00\00\00", [8 x i8] c"\A1n D\00\00\00\10", [8 x i8] c"\A1n\04\03\00\00\00\10", [8 x i8] c"\A1n\05p\00\00\00\10", [8 x i8] c"\A1n\06\02\00\00\00\10", [8 x i8] c"\A1n\07%\00\00\00\10", [8 x i8] c"\D1n\08\00\D0\00\08\10", [8 x i8] c"\D1n\0C\03P\01\E8\10", [8 x i8] c"\D1n\1D \0A\19D\10", [8 x i8] c"\D1n!\00\00\00\00\10", [8 x i8] c"\D1n%\00\00\00\00\10", [8 x i8] c"\D1n)\00\00\00\00\10", [8 x i8] c"\D1n-\00\00\00\00\10", [8 x i8] c"\D1n1\00\00\00\00\10", [8 x i8] c"\D1n5\00\00\00\00\10", [8 x i8] c"\D1n9\00\00\00\00\10", [8 x i8] c"\D1n=\00\00\00\00\10", [8 x i8] c"\D1nA\00\00\00\00\10", [8 x i8] c"\D1nE\00\00\00\00\10", [8 x i8] c"\D1nI\00\00\00\00\10", [8 x i8] c"\D1nM\00\00\00\ED\10", [8 x i8] c"\D1nQ\17J/\C0\10", [8 x i8] c"\D1nU\00\00\00\00\10", [8 x i8] c"\D1nY\00\00\00\00\10", [8 x i8] c"\D1n]\00\00\00\00\10", [8 x i8] c"\D1na\00\00\00\00\10", [8 x i8] c"\D1ne\00\00\00\00\10", [8 x i8] c"\D1ni\00\00\00\00\10", [8 x i8] c"\D1nm\00\00\00\00\10", [8 x i8] c"\D1nq\00\00\00\00\10", [8 x i8] c"\D1nu\00\00\00\00\10", [8 x i8] c"\D1ny\00\00\00\00\10", [8 x i8] c"\D1n}\00\00\00\00\10", [8 x i8] c"\D1n\81\00\00\00\00\10", [8 x i8] c"\D1n\85\00\00\00\08\10", [8 x i8] c"\D1n\89\01\E8\00\01\10", [8 x i8] c"\A1n\8D\00\00\00\00\10", [8 x i8] c"\D1n!\00\00\00\00\10", [8 x i8] c"\D1n%\00\00\00\01\10", [8 x i8] c"\D1n)\E6\00\BD\03\10", [8 x i8] c"\D1n-A8h@\10", [8 x i8] c"\D1n1+\006\00\10", [8 x i8] c"\D1n500\08\00\10", [8 x i8] c"\D1n9\00\003\06\10", [8 x i8] c"\B1n=\06\02\00\00\10", [8 x i8] zeroinitializer], [104 x i8] zeroinitializer }, align 32
@soi768_sensor_init = internal constant { [7 x [8 x i8]], [40 x i8] } { [7 x [8 x i8]] [[8 x i8] c"\A1!\12\80\00\00\00\10", [8 x i8] c"\DD`\00\00\00\00\00\00", [8 x i8] c"\A1!\12\00\00\00\00\10", [8 x i8] c"\A1!\13\80\00\00\00\10", [8 x i8] c"\A1!\0F\03\00\00\00\10", [8 x i8] c"\A1!\19\00\00\00\00\10", [8 x i8] zeroinitializer], [40 x i8] zeroinitializer }, align 32
@sp80708_sensor_init = internal constant { [72 x [8 x i8]], [128 x i8] } { [72 x [8 x i8]] [[8 x i8] c"\A1\18\06\F9\00\00\00\10", [8 x i8] c"\A1\18\09\1F\00\00\00\10", [8 x i8] c"\A1\18\0A\00\00\00\00\10", [8 x i8] c"\A1\18\0D\C0\00\00\00\10", [8 x i8] c"\A1\18\0C\04\00\00\00\10", [8 x i8] c"\A1\18\0F\0F\00\00\00\10", [8 x i8] c"\A1\18\10@\00\00\00\10", [8 x i8] c"\A1\18\11N\00\00\00\10", [8 x i8] c"\A1\18\12S\00\00\00\10", [8 x i8] c"\A1\18\15\80\00\00\00\10", [8 x i8] c"\A1\18\18\18\00\00\00\10", [8 x i8] c"\A1\18\19\18\00\00\00\10", [8 x i8] c"\A1\18\1A\10\00\00\00\10", [8 x i8] c"\A1\18\1B\10\00\00\00\10", [8 x i8] c"\A1\18\1C(\00\00\00\10", [8 x i8] c"\A1\18\1D\02\00\00\00\10", [8 x i8] c"\A1\18\1E\10\00\00\00\10", [8 x i8] c"\A1\18&\04\00\00\00\10", [8 x i8] c"\A1\18'\1E\00\00\00\10", [8 x i8] c"\A1\18(Z\00\00\00\10", [8 x i8] c"\A1\18)(\00\00\00\10", [8 x i8] c"\A1\18*x\00\00\00\10", [8 x i8] c"\A1\18+\01\00\00\00\10", [8 x i8] c"\A1\18,\F7\00\00\00\10", [8 x i8] c"\A1\18--\00\00\00\10", [8 x i8] c"\A1\18.\D5\00\00\00\10", [8 x i8] c"\A1\189B\00\00\00\10", [8 x i8] c"\A1\18:g\00\00\00\10", [8 x i8] c"\A1\18;\87\00\00\00\10", [8 x i8] c"\A1\18<\A3\00\00\00\10", [8 x i8] c"\A1\18=\B0\00\00\00\10", [8 x i8] c"\A1\18>\BC\00\00\00\10", [8 x i8] c"\A1\18?\C8\00\00\00\10", [8 x i8] c"\A1\18@\D4\00\00\00\10", [8 x i8] c"\A1\18A\DF\00\00\00\10", [8 x i8] c"\A1\18B\EA\00\00\00\10", [8 x i8] c"\A1\18C\F5\00\00\00\10", [8 x i8] c"\A1\18E\80\00\00\00\10", [8 x i8] c"\A1\18F`\00\00\00\10", [8 x i8] c"\A1\18GP\00\00\00\10", [8 x i8] c"\A1\18H0\00\00\00\10", [8 x i8] c"\A1\18I\01\00\00\00\10", [8 x i8] c"\A1\18M\AE\00\00\00\10", [8 x i8] c"\A1\18N\03\00\00\00\10", [8 x i8] c"\A1\18Of\00\00\00\10", [8 x i8] c"\A1\18P\1C\00\00\00\10", [8 x i8] c"\A1\18D\10\00\00\00\10", [8 x i8] c"\A1\18J0\00\00\00\10", [8 x i8] c"\A1\18Q\80\00\00\00\10", [8 x i8] c"\A1\18R\80\00\00\00\10", [8 x i8] c"\A1\18S\80\00\00\00\10", [8 x i8] c"\A1\18T\80\00\00\00\10", [8 x i8] c"\A1\18U\80\00\00\00\10", [8 x i8] c"\A1\18V\80\00\00\00\10", [8 x i8] c"\A1\18W\E0\00\00\00\10", [8 x i8] c"\A1\18X\C0\00\00\00\10", [8 x i8] c"\A1\18Y\AB\00\00\00\10", [8 x i8] c"\A1\18Z\A0\00\00\00\10", [8 x i8] c"\A1\18[\99\00\00\00\10", [8 x i8] c"\A1\18\\\90\00\00\00\10", [8 x i8] c"\A1\18^$\00\00\00\10", [8 x i8] c"\A1\18_\00\00\00\00\10", [8 x i8] c"\A1\18`\00\00\00\00\10", [8 x i8] c"\A1\18as\00\00\00\10", [8 x i8] c"\A1\18cB\00\00\00\10", [8 x i8] c"\A1\18dB\00\00\00\10", [8 x i8] c"\A1\18eB\00\00\00\10", [8 x i8] c"\A1\18f$\00\00\00\10", [8 x i8] c"\A1\18g$\00\00\00\10", [8 x i8] c"\A1\18h\08\00\00\00\10", [8 x i8] c"\A1\18/\C9\00\00\00\10", [8 x i8] zeroinitializer], [128 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sd_stopN.stophv7131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A1\11\02\09\00\00\00\10", [24 x i8] zeroinitializer }, align 32
@sd_stopN.stopmi0360 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\B1]\07\00\00\00\00\10", [24 x i8] zeroinitializer }, align 32
@sd_stopN.stopov7648 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A1!v \00\00\00\10", [24 x i8] zeroinitializer }, align 32
@sd_stopN.stopsoi768 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A1!\12\80\00\00\00\10", [24 x i8] zeroinitializer }, align 32
@do_autogain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 2585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: mean lum %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_autogain\00", [20 x i8] zeroinitializer }, align 32
@do_autogain._entry_ptr = internal global ptr @do_autogain._entry, section ".printk_index", align 4
@switch.table.sd_start = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @sd_start.reg9a_spec, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_spec, ptr @sd_start.reg9a_spec, ptr @sd_start.reg9a_spec, ptr @sd_start.reg9a_spec, ptr @sd_start.reg9a_spec], [40 x i8] zeroinitializer }, align 32
@switch.table.setgamma = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @gamma_spec_0, ptr @gamma_spec_2, ptr @gamma_spec_1, ptr @gamma_def, ptr @gamma_spec_1, ptr @gamma_def, ptr @gamma_spec_1, ptr @gamma_def, ptr @gamma_def, ptr @gamma_def, ptr @gamma_def, ptr @gamma_def, ptr @gamma_def, ptr @gamma_def, ptr @gamma_spec_3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 16, i64 33313, i64 33338, i64 33347]
@__sancov_gen_cov_switch_values.85 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 10, i64 11, i64 13, i64 14]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 14]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 221]
@__sancov_gen_cov_switch_values.90 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 4, i64 6, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.91 = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 221]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 12, i64 13]
@__sancov_gen_cov_switch_values.94 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 8, i64 9, i64 10, i64 12, i64 13]
@__sancov_gen_cov_switch_values.95 = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.98 = internal global [12 x i64] [i64 10, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963790, i64 9963792, i64 9963794, i64 9963797, i64 9963800, i64 9963803, i64 9963813]
@__sancov_gen_cov_switch_values.99 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.100 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 8, i64 9, i64 12]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.105 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 7]
@___asan_gen_.107 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2969, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2981, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2970, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2897, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2874, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"cif_mode\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 110, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 117, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1538, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2163, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 19, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1181, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1192, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1559, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"sn_tb\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 302, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1149, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1160, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1163, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [9 x i8] c"probe_tb\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1362, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1396, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1400, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1404, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1407, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1276, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1288, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1433, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1436, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1453, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1468, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1472, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1491, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1507, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1510, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1205, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1209, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1222, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [12 x i8] c"sn_adcm1700\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 136, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant [10 x i8] c"sn_gc0307\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 147, i32 17 }
@___asan_gen_.323 = private unnamed_addr constant [10 x i8] c"sn_hv7131\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 158, i32 17 }
@___asan_gen_.326 = private unnamed_addr constant [10 x i8] c"sn_mi0360\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 169, i32 17 }
@___asan_gen_.329 = private unnamed_addr constant [11 x i8] c"sn_mi0360b\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 180, i32 17 }
@___asan_gen_.332 = private unnamed_addr constant [10 x i8] c"sn_mo4000\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 191, i32 17 }
@___asan_gen_.335 = private unnamed_addr constant [11 x i8] c"sn_mt9v111\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 202, i32 17 }
@___asan_gen_.338 = private unnamed_addr constant [10 x i8] c"sn_om6802\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 213, i32 17 }
@___asan_gen_.341 = private unnamed_addr constant [10 x i8] c"sn_ov7630\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 224, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant [10 x i8] c"sn_ov7648\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 235, i32 17 }
@___asan_gen_.347 = private unnamed_addr constant [10 x i8] c"sn_ov7660\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 246, i32 17 }
@___asan_gen_.350 = private unnamed_addr constant [10 x i8] c"sn_po1030\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 257, i32 17 }
@___asan_gen_.353 = private unnamed_addr constant [11 x i8] c"sn_po2030n\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 268, i32 17 }
@___asan_gen_.356 = private unnamed_addr constant [10 x i8] c"sn_soi768\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 279, i32 17 }
@___asan_gen_.359 = private unnamed_addr constant [11 x i8] c"sn_sp80708\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 290, i32 17 }
@___asan_gen_.362 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1623, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1612, i32 35 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1680, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [5 x i8] c"doit\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1725, i32 19 }
@___asan_gen_.383 = private unnamed_addr constant [9 x i8] c"sensorgo\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1727, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"gainMo\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1746, i32 19 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1759, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1790, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1235, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1263, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant [13 x i8] c"gamma_spec_0\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 326, i32 17 }
@___asan_gen_.419 = private unnamed_addr constant [13 x i8] c"gamma_spec_1\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 331, i32 17 }
@___asan_gen_.422 = private unnamed_addr constant [13 x i8] c"gamma_spec_2\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 336, i32 17 }
@___asan_gen_.425 = private unnamed_addr constant [13 x i8] c"gamma_spec_3\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 341, i32 17 }
@___asan_gen_.428 = private unnamed_addr constant [10 x i8] c"gamma_def\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 321, i32 17 }
@___asan_gen_.431 = private unnamed_addr constant [10 x i8] c"reg9a_def\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2180, i32 18 }
@___asan_gen_.434 = private unnamed_addr constant [11 x i8] c"reg9a_spec\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2182, i32 18 }
@___asan_gen_.437 = private unnamed_addr constant [6 x i8] c"regd4\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2184, i32 18 }
@___asan_gen_.440 = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2185, i32 18 }
@___asan_gen_.443 = private unnamed_addr constant [13 x i8] c"om6802_init0\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 639, i32 17 }
@___asan_gen_.446 = private unnamed_addr constant [12 x i8] c"sensor_init\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1122, i32 19 }
@___asan_gen_.449 = private unnamed_addr constant [6 x i8] c"reg84\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 347, i32 17 }
@___asan_gen_.452 = private unnamed_addr constant [23 x i8] c"adcm1700_sensor_param1\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 376, i32 17 }
@___asan_gen_.455 = private unnamed_addr constant [21 x i8] c"gc0307_sensor_param1\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 433, i32 17 }
@___asan_gen_.458 = private unnamed_addr constant [22 x i8] c"mi0360b_sensor_param1\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 575, i32 17 }
@___asan_gen_.461 = private unnamed_addr constant [22 x i8] c"mt9v111_sensor_param1\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 631, i32 17 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c"om6802_sensor_param1\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 675, i32 17 }
@___asan_gen_.467 = private unnamed_addr constant [21 x i8] c"ov7630_sensor_param1\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 721, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant [21 x i8] c"ov7648_sensor_param1\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 769, i32 17 }
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c"ov7660_sensor_param1\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 855, i32 17 }
@___asan_gen_.476 = private unnamed_addr constant [21 x i8] c"po1030_sensor_param1\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 922, i32 17 }
@___asan_gen_.479 = private unnamed_addr constant [22 x i8] c"po2030n_sensor_param1\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 991, i32 17 }
@___asan_gen_.482 = private unnamed_addr constant [21 x i8] c"soi768_sensor_param1\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1015, i32 17 }
@___asan_gen_.485 = private unnamed_addr constant [22 x i8] c"sp80708_sensor_param1\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1111, i32 17 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1349, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1352, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c"adcm1700_sensor_init\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 356, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant [19 x i8] c"gc0307_sensor_init\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 392, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c"hv7131r_sensor_init\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 444, i32 17 }
@___asan_gen_.512 = private unnamed_addr constant [19 x i8] c"mi0360_sensor_init\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 477, i32 17 }
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c"mi0360b_sensor_init\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 531, i32 17 }
@___asan_gen_.518 = private unnamed_addr constant [19 x i8] c"mo4000_sensor_init\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 587, i32 17 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c"mt9v111_sensor_init\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 610, i32 17 }
@___asan_gen_.524 = private unnamed_addr constant [19 x i8] c"om6802_sensor_init\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 644, i32 17 }
@___asan_gen_.527 = private unnamed_addr constant [19 x i8] c"ov7630_sensor_init\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 682, i32 17 }
@___asan_gen_.530 = private unnamed_addr constant [19 x i8] c"ov7648_sensor_init\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 739, i32 17 }
@___asan_gen_.533 = private unnamed_addr constant [19 x i8] c"ov7660_sensor_init\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 789, i32 17 }
@___asan_gen_.536 = private unnamed_addr constant [19 x i8] c"po1030_sensor_init\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 884, i32 17 }
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c"po2030n_sensor_init\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 938, i32 17 }
@___asan_gen_.542 = private unnamed_addr constant [19 x i8] c"soi768_sensor_init\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1006, i32 17 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c"sp80708_sensor_init\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 1037, i32 17 }
@___asan_gen_.548 = private unnamed_addr constant [11 x i8] c"stophv7131\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2488, i32 18 }
@___asan_gen_.551 = private unnamed_addr constant [11 x i8] c"stopmi0360\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2490, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant [11 x i8] c"stopov7648\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2492, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant [11 x i8] c"stopsoi768\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2494, i32 18 }
@___asan_gen_.560 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.567 = private constant [36 x i8] c"../drivers/media/usb/gspca/sonixj.c\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.567, i32 2585, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [22 x i8] c"switch.table.sd_start\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [22 x i8] c"switch.table.setgamma\00", align 1
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_sonixj__307_2981_sd_driver_init6, ptr @do_autogain._entry, ptr @do_autogain._entry_ptr, ptr @expo_adjust._entry, ptr @expo_adjust._entry.70, ptr @expo_adjust._entry_ptr, ptr @expo_adjust._entry_ptr.71, ptr @hv7131r_probe._entry, ptr @hv7131r_probe._entry.79, ptr @hv7131r_probe._entry_ptr, ptr @hv7131r_probe._entry_ptr.81, ptr @i2c_w1._entry, ptr @i2c_w1._entry.74, ptr @i2c_w1._entry_ptr, ptr @i2c_w1._entry_ptr.76, ptr @i2c_w8._entry, ptr @i2c_w8._entry.34, ptr @i2c_w8._entry_ptr, ptr @i2c_w8._entry_ptr.36, ptr @mi0360_probe._entry, ptr @mi0360_probe._entry.23, ptr @mi0360_probe._entry.26, ptr @mi0360_probe._entry.29, ptr @mi0360_probe._entry_ptr, ptr @mi0360_probe._entry_ptr.25, ptr @mi0360_probe._entry_ptr.28, ptr @mi0360_probe._entry_ptr.31, ptr @ov7630_probe._entry, ptr @ov7630_probe._entry.39, ptr @ov7630_probe._entry_ptr, ptr @ov7630_probe._entry_ptr.41, ptr @ov7648_probe._entry, ptr @ov7648_probe._entry.43, ptr @ov7648_probe._entry.46, ptr @ov7648_probe._entry_ptr, ptr @ov7648_probe._entry_ptr.45, ptr @ov7648_probe._entry_ptr.48, ptr @po2030n_probe._entry, ptr @po2030n_probe._entry.51, ptr @po2030n_probe._entry.54, ptr @po2030n_probe._entry_ptr, ptr @po2030n_probe._entry_ptr.53, ptr @po2030n_probe._entry_ptr.56, ptr @qual_upd._entry, ptr @qual_upd._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry.15, ptr @reg_r._entry.18, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.17, ptr @reg_r._entry_ptr.20, ptr @reg_w._entry, ptr @reg_w._entry.59, ptr @reg_w._entry.62, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.61, ptr @reg_w._entry_ptr.64, ptr @reg_w1._entry, ptr @reg_w1._entry.8, ptr @reg_w1._entry_ptr, ptr @reg_w1._entry_ptr.10, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry_ptr, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @cif_mode, ptr @vga_mode, ptr @sd_config.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jpeg_head, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @sn_tb, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @mi0360_probe.probe_tb, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @sn_adcm1700, ptr @sn_gc0307, ptr @sn_hv7131, ptr @sn_mi0360, ptr @sn_mi0360b, ptr @sn_mo4000, ptr @sn_mt9v111, ptr @sn_om6802, ptr @sn_ov7630, ptr @sn_ov7648, ptr @sn_ov7660, ptr @sn_po1030, ptr @sn_po2030n, ptr @sn_soi768, ptr @sn_sp80708, ptr @sd_init_controls._key, ptr @.str.65, ptr @sd_ctrl_ops, ptr @.str.66, ptr @.str.67, ptr @expo_adjust.doit, ptr @expo_adjust.sensorgo, ptr @expo_adjust.gainMo, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @gamma_spec_0, ptr @gamma_spec_1, ptr @gamma_spec_2, ptr @gamma_spec_3, ptr @gamma_def, ptr @sd_start.reg9a_def, ptr @sd_start.reg9a_spec, ptr @sd_start.regd4, ptr @sd_start.C0, ptr @om6802_init0, ptr @sensor_init, ptr @reg84, ptr @adcm1700_sensor_param1, ptr @gc0307_sensor_param1, ptr @mi0360b_sensor_param1, ptr @mt9v111_sensor_param1, ptr @om6802_sensor_param1, ptr @ov7630_sensor_param1, ptr @ov7648_sensor_param1, ptr @ov7660_sensor_param1, ptr @po1030_sensor_param1, ptr @po2030n_sensor_param1, ptr @soi768_sensor_param1, ptr @sp80708_sensor_param1, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @adcm1700_sensor_init, ptr @gc0307_sensor_init, ptr @hv7131r_sensor_init, ptr @mi0360_sensor_init, ptr @mi0360b_sensor_init, ptr @mo4000_sensor_init, ptr @mt9v111_sensor_init, ptr @om6802_sensor_init, ptr @ov7630_sensor_init, ptr @ov7648_sensor_init, ptr @ov7660_sensor_init, ptr @po1030_sensor_init, ptr @po2030n_sensor_init, ptr @soi768_sensor_init, ptr @sp80708_sensor_init, ptr @sd_stopN.stophv7131, ptr @sd_stopN.stopmi0360, ptr @sd_stopN.stopov7648, ptr @sd_stopN.stopsoi768, ptr @.str.82, ptr @.str.83, ptr @switch.table.sd_start, ptr @switch.table.setgamma], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cif_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qual_upd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w1._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_tb to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_probe.probe_tb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w8._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7648_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7648_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7648_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030n_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030n_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030n_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_adcm1700 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_gc0307 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_hv7131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_mi0360 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_mi0360b to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_mo4000 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_mt9v111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_om6802 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_ov7630 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_ov7648 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_ov7660 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_po1030 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_po2030n to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_soi768 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sn_sp80708 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expo_adjust.doit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expo_adjust.sensorgo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expo_adjust.gainMo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expo_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expo_adjust._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_w1._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_spec_0 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_spec_1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_spec_2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_spec_3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_def to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.reg9a_def to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.reg9a_spec to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.regd4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.C0 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @om6802_init0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm1700_sensor_param1 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0307_sensor_param1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360b_sensor_param1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_sensor_param1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @om6802_sensor_param1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630_sensor_param1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7648_sensor_param1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_sensor_param1 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_sensor_param1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030n_sensor_param1 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi768_sensor_param1 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp80708_sensor_param1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcm1700_sensor_init to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc0307_sensor_init to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hv7131r_sensor_init to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360_sensor_init to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi0360b_sensor_init to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mo4000_sensor_init to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9v111_sensor_init to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @om6802_sensor_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7630_sensor_init to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7648_sensor_init to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_sensor_init to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_sensor_init to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po2030n_sensor_init to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soi768_sensor_init to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp80708_sensor_init to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN.stophv7131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN.stopmi0360 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN.stopov7648 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN.stopsoi768 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_autogain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_start to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setgamma to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 0, i32 0, i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3312, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %shr = lshr i32 %1, 16
  %conv = trunc i32 %shr to i8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 23
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %bridge, align 2
  %3 = load i32, ptr %driver_info, align 4
  %shr2 = lshr i32 %3, 8
  %conv3 = trunc i32 %shr2 to i8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %sensor, align 1
  %5 = load i32, ptr %driver_info, align 4
  %conv5 = trunc i32 %5 to i8
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv5, ptr %flags, align 4
  %7 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp, ptr @cif_mode, ptr @vga_mode
  %spec.select34 = select i1 %cmp, i8 1, i8 3
  %cam6 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %8 = ptrtoint ptr %cam6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %cam6, align 4
  %9 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select34, ptr %9, align 4
  %npkt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 8
  %11 = ptrtoint ptr %npkt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 24, ptr %npkt, align 4
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 22
  %12 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %ag_cnt, align 1
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %13 = ptrtoint ptr %quality to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 70, ptr %quality, align 8
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %14 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry15 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @qual_upd, ptr %func, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1.i = icmp sgt i32 %2, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 241, i32 noundef 1) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %4, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 241, i16 noundef zeroext 0, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %cleanup

reg_w1.exit:                                      ; preds = %do.end7.i
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i68 = icmp slt i32 %.pr, 0
  br i1 %cmp.i68, label %reg_w1.exit.cleanup_crit_edge, label %if.end3.i

reg_w1.exit.cleanup_crit_edge:                    ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %reg_w1.exit
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i70 = shl i32 %16, 8
  %or6.i = or i32 %shl.i.i70, -2147483520
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or6.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp9.i = icmp sgt i32 %19, 5
  br i1 %cmp9.i, label %do.end14.i, label %if.end3.i.do.end25.i_crit_edge

if.end3.i.do.end25.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i

do.end14.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %name17.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv21.i = zext i8 %23 to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name17.i, i32 noundef 0, i32 noundef %conv21.i) #9
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end14.i, %if.end3.i.do.end25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp26.i = icmp slt i32 %call7.i, 0
  br i1 %cmp26.i, label %do.end31.i, label %do.end25.i.reg_r.exit_crit_edge

do.end25.i.reg_r.exit_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end31.i:                                       ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call7.i) #9
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call7.i, ptr %usb_err.i, align 8
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end31.i, %do.end25.i.reg_r.exit_crit_edge
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr254.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr254.pr)
  %cmp.i73 = icmp slt i32 %.pr254.pr, 0
  br i1 %cmp.i73, label %reg_r.exit.cleanup_crit_edge, label %do.body.i75

reg_r.exit.cleanup_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i75:                                      ; preds = %reg_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %cmp1.i74 = icmp sgt i32 %29, 6
  br i1 %cmp1.i74, label %do.end.i78, label %do.body.i75.do.end7.i85_crit_edge

do.body.i75.do.end7.i85_crit_edge:                ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i85

do.end.i78:                                       ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #8
  %name.i76 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i76, i32 noundef 241, i32 noundef 0) #9
  br label %do.end7.i85

do.end7.i85:                                      ; preds = %do.end.i78, %do.body.i75.do.end7.i85_crit_edge
  %30 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %31, align 1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i81 = shl i32 %36, 8
  %or.i82 = or i32 %shl.i.i81, -2147483648
  %37 = load ptr, ptr %usb_buf.i, align 4
  %call11.i83 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i82, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 241, i16 noundef zeroext 0, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i83)
  %cmp12.i84 = icmp slt i32 %call11.i83, 0
  br i1 %cmp12.i84, label %do.end17.i87, label %reg_w1.exit88

do.end17.i87:                                     ; preds = %do.end7.i85
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i83) #9
  %38 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call11.i83, ptr %usb_err.i, align 8
  br label %cleanup

reg_w1.exit88:                                    ; preds = %do.end7.i85
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr256 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr256)
  %cmp.i90 = icmp slt i32 %.pr256, 0
  br i1 %cmp.i90, label %reg_w1.exit88.cleanup_crit_edge, label %if.end3.i97

reg_w1.exit88.cleanup_crit_edge:                  ; preds = %reg_w1.exit88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i97:                                      ; preds = %reg_w1.exit88
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i92 = shl i32 %43, 8
  %or6.i93 = or i32 %shl.i.i92, -2147483520
  %44 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i, align 4
  %call7.i95 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or6.i93, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %46 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp9.i96 = icmp sgt i32 %46, 5
  br i1 %cmp9.i96, label %do.end14.i101, label %if.end3.i97.do.end25.i103_crit_edge

if.end3.i97.do.end25.i103_crit_edge:              ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i103

do.end14.i101:                                    ; preds = %if.end3.i97
  call void @__sanitizer_cov_trace_pc() #8
  %name17.i98 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv21.i99 = zext i8 %50 to i32
  %call22.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name17.i98, i32 noundef 0, i32 noundef %conv21.i99) #9
  br label %do.end25.i103

do.end25.i103:                                    ; preds = %do.end14.i101, %if.end3.i97.do.end25.i103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i95)
  %cmp26.i102 = icmp slt i32 %call7.i95, 0
  br i1 %cmp26.i102, label %do.end31.i105, label %do.end25.i103.reg_r.exit106_crit_edge

do.end25.i103.reg_r.exit106_crit_edge:            ; preds = %do.end25.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit106

do.end31.i105:                                    ; preds = %do.end25.i103
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call7.i95) #9
  %51 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call7.i95, ptr %usb_err.i, align 8
  %52 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i, align 4
  %54 = call ptr @memset(ptr %53, i32 0, i32 64)
  br label %reg_r.exit106

reg_r.exit106:                                    ; preds = %do.end31.i105, %do.end25.i103.reg_r.exit106_crit_edge
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr258.pr.pr = load i32, ptr %usb_err.i, align 8
  %56 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr258.pr.pr)
  %cmp = icmp slt i32 %.pr258.pr.pr, 0
  br i1 %cmp, label %reg_r.exit106.cleanup_crit_edge, label %do.body

reg_r.exit106.cleanup_crit_edge:                  ; preds = %reg_r.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %reg_r.exit106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp2 = icmp sgt i32 %60, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i8 %59 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %audio = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 34
  %61 = ptrtoint ptr %audio to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %audio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not = icmp eq i8 %62, 0
  %spec.select = select i1 %tobool.not, i8 112, i8 116
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 23
  %63 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %switch = icmp ult i8 %64, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %59)
  %cmp15.not = icmp eq i8 %59, 17
  br i1 %cmp15.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %59)
  %cmp20.not = icmp eq i8 %59, 18
  br i1 %cmp20.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %65 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %sensor, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i8 %66, label %sw.epilog.sw.epilog29_crit_edge [
    i8 3, label %sw.bb25
    i8 8, label %sw.bb26
    i8 9, label %sw.bb27
    i8 12, label %sw.bb28
  ]

sw.epilog.sw.epilog29_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

sw.bb25:                                          ; preds = %sw.epilog
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %reg_w1.exit170.i.for.body.i_crit_edge, %sw.bb25
  %i.0175.i = phi i32 [ 0, %sw.bb25 ], [ %inc25.i, %reg_w1.exit170.i.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i = icmp slt i32 %69, 0
  br i1 %cmp.i.i, label %for.body.i.reg_w1.exit131.i_crit_edge, label %do.body.i.i

for.body.i.reg_w1.exit131.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit131.i

do.body.i.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %70 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %70)
  %cmp1.i.i = icmp sgt i32 %70, 6
  br i1 %cmp1.i.i, label %do.end.i.i, label %do.body.i.i.do.end7.i.i_crit_edge

do.body.i.i.do.end7.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i, i32 noundef 23, i32 noundef 98) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end7.i.i_crit_edge
  %71 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 98, ptr %72, align 1
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i.i = shl i32 %77, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %78 = load ptr, ptr %usb_buf.i, align 4
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %78, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end7.i.i.reg_w1.exit131.sink.split.i_crit_edge, label %reg_w1.exit.i

do.end7.i.i.reg_w1.exit131.sink.split.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit131.sink.split.i

reg_w1.exit.i:                                    ; preds = %do.end7.i.i
  %79 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i116.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i116.i, label %reg_w1.exit.i.reg_w1.exit131.i_crit_edge, label %do.body.i118.i

reg_w1.exit.i.reg_w1.exit131.i_crit_edge:         ; preds = %reg_w1.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit131.i

do.body.i118.i:                                   ; preds = %reg_w1.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %80 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %80)
  %cmp1.i117.i = icmp sgt i32 %80, 6
  br i1 %cmp1.i117.i, label %do.end.i121.i, label %do.body.i118.i.do.end7.i128.i_crit_edge

do.body.i118.i.do.end7.i128.i_crit_edge:          ; preds = %do.body.i118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i128.i

do.end.i121.i:                                    ; preds = %do.body.i118.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i, i32 noundef 1, i32 noundef 8) #9
  br label %do.end7.i128.i

do.end7.i128.i:                                   ; preds = %do.end.i121.i, %do.body.i118.i.do.end7.i128.i_crit_edge
  %81 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %usb_buf.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 8, ptr %82, align 1
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %shl.i.i124.i = shl i32 %87, 8
  %or.i125.i = or i32 %shl.i.i124.i, -2147483648
  %88 = load ptr, ptr %usb_buf.i, align 4
  %call11.i126.i = tail call i32 @usb_control_msg(ptr noundef %85, i32 noundef %or.i125.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %88, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i126.i)
  %cmp12.i127.i = icmp slt i32 %call11.i126.i, 0
  br i1 %cmp12.i127.i, label %do.end7.i128.i.reg_w1.exit131.sink.split.i_crit_edge, label %do.end7.i128.i.reg_w1.exit131.i_crit_edge

do.end7.i128.i.reg_w1.exit131.i_crit_edge:        ; preds = %do.end7.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit131.i

do.end7.i128.i.reg_w1.exit131.sink.split.i_crit_edge: ; preds = %do.end7.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit131.sink.split.i

reg_w1.exit131.sink.split.i:                      ; preds = %do.end7.i128.i.reg_w1.exit131.sink.split.i_crit_edge, %do.end7.i.i.reg_w1.exit131.sink.split.i_crit_edge
  %call11.i.sink176.i = phi i32 [ %call11.i.i, %do.end7.i.i.reg_w1.exit131.sink.split.i_crit_edge ], [ %call11.i126.i, %do.end7.i128.i.reg_w1.exit131.sink.split.i_crit_edge ]
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.sink176.i) #9
  %89 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call11.i.sink176.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit131.i

reg_w1.exit131.i:                                 ; preds = %reg_w1.exit131.sink.split.i, %do.end7.i128.i.reg_w1.exit131.i_crit_edge, %reg_w1.exit.i.reg_w1.exit131.i_crit_edge, %for.body.i.reg_w1.exit131.i_crit_edge
  %arrayidx4.i = getelementptr [2 x [4 x [8 x i8]]], ptr @mi0360_probe.probe_tb, i32 0, i32 %i.0175.i, i32 0
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef %arrayidx4.i) #6
  %arrayidx4.1.i = getelementptr [2 x [4 x [8 x i8]]], ptr @mi0360_probe.probe_tb, i32 0, i32 %i.0175.i, i32 1
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef %arrayidx4.1.i) #6
  %arrayidx4.2.i = getelementptr [2 x [4 x [8 x i8]]], ptr @mi0360_probe.probe_tb, i32 0, i32 %i.0175.i, i32 2
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef %arrayidx4.2.i) #6
  tail call void @msleep(i32 noundef 2) #6
  %90 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i133.i = icmp slt i32 %91, 0
  br i1 %cmp.i133.i, label %reg_w1.exit131.i.reg_r.exit.i_crit_edge, label %if.end3.i.i

reg_w1.exit131.i.reg_r.exit.i_crit_edge:          ; preds = %reg_w1.exit131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit.i

if.end3.i.i:                                      ; preds = %reg_w1.exit131.i
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i135.i = shl i32 %95, 8
  %or6.i.i = or i32 %shl.i.i135.i, -2147483520
  %96 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %usb_buf.i, align 4
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or6.i.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 10, i16 noundef zeroext 0, ptr noundef %97, i16 noundef zeroext 5, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %98 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %98)
  %cmp9.i.i = icmp sgt i32 %98, 5
  br i1 %cmp9.i.i, label %do.end14.i.i, label %if.end3.i.i.do.end25.i.i_crit_edge

if.end3.i.i.do.end25.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i.i

do.end14.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %usb_buf.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  %conv21.i.i = zext i8 %102 to i32
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i.i, i32 noundef 10, i32 noundef %conv21.i.i) #9
  br label %do.end25.i.i

do.end25.i.i:                                     ; preds = %do.end14.i.i, %if.end3.i.i.do.end25.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp26.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp26.i.i, label %do.end31.i.i, label %do.end25.i.i.reg_r.exit.i_crit_edge

do.end25.i.i.reg_r.exit.i_crit_edge:              ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit.i

do.end31.i.i:                                     ; preds = %do.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call7.i.i) #9
  %103 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call7.i.i, ptr %usb_err.i, align 8
  %104 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %usb_buf.i, align 4
  %106 = call ptr @memset(ptr %105, i32 0, i32 64)
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end31.i.i, %do.end25.i.i.reg_r.exit.i_crit_edge, %reg_w1.exit131.i.reg_r.exit.i_crit_edge
  %107 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %108, i32 3
  %109 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx5.i, align 1
  %conv.i = zext i8 %110 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx7.i = getelementptr i8, ptr %108, i32 4
  %111 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %112 to i32
  %or.i107 = or i32 %shl.i, %conv8.i
  %arrayidx11.i = getelementptr [2 x [4 x [8 x i8]]], ptr @mi0360_probe.probe_tb, i32 0, i32 %i.0175.i, i32 3
  %113 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp14.not.i = icmp eq i8 %114, 0
  br i1 %cmp14.not.i, label %reg_r.exit.i.if.end.i_crit_edge, label %if.then.i

reg_r.exit.i.if.end.i_crit_edge:                  ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef %arrayidx11.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %reg_r.exit.i.if.end.i_crit_edge
  %115 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i138.i = icmp slt i32 %116, 0
  br i1 %cmp.i138.i, label %if.end.i.reg_w1.exit170.i_crit_edge, label %do.body.i140.i

if.end.i.reg_w1.exit170.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit170.i

do.body.i140.i:                                   ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %117 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %117)
  %cmp1.i139.i = icmp sgt i32 %117, 6
  br i1 %cmp1.i139.i, label %do.end.i143.i, label %do.body.i140.i.do.end7.i150.i_crit_edge

do.body.i140.i.do.end7.i150.i_crit_edge:          ; preds = %do.body.i140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i150.i

do.end.i143.i:                                    ; preds = %do.body.i140.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i142.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i, i32 noundef 1, i32 noundef 41) #9
  br label %do.end7.i150.i

do.end7.i150.i:                                   ; preds = %do.end.i143.i, %do.body.i140.i.do.end7.i150.i_crit_edge
  %118 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %usb_buf.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 41, ptr %119, align 1
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 8
  %shl.i.i146.i = shl i32 %124, 8
  %or.i147.i = or i32 %shl.i.i146.i, -2147483648
  %125 = load ptr, ptr %usb_buf.i, align 4
  %call11.i148.i = tail call i32 @usb_control_msg(ptr noundef %122, i32 noundef %or.i147.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %125, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i148.i)
  %cmp12.i149.i = icmp slt i32 %call11.i148.i, 0
  br i1 %cmp12.i149.i, label %do.end7.i150.i.reg_w1.exit170.sink.split.i_crit_edge, label %reg_w1.exit153.i

do.end7.i150.i.reg_w1.exit170.sink.split.i_crit_edge: ; preds = %do.end7.i150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit170.sink.split.i

reg_w1.exit153.i:                                 ; preds = %do.end7.i150.i
  %126 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pr172.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr172.i)
  %cmp.i155.i = icmp slt i32 %.pr172.i, 0
  br i1 %cmp.i155.i, label %reg_w1.exit153.i.reg_w1.exit170.i_crit_edge, label %do.body.i157.i

reg_w1.exit153.i.reg_w1.exit170.i_crit_edge:      ; preds = %reg_w1.exit153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit170.i

do.body.i157.i:                                   ; preds = %reg_w1.exit153.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %127 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %127)
  %cmp1.i156.i = icmp sgt i32 %127, 6
  br i1 %cmp1.i156.i, label %do.end.i160.i, label %do.body.i157.i.do.end7.i167.i_crit_edge

do.body.i157.i.do.end7.i167.i_crit_edge:          ; preds = %do.body.i157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i167.i

do.end.i160.i:                                    ; preds = %do.body.i157.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i, i32 noundef 23, i32 noundef 66) #9
  br label %do.end7.i167.i

do.end7.i167.i:                                   ; preds = %do.end.i160.i, %do.body.i157.i.do.end7.i167.i_crit_edge
  %128 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %usb_buf.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 66, ptr %129, align 1
  %131 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %shl.i.i163.i = shl i32 %134, 8
  %or.i164.i = or i32 %shl.i.i163.i, -2147483648
  %135 = load ptr, ptr %usb_buf.i, align 4
  %call11.i165.i = tail call i32 @usb_control_msg(ptr noundef %132, i32 noundef %or.i164.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %135, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i165.i)
  %cmp12.i166.i = icmp slt i32 %call11.i165.i, 0
  br i1 %cmp12.i166.i, label %do.end7.i167.i.reg_w1.exit170.sink.split.i_crit_edge, label %do.end7.i167.i.reg_w1.exit170.i_crit_edge

do.end7.i167.i.reg_w1.exit170.i_crit_edge:        ; preds = %do.end7.i167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit170.i

do.end7.i167.i.reg_w1.exit170.sink.split.i_crit_edge: ; preds = %do.end7.i167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit170.sink.split.i

reg_w1.exit170.sink.split.i:                      ; preds = %do.end7.i167.i.reg_w1.exit170.sink.split.i_crit_edge, %do.end7.i150.i.reg_w1.exit170.sink.split.i_crit_edge
  %call11.i148.sink177.i = phi i32 [ %call11.i148.i, %do.end7.i150.i.reg_w1.exit170.sink.split.i_crit_edge ], [ %call11.i165.i, %do.end7.i167.i.reg_w1.exit170.sink.split.i_crit_edge ]
  %call19.i151.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i148.sink177.i) #9
  %136 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call11.i148.sink177.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit170.i

reg_w1.exit170.i:                                 ; preds = %reg_w1.exit170.sink.split.i, %do.end7.i167.i.reg_w1.exit170.i_crit_edge, %reg_w1.exit153.i.reg_w1.exit170.i_crit_edge, %if.end.i.reg_w1.exit170.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or.i107)
  %cmp20.not.i = icmp ne i32 %or.i107, 65535
  %inc25.i = add nuw nsw i32 %i.0175.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc25.i)
  %exitcond.not.i = icmp eq i32 %inc25.i, 2
  %or.cond.i = select i1 %cmp20.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.end26.i, label %reg_w1.exit170.i.for.body.i_crit_edge

reg_w1.exit170.i.for.body.i_crit_edge:            ; preds = %reg_w1.exit170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end26.i:                                      ; preds = %reg_w1.exit170.i
  %137 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp27.i = icmp slt i32 %138, 0
  br i1 %cmp27.i, label %for.end26.i.sw.epilog29_crit_edge, label %if.end30.i

for.end26.i.sw.epilog29_crit_edge:                ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

if.end30.i:                                       ; preds = %for.end26.i
  %trunc.i = trunc i32 %or.i107 to i16
  %139 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %trunc.i, label %do.body73.i [
    i16 -32223, label %do.body.i108
    i16 -32198, label %do.body41.i
    i16 -32189, label %do.body58.i
  ]

do.body.i108:                                     ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %140 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp32.i = icmp sgt i32 %140, 0
  br i1 %cmp32.i, label %do.end.i110, label %do.body.i108.do.end39.i_crit_edge

do.body.i108.do.end39.i_crit_edge:                ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39.i

do.end.i110:                                      ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #8
  %call.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i.i) #9
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end.i110, %do.body.i108.do.end39.i_crit_edge
  %141 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 4, ptr %sensor, align 1
  br label %sw.epilog29

do.body41.i:                                      ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %142 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp42.i = icmp sgt i32 %142, 0
  br i1 %cmp42.i, label %do.end47.i, label %do.body41.i.do.end55.i_crit_edge

do.body41.i.do.end55.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55.i

do.end47.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name.i.i) #9
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end47.i, %do.body41.i.do.end55.i_crit_edge
  %143 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 6, ptr %sensor, align 1
  br label %sw.epilog29

do.body58.i:                                      ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %144 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp59.i = icmp sgt i32 %144, 0
  br i1 %cmp59.i, label %do.end64.i, label %do.body58.i.sw.epilog29_crit_edge

do.body58.i.sw.epilog29_crit_edge:                ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end64.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name.i.i) #9
  br label %sw.epilog29

do.body73.i:                                      ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %145 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp74.i = icmp sgt i32 %145, 0
  br i1 %cmp74.i, label %do.end79.i, label %do.body73.i.sw.epilog29_crit_edge

do.body73.i.sw.epilog29_crit_edge:                ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #8
  %call85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name.i.i, i32 noundef %or.i107) #9
  br label %sw.epilog29

sw.bb26:                                          ; preds = %sw.epilog
  %146 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i.i112 = icmp slt i32 %147, 0
  br i1 %cmp.i.i112, label %sw.bb26.reg_w1.exit64.i_crit_edge, label %do.body.i.i114

sw.bb26.reg_w1.exit64.i_crit_edge:                ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit64.i

do.body.i.i114:                                   ; preds = %sw.bb26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %148 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %148)
  %cmp1.i.i113 = icmp sgt i32 %148, 6
  br i1 %cmp1.i.i113, label %do.end.i.i117, label %do.body.i.i114.do.end7.i.i124_crit_edge

do.body.i.i114.do.end7.i.i124_crit_edge:          ; preds = %do.body.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i124

do.end.i.i117:                                    ; preds = %do.body.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i115 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i115, i32 noundef 23, i32 noundef 98) #9
  br label %do.end7.i.i124

do.end7.i.i124:                                   ; preds = %do.end.i.i117, %do.body.i.i114.do.end7.i.i124_crit_edge
  %149 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %usb_buf.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 98, ptr %150, align 1
  %152 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %shl.i.i.i120 = shl i32 %155, 8
  %or.i.i121 = or i32 %shl.i.i.i120, -2147483648
  %156 = load ptr, ptr %usb_buf.i, align 4
  %call11.i.i122 = tail call i32 @usb_control_msg(ptr noundef %153, i32 noundef %or.i.i121, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %156, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i122)
  %cmp12.i.i123 = icmp slt i32 %call11.i.i122, 0
  br i1 %cmp12.i.i123, label %do.end7.i.i124.reg_w1.exit64.sink.split.i_crit_edge, label %reg_w1.exit.i126

do.end7.i.i124.reg_w1.exit64.sink.split.i_crit_edge: ; preds = %do.end7.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit64.sink.split.i

reg_w1.exit.i126:                                 ; preds = %do.end7.i.i124
  %157 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr.i125 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i125)
  %cmp.i49.i = icmp slt i32 %.pr.i125, 0
  br i1 %cmp.i49.i, label %reg_w1.exit.i126.reg_w1.exit64.i_crit_edge, label %do.body.i51.i

reg_w1.exit.i126.reg_w1.exit64.i_crit_edge:       ; preds = %reg_w1.exit.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit64.i

do.body.i51.i:                                    ; preds = %reg_w1.exit.i126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %158 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %158)
  %cmp1.i50.i = icmp sgt i32 %158, 6
  br i1 %cmp1.i50.i, label %do.end.i54.i, label %do.body.i51.i.do.end7.i61.i_crit_edge

do.body.i51.i.do.end7.i61.i_crit_edge:            ; preds = %do.body.i51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i61.i

do.end.i54.i:                                     ; preds = %do.body.i51.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i52.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i52.i, i32 noundef 1, i32 noundef 8) #9
  br label %do.end7.i61.i

do.end7.i61.i:                                    ; preds = %do.end.i54.i, %do.body.i51.i.do.end7.i61.i_crit_edge
  %159 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %usb_buf.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 8, ptr %160, align 1
  %162 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 8
  %shl.i.i57.i = shl i32 %165, 8
  %or.i58.i = or i32 %shl.i.i57.i, -2147483648
  %166 = load ptr, ptr %usb_buf.i, align 4
  %call11.i59.i = tail call i32 @usb_control_msg(ptr noundef %163, i32 noundef %or.i58.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %166, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i59.i)
  %cmp12.i60.i = icmp slt i32 %call11.i59.i, 0
  br i1 %cmp12.i60.i, label %do.end7.i61.i.reg_w1.exit64.sink.split.i_crit_edge, label %do.end7.i61.i.reg_w1.exit64.i_crit_edge

do.end7.i61.i.reg_w1.exit64.i_crit_edge:          ; preds = %do.end7.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit64.i

do.end7.i61.i.reg_w1.exit64.sink.split.i_crit_edge: ; preds = %do.end7.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit64.sink.split.i

reg_w1.exit64.sink.split.i:                       ; preds = %do.end7.i61.i.reg_w1.exit64.sink.split.i_crit_edge, %do.end7.i.i124.reg_w1.exit64.sink.split.i_crit_edge
  %call11.i.sink109.i = phi i32 [ %call11.i.i122, %do.end7.i.i124.reg_w1.exit64.sink.split.i_crit_edge ], [ %call11.i59.i, %do.end7.i61.i.reg_w1.exit64.sink.split.i_crit_edge ]
  %call19.i.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.sink109.i) #9
  %167 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %call11.i.sink109.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit64.i

reg_w1.exit64.i:                                  ; preds = %reg_w1.exit64.sink.split.i, %do.end7.i61.i.reg_w1.exit64.i_crit_edge, %reg_w1.exit.i126.reg_w1.exit64.i_crit_edge, %sw.bb26.reg_w1.exit64.i_crit_edge
  %i2c_addr.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 25
  %168 = ptrtoint ptr %i2c_addr.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 33, ptr %i2c_addr.i, align 8
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 10, i32 noundef 2) #6
  %169 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %170, i32 3
  %171 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %170, i32 4
  %173 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx2.i, align 1
  %175 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i66.i = icmp slt i32 %176, 0
  br i1 %cmp.i66.i, label %reg_w1.exit64.i.sw.epilog29_crit_edge, label %do.body.i68.i

reg_w1.exit64.i.sw.epilog29_crit_edge:            ; preds = %reg_w1.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.body.i68.i:                                    ; preds = %reg_w1.exit64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %177 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %177)
  %cmp1.i67.i = icmp sgt i32 %177, 6
  br i1 %cmp1.i67.i, label %do.end.i71.i, label %do.body.i68.i.do.end7.i78.i_crit_edge

do.body.i68.i.do.end7.i78.i_crit_edge:            ; preds = %do.body.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i78.i

do.end.i71.i:                                     ; preds = %do.body.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i69.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i69.i, i32 noundef 1, i32 noundef 41) #9
  br label %do.end7.i78.i

do.end7.i78.i:                                    ; preds = %do.end.i71.i, %do.body.i68.i.do.end7.i78.i_crit_edge
  %178 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %usb_buf.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 41, ptr %179, align 1
  %181 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %182, align 8
  %shl.i.i74.i = shl i32 %184, 8
  %or.i75.i = or i32 %shl.i.i74.i, -2147483648
  %185 = load ptr, ptr %usb_buf.i, align 4
  %call11.i76.i = tail call i32 @usb_control_msg(ptr noundef %182, i32 noundef %or.i75.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %185, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i76.i)
  %cmp12.i77.i = icmp slt i32 %call11.i76.i, 0
  br i1 %cmp12.i77.i, label %do.end17.i80.i, label %reg_w1.exit81.i

do.end17.i80.i:                                   ; preds = %do.end7.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i76.i) #9
  %186 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %call11.i76.i, ptr %usb_err.i, align 8
  br label %sw.epilog29

reg_w1.exit81.i:                                  ; preds = %do.end7.i78.i
  %187 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.pr100.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr100.i)
  %cmp.i83.i = icmp slt i32 %.pr100.i, 0
  br i1 %cmp.i83.i, label %reg_w1.exit81.i.sw.epilog29_crit_edge, label %do.body.i85.i

reg_w1.exit81.i.sw.epilog29_crit_edge:            ; preds = %reg_w1.exit81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.body.i85.i:                                    ; preds = %reg_w1.exit81.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %188 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %188)
  %cmp1.i84.i = icmp sgt i32 %188, 6
  br i1 %cmp1.i84.i, label %do.end.i88.i, label %do.body.i85.i.do.end7.i95.i_crit_edge

do.body.i85.i.do.end7.i95.i_crit_edge:            ; preds = %do.body.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i95.i

do.end.i88.i:                                     ; preds = %do.body.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i86.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i86.i, i32 noundef 23, i32 noundef 66) #9
  br label %do.end7.i95.i

do.end7.i95.i:                                    ; preds = %do.end.i88.i, %do.body.i85.i.do.end7.i95.i_crit_edge
  %189 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %usb_buf.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 66, ptr %190, align 1
  %192 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 8
  %shl.i.i91.i = shl i32 %195, 8
  %or.i92.i = or i32 %shl.i.i91.i, -2147483648
  %196 = load ptr, ptr %usb_buf.i, align 4
  %call11.i93.i = tail call i32 @usb_control_msg(ptr noundef %193, i32 noundef %or.i92.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %196, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i93.i)
  %cmp12.i94.i = icmp slt i32 %call11.i93.i, 0
  br i1 %cmp12.i94.i, label %do.end17.i97.i, label %reg_w1.exit98.i

do.end17.i97.i:                                   ; preds = %do.end7.i95.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i93.i) #9
  %197 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call11.i93.i, ptr %usb_err.i, align 8
  br label %sw.epilog29

reg_w1.exit98.i:                                  ; preds = %do.end7.i95.i
  %198 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %.pr102.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr102.pr.i)
  %cmp.i129 = icmp slt i32 %.pr102.pr.i, 0
  br i1 %cmp.i129, label %reg_w1.exit98.i.sw.epilog29_crit_edge, label %if.end.i133

reg_w1.exit98.i.sw.epilog29_crit_edge:            ; preds = %reg_w1.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

if.end.i133:                                      ; preds = %reg_w1.exit98.i
  %conv.i130 = zext i8 %172 to i32
  %shl.i131 = shl nuw nsw i32 %conv.i130, 8
  %conv3.i = zext i8 %174 to i32
  %or.i132 = or i32 %shl.i131, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30248, i32 %or.i132)
  %cmp7.i = icmp eq i32 %or.i132, 30248
  br i1 %cmp7.i, label %if.then9.i, label %do.body18.i

if.then9.i:                                       ; preds = %if.end.i133
  %199 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 13, ptr %sensor, align 1
  %input_flags.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 3
  %200 = ptrtoint ptr %input_flags.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 48, ptr %input_flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %201 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp10.i = icmp sgt i32 %201, 0
  br i1 %cmp10.i, label %do.end.i137, label %if.then9.i.sw.epilog29_crit_edge

if.then9.i.sw.epilog29_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end.i137:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i135 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i135) #9
  br label %sw.epilog29

do.body18.i:                                      ; preds = %if.end.i133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %202 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp19.i = icmp sgt i32 %202, 0
  br i1 %cmp19.i, label %do.end24.i, label %do.body18.i.sw.epilog29_crit_edge

do.body18.i.sw.epilog29_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end24.i:                                       ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  %name27.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name27.i, i32 noundef %or.i132) #9
  br label %sw.epilog29

sw.bb27:                                          ; preds = %sw.epilog
  %203 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp.i.i139 = icmp slt i32 %204, 0
  br i1 %cmp.i.i139, label %sw.bb27.reg_w1.exit94.i_crit_edge, label %do.body.i.i141

sw.bb27.reg_w1.exit94.i_crit_edge:                ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit94.i

do.body.i.i141:                                   ; preds = %sw.bb27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %205 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %205)
  %cmp1.i.i140 = icmp sgt i32 %205, 6
  br i1 %cmp1.i.i140, label %do.end.i.i144, label %do.body.i.i141.do.end7.i.i151_crit_edge

do.body.i.i141.do.end7.i.i151_crit_edge:          ; preds = %do.body.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i151

do.end.i.i144:                                    ; preds = %do.body.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i142 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i142, i32 noundef 23, i32 noundef 98) #9
  br label %do.end7.i.i151

do.end7.i.i151:                                   ; preds = %do.end.i.i144, %do.body.i.i141.do.end7.i.i151_crit_edge
  %206 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %usb_buf.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 98, ptr %207, align 1
  %209 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 8
  %shl.i.i.i147 = shl i32 %212, 8
  %or.i.i148 = or i32 %shl.i.i.i147, -2147483648
  %213 = load ptr, ptr %usb_buf.i, align 4
  %call11.i.i149 = tail call i32 @usb_control_msg(ptr noundef %210, i32 noundef %or.i.i148, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %213, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i149)
  %cmp12.i.i150 = icmp slt i32 %call11.i.i149, 0
  br i1 %cmp12.i.i150, label %do.end7.i.i151.reg_w1.exit94.sink.split.i_crit_edge, label %reg_w1.exit.i153

do.end7.i.i151.reg_w1.exit94.sink.split.i_crit_edge: ; preds = %do.end7.i.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit94.sink.split.i

reg_w1.exit.i153:                                 ; preds = %do.end7.i.i151
  %214 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.pr.i152 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i152)
  %cmp.i79.i = icmp slt i32 %.pr.i152, 0
  br i1 %cmp.i79.i, label %reg_w1.exit.i153.reg_w1.exit94.i_crit_edge, label %do.body.i81.i

reg_w1.exit.i153.reg_w1.exit94.i_crit_edge:       ; preds = %reg_w1.exit.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit94.i

do.body.i81.i:                                    ; preds = %reg_w1.exit.i153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %215 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %215)
  %cmp1.i80.i = icmp sgt i32 %215, 6
  br i1 %cmp1.i80.i, label %do.end.i84.i, label %do.body.i81.i.do.end7.i91.i_crit_edge

do.body.i81.i.do.end7.i91.i_crit_edge:            ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i91.i

do.end.i84.i:                                     ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i82.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i82.i, i32 noundef 1, i32 noundef 8) #9
  br label %do.end7.i91.i

do.end7.i91.i:                                    ; preds = %do.end.i84.i, %do.body.i81.i.do.end7.i91.i_crit_edge
  %216 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %usb_buf.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 8, ptr %217, align 1
  %219 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev.i, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 8
  %shl.i.i87.i = shl i32 %222, 8
  %or.i88.i = or i32 %shl.i.i87.i, -2147483648
  %223 = load ptr, ptr %usb_buf.i, align 4
  %call11.i89.i = tail call i32 @usb_control_msg(ptr noundef %220, i32 noundef %or.i88.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %223, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i89.i)
  %cmp12.i90.i = icmp slt i32 %call11.i89.i, 0
  br i1 %cmp12.i90.i, label %do.end7.i91.i.reg_w1.exit94.sink.split.i_crit_edge, label %do.end7.i91.i.reg_w1.exit94.i_crit_edge

do.end7.i91.i.reg_w1.exit94.i_crit_edge:          ; preds = %do.end7.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit94.i

do.end7.i91.i.reg_w1.exit94.sink.split.i_crit_edge: ; preds = %do.end7.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit94.sink.split.i

reg_w1.exit94.sink.split.i:                       ; preds = %do.end7.i91.i.reg_w1.exit94.sink.split.i_crit_edge, %do.end7.i.i151.reg_w1.exit94.sink.split.i_crit_edge
  %call11.i.sink211.i = phi i32 [ %call11.i.i149, %do.end7.i.i151.reg_w1.exit94.sink.split.i_crit_edge ], [ %call11.i89.i, %do.end7.i91.i.reg_w1.exit94.sink.split.i_crit_edge ]
  %call19.i.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.sink211.i) #9
  %224 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %call11.i.sink211.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit94.i

reg_w1.exit94.i:                                  ; preds = %reg_w1.exit94.sink.split.i, %do.end7.i91.i.reg_w1.exit94.i_crit_edge, %reg_w1.exit.i153.reg_w1.exit94.i_crit_edge, %sw.bb27.reg_w1.exit94.i_crit_edge
  %i2c_addr.i155 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 25
  %225 = ptrtoint ptr %i2c_addr.i155 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 33, ptr %i2c_addr.i155, align 8
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 10, i32 noundef 2) #6
  %226 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i157 = getelementptr i8, ptr %227, i32 3
  %228 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i157, align 1
  %conv.i158 = zext i8 %229 to i32
  %shl.i159 = shl nuw nsw i32 %conv.i158, 8
  %arrayidx2.i160 = getelementptr i8, ptr %227, i32 4
  %230 = ptrtoint ptr %arrayidx2.i160 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx2.i160, align 1
  %conv3.i161 = zext i8 %231 to i32
  %or.i162 = or i32 %shl.i159, %conv3.i161
  %232 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp.i96.i = icmp slt i32 %233, 0
  br i1 %cmp.i96.i, label %reg_w1.exit94.i.reg_w1.exit128.i_crit_edge, label %do.body.i98.i

reg_w1.exit94.i.reg_w1.exit128.i_crit_edge:       ; preds = %reg_w1.exit94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit128.i

do.body.i98.i:                                    ; preds = %reg_w1.exit94.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %234 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %234)
  %cmp1.i97.i = icmp sgt i32 %234, 6
  br i1 %cmp1.i97.i, label %do.end.i101.i, label %do.body.i98.i.do.end7.i108.i_crit_edge

do.body.i98.i.do.end7.i108.i_crit_edge:           ; preds = %do.body.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i108.i

do.end.i101.i:                                    ; preds = %do.body.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i99.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i99.i, i32 noundef 1, i32 noundef 41) #9
  br label %do.end7.i108.i

do.end7.i108.i:                                   ; preds = %do.end.i101.i, %do.body.i98.i.do.end7.i108.i_crit_edge
  %235 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %usb_buf.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 41, ptr %236, align 1
  %238 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 8
  %shl.i.i104.i = shl i32 %241, 8
  %or.i105.i = or i32 %shl.i.i104.i, -2147483648
  %242 = load ptr, ptr %usb_buf.i, align 4
  %call11.i106.i = tail call i32 @usb_control_msg(ptr noundef %239, i32 noundef %or.i105.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %242, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i106.i)
  %cmp12.i107.i = icmp slt i32 %call11.i106.i, 0
  br i1 %cmp12.i107.i, label %do.end7.i108.i.reg_w1.exit128.sink.split.i_crit_edge, label %reg_w1.exit111.i

do.end7.i108.i.reg_w1.exit128.sink.split.i_crit_edge: ; preds = %do.end7.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit128.sink.split.i

reg_w1.exit111.i:                                 ; preds = %do.end7.i108.i
  %243 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %.pr198.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr198.i)
  %cmp.i113.i = icmp slt i32 %.pr198.i, 0
  br i1 %cmp.i113.i, label %reg_w1.exit111.i.reg_w1.exit128.i_crit_edge, label %do.body.i115.i

reg_w1.exit111.i.reg_w1.exit128.i_crit_edge:      ; preds = %reg_w1.exit111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit128.i

do.body.i115.i:                                   ; preds = %reg_w1.exit111.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %244 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %244)
  %cmp1.i114.i = icmp sgt i32 %244, 6
  br i1 %cmp1.i114.i, label %do.end.i118.i, label %do.body.i115.i.do.end7.i125.i_crit_edge

do.body.i115.i.do.end7.i125.i_crit_edge:          ; preds = %do.body.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i125.i

do.end.i118.i:                                    ; preds = %do.body.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i116.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i116.i, i32 noundef 23, i32 noundef 66) #9
  br label %do.end7.i125.i

do.end7.i125.i:                                   ; preds = %do.end.i118.i, %do.body.i115.i.do.end7.i125.i_crit_edge
  %245 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %usb_buf.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 66, ptr %246, align 1
  %248 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev.i, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 8
  %shl.i.i121.i = shl i32 %251, 8
  %or.i122.i = or i32 %shl.i.i121.i, -2147483648
  %252 = load ptr, ptr %usb_buf.i, align 4
  %call11.i123.i = tail call i32 @usb_control_msg(ptr noundef %249, i32 noundef %or.i122.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %252, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i123.i)
  %cmp12.i124.i = icmp slt i32 %call11.i123.i, 0
  br i1 %cmp12.i124.i, label %do.end7.i125.i.reg_w1.exit128.sink.split.i_crit_edge, label %do.end7.i125.i.reg_w1.exit128.i_crit_edge

do.end7.i125.i.reg_w1.exit128.i_crit_edge:        ; preds = %do.end7.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit128.i

do.end7.i125.i.reg_w1.exit128.sink.split.i_crit_edge: ; preds = %do.end7.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit128.sink.split.i

reg_w1.exit128.sink.split.i:                      ; preds = %do.end7.i125.i.reg_w1.exit128.sink.split.i_crit_edge, %do.end7.i108.i.reg_w1.exit128.sink.split.i_crit_edge
  %call11.i106.sink212.i = phi i32 [ %call11.i106.i, %do.end7.i108.i.reg_w1.exit128.sink.split.i_crit_edge ], [ %call11.i123.i, %do.end7.i125.i.reg_w1.exit128.sink.split.i_crit_edge ]
  %call19.i109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i106.sink212.i) #9
  %253 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %call11.i106.sink212.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit128.i

reg_w1.exit128.i:                                 ; preds = %reg_w1.exit128.sink.split.i, %do.end7.i125.i.reg_w1.exit128.i_crit_edge, %reg_w1.exit111.i.reg_w1.exit128.i_crit_edge, %reg_w1.exit94.i.reg_w1.exit128.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %229)
  %cmp.i163 = icmp eq i8 %229, 118
  br i1 %cmp.i163, label %do.body.i165, label %if.end14.i

do.body.i165:                                     ; preds = %reg_w1.exit128.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %254 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cmp7.i164 = icmp sgt i32 %254, 0
  br i1 %cmp7.i164, label %do.end.i168, label %do.body.i165.sw.epilog29_crit_edge

do.body.i165.sw.epilog29_crit_edge:               ; preds = %do.body.i165
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end.i168:                                      ; preds = %do.body.i165
  call void @__sanitizer_cov_trace_pc() #8
  %name.i166 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i166, i32 noundef %or.i162) #9
  br label %sw.epilog29

if.end14.i:                                       ; preds = %reg_w1.exit128.i
  %255 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp.i130.i = icmp slt i32 %256, 0
  br i1 %cmp.i130.i, label %if.end14.i.reg_w1.exit162.i_crit_edge, label %do.body.i132.i

if.end14.i.reg_w1.exit162.i_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit162.i

do.body.i132.i:                                   ; preds = %if.end14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %257 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %257)
  %cmp1.i131.i = icmp sgt i32 %257, 6
  br i1 %cmp1.i131.i, label %do.end.i135.i, label %do.body.i132.i.do.end7.i142.i_crit_edge

do.body.i132.i.do.end7.i142.i_crit_edge:          ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i142.i

do.end.i135.i:                                    ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i133.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i133.i, i32 noundef 23, i32 noundef 98) #9
  br label %do.end7.i142.i

do.end7.i142.i:                                   ; preds = %do.end.i135.i, %do.body.i132.i.do.end7.i142.i_crit_edge
  %258 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %usb_buf.i, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 98, ptr %259, align 1
  %261 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %262, align 8
  %shl.i.i138.i = shl i32 %264, 8
  %or.i139.i = or i32 %shl.i.i138.i, -2147483648
  %265 = load ptr, ptr %usb_buf.i, align 4
  %call11.i140.i = tail call i32 @usb_control_msg(ptr noundef %262, i32 noundef %or.i139.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %265, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i140.i)
  %cmp12.i141.i = icmp slt i32 %call11.i140.i, 0
  br i1 %cmp12.i141.i, label %do.end7.i142.i.reg_w1.exit162.sink.split.i_crit_edge, label %reg_w1.exit145.i

do.end7.i142.i.reg_w1.exit162.sink.split.i_crit_edge: ; preds = %do.end7.i142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit162.sink.split.i

reg_w1.exit145.i:                                 ; preds = %do.end7.i142.i
  %266 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %.pr200.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr200.i)
  %cmp.i147.i = icmp slt i32 %.pr200.i, 0
  br i1 %cmp.i147.i, label %reg_w1.exit145.i.reg_w1.exit162.i_crit_edge, label %do.body.i149.i

reg_w1.exit145.i.reg_w1.exit162.i_crit_edge:      ; preds = %reg_w1.exit145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit162.i

do.body.i149.i:                                   ; preds = %reg_w1.exit145.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %267 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %267)
  %cmp1.i148.i = icmp sgt i32 %267, 6
  br i1 %cmp1.i148.i, label %do.end.i152.i, label %do.body.i149.i.do.end7.i159.i_crit_edge

do.body.i149.i.do.end7.i159.i_crit_edge:          ; preds = %do.body.i149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i159.i

do.end.i152.i:                                    ; preds = %do.body.i149.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i150.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i151.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i150.i, i32 noundef 1, i32 noundef 8) #9
  br label %do.end7.i159.i

do.end7.i159.i:                                   ; preds = %do.end.i152.i, %do.body.i149.i.do.end7.i159.i_crit_edge
  %268 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %usb_buf.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 8, ptr %269, align 1
  %271 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev.i, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %272, align 8
  %shl.i.i155.i = shl i32 %274, 8
  %or.i156.i = or i32 %shl.i.i155.i, -2147483648
  %275 = load ptr, ptr %usb_buf.i, align 4
  %call11.i157.i = tail call i32 @usb_control_msg(ptr noundef %272, i32 noundef %or.i156.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %275, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i157.i)
  %cmp12.i158.i = icmp slt i32 %call11.i157.i, 0
  br i1 %cmp12.i158.i, label %do.end7.i159.i.reg_w1.exit162.sink.split.i_crit_edge, label %do.end7.i159.i.reg_w1.exit162.i_crit_edge

do.end7.i159.i.reg_w1.exit162.i_crit_edge:        ; preds = %do.end7.i159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit162.i

do.end7.i159.i.reg_w1.exit162.sink.split.i_crit_edge: ; preds = %do.end7.i159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit162.sink.split.i

reg_w1.exit162.sink.split.i:                      ; preds = %do.end7.i159.i.reg_w1.exit162.sink.split.i_crit_edge, %do.end7.i142.i.reg_w1.exit162.sink.split.i_crit_edge
  %call11.i140.sink213.i = phi i32 [ %call11.i140.i, %do.end7.i142.i.reg_w1.exit162.sink.split.i_crit_edge ], [ %call11.i157.i, %do.end7.i159.i.reg_w1.exit162.sink.split.i_crit_edge ]
  %call19.i143.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i140.sink213.i) #9
  %276 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call11.i140.sink213.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit162.i

reg_w1.exit162.i:                                 ; preds = %reg_w1.exit162.sink.split.i, %do.end7.i159.i.reg_w1.exit162.i_crit_edge, %reg_w1.exit145.i.reg_w1.exit162.i_crit_edge, %if.end14.i.reg_w1.exit162.i_crit_edge
  %277 = ptrtoint ptr %i2c_addr.i155 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 110, ptr %i2c_addr.i155, align 8
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 2) #6
  %278 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %279, i32 3
  %280 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx17.i, align 1
  %arrayidx21.i = getelementptr i8, ptr %279, i32 4
  %282 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx21.i, align 1
  %284 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp.i164.i = icmp slt i32 %285, 0
  br i1 %cmp.i164.i, label %reg_w1.exit162.i.sw.epilog29_crit_edge, label %do.body.i166.i

reg_w1.exit162.i.sw.epilog29_crit_edge:           ; preds = %reg_w1.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.body.i166.i:                                   ; preds = %reg_w1.exit162.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %286 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %286)
  %cmp1.i165.i = icmp sgt i32 %286, 6
  br i1 %cmp1.i165.i, label %do.end.i169.i, label %do.body.i166.i.do.end7.i176.i_crit_edge

do.body.i166.i.do.end7.i176.i_crit_edge:          ; preds = %do.body.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i176.i

do.end.i169.i:                                    ; preds = %do.body.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i167.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i167.i, i32 noundef 1, i32 noundef 41) #9
  br label %do.end7.i176.i

do.end7.i176.i:                                   ; preds = %do.end.i169.i, %do.body.i166.i.do.end7.i176.i_crit_edge
  %287 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %usb_buf.i, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 41, ptr %288, align 1
  %290 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %291, align 8
  %shl.i.i172.i = shl i32 %293, 8
  %or.i173.i = or i32 %shl.i.i172.i, -2147483648
  %294 = load ptr, ptr %usb_buf.i, align 4
  %call11.i174.i = tail call i32 @usb_control_msg(ptr noundef %291, i32 noundef %or.i173.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %294, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i174.i)
  %cmp12.i175.i = icmp slt i32 %call11.i174.i, 0
  br i1 %cmp12.i175.i, label %do.end17.i178.i, label %reg_w1.exit179.i

do.end17.i178.i:                                  ; preds = %do.end7.i176.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i174.i) #9
  %295 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %call11.i174.i, ptr %usb_err.i, align 8
  br label %sw.epilog29

reg_w1.exit179.i:                                 ; preds = %do.end7.i176.i
  %296 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %.pr202.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr202.i)
  %cmp.i181.i = icmp slt i32 %.pr202.i, 0
  br i1 %cmp.i181.i, label %reg_w1.exit179.i.sw.epilog29_crit_edge, label %do.body.i183.i

reg_w1.exit179.i.sw.epilog29_crit_edge:           ; preds = %reg_w1.exit179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.body.i183.i:                                   ; preds = %reg_w1.exit179.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %297 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %297)
  %cmp1.i182.i = icmp sgt i32 %297, 6
  br i1 %cmp1.i182.i, label %do.end.i186.i, label %do.body.i183.i.do.end7.i193.i_crit_edge

do.body.i183.i.do.end7.i193.i_crit_edge:          ; preds = %do.body.i183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i193.i

do.end.i186.i:                                    ; preds = %do.body.i183.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i184.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i185.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i184.i, i32 noundef 23, i32 noundef 66) #9
  br label %do.end7.i193.i

do.end7.i193.i:                                   ; preds = %do.end.i186.i, %do.body.i183.i.do.end7.i193.i_crit_edge
  %298 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %usb_buf.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 66, ptr %299, align 1
  %301 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %dev.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %302, align 8
  %shl.i.i189.i = shl i32 %304, 8
  %or.i190.i = or i32 %shl.i.i189.i, -2147483648
  %305 = load ptr, ptr %usb_buf.i, align 4
  %call11.i191.i = tail call i32 @usb_control_msg(ptr noundef %302, i32 noundef %or.i190.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %305, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i191.i)
  %cmp12.i192.i = icmp slt i32 %call11.i191.i, 0
  br i1 %cmp12.i192.i, label %do.end17.i195.i, label %reg_w1.exit196.i

do.end17.i195.i:                                  ; preds = %do.end7.i193.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i191.i) #9
  %306 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %call11.i191.i, ptr %usb_err.i, align 8
  br label %sw.epilog29

reg_w1.exit196.i:                                 ; preds = %do.end7.i193.i
  %307 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %.pr204.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr204.pr.i)
  %cmp25.i = icmp slt i32 %.pr204.pr.i, 0
  br i1 %cmp25.i, label %reg_w1.exit196.i.sw.epilog29_crit_edge, label %if.end28.i

reg_w1.exit196.i.sw.epilog29_crit_edge:           ; preds = %reg_w1.exit196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

if.end28.i:                                       ; preds = %reg_w1.exit196.i
  %conv18.i = zext i8 %281 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 8
  %conv22.i = zext i8 %283 to i32
  %or23.i = or i32 %shl19.i, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4144, i32 %or23.i)
  %cmp30.i = icmp eq i32 %or23.i, 4144
  br i1 %cmp30.i, label %do.body33.i, label %do.end51.i

do.body33.i:                                      ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %308 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %cmp34.i = icmp sgt i32 %308, 0
  br i1 %cmp34.i, label %do.end39.i169, label %do.body33.i.do.end47.i171_crit_edge

do.body33.i.do.end47.i171_crit_edge:              ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.i171

do.end39.i169:                                    ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  %name42.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name42.i) #9
  br label %do.end47.i171

do.end47.i171:                                    ; preds = %do.end39.i169, %do.body33.i.do.end47.i171_crit_edge
  %309 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 11, ptr %sensor, align 1
  br label %sw.epilog29

do.end51.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %or23.i) #9
  br label %sw.epilog29

sw.bb28:                                          ; preds = %sw.epilog
  %310 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp.i.i173 = icmp slt i32 %311, 0
  br i1 %cmp.i.i173, label %sw.bb28.reg_w1.exit103.i_crit_edge, label %do.body.i.i175

sw.bb28.reg_w1.exit103.i_crit_edge:               ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.i

do.body.i.i175:                                   ; preds = %sw.bb28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %312 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %312)
  %cmp1.i.i174 = icmp sgt i32 %312, 6
  br i1 %cmp1.i.i174, label %do.end.i.i178, label %do.body.i.i175.do.end7.i.i185_crit_edge

do.body.i.i175.do.end7.i.i185_crit_edge:          ; preds = %do.body.i.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i185

do.end.i.i178:                                    ; preds = %do.body.i.i175
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i176, i32 noundef 23, i32 noundef 98) #9
  br label %do.end7.i.i185

do.end7.i.i185:                                   ; preds = %do.end.i.i178, %do.body.i.i175.do.end7.i.i185_crit_edge
  %313 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %usb_buf.i, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 98, ptr %314, align 1
  %316 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev.i, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %317, align 8
  %shl.i.i.i181 = shl i32 %319, 8
  %or.i.i182 = or i32 %shl.i.i.i181, -2147483648
  %320 = load ptr, ptr %usb_buf.i, align 4
  %call11.i.i183 = tail call i32 @usb_control_msg(ptr noundef %317, i32 noundef %or.i.i182, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %320, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i183)
  %cmp12.i.i184 = icmp slt i32 %call11.i.i183, 0
  br i1 %cmp12.i.i184, label %do.end7.i.i185.reg_w1.exit103.sink.split.i_crit_edge, label %reg_w1.exit.i187

do.end7.i.i185.reg_w1.exit103.sink.split.i_crit_edge: ; preds = %do.end7.i.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.sink.split.i

reg_w1.exit.i187:                                 ; preds = %do.end7.i.i185
  %321 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %.pr.i186 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i186)
  %cmp.i71.i = icmp slt i32 %.pr.i186, 0
  br i1 %cmp.i71.i, label %reg_w1.exit.i187.reg_w1.exit103.i_crit_edge, label %do.body.i73.i

reg_w1.exit.i187.reg_w1.exit103.i_crit_edge:      ; preds = %reg_w1.exit.i187
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.i

do.body.i73.i:                                    ; preds = %reg_w1.exit.i187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %322 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %322)
  %cmp1.i72.i = icmp sgt i32 %322, 6
  br i1 %cmp1.i72.i, label %do.end.i76.i, label %do.body.i73.i.do.end7.i83.i_crit_edge

do.body.i73.i.do.end7.i83.i_crit_edge:            ; preds = %do.body.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i83.i

do.end.i76.i:                                     ; preds = %do.body.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i74.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i74.i, i32 noundef 1, i32 noundef 8) #9
  br label %do.end7.i83.i

do.end7.i83.i:                                    ; preds = %do.end.i76.i, %do.body.i73.i.do.end7.i83.i_crit_edge
  %323 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %usb_buf.i, align 4
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 8, ptr %324, align 1
  %326 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dev.i, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %327, align 8
  %shl.i.i79.i = shl i32 %329, 8
  %or.i80.i = or i32 %shl.i.i79.i, -2147483648
  %330 = load ptr, ptr %usb_buf.i, align 4
  %call11.i81.i = tail call i32 @usb_control_msg(ptr noundef %327, i32 noundef %or.i80.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %330, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i81.i)
  %cmp12.i82.i = icmp slt i32 %call11.i81.i, 0
  br i1 %cmp12.i82.i, label %do.end7.i83.i.reg_w1.exit103.sink.split.i_crit_edge, label %reg_w1.exit86.i

do.end7.i83.i.reg_w1.exit103.sink.split.i_crit_edge: ; preds = %do.end7.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.sink.split.i

reg_w1.exit86.i:                                  ; preds = %do.end7.i83.i
  %331 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %.pr207.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr207.pr.i)
  %cmp.i88.i = icmp slt i32 %.pr207.pr.i, 0
  br i1 %cmp.i88.i, label %reg_w1.exit86.i.reg_w1.exit103.i_crit_edge, label %do.body.i90.i

reg_w1.exit86.i.reg_w1.exit103.i_crit_edge:       ; preds = %reg_w1.exit86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.i

do.body.i90.i:                                    ; preds = %reg_w1.exit86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %332 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %332)
  %cmp1.i89.i = icmp sgt i32 %332, 6
  br i1 %cmp1.i89.i, label %do.end.i93.i, label %do.body.i90.i.do.end7.i100.i_crit_edge

do.body.i90.i.do.end7.i100.i_crit_edge:           ; preds = %do.body.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i100.i

do.end.i93.i:                                     ; preds = %do.body.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i91.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i91.i, i32 noundef 2, i32 noundef 34) #9
  br label %do.end7.i100.i

do.end7.i100.i:                                   ; preds = %do.end.i93.i, %do.body.i90.i.do.end7.i100.i_crit_edge
  %333 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %usb_buf.i, align 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 34, ptr %334, align 1
  %336 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dev.i, align 4
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %337, align 8
  %shl.i.i96.i = shl i32 %339, 8
  %or.i97.i = or i32 %shl.i.i96.i, -2147483648
  %340 = load ptr, ptr %usb_buf.i, align 4
  %call11.i98.i = tail call i32 @usb_control_msg(ptr noundef %337, i32 noundef %or.i97.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %340, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i98.i)
  %cmp12.i99.i = icmp slt i32 %call11.i98.i, 0
  br i1 %cmp12.i99.i, label %do.end7.i100.i.reg_w1.exit103.sink.split.i_crit_edge, label %do.end7.i100.i.reg_w1.exit103.i_crit_edge

do.end7.i100.i.reg_w1.exit103.i_crit_edge:        ; preds = %do.end7.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.i

do.end7.i100.i.reg_w1.exit103.sink.split.i_crit_edge: ; preds = %do.end7.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit103.sink.split.i

reg_w1.exit103.sink.split.i:                      ; preds = %do.end7.i100.i.reg_w1.exit103.sink.split.i_crit_edge, %do.end7.i83.i.reg_w1.exit103.sink.split.i_crit_edge, %do.end7.i.i185.reg_w1.exit103.sink.split.i_crit_edge
  %call11.i.sink227.i = phi i32 [ %call11.i.i183, %do.end7.i.i185.reg_w1.exit103.sink.split.i_crit_edge ], [ %call11.i81.i, %do.end7.i83.i.reg_w1.exit103.sink.split.i_crit_edge ], [ %call11.i98.i, %do.end7.i100.i.reg_w1.exit103.sink.split.i_crit_edge ]
  %call19.i.i188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.sink227.i) #9
  %341 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %call11.i.sink227.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit103.i

reg_w1.exit103.i:                                 ; preds = %reg_w1.exit103.sink.split.i, %do.end7.i100.i.reg_w1.exit103.i_crit_edge, %reg_w1.exit86.i.reg_w1.exit103.i_crit_edge, %reg_w1.exit.i187.reg_w1.exit103.i_crit_edge, %sw.bb28.reg_w1.exit103.i_crit_edge
  %i2c_addr.i189 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 25
  %342 = ptrtoint ptr %i2c_addr.i189 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 33, ptr %i2c_addr.i189, align 8
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 1) #6
  %343 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i191 = getelementptr i8, ptr %344, i32 4
  %345 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.i191, align 1
  %347 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %cmp.i105.i = icmp slt i32 %348, 0
  br i1 %cmp.i105.i, label %reg_w1.exit103.i.reg_w1.exit137.i_crit_edge, label %do.body.i107.i

reg_w1.exit103.i.reg_w1.exit137.i_crit_edge:      ; preds = %reg_w1.exit103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit137.i

do.body.i107.i:                                   ; preds = %reg_w1.exit103.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %349 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %349)
  %cmp1.i106.i = icmp sgt i32 %349, 6
  br i1 %cmp1.i106.i, label %do.end.i110.i, label %do.body.i107.i.do.end7.i117.i_crit_edge

do.body.i107.i.do.end7.i117.i_crit_edge:          ; preds = %do.body.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i117.i

do.end.i110.i:                                    ; preds = %do.body.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i108.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i108.i, i32 noundef 1, i32 noundef 41) #9
  br label %do.end7.i117.i

do.end7.i117.i:                                   ; preds = %do.end.i110.i, %do.body.i107.i.do.end7.i117.i_crit_edge
  %350 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %usb_buf.i, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 41, ptr %351, align 1
  %353 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %dev.i, align 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 8
  %shl.i.i113.i = shl i32 %356, 8
  %or.i114.i = or i32 %shl.i.i113.i, -2147483648
  %357 = load ptr, ptr %usb_buf.i, align 4
  %call11.i115.i = tail call i32 @usb_control_msg(ptr noundef %354, i32 noundef %or.i114.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %357, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i115.i)
  %cmp12.i116.i = icmp slt i32 %call11.i115.i, 0
  br i1 %cmp12.i116.i, label %do.end7.i117.i.reg_w1.exit137.sink.split.i_crit_edge, label %reg_w1.exit120.i

do.end7.i117.i.reg_w1.exit137.sink.split.i_crit_edge: ; preds = %do.end7.i117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit137.sink.split.i

reg_w1.exit120.i:                                 ; preds = %do.end7.i117.i
  %358 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %.pr209.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr209.i)
  %cmp.i122.i = icmp slt i32 %.pr209.i, 0
  br i1 %cmp.i122.i, label %reg_w1.exit120.i.reg_w1.exit137.i_crit_edge, label %do.body.i124.i

reg_w1.exit120.i.reg_w1.exit137.i_crit_edge:      ; preds = %reg_w1.exit120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit137.i

do.body.i124.i:                                   ; preds = %reg_w1.exit120.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %359 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %359)
  %cmp1.i123.i = icmp sgt i32 %359, 6
  br i1 %cmp1.i123.i, label %do.end.i127.i, label %do.body.i124.i.do.end7.i134.i_crit_edge

do.body.i124.i.do.end7.i134.i_crit_edge:          ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i134.i

do.end.i127.i:                                    ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i125.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i125.i, i32 noundef 23, i32 noundef 66) #9
  br label %do.end7.i134.i

do.end7.i134.i:                                   ; preds = %do.end.i127.i, %do.body.i124.i.do.end7.i134.i_crit_edge
  %360 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %usb_buf.i, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 66, ptr %361, align 1
  %363 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev.i, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %364, align 8
  %shl.i.i130.i = shl i32 %366, 8
  %or.i131.i = or i32 %shl.i.i130.i, -2147483648
  %367 = load ptr, ptr %usb_buf.i, align 4
  %call11.i132.i = tail call i32 @usb_control_msg(ptr noundef %364, i32 noundef %or.i131.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %367, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i132.i)
  %cmp12.i133.i = icmp slt i32 %call11.i132.i, 0
  br i1 %cmp12.i133.i, label %do.end7.i134.i.reg_w1.exit137.sink.split.i_crit_edge, label %do.end7.i134.i.reg_w1.exit137.i_crit_edge

do.end7.i134.i.reg_w1.exit137.i_crit_edge:        ; preds = %do.end7.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit137.i

do.end7.i134.i.reg_w1.exit137.sink.split.i_crit_edge: ; preds = %do.end7.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit137.sink.split.i

reg_w1.exit137.sink.split.i:                      ; preds = %do.end7.i134.i.reg_w1.exit137.sink.split.i_crit_edge, %do.end7.i117.i.reg_w1.exit137.sink.split.i_crit_edge
  %call11.i115.sink228.i = phi i32 [ %call11.i115.i, %do.end7.i117.i.reg_w1.exit137.sink.split.i_crit_edge ], [ %call11.i132.i, %do.end7.i134.i.reg_w1.exit137.sink.split.i_crit_edge ]
  %call19.i118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i115.sink228.i) #9
  %368 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %call11.i115.sink228.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit137.i

reg_w1.exit137.i:                                 ; preds = %reg_w1.exit137.sink.split.i, %do.end7.i134.i.reg_w1.exit137.i_crit_edge, %reg_w1.exit120.i.reg_w1.exit137.i_crit_edge, %reg_w1.exit103.i.reg_w1.exit137.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %346)
  %cmp.i192 = icmp eq i8 %346, -103
  br i1 %cmp.i192, label %do.body.i193, label %if.end9.i

do.body.i193:                                     ; preds = %reg_w1.exit137.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %369 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %cmp3.i = icmp sgt i32 %369, 0
  br i1 %cmp3.i, label %do.end.i196, label %do.body.i193.do.end8.i_crit_edge

do.body.i193.do.end8.i_crit_edge:                 ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

do.end.i196:                                      ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #8
  %name.i194 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name.i194) #9
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i196, %do.body.i193.do.end8.i_crit_edge
  %370 = ptrtoint ptr %sensor to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 1, ptr %sensor, align 1
  br label %sw.epilog29

if.end9.i:                                        ; preds = %reg_w1.exit137.i
  %371 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %cmp.i139.i = icmp slt i32 %372, 0
  br i1 %cmp.i139.i, label %if.end9.i.reg_w1.exit171.i_crit_edge, label %do.body.i141.i

if.end9.i.reg_w1.exit171.i_crit_edge:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171.i

do.body.i141.i:                                   ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %373 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %373)
  %cmp1.i140.i = icmp sgt i32 %373, 6
  br i1 %cmp1.i140.i, label %do.end.i144.i, label %do.body.i141.i.do.end7.i151.i_crit_edge

do.body.i141.i.do.end7.i151.i_crit_edge:          ; preds = %do.body.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i151.i

do.end.i144.i:                                    ; preds = %do.body.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i142.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i143.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i142.i, i32 noundef 23, i32 noundef 98) #9
  br label %do.end7.i151.i

do.end7.i151.i:                                   ; preds = %do.end.i144.i, %do.body.i141.i.do.end7.i151.i_crit_edge
  %374 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %usb_buf.i, align 4
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 98, ptr %375, align 1
  %377 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dev.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %378, align 8
  %shl.i.i147.i = shl i32 %380, 8
  %or.i148.i = or i32 %shl.i.i147.i, -2147483648
  %381 = load ptr, ptr %usb_buf.i, align 4
  %call11.i149.i = tail call i32 @usb_control_msg(ptr noundef %378, i32 noundef %or.i148.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %381, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i149.i)
  %cmp12.i150.i = icmp slt i32 %call11.i149.i, 0
  br i1 %cmp12.i150.i, label %do.end7.i151.i.reg_w1.exit171.sink.split.i_crit_edge, label %reg_w1.exit154.i

do.end7.i151.i.reg_w1.exit171.sink.split.i_crit_edge: ; preds = %do.end7.i151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171.sink.split.i

reg_w1.exit154.i:                                 ; preds = %do.end7.i151.i
  %382 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %.pr211.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr211.i)
  %cmp.i156.i = icmp slt i32 %.pr211.i, 0
  br i1 %cmp.i156.i, label %reg_w1.exit154.i.reg_w1.exit171.i_crit_edge, label %do.body.i158.i

reg_w1.exit154.i.reg_w1.exit171.i_crit_edge:      ; preds = %reg_w1.exit154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171.i

do.body.i158.i:                                   ; preds = %reg_w1.exit154.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %383 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %383)
  %cmp1.i157.i = icmp sgt i32 %383, 6
  br i1 %cmp1.i157.i, label %do.end.i161.i, label %do.body.i158.i.do.end7.i168.i_crit_edge

do.body.i158.i.do.end7.i168.i_crit_edge:          ; preds = %do.body.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i168.i

do.end.i161.i:                                    ; preds = %do.body.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i159.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i159.i, i32 noundef 1, i32 noundef 10) #9
  br label %do.end7.i168.i

do.end7.i168.i:                                   ; preds = %do.end.i161.i, %do.body.i158.i.do.end7.i168.i_crit_edge
  %384 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %usb_buf.i, align 4
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 10, ptr %385, align 1
  %387 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev.i, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %388, align 8
  %shl.i.i164.i = shl i32 %390, 8
  %or.i165.i = or i32 %shl.i.i164.i, -2147483648
  %391 = load ptr, ptr %usb_buf.i, align 4
  %call11.i166.i = tail call i32 @usb_control_msg(ptr noundef %388, i32 noundef %or.i165.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %391, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i166.i)
  %cmp12.i167.i = icmp slt i32 %call11.i166.i, 0
  br i1 %cmp12.i167.i, label %do.end7.i168.i.reg_w1.exit171.sink.split.i_crit_edge, label %do.end7.i168.i.reg_w1.exit171.i_crit_edge

do.end7.i168.i.reg_w1.exit171.i_crit_edge:        ; preds = %do.end7.i168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171.i

do.end7.i168.i.reg_w1.exit171.sink.split.i_crit_edge: ; preds = %do.end7.i168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171.sink.split.i

reg_w1.exit171.sink.split.i:                      ; preds = %do.end7.i168.i.reg_w1.exit171.sink.split.i_crit_edge, %do.end7.i151.i.reg_w1.exit171.sink.split.i_crit_edge
  %call11.i149.sink229.i = phi i32 [ %call11.i149.i, %do.end7.i151.i.reg_w1.exit171.sink.split.i_crit_edge ], [ %call11.i166.i, %do.end7.i168.i.reg_w1.exit171.sink.split.i_crit_edge ]
  %call19.i152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i149.sink229.i) #9
  %392 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %call11.i149.sink229.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit171.i

reg_w1.exit171.i:                                 ; preds = %reg_w1.exit171.sink.split.i, %do.end7.i168.i.reg_w1.exit171.i_crit_edge, %reg_w1.exit154.i.reg_w1.exit171.i_crit_edge, %if.end9.i.reg_w1.exit171.i_crit_edge
  %393 = ptrtoint ptr %i2c_addr.i189 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 110, ptr %i2c_addr.i189, align 8
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 2) #6
  %394 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx12.i = getelementptr i8, ptr %395, i32 3
  %396 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx15.i = getelementptr i8, ptr %395, i32 4
  %398 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx15.i, align 1
  %400 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %cmp.i173.i = icmp slt i32 %401, 0
  br i1 %cmp.i173.i, label %reg_w1.exit171.i.sw.epilog29_crit_edge, label %do.body.i175.i

reg_w1.exit171.i.sw.epilog29_crit_edge:           ; preds = %reg_w1.exit171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.body.i175.i:                                   ; preds = %reg_w1.exit171.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %402 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %402)
  %cmp1.i174.i = icmp sgt i32 %402, 6
  br i1 %cmp1.i174.i, label %do.end.i178.i, label %do.body.i175.i.do.end7.i185.i_crit_edge

do.body.i175.i.do.end7.i185.i_crit_edge:          ; preds = %do.body.i175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i185.i

do.end.i178.i:                                    ; preds = %do.body.i175.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i176.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i176.i, i32 noundef 1, i32 noundef 41) #9
  br label %do.end7.i185.i

do.end7.i185.i:                                   ; preds = %do.end.i178.i, %do.body.i175.i.do.end7.i185.i_crit_edge
  %403 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %usb_buf.i, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 41, ptr %404, align 1
  %406 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %407, align 8
  %shl.i.i181.i = shl i32 %409, 8
  %or.i182.i = or i32 %shl.i.i181.i, -2147483648
  %410 = load ptr, ptr %usb_buf.i, align 4
  %call11.i183.i = tail call i32 @usb_control_msg(ptr noundef %407, i32 noundef %or.i182.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %410, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i183.i)
  %cmp12.i184.i = icmp slt i32 %call11.i183.i, 0
  br i1 %cmp12.i184.i, label %do.end17.i187.i, label %reg_w1.exit188.i

do.end17.i187.i:                                  ; preds = %do.end7.i185.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i186.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i183.i) #9
  %411 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %call11.i183.i, ptr %usb_err.i, align 8
  br label %sw.epilog29

reg_w1.exit188.i:                                 ; preds = %do.end7.i185.i
  %412 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %.pr213.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr213.i)
  %cmp.i190.i = icmp slt i32 %.pr213.i, 0
  br i1 %cmp.i190.i, label %reg_w1.exit188.i.sw.epilog29_crit_edge, label %do.body.i192.i

reg_w1.exit188.i.sw.epilog29_crit_edge:           ; preds = %reg_w1.exit188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.body.i192.i:                                   ; preds = %reg_w1.exit188.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %413 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %413)
  %cmp1.i191.i = icmp sgt i32 %413, 6
  br i1 %cmp1.i191.i, label %do.end.i195.i, label %do.body.i192.i.do.end7.i202.i_crit_edge

do.body.i192.i.do.end7.i202.i_crit_edge:          ; preds = %do.body.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i202.i

do.end.i195.i:                                    ; preds = %do.body.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i193.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i193.i, i32 noundef 23, i32 noundef 66) #9
  br label %do.end7.i202.i

do.end7.i202.i:                                   ; preds = %do.end.i195.i, %do.body.i192.i.do.end7.i202.i_crit_edge
  %414 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %usb_buf.i, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 66, ptr %415, align 1
  %417 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %dev.i, align 4
  %419 = ptrtoint ptr %418 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %418, align 8
  %shl.i.i198.i = shl i32 %420, 8
  %or.i199.i = or i32 %shl.i.i198.i, -2147483648
  %421 = load ptr, ptr %usb_buf.i, align 4
  %call11.i200.i = tail call i32 @usb_control_msg(ptr noundef %418, i32 noundef %or.i199.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %421, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i200.i)
  %cmp12.i201.i = icmp slt i32 %call11.i200.i, 0
  br i1 %cmp12.i201.i, label %do.end17.i204.i, label %reg_w1.exit205.i

do.end17.i204.i:                                  ; preds = %do.end7.i202.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i203.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i200.i) #9
  %422 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %call11.i200.i, ptr %usb_err.i, align 8
  br label %sw.epilog29

reg_w1.exit205.i:                                 ; preds = %do.end7.i202.i
  %423 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %.pr215.pr.i = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr215.pr.i)
  %cmp18.i = icmp slt i32 %.pr215.pr.i, 0
  br i1 %cmp18.i, label %reg_w1.exit205.i.sw.epilog29_crit_edge, label %if.end21.i

reg_w1.exit205.i.sw.epilog29_crit_edge:           ; preds = %reg_w1.exit205.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

if.end21.i:                                       ; preds = %reg_w1.exit205.i
  %conv13.i = zext i8 %397 to i32
  %shl.i198 = shl nuw nsw i32 %conv13.i, 8
  %conv16.i = zext i8 %399 to i32
  %or.i199 = or i32 %shl.i198, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8240, i32 %or.i199)
  %cmp23.i = icmp eq i32 %or.i199, 8240
  br i1 %cmp23.i, label %do.body26.i, label %do.end43.i

do.body26.i:                                      ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %424 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %cmp27.i200 = icmp sgt i32 %424, 0
  br i1 %cmp27.i200, label %do.end32.i, label %do.body26.i.sw.epilog29_crit_edge

do.body26.i.sw.epilog29_crit_edge:                ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog29

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  %name35.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name35.i) #9
  br label %sw.epilog29

do.end43.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %or.i199) #9
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %do.end43.i, %do.end32.i, %do.body26.i.sw.epilog29_crit_edge, %reg_w1.exit205.i.sw.epilog29_crit_edge, %do.end17.i204.i, %reg_w1.exit188.i.sw.epilog29_crit_edge, %do.end17.i187.i, %reg_w1.exit171.i.sw.epilog29_crit_edge, %do.end8.i, %do.end51.i, %do.end47.i171, %reg_w1.exit196.i.sw.epilog29_crit_edge, %do.end17.i195.i, %reg_w1.exit179.i.sw.epilog29_crit_edge, %do.end17.i178.i, %reg_w1.exit162.i.sw.epilog29_crit_edge, %do.end.i168, %do.body.i165.sw.epilog29_crit_edge, %do.end24.i, %do.body18.i.sw.epilog29_crit_edge, %do.end.i137, %if.then9.i.sw.epilog29_crit_edge, %reg_w1.exit98.i.sw.epilog29_crit_edge, %do.end17.i97.i, %reg_w1.exit81.i.sw.epilog29_crit_edge, %do.end17.i80.i, %reg_w1.exit64.i.sw.epilog29_crit_edge, %do.end79.i, %do.body73.i.sw.epilog29_crit_edge, %do.end64.i, %do.body58.i.sw.epilog29_crit_edge, %do.end55.i, %do.end39.i, %for.end26.i.sw.epilog29_crit_edge, %sw.epilog.sw.epilog29_crit_edge
  %425 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %bridge, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %cond = icmp eq i8 %426, 0
  %427 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %cmp.i202 = icmp slt i32 %428, 0
  br i1 %cond, label %sw.bb32, label %sw.default34

sw.bb32:                                          ; preds = %sw.epilog29
  br i1 %cmp.i202, label %sw.bb32.reg_w1.exit250_crit_edge, label %do.body.i204

sw.bb32.reg_w1.exit250_crit_edge:                 ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit250

do.body.i204:                                     ; preds = %sw.bb32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %429 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %429)
  %cmp1.i203 = icmp sgt i32 %429, 6
  br i1 %cmp1.i203, label %do.end.i207, label %do.body.i204.do.end7.i214_crit_edge

do.body.i204.do.end7.i214_crit_edge:              ; preds = %do.body.i204
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i214

do.end.i207:                                      ; preds = %do.body.i204
  call void @__sanitizer_cov_trace_pc() #8
  %name.i205 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %spec.select to i32
  %call.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i205, i32 noundef 2, i32 noundef %conv4.i) #9
  br label %do.end7.i214

do.end7.i214:                                     ; preds = %do.end.i207, %do.body.i204.do.end7.i214_crit_edge
  %430 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %usb_buf.i, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %spec.select, ptr %431, align 1
  %433 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev.i, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %434, align 8
  %shl.i.i210 = shl i32 %436, 8
  %or.i211 = or i32 %shl.i.i210, -2147483648
  %437 = load ptr, ptr %usb_buf.i, align 4
  %call11.i212 = tail call i32 @usb_control_msg(ptr noundef %434, i32 noundef %or.i211, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %437, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i212)
  %cmp12.i213 = icmp slt i32 %call11.i212, 0
  br i1 %cmp12.i213, label %do.end17.i216, label %do.end7.i214.sw.epilog36_crit_edge

do.end7.i214.sw.epilog36_crit_edge:               ; preds = %do.end7.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog36

do.end17.i216:                                    ; preds = %do.end7.i214
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i212) #9
  br label %reg_w1.exit250.sink.split

sw.default34:                                     ; preds = %sw.epilog29
  br i1 %cmp.i202, label %sw.default34.reg_w1.exit250_crit_edge, label %do.body.i221

sw.default34.reg_w1.exit250_crit_edge:            ; preds = %sw.default34
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit250

do.body.i221:                                     ; preds = %sw.default34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %438 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %438)
  %cmp1.i220 = icmp sgt i32 %438, 6
  br i1 %cmp1.i220, label %do.end.i226, label %do.body.i221.if.end21.i232_crit_edge

do.body.i221.if.end21.i232_crit_edge:             ; preds = %do.body.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i232

do.end.i226:                                      ; preds = %do.body.i221
  call void @__sanitizer_cov_trace_pc() #8
  %name.i222 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv6.i = zext i8 %spec.select to i32
  %call.i225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i222, i32 noundef 1, i32 noundef 41, i32 noundef %conv6.i) #9
  br label %if.end21.i232

if.end21.i232:                                    ; preds = %do.end.i226, %do.body.i221.if.end21.i232_crit_edge
  %439 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %usb_buf.i, align 4
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 41, ptr %440, align 1
  %regGpio.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %440, i32 1
  %442 = ptrtoint ptr %regGpio.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %spec.select, ptr %regGpio.sroa.5.0..sroa_idx, align 1
  %443 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %dev.i, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %444, align 8
  %shl.i.i229 = shl i32 %446, 8
  %or.i230 = or i32 %shl.i.i229, -2147483648
  %447 = load ptr, ptr %usb_buf.i, align 4
  %call26.i = tail call i32 @usb_control_msg(ptr noundef %444, i32 noundef %or.i230, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %447, i16 noundef zeroext 2, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i231 = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i231, label %do.end32.i233, label %if.end21.i232.sw.epilog36_crit_edge

if.end21.i232.sw.epilog36_crit_edge:              ; preds = %if.end21.i232
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog36

do.end32.i233:                                    ; preds = %if.end21.i232
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i) #9
  br label %reg_w1.exit250.sink.split

sw.epilog36:                                      ; preds = %if.end21.i232.sw.epilog36_crit_edge, %do.end7.i214.sw.epilog36_crit_edge
  %448 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %.pr263 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr263)
  %cmp.i235 = icmp slt i32 %.pr263, 0
  br i1 %cmp.i235, label %sw.epilog36.reg_w1.exit250_crit_edge, label %do.body.i237

sw.epilog36.reg_w1.exit250_crit_edge:             ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit250

do.body.i237:                                     ; preds = %sw.epilog36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %449 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %449)
  %cmp1.i236 = icmp sgt i32 %449, 6
  br i1 %cmp1.i236, label %do.end.i240, label %do.body.i237.do.end7.i247_crit_edge

do.body.i237.do.end7.i247_crit_edge:              ; preds = %do.body.i237
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i247

do.end.i240:                                      ; preds = %do.body.i237
  call void @__sanitizer_cov_trace_pc() #8
  %name.i238 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i238, i32 noundef 241, i32 noundef 0) #9
  br label %do.end7.i247

do.end7.i247:                                     ; preds = %do.end.i240, %do.body.i237.do.end7.i247_crit_edge
  %450 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %usb_buf.i, align 4
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 0, ptr %451, align 1
  %453 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %dev.i, align 4
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %454, align 8
  %shl.i.i243 = shl i32 %456, 8
  %or.i244 = or i32 %shl.i.i243, -2147483648
  %457 = load ptr, ptr %usb_buf.i, align 4
  %call11.i245 = tail call i32 @usb_control_msg(ptr noundef %454, i32 noundef %or.i244, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 241, i16 noundef zeroext 0, ptr noundef %457, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i245)
  %cmp12.i246 = icmp slt i32 %call11.i245, 0
  br i1 %cmp12.i246, label %do.end17.i249, label %do.end7.i247.reg_w1.exit250_crit_edge

do.end7.i247.reg_w1.exit250_crit_edge:            ; preds = %do.end7.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit250

do.end17.i249:                                    ; preds = %do.end7.i247
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i245) #9
  br label %reg_w1.exit250.sink.split

reg_w1.exit250.sink.split:                        ; preds = %do.end17.i249, %do.end32.i233, %do.end17.i216
  %call11.i212.sink = phi i32 [ %call11.i212, %do.end17.i216 ], [ %call26.i, %do.end32.i233 ], [ %call11.i245, %do.end17.i249 ]
  %458 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %call11.i212.sink, ptr %usb_err.i, align 8
  br label %reg_w1.exit250

reg_w1.exit250:                                   ; preds = %reg_w1.exit250.sink.split, %do.end7.i247.reg_w1.exit250_crit_edge, %sw.epilog36.reg_w1.exit250_crit_edge, %sw.default34.reg_w1.exit250_crit_edge, %sw.bb32.reg_w1.exit250_crit_edge
  %459 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %sensor, align 1
  %idxprom = zext i8 %460 to i32
  %arrayidx38 = getelementptr [15 x ptr], ptr @sn_tb, i32 0, i32 %idxprom
  %461 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr i8, ptr %462, i32 9
  %463 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %arrayidx39, align 1
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 25
  %465 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %464, ptr %i2c_addr, align 8
  %466 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %reg_w1.exit250, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %reg_r.exit106.cleanup_crit_edge, %reg_w1.exit88.cleanup_crit_edge, %do.end17.i87, %reg_r.exit.cleanup_crit_edge, %reg_w1.exit.cleanup_crit_edge, %do.end17.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %467, %reg_w1.exit250 ], [ %.pr258.pr.pr, %reg_r.exit106.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ], [ -19, %sw.default.cleanup_crit_edge ], [ %.pr256, %reg_w1.exit88.cleanup_crit_edge ], [ %.pr254.pr, %reg_r.exit.cleanup_crit_edge ], [ %call11.i83, %do.end17.i87 ], [ %.pr, %reg_w1.exit.cleanup_crit_edge ], [ %call11.i, %do.end17.i ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 14, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.65) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #6
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %brightness, align 4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 20) #6
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %contrast, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 40, i64 noundef 1, i64 noundef 25) #6
  %saturation = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %3 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %saturation, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef 24, i64 noundef 40, i64 noundef 1, i64 noundef 32) #6
  %4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %4, align 8
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef 24, i64 noundef 40, i64 noundef 1, i64 noundef 32) #6
  %blue_bal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %blue_bal to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %blue_bal, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 40, i64 noundef 1, i64 noundef 20) #6
  %gamma = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %7 = ptrtoint ptr %gamma to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %gamma, align 8
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp = icmp eq i8 %9, 7
  %. = select i1 %cmp, i64 16, i64 90
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef %.) #6
  %10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %10, align 8
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 4
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then13

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963813, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %illum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %15 = ptrtoint ptr %illum to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call14, ptr %illum, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %entry.if.end15_crit_edge
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %17)
  %cmp18 = icmp eq i8 %17, 12
  br i1 %cmp18, label %if.then20, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 500, i64 noundef 1500, i64 noundef 1, i64 noundef 1024) #6
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call21, ptr %exposure, align 4
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 4, i64 noundef 49, i64 noundef 1, i64 noundef 15) #6
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call22, ptr %gain, align 8
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %hflip, align 4
  %21 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %sensor, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end15.if.end24_crit_edge
  %22 = phi i8 [ %.pr, %if.then20 ], [ %17, %if.end15.if.end24_crit_edge ]
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %22, label %if.then48 [
    i8 0, label %if.end24.if.end50_crit_edge
    i8 10, label %if.end24.if.end50_crit_edge158
    i8 11, label %if.end24.if.end50_crit_edge159
    i8 13, label %if.end24.if.end50_crit_edge160
    i8 14, label %if.end24.if.end50_crit_edge161
  ]

if.end24.if.end50_crit_edge161:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end24.if.end50_crit_edge160:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end24.if.end50_crit_edge159:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end24.if.end50_crit_edge158:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end24.if.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then48:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %24 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call49, ptr %24, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end24.if.end50_crit_edge, %if.end24.if.end50_crit_edge158, %if.end24.if.end50_crit_edge159, %if.end24.if.end50_crit_edge160, %if.end24.if.end50_crit_edge161
  %26 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sensor, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %27, label %if.end50.if.end71_crit_edge [
    i8 2, label %if.end50.if.then69_crit_edge
    i8 8, label %if.end50.if.then69_crit_edge162
    i8 9, label %if.end50.if.then69_crit_edge163
    i8 12, label %if.end50.if.then69_crit_edge164
  ]

if.end50.if.then69_crit_edge164:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

if.end50.if.then69_crit_edge163:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

if.end50.if.then69_crit_edge162:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

if.end50.if.then69_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then69:                                        ; preds = %if.end50.if.then69_crit_edge, %if.end50.if.then69_crit_edge162, %if.end50.if.then69_crit_edge163, %if.end50.if.then69_crit_edge164
  %call70 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %29 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call70, ptr %29, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end50.if.end71_crit_edge
  %31 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sensor, align 1
  %.off = add i8 %32, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then86, label %if.end71.if.end88_crit_edge

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then86:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 1) #6
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %33 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call87, ptr %freq, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end71.if.end88_crit_edge
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %34 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool89.not = icmp eq i32 %35, 0
  br i1 %tobool89.not, label %if.end94, label %do.end

do.end:                                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #9
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end88
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %4) #6
  %38 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %39)
  %cmp98 = icmp eq i8 %39, 12
  br i1 %cmp98, label %if.then100, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %40 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %40) #6
  %41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %41, i8 noundef zeroext 0, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end94.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %37, %do.end ], [ 0, %if.then100 ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 26
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
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 561
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %conv1.i = trunc i32 %1 to i8
  %arrayidx2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 562
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %8 = lshr i32 %3, 8
  %conv4.i = trunc i32 %8 to i8
  %arrayidx5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 563
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %conv6.i = trunc i32 %3 to i8
  %arrayidx7.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 564
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 567
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %arrayidx9.i, align 1
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %12 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sensor, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr [15 x ptr], ptr @sn_tb, i32 0, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx2, align 1
  %flags = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 21
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 4
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %21 = xor i8 %17, 2
  %spec.select = select i1 %tobool.not, i8 %17, i8 %21
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp slt i32 %23, 0
  br i1 %cmp.i, label %entry.reg_w1.exit_crit_edge, label %do.body.i

entry.reg_w1.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp1.i = icmp sgt i32 %24, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i344 = zext i8 %spec.select to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 1, i32 noundef %conv4.i344) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %26, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i = shl i32 %31, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %32 = load ptr, ptr %usb_buf.i, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %32, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end7.i.reg_w1.exit_crit_edge

do.end7.i.reg_w1.exit_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %do.end17.i, %do.end7.i.reg_w1.exit_crit_edge, %entry.reg_w1.exit_crit_edge
  %arrayidx6 = getelementptr i8, ptr %15, i32 2
  %34 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6, align 1
  %audio = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 34
  %36 = ptrtoint ptr %audio to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %audio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool8.not = icmp eq i8 %37, 0
  %38 = or i8 %35, 4
  %spec.select1584 = select i1 %tobool8.not, i8 %35, i8 %38
  %39 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i346 = icmp slt i32 %40, 0
  br i1 %cmp.i346, label %reg_w1.exit.reg_w.exit378.thread1490_crit_edge, label %do.body.i348

reg_w1.exit.reg_w.exit378.thread1490_crit_edge:   ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit378.thread1490

do.body.i348:                                     ; preds = %reg_w1.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp1.i347 = icmp sgt i32 %41, 6
  br i1 %cmp1.i347, label %do.end.i354, label %do.body.i348.if.end21.i_crit_edge

do.body.i348.if.end21.i_crit_edge:                ; preds = %do.body.i348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

do.end.i354:                                      ; preds = %do.body.i348
  call void @__sanitizer_cov_trace_pc() #8
  %name.i349 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i350 = zext i8 %spec.select to i32
  %conv6.i352 = zext i8 %spec.select1584 to i32
  %call.i353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i349, i32 noundef 1, i32 noundef %conv4.i350, i32 noundef %conv6.i352) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i354, %do.body.i348.if.end21.i_crit_edge
  %usb_buf.i355 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %42 = ptrtoint ptr %usb_buf.i355 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i355, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.select, ptr %43, align 1
  %reg0102.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %43, i32 1
  %45 = ptrtoint ptr %reg0102.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select1584, ptr %reg0102.sroa.6.0..sroa_idx, align 1
  %dev.i356 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %46 = ptrtoint ptr %dev.i356 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i356, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i357 = shl i32 %49, 8
  %or.i358 = or i32 %shl.i.i357, -2147483648
  %50 = load ptr, ptr %usb_buf.i355, align 4
  %call26.i = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i358, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %50, i16 noundef zeroext 2, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end32.i, label %reg_w.exit

do.end32.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i) #9
  %51 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call26.i, ptr %usb_err.i, align 8
  br label %reg_w.exit378.thread1490

reg_w.exit:                                       ; preds = %if.end21.i
  %52 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx15 = getelementptr i8, ptr %15, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i360 = icmp slt i32 %.pr, 0
  br i1 %cmp.i360, label %reg_w.exit.reg_w.exit378.thread_crit_edge, label %do.body.i362

reg_w.exit.reg_w.exit378.thread_crit_edge:        ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit378.thread

do.body.i362:                                     ; preds = %reg_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %53 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %53)
  %cmp1.i361 = icmp sgt i32 %53, 6
  br i1 %cmp1.i361, label %do.end.i368, label %do.body.i362.if.end21.i375_crit_edge

do.body.i362.if.end21.i375_crit_edge:             ; preds = %do.body.i362
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i375

do.end.i368:                                      ; preds = %do.body.i362
  call void @__sanitizer_cov_trace_pc() #8
  %name.i363 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %54 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx15, align 1
  %conv4.i364 = zext i8 %55 to i32
  %arrayidx5.i365 = getelementptr i8, ptr %15, i32 9
  %56 = ptrtoint ptr %arrayidx5.i365 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx5.i365, align 1
  %conv6.i366 = zext i8 %57 to i32
  %call.i367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i363, i32 noundef 8, i32 noundef %conv4.i364, i32 noundef %conv6.i366) #9
  br label %if.end21.i375

if.end21.i375:                                    ; preds = %do.end.i368, %do.body.i362.if.end21.i375_crit_edge
  %58 = ptrtoint ptr %usb_buf.i355 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i355, align 4
  %60 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %arrayidx15, align 1
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %59, align 1
  %63 = ptrtoint ptr %dev.i356 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i356, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i371 = shl i32 %66, 8
  %or.i372 = or i32 %shl.i.i371, -2147483648
  %67 = load ptr, ptr %usb_buf.i355, align 4
  %call26.i373 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i372, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef %67, i16 noundef zeroext 2, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i373)
  %cmp27.i374 = icmp slt i32 %call26.i373, 0
  br i1 %cmp27.i374, label %do.end32.i377, label %reg_w.exit378

do.end32.i377:                                    ; preds = %if.end21.i375
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i373) #9
  %68 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call26.i373, ptr %usb_err.i, align 8
  br label %reg_w.exit378.thread

reg_w.exit378.thread:                             ; preds = %do.end32.i377, %reg_w.exit.reg_w.exit378.thread_crit_edge
  %arrayidx161376 = getelementptr i8, ptr %15, i32 23
  br label %reg_w.exit398

reg_w.exit378.thread1490:                         ; preds = %do.end32.i, %reg_w1.exit.reg_w.exit378.thread1490_crit_edge
  %arrayidx161492 = getelementptr i8, ptr %15, i32 23
  br label %reg_w.exit398

reg_w.exit378:                                    ; preds = %if.end21.i375
  %69 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr1375.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx16 = getelementptr i8, ptr %15, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1375.pr)
  %cmp.i380 = icmp slt i32 %.pr1375.pr, 0
  br i1 %cmp.i380, label %reg_w.exit378.reg_w.exit398_crit_edge, label %do.body.i382

reg_w.exit378.reg_w.exit398_crit_edge:            ; preds = %reg_w.exit378
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit398

do.body.i382:                                     ; preds = %reg_w.exit378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %70 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %70)
  %cmp1.i381 = icmp sgt i32 %70, 6
  br i1 %cmp1.i381, label %do.end.i388, label %do.body.i382.if.end21.i395_crit_edge

do.body.i382.if.end21.i395_crit_edge:             ; preds = %do.body.i382
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i395

do.end.i388:                                      ; preds = %do.body.i382
  call void @__sanitizer_cov_trace_pc() #8
  %name.i383 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %71 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx16, align 1
  %conv4.i384 = zext i8 %72 to i32
  %arrayidx5.i385 = getelementptr i8, ptr %15, i32 24
  %73 = ptrtoint ptr %arrayidx5.i385 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx5.i385, align 1
  %conv6.i386 = zext i8 %74 to i32
  %call.i387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i383, i32 noundef 23, i32 noundef %conv4.i384, i32 noundef %conv6.i386) #9
  br label %if.end21.i395

if.end21.i395:                                    ; preds = %do.end.i388, %do.body.i382.if.end21.i395_crit_edge
  %75 = ptrtoint ptr %usb_buf.i355 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf.i355, align 4
  %77 = call ptr @memcpy(ptr %76, ptr %arrayidx16, i32 5)
  %78 = ptrtoint ptr %dev.i356 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i356, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i.i391 = shl i32 %81, 8
  %or.i392 = or i32 %shl.i.i391, -2147483648
  %82 = load ptr, ptr %usb_buf.i355, align 4
  %call26.i393 = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i392, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %82, i16 noundef zeroext 5, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i393)
  %cmp27.i394 = icmp slt i32 %call26.i393, 0
  br i1 %cmp27.i394, label %do.end32.i397, label %if.end21.i395.reg_w.exit398_crit_edge

if.end21.i395.reg_w.exit398_crit_edge:            ; preds = %if.end21.i395
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit398

do.end32.i397:                                    ; preds = %if.end21.i395
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i393) #9
  %83 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call26.i393, ptr %usb_err.i, align 8
  br label %reg_w.exit398

reg_w.exit398:                                    ; preds = %do.end32.i397, %if.end21.i395.reg_w.exit398_crit_edge, %reg_w.exit378.reg_w.exit398_crit_edge, %reg_w.exit378.thread1490, %reg_w.exit378.thread
  %arrayidx161378 = phi ptr [ %arrayidx161376, %reg_w.exit378.thread ], [ %arrayidx16, %reg_w.exit378.reg_w.exit398_crit_edge ], [ %arrayidx16, %if.end21.i395.reg_w.exit398_crit_edge ], [ %arrayidx16, %do.end32.i397 ], [ %arrayidx161492, %reg_w.exit378.thread1490 ]
  %84 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sensor, align 1
  %switch.tableidx = add i8 %85, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %switch.tableidx)
  %86 = icmp ult i8 %switch.tableidx, 14
  br i1 %86, label %switch.lookup, label %reg_w.exit398.sw.epilog_crit_edge

reg_w.exit398.sw.epilog_crit_edge:                ; preds = %reg_w.exit398
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %reg_w.exit398
  call void @__sanitizer_cov_trace_pc() #8
  %87 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x ptr], ptr @switch.table.sd_start, i32 0, i32 %87
  %88 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %reg_w.exit398.sw.epilog_crit_edge
  %reg9a.0 = phi ptr [ %switch.load, %switch.lookup ], [ @sd_start.reg9a_def, %reg_w.exit398.sw.epilog_crit_edge ]
  %89 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i400 = icmp slt i32 %90, 0
  br i1 %cmp.i400, label %sw.epilog.reg_w.exit455_crit_edge, label %do.body.i402

sw.epilog.reg_w.exit455_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455

do.body.i402:                                     ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %91 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %91)
  %cmp1.i401 = icmp sgt i32 %91, 6
  br i1 %cmp1.i401, label %do.end.i408, label %do.body.i402.if.end21.i415_crit_edge

do.body.i402.if.end21.i415_crit_edge:             ; preds = %do.body.i402
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i415

do.end.i408:                                      ; preds = %do.body.i402
  call void @__sanitizer_cov_trace_pc() #8
  %name.i403 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %reg9a.0 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %reg9a.0, align 1
  %conv4.i404 = zext i8 %93 to i32
  %arrayidx5.i405 = getelementptr i8, ptr %reg9a.0, i32 1
  %94 = ptrtoint ptr %arrayidx5.i405 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx5.i405, align 1
  %conv6.i406 = zext i8 %95 to i32
  %call.i407 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i403, i32 noundef 154, i32 noundef %conv4.i404, i32 noundef %conv6.i406) #9
  br label %if.end21.i415

if.end21.i415:                                    ; preds = %do.end.i408, %do.body.i402.if.end21.i415_crit_edge
  %usb_buf.i409 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %96 = ptrtoint ptr %usb_buf.i409 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %usb_buf.i409, align 4
  %98 = call ptr @memcpy(ptr %97, ptr %reg9a.0, i32 6)
  %dev.i410 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %99 = ptrtoint ptr %dev.i410 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i410, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %shl.i.i411 = shl i32 %102, 8
  %or.i412 = or i32 %shl.i.i411, -2147483648
  %103 = load ptr, ptr %usb_buf.i409, align 4
  %call26.i413 = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or.i412, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 154, i16 noundef zeroext 0, ptr noundef %103, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i413)
  %cmp27.i414 = icmp slt i32 %call26.i413, 0
  br i1 %cmp27.i414, label %if.end21.i415.reg_w.exit455.sink.split_crit_edge, label %reg_w.exit418

if.end21.i415.reg_w.exit455.sink.split_crit_edge: ; preds = %if.end21.i415
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455.sink.split

reg_w.exit418:                                    ; preds = %if.end21.i415
  %104 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr1379 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1379)
  %cmp.i420 = icmp slt i32 %.pr1379, 0
  br i1 %cmp.i420, label %reg_w.exit418.reg_w.exit455_crit_edge, label %do.body.i422

reg_w.exit418.reg_w.exit455_crit_edge:            ; preds = %reg_w.exit418
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455

do.body.i422:                                     ; preds = %reg_w.exit418
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %105 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %105)
  %cmp1.i421 = icmp sgt i32 %105, 6
  br i1 %cmp1.i421, label %do.end.i425, label %do.body.i422.if.end21.i432_crit_edge

do.body.i422.if.end21.i432_crit_edge:             ; preds = %do.body.i422
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i432

do.end.i425:                                      ; preds = %do.body.i422
  call void @__sanitizer_cov_trace_pc() #8
  %name.i423 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i424 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i423, i32 noundef 212, i32 noundef 96, i32 noundef 0) #9
  br label %if.end21.i432

if.end21.i432:                                    ; preds = %do.end.i425, %do.body.i422.if.end21.i432_crit_edge
  %106 = ptrtoint ptr %usb_buf.i409 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_buf.i409, align 4
  %108 = call ptr @memcpy(ptr %107, ptr @sd_start.regd4, i32 3)
  %109 = ptrtoint ptr %dev.i410 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i410, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %shl.i.i428 = shl i32 %112, 8
  %or.i429 = or i32 %shl.i.i428, -2147483648
  %113 = load ptr, ptr %usb_buf.i409, align 4
  %call26.i430 = tail call i32 @usb_control_msg(ptr noundef %110, i32 noundef %or.i429, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 212, i16 noundef zeroext 0, ptr noundef %113, i16 noundef zeroext 3, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i430)
  %cmp27.i431 = icmp slt i32 %call26.i430, 0
  br i1 %cmp27.i431, label %if.end21.i432.reg_w.exit455.sink.split_crit_edge, label %reg_w.exit435

if.end21.i432.reg_w.exit455.sink.split_crit_edge: ; preds = %if.end21.i432
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455.sink.split

reg_w.exit435:                                    ; preds = %if.end21.i432
  %114 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr1381.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx19 = getelementptr i8, ptr %15, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1381.pr)
  %cmp.i437 = icmp slt i32 %.pr1381.pr, 0
  br i1 %cmp.i437, label %reg_w.exit435.reg_w.exit455_crit_edge, label %do.body.i439

reg_w.exit435.reg_w.exit455_crit_edge:            ; preds = %reg_w.exit435
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455

do.body.i439:                                     ; preds = %reg_w.exit435
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %115 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %115)
  %cmp1.i438 = icmp sgt i32 %115, 6
  br i1 %cmp1.i438, label %do.end.i445, label %do.body.i439.if.end21.i452_crit_edge

do.body.i439.if.end21.i452_crit_edge:             ; preds = %do.body.i439
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i452

do.end.i445:                                      ; preds = %do.body.i439
  call void @__sanitizer_cov_trace_pc() #8
  %name.i440 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %116 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx19, align 1
  %conv4.i441 = zext i8 %117 to i32
  %arrayidx5.i442 = getelementptr i8, ptr %15, i32 4
  %118 = ptrtoint ptr %arrayidx5.i442 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx5.i442, align 1
  %conv6.i443 = zext i8 %119 to i32
  %call.i444 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i440, i32 noundef 3, i32 noundef %conv4.i441, i32 noundef %conv6.i443) #9
  br label %if.end21.i452

if.end21.i452:                                    ; preds = %do.end.i445, %do.body.i439.if.end21.i452_crit_edge
  %120 = ptrtoint ptr %usb_buf.i409 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %usb_buf.i409, align 4
  %122 = call ptr @memcpy(ptr %121, ptr %arrayidx19, i32 15)
  %123 = ptrtoint ptr %dev.i410 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i410, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i448 = shl i32 %126, 8
  %or.i449 = or i32 %shl.i.i448, -2147483648
  %127 = load ptr, ptr %usb_buf.i409, align 4
  %call26.i450 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i449, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef %127, i16 noundef zeroext 15, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i450)
  %cmp27.i451 = icmp slt i32 %call26.i450, 0
  br i1 %cmp27.i451, label %if.end21.i452.reg_w.exit455.sink.split_crit_edge, label %if.end21.i452.reg_w.exit455_crit_edge

if.end21.i452.reg_w.exit455_crit_edge:            ; preds = %if.end21.i452
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455

if.end21.i452.reg_w.exit455.sink.split_crit_edge: ; preds = %if.end21.i452
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit455.sink.split

reg_w.exit455.sink.split:                         ; preds = %if.end21.i452.reg_w.exit455.sink.split_crit_edge, %if.end21.i432.reg_w.exit455.sink.split_crit_edge, %if.end21.i415.reg_w.exit455.sink.split_crit_edge
  %call26.i413.sink1586 = phi i32 [ %call26.i413, %if.end21.i415.reg_w.exit455.sink.split_crit_edge ], [ %call26.i430, %if.end21.i432.reg_w.exit455.sink.split_crit_edge ], [ %call26.i450, %if.end21.i452.reg_w.exit455.sink.split_crit_edge ]
  %call34.i416 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i413.sink1586) #9
  %128 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call26.i413.sink1586, ptr %usb_err.i, align 8
  br label %reg_w.exit455

reg_w.exit455:                                    ; preds = %reg_w.exit455.sink.split, %if.end21.i452.reg_w.exit455_crit_edge, %reg_w.exit435.reg_w.exit455_crit_edge, %reg_w.exit418.reg_w.exit455_crit_edge, %sw.epilog.reg_w.exit455_crit_edge
  %129 = ptrtoint ptr %arrayidx161378 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx161378, align 1
  %131 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %sensor, align 1
  %133 = zext i8 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %132, label %reg_w.exit455.sw.epilog34_crit_edge [
    i8 1, label %sw.bb23
    i8 7, label %sw.bb24
  ]

reg_w.exit455.sw.epilog34_crit_edge:              ; preds = %reg_w.exit455
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34

sw.bb23:                                          ; preds = %reg_w.exit455
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 50) #6
  br label %sw.epilog34

sw.bb24:                                          ; preds = %reg_w.exit455
  tail call void @msleep(i32 noundef 10) #6
  %134 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.i457 = icmp slt i32 %135, 0
  br i1 %cmp.i457, label %sw.bb24.reg_w1.exit472.thread_crit_edge, label %do.body.i459

sw.bb24.reg_w1.exit472.thread_crit_edge:          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit472.thread

do.body.i459:                                     ; preds = %sw.bb24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %136 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %136)
  %cmp1.i458 = icmp sgt i32 %136, 6
  br i1 %cmp1.i458, label %do.end.i462, label %do.body.i459.do.end7.i469_crit_edge

do.body.i459.do.end7.i469_crit_edge:              ; preds = %do.body.i459
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i469

do.end.i462:                                      ; preds = %do.body.i459
  call void @__sanitizer_cov_trace_pc() #8
  %name.i460 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i461 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i460, i32 noundef 2, i32 noundef 115) #9
  br label %do.end7.i469

do.end7.i469:                                     ; preds = %do.end.i462, %do.body.i459.do.end7.i469_crit_edge
  %usb_buf.i463 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %137 = ptrtoint ptr %usb_buf.i463 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i463, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 115, ptr %138, align 1
  %dev.i464 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %140 = ptrtoint ptr %dev.i464 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i464, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %shl.i.i465 = shl i32 %143, 8
  %or.i466 = or i32 %shl.i.i465, -2147483648
  %144 = load ptr, ptr %usb_buf.i463, align 4
  %call11.i467 = tail call i32 @usb_control_msg(ptr noundef %141, i32 noundef %or.i466, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %144, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i467)
  %cmp12.i468 = icmp slt i32 %call11.i467, 0
  br i1 %cmp12.i468, label %do.end17.i471, label %reg_w1.exit472

do.end17.i471:                                    ; preds = %do.end7.i469
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i470 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i467) #9
  %145 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %call11.i467, ptr %usb_err.i, align 8
  br label %reg_w1.exit472.thread

reg_w1.exit472.thread:                            ; preds = %do.end17.i471, %sw.bb24.reg_w1.exit472.thread_crit_edge
  %146 = or i8 %130, 32
  br label %reg_w1.exit490

reg_w1.exit472:                                   ; preds = %do.end7.i469
  %147 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr1384 = load i32, ptr %usb_err.i, align 8
  %148 = or i8 %130, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1384)
  %cmp.i474 = icmp slt i32 %.pr1384, 0
  br i1 %cmp.i474, label %reg_w1.exit472.reg_w1.exit507_crit_edge, label %do.body.i476

reg_w1.exit472.reg_w1.exit507_crit_edge:          ; preds = %reg_w1.exit472
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit507

do.body.i476:                                     ; preds = %reg_w1.exit472
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %149 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %149)
  %cmp1.i475 = icmp sgt i32 %149, 6
  br i1 %cmp1.i475, label %do.end.i480, label %do.body.i476.do.end7.i487_crit_edge

do.body.i476.do.end7.i487_crit_edge:              ; preds = %do.body.i476
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i487

do.end.i480:                                      ; preds = %do.body.i476
  call void @__sanitizer_cov_trace_pc() #8
  %name.i477 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i478 = zext i8 %148 to i32
  %call.i479 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i477, i32 noundef 23, i32 noundef %conv4.i478) #9
  br label %do.end7.i487

do.end7.i487:                                     ; preds = %do.end.i480, %do.body.i476.do.end7.i487_crit_edge
  %150 = ptrtoint ptr %usb_buf.i463 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %usb_buf.i463, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %148, ptr %151, align 1
  %153 = ptrtoint ptr %dev.i464 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i464, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 8
  %shl.i.i483 = shl i32 %156, 8
  %or.i484 = or i32 %shl.i.i483, -2147483648
  %157 = load ptr, ptr %usb_buf.i463, align 4
  %call11.i485 = tail call i32 @usb_control_msg(ptr noundef %154, i32 noundef %or.i484, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %157, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i485)
  %cmp12.i486 = icmp slt i32 %call11.i485, 0
  br i1 %cmp12.i486, label %do.end7.i487.reg_w1.exit507.sink.split_crit_edge, label %do.end7.i487.reg_w1.exit490_crit_edge

do.end7.i487.reg_w1.exit490_crit_edge:            ; preds = %do.end7.i487
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit490

do.end7.i487.reg_w1.exit507.sink.split_crit_edge: ; preds = %do.end7.i487
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit507.sink.split

reg_w1.exit490:                                   ; preds = %do.end7.i487.reg_w1.exit490_crit_edge, %reg_w1.exit472.thread
  %.ph = phi i8 [ %148, %do.end7.i487.reg_w1.exit490_crit_edge ], [ %146, %reg_w1.exit472.thread ]
  %158 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pr1386 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1386)
  %cmp.i492 = icmp slt i32 %.pr1386, 0
  br i1 %cmp.i492, label %reg_w1.exit490.reg_w1.exit507_crit_edge, label %do.body.i494

reg_w1.exit490.reg_w1.exit507_crit_edge:          ; preds = %reg_w1.exit490
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit507

do.body.i494:                                     ; preds = %reg_w1.exit490
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %159 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %159)
  %cmp1.i493 = icmp sgt i32 %159, 6
  br i1 %cmp1.i493, label %do.end.i497, label %do.body.i494.do.end7.i504_crit_edge

do.body.i494.do.end7.i504_crit_edge:              ; preds = %do.body.i494
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i504

do.end.i497:                                      ; preds = %do.body.i494
  call void @__sanitizer_cov_trace_pc() #8
  %name.i495 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i496 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i495, i32 noundef 1, i32 noundef 34) #9
  br label %do.end7.i504

do.end7.i504:                                     ; preds = %do.end.i497, %do.body.i494.do.end7.i504_crit_edge
  %usb_buf.i498 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %160 = ptrtoint ptr %usb_buf.i498 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %usb_buf.i498, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 34, ptr %161, align 1
  %dev.i499 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %163 = ptrtoint ptr %dev.i499 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i499, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i500 = shl i32 %166, 8
  %or.i501 = or i32 %shl.i.i500, -2147483648
  %167 = load ptr, ptr %usb_buf.i498, align 4
  %call11.i502 = tail call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i501, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %167, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i502)
  %cmp12.i503 = icmp slt i32 %call11.i502, 0
  br i1 %cmp12.i503, label %do.end7.i504.reg_w1.exit507.sink.split_crit_edge, label %do.end7.i504.reg_w1.exit507_crit_edge

do.end7.i504.reg_w1.exit507_crit_edge:            ; preds = %do.end7.i504
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit507

do.end7.i504.reg_w1.exit507.sink.split_crit_edge: ; preds = %do.end7.i504
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit507.sink.split

reg_w1.exit507.sink.split:                        ; preds = %do.end7.i504.reg_w1.exit507.sink.split_crit_edge, %do.end7.i487.reg_w1.exit507.sink.split_crit_edge
  %call11.i485.sink1588 = phi i32 [ %call11.i485, %do.end7.i487.reg_w1.exit507.sink.split_crit_edge ], [ %call11.i502, %do.end7.i504.reg_w1.exit507.sink.split_crit_edge ]
  %.ph1587 = phi i8 [ %148, %do.end7.i487.reg_w1.exit507.sink.split_crit_edge ], [ %.ph, %do.end7.i504.reg_w1.exit507.sink.split_crit_edge ]
  %call19.i488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i485.sink1588) #9
  %168 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %call11.i485.sink1588, ptr %usb_err.i, align 8
  br label %reg_w1.exit507

reg_w1.exit507:                                   ; preds = %reg_w1.exit507.sink.split, %do.end7.i504.reg_w1.exit507_crit_edge, %reg_w1.exit490.reg_w1.exit507_crit_edge, %reg_w1.exit472.reg_w1.exit507_crit_edge
  %169 = phi i8 [ %.ph, %reg_w1.exit490.reg_w1.exit507_crit_edge ], [ %.ph, %do.end7.i504.reg_w1.exit507_crit_edge ], [ %148, %reg_w1.exit472.reg_w1.exit507_crit_edge ], [ %.ph1587, %reg_w1.exit507.sink.split ]
  tail call void @msleep(i32 noundef 100) #6
  %170 = and i8 %169, -32
  %171 = or i8 %170, 4
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %reg_w1.exit507, %sw.bb23, %reg_w.exit455.sw.epilog34_crit_edge
  %reg01.1 = phi i8 [ %spec.select, %reg_w.exit455.sw.epilog34_crit_edge ], [ 34, %reg_w1.exit507 ], [ %spec.select, %sw.bb23 ]
  %reg17.0 = phi i8 [ %130, %reg_w.exit455.sw.epilog34_crit_edge ], [ %171, %reg_w1.exit507 ], [ %130, %sw.bb23 ]
  %172 = or i8 %reg01.1, 64
  %173 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp.i509 = icmp slt i32 %174, 0
  br i1 %cmp.i509, label %sw.epilog34.reg_w1.exit525.thread_crit_edge, label %do.body.i511

sw.epilog34.reg_w1.exit525.thread_crit_edge:      ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit525.thread

do.body.i511:                                     ; preds = %sw.epilog34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %175 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %175)
  %cmp1.i510 = icmp sgt i32 %175, 6
  br i1 %cmp1.i510, label %do.end.i515, label %do.body.i511.do.end7.i522_crit_edge

do.body.i511.do.end7.i522_crit_edge:              ; preds = %do.body.i511
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i522

do.end.i515:                                      ; preds = %do.body.i511
  call void @__sanitizer_cov_trace_pc() #8
  %name.i512 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i513 = zext i8 %172 to i32
  %call.i514 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i512, i32 noundef 1, i32 noundef %conv4.i513) #9
  br label %do.end7.i522

do.end7.i522:                                     ; preds = %do.end.i515, %do.body.i511.do.end7.i522_crit_edge
  %usb_buf.i516 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %176 = ptrtoint ptr %usb_buf.i516 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %usb_buf.i516, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %172, ptr %177, align 1
  %dev.i517 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %179 = ptrtoint ptr %dev.i517 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i517, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %180, align 8
  %shl.i.i518 = shl i32 %182, 8
  %or.i519 = or i32 %shl.i.i518, -2147483648
  %183 = load ptr, ptr %usb_buf.i516, align 4
  %call11.i520 = tail call i32 @usb_control_msg(ptr noundef %180, i32 noundef %or.i519, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %183, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i520)
  %cmp12.i521 = icmp slt i32 %call11.i520, 0
  br i1 %cmp12.i521, label %do.end17.i524, label %reg_w1.exit525

do.end17.i524:                                    ; preds = %do.end7.i522
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i523 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i520) #9
  %184 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %call11.i520, ptr %usb_err.i, align 8
  br label %reg_w1.exit525.thread

reg_w1.exit525.thread:                            ; preds = %do.end17.i524, %sw.epilog34.reg_w1.exit525.thread_crit_edge
  %185 = or i8 %reg17.0, 32
  br label %reg_w1.exit543

reg_w1.exit525:                                   ; preds = %do.end7.i522
  %186 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %.pr1389 = load i32, ptr %usb_err.i, align 8
  %187 = or i8 %reg17.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1389)
  %cmp.i527 = icmp slt i32 %.pr1389, 0
  br i1 %cmp.i527, label %reg_w1.exit525.reg_w1.exit561.thread1502_crit_edge, label %do.body.i529

reg_w1.exit525.reg_w1.exit561.thread1502_crit_edge: ; preds = %reg_w1.exit525
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit561.thread1502

do.body.i529:                                     ; preds = %reg_w1.exit525
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %188 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %188)
  %cmp1.i528 = icmp sgt i32 %188, 6
  br i1 %cmp1.i528, label %do.end.i533, label %do.body.i529.do.end7.i540_crit_edge

do.body.i529.do.end7.i540_crit_edge:              ; preds = %do.body.i529
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i540

do.end.i533:                                      ; preds = %do.body.i529
  call void @__sanitizer_cov_trace_pc() #8
  %name.i530 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i531 = zext i8 %187 to i32
  %call.i532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i530, i32 noundef 23, i32 noundef %conv4.i531) #9
  br label %do.end7.i540

do.end7.i540:                                     ; preds = %do.end.i533, %do.body.i529.do.end7.i540_crit_edge
  %189 = ptrtoint ptr %usb_buf.i516 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %usb_buf.i516, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %187, ptr %190, align 1
  %192 = ptrtoint ptr %dev.i517 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i517, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 8
  %shl.i.i536 = shl i32 %195, 8
  %or.i537 = or i32 %shl.i.i536, -2147483648
  %196 = load ptr, ptr %usb_buf.i516, align 4
  %call11.i538 = tail call i32 @usb_control_msg(ptr noundef %193, i32 noundef %or.i537, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %196, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i538)
  %cmp12.i539 = icmp slt i32 %call11.i538, 0
  br i1 %cmp12.i539, label %do.end17.i542, label %do.end7.i540.reg_w1.exit543_crit_edge

do.end7.i540.reg_w1.exit543_crit_edge:            ; preds = %do.end7.i540
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit543

do.end17.i542:                                    ; preds = %do.end7.i540
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i538) #9
  %197 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call11.i538, ptr %usb_err.i, align 8
  br label %reg_w1.exit561.thread1502

reg_w1.exit543:                                   ; preds = %do.end7.i540.reg_w1.exit543_crit_edge, %reg_w1.exit525.thread
  %.ph1392 = phi i8 [ %187, %do.end7.i540.reg_w1.exit543_crit_edge ], [ %185, %reg_w1.exit525.thread ]
  %198 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %.pr1393 = load i32, ptr %usb_err.i, align 8
  %199 = and i8 %172, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1393)
  %cmp.i545 = icmp slt i32 %.pr1393, 0
  br i1 %cmp.i545, label %reg_w1.exit543.reg_w1.exit561.thread_crit_edge, label %do.body.i547

reg_w1.exit543.reg_w1.exit561.thread_crit_edge:   ; preds = %reg_w1.exit543
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit561.thread

do.body.i547:                                     ; preds = %reg_w1.exit543
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %200 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %200)
  %cmp1.i546 = icmp sgt i32 %200, 6
  br i1 %cmp1.i546, label %do.end.i551, label %do.body.i547.do.end7.i558_crit_edge

do.body.i547.do.end7.i558_crit_edge:              ; preds = %do.body.i547
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i558

do.end.i551:                                      ; preds = %do.body.i547
  call void @__sanitizer_cov_trace_pc() #8
  %name.i548 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i549 = zext i8 %199 to i32
  %call.i550 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i548, i32 noundef 1, i32 noundef %conv4.i549) #9
  br label %do.end7.i558

do.end7.i558:                                     ; preds = %do.end.i551, %do.body.i547.do.end7.i558_crit_edge
  %usb_buf.i552 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %201 = ptrtoint ptr %usb_buf.i552 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %usb_buf.i552, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %199, ptr %202, align 1
  %dev.i553 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %204 = ptrtoint ptr %dev.i553 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i553, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 8
  %shl.i.i554 = shl i32 %207, 8
  %or.i555 = or i32 %shl.i.i554, -2147483648
  %208 = load ptr, ptr %usb_buf.i552, align 4
  %call11.i556 = tail call i32 @usb_control_msg(ptr noundef %205, i32 noundef %or.i555, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %208, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i556)
  %cmp12.i557 = icmp slt i32 %call11.i556, 0
  br i1 %cmp12.i557, label %do.end17.i560, label %reg_w1.exit561

do.end17.i560:                                    ; preds = %do.end7.i558
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i559 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i556) #9
  %209 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %call11.i556, ptr %usb_err.i, align 8
  br label %reg_w1.exit561.thread

reg_w1.exit561.thread:                            ; preds = %do.end17.i560, %reg_w1.exit543.reg_w1.exit561.thread_crit_edge
  %210 = and i8 %172, -34
  br label %reg_w1.exit579

reg_w1.exit561.thread1502:                        ; preds = %do.end17.i542, %reg_w1.exit525.reg_w1.exit561.thread1502_crit_edge
  %211 = and i8 %172, -34
  br label %reg_w1.exit579

reg_w1.exit561:                                   ; preds = %do.end7.i558
  %212 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pr1397.pr = load i32, ptr %usb_err.i, align 8
  %213 = and i8 %172, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1397.pr)
  %cmp.i563 = icmp slt i32 %.pr1397.pr, 0
  br i1 %cmp.i563, label %reg_w1.exit561.reg_w1.exit579_crit_edge, label %do.body.i565

reg_w1.exit561.reg_w1.exit579_crit_edge:          ; preds = %reg_w1.exit561
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit579

do.body.i565:                                     ; preds = %reg_w1.exit561
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %214 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %214)
  %cmp1.i564 = icmp sgt i32 %214, 6
  br i1 %cmp1.i564, label %do.end.i569, label %do.body.i565.do.end7.i576_crit_edge

do.body.i565.do.end7.i576_crit_edge:              ; preds = %do.body.i565
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i576

do.end.i569:                                      ; preds = %do.body.i565
  call void @__sanitizer_cov_trace_pc() #8
  %name.i566 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i567 = zext i8 %213 to i32
  %call.i568 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i566, i32 noundef 1, i32 noundef %conv4.i567) #9
  br label %do.end7.i576

do.end7.i576:                                     ; preds = %do.end.i569, %do.body.i565.do.end7.i576_crit_edge
  %215 = ptrtoint ptr %usb_buf.i552 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %usb_buf.i552, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %213, ptr %216, align 1
  %218 = ptrtoint ptr %dev.i553 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev.i553, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 8
  %shl.i.i572 = shl i32 %221, 8
  %or.i573 = or i32 %shl.i.i572, -2147483648
  %222 = load ptr, ptr %usb_buf.i552, align 4
  %call11.i574 = tail call i32 @usb_control_msg(ptr noundef %219, i32 noundef %or.i573, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %222, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i574)
  %cmp12.i575 = icmp slt i32 %call11.i574, 0
  br i1 %cmp12.i575, label %do.end17.i578, label %do.end7.i576.reg_w1.exit579_crit_edge

do.end7.i576.reg_w1.exit579_crit_edge:            ; preds = %do.end7.i576
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit579

do.end17.i578:                                    ; preds = %do.end7.i576
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i577 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i574) #9
  %223 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %call11.i574, ptr %usb_err.i, align 8
  br label %reg_w1.exit579

reg_w1.exit579:                                   ; preds = %do.end17.i578, %do.end7.i576.reg_w1.exit579_crit_edge, %reg_w1.exit561.reg_w1.exit579_crit_edge, %reg_w1.exit561.thread1502, %reg_w1.exit561.thread
  %224 = phi i8 [ %210, %reg_w1.exit561.thread ], [ %213, %reg_w1.exit561.reg_w1.exit579_crit_edge ], [ %213, %do.end7.i576.reg_w1.exit579_crit_edge ], [ %213, %do.end17.i578 ], [ %211, %reg_w1.exit561.thread1502 ]
  %225 = phi i8 [ %.ph1392, %reg_w1.exit561.thread ], [ %.ph1392, %reg_w1.exit561.reg_w1.exit579_crit_edge ], [ %.ph1392, %do.end7.i576.reg_w1.exit579_crit_edge ], [ %.ph1392, %do.end17.i578 ], [ %187, %reg_w1.exit561.thread1502 ]
  %226 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %sensor, align 1
  %228 = zext i8 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %227, label %reg_w1.exit579.sw.epilog52_crit_edge [
    i8 2, label %sw.bb49
    i8 7, label %sw.bb50
    i8 14, label %sw.bb51
  ]

reg_w1.exit579.sw.epilog52_crit_edge:             ; preds = %reg_w1.exit579
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog52

sw.bb49:                                          ; preds = %reg_w1.exit579
  tail call fastcc void @i2c_w1(ptr noundef %gspca_dev, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 10) #6
  %229 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp.i.i = icmp slt i32 %230, 0
  br i1 %cmp.i.i, label %sw.bb49.reg_w1.exit.i_crit_edge, label %do.body.i.i

sw.bb49.reg_w1.exit.i_crit_edge:                  ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit.i

do.body.i.i:                                      ; preds = %sw.bb49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %231 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %231)
  %cmp1.i.i = icmp sgt i32 %231, 6
  br i1 %cmp1.i.i, label %do.end.i.i, label %do.body.i.i.do.end7.i.i_crit_edge

do.body.i.i.do.end7.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i, i32 noundef 2, i32 noundef 102) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end7.i.i_crit_edge
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %232 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %usb_buf.i.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 102, ptr %233, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %235 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 8
  %shl.i.i.i = shl i32 %238, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %239 = load ptr, ptr %usb_buf.i.i, align 4
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %236, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %239, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end17.i.i, label %do.end7.i.i.reg_w1.exit.i_crit_edge

do.end7.i.i.reg_w1.exit.i_crit_edge:              ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit.i

do.end17.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.i) #9
  %240 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %call11.i.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit.i

reg_w1.exit.i:                                    ; preds = %do.end17.i.i, %do.end7.i.i.reg_w1.exit.i_crit_edge, %sw.bb49.reg_w1.exit.i_crit_edge
  tail call void @msleep(i32 noundef 10) #6
  tail call fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext 0, i32 noundef 5) #6
  %usb_buf.i580 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %241 = ptrtoint ptr %usb_buf.i580 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %usb_buf.i580, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %244)
  %cmp.i581 = icmp eq i8 %244, 2
  br i1 %cmp.i581, label %land.lhs.true.i, label %reg_w1.exit.i.do.end20.i_crit_edge

reg_w1.exit.i.do.end20.i_crit_edge:               ; preds = %reg_w1.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

land.lhs.true.i:                                  ; preds = %reg_w1.exit.i
  %arrayidx3.i = getelementptr i8, ptr %242, i32 1
  %245 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %246)
  %cmp5.i = icmp eq i8 %246, 9
  br i1 %cmp5.i, label %land.lhs.true7.i, label %land.lhs.true.i.do.end20.i_crit_edge

land.lhs.true.i.do.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %arrayidx9.i582 = getelementptr i8, ptr %242, i32 2
  %247 = ptrtoint ptr %arrayidx9.i582 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx9.i582, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %248)
  %cmp11.i = icmp eq i8 %248, 1
  br i1 %cmp11.i, label %do.body.i583, label %land.lhs.true7.i.do.end20.i_crit_edge

land.lhs.true7.i.do.end20.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20.i

do.body.i583:                                     ; preds = %land.lhs.true7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %249 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp13.i = icmp sgt i32 %249, 0
  br i1 %cmp13.i, label %do.end.i586, label %do.body.i583.sw.epilog52_crit_edge

do.body.i583.sw.epilog52_crit_edge:               ; preds = %do.body.i583
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog52

do.end.i586:                                      ; preds = %do.body.i583
  call void @__sanitizer_cov_trace_pc() #8
  %name.i584 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i585 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name.i584) #9
  br label %sw.epilog52

do.end20.i:                                       ; preds = %land.lhs.true7.i.do.end20.i_crit_edge, %land.lhs.true.i.do.end20.i_crit_edge, %reg_w1.exit.i.do.end20.i_crit_edge
  %conv24.i = zext i8 %244 to i32
  %arrayidx26.i = getelementptr i8, ptr %242, i32 1
  %250 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %251 to i32
  %arrayidx29.i = getelementptr i8, ptr %242, i32 2
  %252 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %253 to i32
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %conv24.i, i32 noundef %conv27.i, i32 noundef %conv30.i) #9
  br label %sw.epilog52

sw.bb50:                                          ; preds = %reg_w1.exit579
  tail call void @msleep(i32 noundef 10) #6
  %254 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp.i588 = icmp slt i32 %255, 0
  br i1 %cmp.i588, label %sw.bb50.reg_w1.exit604_crit_edge, label %do.body.i590

sw.bb50.reg_w1.exit604_crit_edge:                 ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit604

do.body.i590:                                     ; preds = %sw.bb50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %256 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %256)
  %cmp1.i589 = icmp sgt i32 %256, 6
  br i1 %cmp1.i589, label %do.end.i594, label %do.body.i590.do.end7.i601_crit_edge

do.body.i590.do.end7.i601_crit_edge:              ; preds = %do.body.i590
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i601

do.end.i594:                                      ; preds = %do.body.i590
  call void @__sanitizer_cov_trace_pc() #8
  %name.i591 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i592 = zext i8 %224 to i32
  %call.i593 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i591, i32 noundef 1, i32 noundef %conv4.i592) #9
  br label %do.end7.i601

do.end7.i601:                                     ; preds = %do.end.i594, %do.body.i590.do.end7.i601_crit_edge
  %usb_buf.i595 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %257 = ptrtoint ptr %usb_buf.i595 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %usb_buf.i595, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %224, ptr %258, align 1
  %dev.i596 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %260 = ptrtoint ptr %dev.i596 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev.i596, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 8
  %shl.i.i597 = shl i32 %263, 8
  %or.i598 = or i32 %shl.i.i597, -2147483648
  %264 = load ptr, ptr %usb_buf.i595, align 4
  %call11.i599 = tail call i32 @usb_control_msg(ptr noundef %261, i32 noundef %or.i598, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %264, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i599)
  %cmp12.i600 = icmp slt i32 %call11.i599, 0
  br i1 %cmp12.i600, label %do.end17.i603, label %do.end7.i601.reg_w1.exit604_crit_edge

do.end7.i601.reg_w1.exit604_crit_edge:            ; preds = %do.end7.i601
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit604

do.end17.i603:                                    ; preds = %do.end7.i601
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i602 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i599) #9
  %265 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %call11.i599, ptr %usb_err.i, align 8
  br label %reg_w1.exit604

reg_w1.exit604:                                   ; preds = %do.end17.i603, %do.end7.i601.reg_w1.exit604_crit_edge, %sw.bb50.reg_w1.exit604_crit_edge
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @om6802_init0)
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef getelementptr inbounds ([2 x [8 x i8]], ptr @om6802_init0, i32 0, i32 1))
  tail call void @msleep(i32 noundef 15) #6
  %266 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %cmp.i606 = icmp slt i32 %267, 0
  br i1 %cmp.i606, label %reg_w1.exit604.reg_w1.exit621_crit_edge, label %do.body.i608

reg_w1.exit604.reg_w1.exit621_crit_edge:          ; preds = %reg_w1.exit604
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit621

do.body.i608:                                     ; preds = %reg_w1.exit604
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %268 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %268)
  %cmp1.i607 = icmp sgt i32 %268, 6
  br i1 %cmp1.i607, label %do.end.i611, label %do.body.i608.do.end7.i618_crit_edge

do.body.i608.do.end7.i618_crit_edge:              ; preds = %do.body.i608
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i618

do.end.i611:                                      ; preds = %do.body.i608
  call void @__sanitizer_cov_trace_pc() #8
  %name.i609 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i610 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i609, i32 noundef 2, i32 noundef 113) #9
  br label %do.end7.i618

do.end7.i618:                                     ; preds = %do.end.i611, %do.body.i608.do.end7.i618_crit_edge
  %usb_buf.i612 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %269 = ptrtoint ptr %usb_buf.i612 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %usb_buf.i612, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 113, ptr %270, align 1
  %dev.i613 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %272 = ptrtoint ptr %dev.i613 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev.i613, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %273, align 8
  %shl.i.i614 = shl i32 %275, 8
  %or.i615 = or i32 %shl.i.i614, -2147483648
  %276 = load ptr, ptr %usb_buf.i612, align 4
  %call11.i616 = tail call i32 @usb_control_msg(ptr noundef %273, i32 noundef %or.i615, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %276, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i616)
  %cmp12.i617 = icmp slt i32 %call11.i616, 0
  br i1 %cmp12.i617, label %do.end17.i620, label %do.end7.i618.reg_w1.exit621_crit_edge

do.end7.i618.reg_w1.exit621_crit_edge:            ; preds = %do.end7.i618
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit621

do.end17.i620:                                    ; preds = %do.end7.i618
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i619 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i616) #9
  %277 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %call11.i616, ptr %usb_err.i, align 8
  br label %reg_w1.exit621

reg_w1.exit621:                                   ; preds = %do.end17.i620, %do.end7.i618.reg_w1.exit621_crit_edge, %reg_w1.exit604.reg_w1.exit621_crit_edge
  tail call void @msleep(i32 noundef 150) #6
  br label %sw.epilog52

sw.bb51:                                          ; preds = %reg_w1.exit579
  tail call void @msleep(i32 noundef 100) #6
  %278 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp.i623 = icmp slt i32 %279, 0
  br i1 %cmp.i623, label %sw.bb51.sw.epilog52_crit_edge, label %do.body.i625

sw.bb51.sw.epilog52_crit_edge:                    ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog52

do.body.i625:                                     ; preds = %sw.bb51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %280 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %280)
  %cmp1.i624 = icmp sgt i32 %280, 6
  br i1 %cmp1.i624, label %do.end.i628, label %do.body.i625.do.end7.i635_crit_edge

do.body.i625.do.end7.i635_crit_edge:              ; preds = %do.body.i625
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i635

do.end.i628:                                      ; preds = %do.body.i625
  call void @__sanitizer_cov_trace_pc() #8
  %name.i626 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i627 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i626, i32 noundef 2, i32 noundef 98) #9
  br label %do.end7.i635

do.end7.i635:                                     ; preds = %do.end.i628, %do.body.i625.do.end7.i635_crit_edge
  %usb_buf.i629 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %281 = ptrtoint ptr %usb_buf.i629 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %usb_buf.i629, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 98, ptr %282, align 1
  %dev.i630 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %284 = ptrtoint ptr %dev.i630 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev.i630, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %285, align 8
  %shl.i.i631 = shl i32 %287, 8
  %or.i632 = or i32 %shl.i.i631, -2147483648
  %288 = load ptr, ptr %usb_buf.i629, align 4
  %call11.i633 = tail call i32 @usb_control_msg(ptr noundef %285, i32 noundef %or.i632, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %288, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i633)
  %cmp12.i634 = icmp slt i32 %call11.i633, 0
  br i1 %cmp12.i634, label %do.end17.i637, label %do.end7.i635.sw.epilog52_crit_edge

do.end7.i635.sw.epilog52_crit_edge:               ; preds = %do.end7.i635
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog52

do.end17.i637:                                    ; preds = %do.end7.i635
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i636 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i633) #9
  %289 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %call11.i633, ptr %usb_err.i, align 8
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %do.end17.i637, %do.end7.i635.sw.epilog52_crit_edge, %sw.bb51.sw.epilog52_crit_edge, %reg_w1.exit621, %do.end20.i, %do.end.i586, %do.body.i583.sw.epilog52_crit_edge, %reg_w1.exit579.sw.epilog52_crit_edge
  %290 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %sensor, align 1
  %idxprom54 = zext i8 %291 to i32
  %arrayidx55 = getelementptr [15 x ptr], ptr @sensor_init, i32 0, i32 %idxprom54
  %292 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %arrayidx55, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %sw.epilog52
  %data.addr.0.i = phi ptr [ %293, %sw.epilog52 ], [ %incdec.ptr.i, %if.end.i ]
  %294 = ptrtoint ptr %data.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %data.addr.0.i, align 1
  %296 = zext i8 %295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %296, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %295, label %if.then.i [
    i8 0, label %i2c_w_seq.exit
    i8 -35, label %if.else.i
  ]

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef %data.addr.0.i) #6
  br label %if.end.i

if.else.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6.i = getelementptr [8 x i8], ptr %data.addr.0.i, i32 0, i32 1
  %297 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %298 to i32
  tail call void @msleep(i32 noundef %conv7.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %incdec.ptr.i = getelementptr [8 x i8], ptr %data.addr.0.i, i32 1
  br label %while.cond.i

i2c_w_seq.exit:                                   ; preds = %while.cond.i
  %arrayidx56 = getelementptr i8, ptr %15, i32 21
  %299 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx56, align 1
  %301 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp.i640 = icmp slt i32 %302, 0
  br i1 %cmp.i640, label %i2c_w_seq.exit.reg_w1.exit710.thread1572_crit_edge, label %do.body.i642

i2c_w_seq.exit.reg_w1.exit710.thread1572_crit_edge: ; preds = %i2c_w_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit710.thread1572

do.body.i642:                                     ; preds = %i2c_w_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %303 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %303)
  %cmp1.i641 = icmp sgt i32 %303, 6
  br i1 %cmp1.i641, label %do.end.i646, label %do.body.i642.do.end7.i653_crit_edge

do.body.i642.do.end7.i653_crit_edge:              ; preds = %do.body.i642
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i653

do.end.i646:                                      ; preds = %do.body.i642
  call void @__sanitizer_cov_trace_pc() #8
  %name.i643 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i644 = zext i8 %300 to i32
  %call.i645 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i643, i32 noundef 21, i32 noundef %conv4.i644) #9
  br label %do.end7.i653

do.end7.i653:                                     ; preds = %do.end.i646, %do.body.i642.do.end7.i653_crit_edge
  %usb_buf.i647 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %304 = ptrtoint ptr %usb_buf.i647 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %usb_buf.i647, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %300, ptr %305, align 1
  %dev.i648 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %307 = ptrtoint ptr %dev.i648 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev.i648, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %308, align 8
  %shl.i.i649 = shl i32 %310, 8
  %or.i650 = or i32 %shl.i.i649, -2147483648
  %311 = load ptr, ptr %usb_buf.i647, align 4
  %call11.i651 = tail call i32 @usb_control_msg(ptr noundef %308, i32 noundef %or.i650, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 21, i16 noundef zeroext 0, ptr noundef %311, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i651)
  %cmp12.i652 = icmp slt i32 %call11.i651, 0
  br i1 %cmp12.i652, label %do.end17.i655, label %reg_w1.exit656

do.end17.i655:                                    ; preds = %do.end7.i653
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i654 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i651) #9
  %312 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %call11.i651, ptr %usb_err.i, align 8
  br label %reg_w1.exit710.thread1572

reg_w1.exit656:                                   ; preds = %do.end7.i653
  %313 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pr1400 = load i32, ptr %usb_err.i, align 8
  %arrayidx57 = getelementptr i8, ptr %15, i32 22
  %314 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1400)
  %cmp.i658 = icmp slt i32 %.pr1400, 0
  br i1 %cmp.i658, label %reg_w1.exit656.reg_w1.exit710.thread_crit_edge, label %do.body.i660

reg_w1.exit656.reg_w1.exit710.thread_crit_edge:   ; preds = %reg_w1.exit656
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit710.thread

do.body.i660:                                     ; preds = %reg_w1.exit656
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %316 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %316)
  %cmp1.i659 = icmp sgt i32 %316, 6
  br i1 %cmp1.i659, label %do.end.i664, label %do.body.i660.do.end7.i671_crit_edge

do.body.i660.do.end7.i671_crit_edge:              ; preds = %do.body.i660
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i671

do.end.i664:                                      ; preds = %do.body.i660
  call void @__sanitizer_cov_trace_pc() #8
  %name.i661 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i662 = zext i8 %315 to i32
  %call.i663 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i661, i32 noundef 22, i32 noundef %conv4.i662) #9
  br label %do.end7.i671

do.end7.i671:                                     ; preds = %do.end.i664, %do.body.i660.do.end7.i671_crit_edge
  %317 = ptrtoint ptr %usb_buf.i647 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %usb_buf.i647, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %315, ptr %318, align 1
  %320 = ptrtoint ptr %dev.i648 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev.i648, align 4
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %321, align 8
  %shl.i.i667 = shl i32 %323, 8
  %or.i668 = or i32 %shl.i.i667, -2147483648
  %324 = load ptr, ptr %usb_buf.i647, align 4
  %call11.i669 = tail call i32 @usb_control_msg(ptr noundef %321, i32 noundef %or.i668, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 22, i16 noundef zeroext 0, ptr noundef %324, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i669)
  %cmp12.i670 = icmp slt i32 %call11.i669, 0
  br i1 %cmp12.i670, label %do.end7.i671.reg_w1.exit710.thread.sink.split_crit_edge, label %reg_w1.exit674

do.end7.i671.reg_w1.exit710.thread.sink.split_crit_edge: ; preds = %do.end7.i671
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit710.thread.sink.split

reg_w1.exit674:                                   ; preds = %do.end7.i671
  %325 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %.pr1404.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx58 = getelementptr i8, ptr %15, i32 18
  %326 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1404.pr)
  %cmp.i676 = icmp slt i32 %.pr1404.pr, 0
  br i1 %cmp.i676, label %reg_w1.exit674.reg_w1.exit710.thread1520_crit_edge, label %do.body.i678

reg_w1.exit674.reg_w1.exit710.thread1520_crit_edge: ; preds = %reg_w1.exit674
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit710.thread1520

do.body.i678:                                     ; preds = %reg_w1.exit674
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %328 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %328)
  %cmp1.i677 = icmp sgt i32 %328, 6
  br i1 %cmp1.i677, label %do.end.i682, label %do.body.i678.do.end7.i689_crit_edge

do.body.i678.do.end7.i689_crit_edge:              ; preds = %do.body.i678
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i689

do.end.i682:                                      ; preds = %do.body.i678
  call void @__sanitizer_cov_trace_pc() #8
  %name.i679 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i680 = zext i8 %327 to i32
  %call.i681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i679, i32 noundef 18, i32 noundef %conv4.i680) #9
  br label %do.end7.i689

do.end7.i689:                                     ; preds = %do.end.i682, %do.body.i678.do.end7.i689_crit_edge
  %329 = ptrtoint ptr %usb_buf.i647 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %usb_buf.i647, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %327, ptr %330, align 1
  %332 = ptrtoint ptr %dev.i648 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dev.i648, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %333, align 8
  %shl.i.i685 = shl i32 %335, 8
  %or.i686 = or i32 %shl.i.i685, -2147483648
  %336 = load ptr, ptr %usb_buf.i647, align 4
  %call11.i687 = tail call i32 @usb_control_msg(ptr noundef %333, i32 noundef %or.i686, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef %336, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i687)
  %cmp12.i688 = icmp slt i32 %call11.i687, 0
  br i1 %cmp12.i688, label %do.end17.i691, label %reg_w1.exit692

do.end17.i691:                                    ; preds = %do.end7.i689
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i690 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i687) #9
  %337 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %call11.i687, ptr %usb_err.i, align 8
  br label %reg_w1.exit710.thread1520

reg_w1.exit692:                                   ; preds = %do.end7.i689
  %338 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %.pr1408.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx59 = getelementptr i8, ptr %15, i32 19
  %339 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1408.pr)
  %cmp.i694 = icmp slt i32 %.pr1408.pr, 0
  br i1 %cmp.i694, label %reg_w1.exit692.reg_w1.exit710.thread_crit_edge, label %do.body.i696

reg_w1.exit692.reg_w1.exit710.thread_crit_edge:   ; preds = %reg_w1.exit692
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit710.thread

do.body.i696:                                     ; preds = %reg_w1.exit692
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %341 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %341)
  %cmp1.i695 = icmp sgt i32 %341, 6
  br i1 %cmp1.i695, label %do.end.i700, label %do.body.i696.do.end7.i707_crit_edge

do.body.i696.do.end7.i707_crit_edge:              ; preds = %do.body.i696
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i707

do.end.i700:                                      ; preds = %do.body.i696
  call void @__sanitizer_cov_trace_pc() #8
  %name.i697 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i698 = zext i8 %340 to i32
  %call.i699 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i697, i32 noundef 19, i32 noundef %conv4.i698) #9
  br label %do.end7.i707

do.end7.i707:                                     ; preds = %do.end.i700, %do.body.i696.do.end7.i707_crit_edge
  %342 = ptrtoint ptr %usb_buf.i647 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %usb_buf.i647, align 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %340, ptr %343, align 1
  %345 = ptrtoint ptr %dev.i648 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dev.i648, align 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %346, align 8
  %shl.i.i703 = shl i32 %348, 8
  %or.i704 = or i32 %shl.i.i703, -2147483648
  %349 = load ptr, ptr %usb_buf.i647, align 4
  %call11.i705 = tail call i32 @usb_control_msg(ptr noundef %346, i32 noundef %or.i704, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 19, i16 noundef zeroext 0, ptr noundef %349, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i705)
  %cmp12.i706 = icmp slt i32 %call11.i705, 0
  br i1 %cmp12.i706, label %do.end7.i707.reg_w1.exit710.thread.sink.split_crit_edge, label %reg_w1.exit710

do.end7.i707.reg_w1.exit710.thread.sink.split_crit_edge: ; preds = %do.end7.i707
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit710.thread.sink.split

reg_w1.exit710.thread.sink.split:                 ; preds = %do.end7.i707.reg_w1.exit710.thread.sink.split_crit_edge, %do.end7.i671.reg_w1.exit710.thread.sink.split_crit_edge
  %call11.i669.sink1589 = phi i32 [ %call11.i669, %do.end7.i671.reg_w1.exit710.thread.sink.split_crit_edge ], [ %call11.i705, %do.end7.i707.reg_w1.exit710.thread.sink.split_crit_edge ]
  %call19.i672 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i669.sink1589) #9
  %350 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %call11.i669.sink1589, ptr %usb_err.i, align 8
  br label %reg_w1.exit710.thread

reg_w1.exit710.thread:                            ; preds = %reg_w1.exit710.thread.sink.split, %reg_w1.exit692.reg_w1.exit710.thread_crit_edge, %reg_w1.exit656.reg_w1.exit710.thread_crit_edge
  %arrayidx601414 = getelementptr i8, ptr %15, i32 24
  br label %reg_w1.exit728

reg_w1.exit710.thread1520:                        ; preds = %do.end17.i691, %reg_w1.exit674.reg_w1.exit710.thread1520_crit_edge
  %arrayidx601522 = getelementptr i8, ptr %15, i32 24
  br label %reg_w1.exit728

reg_w1.exit710.thread1572:                        ; preds = %do.end17.i655, %i2c_w_seq.exit.reg_w1.exit710.thread1572_crit_edge
  %arrayidx601574 = getelementptr i8, ptr %15, i32 24
  br label %reg_w1.exit728

reg_w1.exit710:                                   ; preds = %do.end7.i707
  %351 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %.pr1412.pr.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx60 = getelementptr i8, ptr %15, i32 24
  %352 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1412.pr.pr)
  %cmp.i712 = icmp slt i32 %.pr1412.pr.pr, 0
  br i1 %cmp.i712, label %reg_w1.exit710.reg_w1.exit728_crit_edge, label %do.body.i714

reg_w1.exit710.reg_w1.exit728_crit_edge:          ; preds = %reg_w1.exit710
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit728

do.body.i714:                                     ; preds = %reg_w1.exit710
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %354 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %354)
  %cmp1.i713 = icmp sgt i32 %354, 6
  br i1 %cmp1.i713, label %do.end.i718, label %do.body.i714.do.end7.i725_crit_edge

do.body.i714.do.end7.i725_crit_edge:              ; preds = %do.body.i714
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i725

do.end.i718:                                      ; preds = %do.body.i714
  call void @__sanitizer_cov_trace_pc() #8
  %name.i715 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i716 = zext i8 %353 to i32
  %call.i717 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i715, i32 noundef 24, i32 noundef %conv4.i716) #9
  br label %do.end7.i725

do.end7.i725:                                     ; preds = %do.end.i718, %do.body.i714.do.end7.i725_crit_edge
  %355 = ptrtoint ptr %usb_buf.i647 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %usb_buf.i647, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %353, ptr %356, align 1
  %358 = ptrtoint ptr %dev.i648 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev.i648, align 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %359, align 8
  %shl.i.i721 = shl i32 %361, 8
  %or.i722 = or i32 %shl.i.i721, -2147483648
  %362 = load ptr, ptr %usb_buf.i647, align 4
  %call11.i723 = tail call i32 @usb_control_msg(ptr noundef %359, i32 noundef %or.i722, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef %362, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i723)
  %cmp12.i724 = icmp slt i32 %call11.i723, 0
  br i1 %cmp12.i724, label %do.end17.i727, label %do.end7.i725.reg_w1.exit728_crit_edge

do.end7.i725.reg_w1.exit728_crit_edge:            ; preds = %do.end7.i725
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit728

do.end17.i727:                                    ; preds = %do.end7.i725
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i726 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i723) #9
  %363 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %call11.i723, ptr %usb_err.i, align 8
  br label %reg_w1.exit728

reg_w1.exit728:                                   ; preds = %do.end17.i727, %do.end7.i725.reg_w1.exit728_crit_edge, %reg_w1.exit710.reg_w1.exit728_crit_edge, %reg_w1.exit710.thread1572, %reg_w1.exit710.thread1520, %reg_w1.exit710.thread
  %arrayidx601416 = phi ptr [ %arrayidx601414, %reg_w1.exit710.thread ], [ %arrayidx60, %reg_w1.exit710.reg_w1.exit728_crit_edge ], [ %arrayidx60, %do.end7.i725.reg_w1.exit728_crit_edge ], [ %arrayidx60, %do.end17.i727 ], [ %arrayidx601522, %reg_w1.exit710.thread1520 ], [ %arrayidx601574, %reg_w1.exit710.thread1572 ]
  %364 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %365)
  %cmp = icmp eq i8 %365, 0
  %366 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %cmp.i730 = icmp slt i32 %367, 0
  br i1 %cmp, label %if.then64, label %if.else

if.then64:                                        ; preds = %reg_w1.exit728
  br i1 %cmp.i730, label %if.then64.reg_w1.exit934.sink.split_crit_edge, label %do.body.i732

if.then64.reg_w1.exit934.sink.split_crit_edge:    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i732:                                     ; preds = %if.then64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %368 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %368)
  %cmp1.i731 = icmp sgt i32 %368, 6
  br i1 %cmp1.i731, label %do.end.i735, label %do.body.i732.do.end7.i742_crit_edge

do.body.i732.do.end7.i742_crit_edge:              ; preds = %do.body.i732
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i742

do.end.i735:                                      ; preds = %do.body.i732
  call void @__sanitizer_cov_trace_pc() #8
  %name.i733 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i734 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i733, i32 noundef 210, i32 noundef 58) #9
  br label %do.end7.i742

do.end7.i742:                                     ; preds = %do.end.i735, %do.body.i732.do.end7.i742_crit_edge
  %usb_buf.i736 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %369 = ptrtoint ptr %usb_buf.i736 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %usb_buf.i736, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 58, ptr %370, align 1
  %dev.i737 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %372 = ptrtoint ptr %dev.i737 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev.i737, align 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %373, align 8
  %shl.i.i738 = shl i32 %375, 8
  %or.i739 = or i32 %shl.i.i738, -2147483648
  %376 = load ptr, ptr %usb_buf.i736, align 4
  %call11.i740 = tail call i32 @usb_control_msg(ptr noundef %373, i32 noundef %or.i739, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 210, i16 noundef zeroext 0, ptr noundef %376, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i740)
  %cmp12.i741 = icmp slt i32 %call11.i740, 0
  br i1 %cmp12.i741, label %do.end7.i742.reg_w1.exit830.sink.split_crit_edge, label %reg_w1.exit745

do.end7.i742.reg_w1.exit830.sink.split_crit_edge: ; preds = %do.end7.i742
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830.sink.split

reg_w1.exit745:                                   ; preds = %do.end7.i742
  %377 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %.pr1417 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1417)
  %cmp.i747 = icmp slt i32 %.pr1417, 0
  br i1 %cmp.i747, label %reg_w1.exit745.reg_w1.exit830_crit_edge, label %do.body.i749

reg_w1.exit745.reg_w1.exit830_crit_edge:          ; preds = %reg_w1.exit745
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830

do.body.i749:                                     ; preds = %reg_w1.exit745
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %378 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %378)
  %cmp1.i748 = icmp sgt i32 %378, 6
  br i1 %cmp1.i748, label %do.end.i752, label %do.body.i749.do.end7.i759_crit_edge

do.body.i749.do.end7.i759_crit_edge:              ; preds = %do.body.i749
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i759

do.end.i752:                                      ; preds = %do.body.i749
  call void @__sanitizer_cov_trace_pc() #8
  %name.i750 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i751 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i750, i32 noundef 211, i32 noundef 48) #9
  br label %do.end7.i759

do.end7.i759:                                     ; preds = %do.end.i752, %do.body.i749.do.end7.i759_crit_edge
  %379 = ptrtoint ptr %usb_buf.i736 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %usb_buf.i736, align 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 48, ptr %380, align 1
  %382 = ptrtoint ptr %dev.i737 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %dev.i737, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %383, align 8
  %shl.i.i755 = shl i32 %385, 8
  %or.i756 = or i32 %shl.i.i755, -2147483648
  %386 = load ptr, ptr %usb_buf.i736, align 4
  %call11.i757 = tail call i32 @usb_control_msg(ptr noundef %383, i32 noundef %or.i756, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 211, i16 noundef zeroext 0, ptr noundef %386, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i757)
  %cmp12.i758 = icmp slt i32 %call11.i757, 0
  br i1 %cmp12.i758, label %do.end7.i759.reg_w1.exit830.sink.split_crit_edge, label %do.end7.i759.if.end65_crit_edge

do.end7.i759.if.end65_crit_edge:                  ; preds = %do.end7.i759
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.end7.i759.reg_w1.exit830.sink.split_crit_edge: ; preds = %do.end7.i759
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830.sink.split

if.else:                                          ; preds = %reg_w1.exit728
  br i1 %cmp.i730, label %if.else.reg_w1.exit934.sink.split_crit_edge, label %do.body.i766

if.else.reg_w1.exit934.sink.split_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i766:                                     ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %387 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %387)
  %cmp1.i765 = icmp sgt i32 %387, 6
  br i1 %cmp1.i765, label %do.end.i769, label %do.body.i766.do.end7.i776_crit_edge

do.body.i766.do.end7.i776_crit_edge:              ; preds = %do.body.i766
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i776

do.end.i769:                                      ; preds = %do.body.i766
  call void @__sanitizer_cov_trace_pc() #8
  %name.i767 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i768 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i767, i32 noundef 210, i32 noundef 106) #9
  br label %do.end7.i776

do.end7.i776:                                     ; preds = %do.end.i769, %do.body.i766.do.end7.i776_crit_edge
  %usb_buf.i770 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %388 = ptrtoint ptr %usb_buf.i770 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %usb_buf.i770, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 106, ptr %389, align 1
  %dev.i771 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %391 = ptrtoint ptr %dev.i771 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dev.i771, align 4
  %393 = ptrtoint ptr %392 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %392, align 8
  %shl.i.i772 = shl i32 %394, 8
  %or.i773 = or i32 %shl.i.i772, -2147483648
  %395 = load ptr, ptr %usb_buf.i770, align 4
  %call11.i774 = tail call i32 @usb_control_msg(ptr noundef %392, i32 noundef %or.i773, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 210, i16 noundef zeroext 0, ptr noundef %395, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i774)
  %cmp12.i775 = icmp slt i32 %call11.i774, 0
  br i1 %cmp12.i775, label %do.end7.i776.reg_w1.exit830.sink.split_crit_edge, label %reg_w1.exit779

do.end7.i776.reg_w1.exit830.sink.split_crit_edge: ; preds = %do.end7.i776
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830.sink.split

reg_w1.exit779:                                   ; preds = %do.end7.i776
  %396 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %.pr1420 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1420)
  %cmp.i781 = icmp slt i32 %.pr1420, 0
  br i1 %cmp.i781, label %reg_w1.exit779.reg_w1.exit830_crit_edge, label %do.body.i783

reg_w1.exit779.reg_w1.exit830_crit_edge:          ; preds = %reg_w1.exit779
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830

do.body.i783:                                     ; preds = %reg_w1.exit779
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %397 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %397)
  %cmp1.i782 = icmp sgt i32 %397, 6
  br i1 %cmp1.i782, label %do.end.i786, label %do.body.i783.do.end7.i793_crit_edge

do.body.i783.do.end7.i793_crit_edge:              ; preds = %do.body.i783
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i793

do.end.i786:                                      ; preds = %do.body.i783
  call void @__sanitizer_cov_trace_pc() #8
  %name.i784 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i785 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i784, i32 noundef 211, i32 noundef 80) #9
  br label %do.end7.i793

do.end7.i793:                                     ; preds = %do.end.i786, %do.body.i783.do.end7.i793_crit_edge
  %398 = ptrtoint ptr %usb_buf.i770 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %usb_buf.i770, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 80, ptr %399, align 1
  %401 = ptrtoint ptr %dev.i771 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev.i771, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %402, align 8
  %shl.i.i789 = shl i32 %404, 8
  %or.i790 = or i32 %shl.i.i789, -2147483648
  %405 = load ptr, ptr %usb_buf.i770, align 4
  %call11.i791 = tail call i32 @usb_control_msg(ptr noundef %402, i32 noundef %or.i790, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 211, i16 noundef zeroext 0, ptr noundef %405, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i791)
  %cmp12.i792 = icmp slt i32 %call11.i791, 0
  br i1 %cmp12.i792, label %do.end7.i793.reg_w1.exit830.sink.split_crit_edge, label %do.end7.i793.if.end65_crit_edge

do.end7.i793.if.end65_crit_edge:                  ; preds = %do.end7.i793
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

do.end7.i793.reg_w1.exit830.sink.split_crit_edge: ; preds = %do.end7.i793
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830.sink.split

if.end65:                                         ; preds = %do.end7.i793.if.end65_crit_edge, %do.end7.i759.if.end65_crit_edge
  %406 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %.pr1423.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1423.pr)
  %cmp.i798 = icmp slt i32 %.pr1423.pr, 0
  br i1 %cmp.i798, label %if.end65.reg_w1.exit830_crit_edge, label %do.body.i800

if.end65.reg_w1.exit830_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830

do.body.i800:                                     ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %407 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %407)
  %cmp1.i799 = icmp sgt i32 %407, 6
  br i1 %cmp1.i799, label %do.end.i803, label %do.body.i800.do.end7.i810_crit_edge

do.body.i800.do.end7.i810_crit_edge:              ; preds = %do.body.i800
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i810

do.end.i803:                                      ; preds = %do.body.i800
  call void @__sanitizer_cov_trace_pc() #8
  %name.i801 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i802 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i801, i32 noundef 198, i32 noundef 0) #9
  br label %do.end7.i810

do.end7.i810:                                     ; preds = %do.end.i803, %do.body.i800.do.end7.i810_crit_edge
  %usb_buf.i804 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %408 = ptrtoint ptr %usb_buf.i804 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %usb_buf.i804, align 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 0, ptr %409, align 1
  %dev.i805 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %411 = ptrtoint ptr %dev.i805 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %dev.i805, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %412, align 8
  %shl.i.i806 = shl i32 %414, 8
  %or.i807 = or i32 %shl.i.i806, -2147483648
  %415 = load ptr, ptr %usb_buf.i804, align 4
  %call11.i808 = tail call i32 @usb_control_msg(ptr noundef %412, i32 noundef %or.i807, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 198, i16 noundef zeroext 0, ptr noundef %415, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i808)
  %cmp12.i809 = icmp slt i32 %call11.i808, 0
  br i1 %cmp12.i809, label %do.end7.i810.reg_w1.exit830.sink.split_crit_edge, label %reg_w1.exit813

do.end7.i810.reg_w1.exit830.sink.split_crit_edge: ; preds = %do.end7.i810
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830.sink.split

reg_w1.exit813:                                   ; preds = %do.end7.i810
  %416 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %.pr1426.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1426.pr)
  %cmp.i815 = icmp slt i32 %.pr1426.pr, 0
  br i1 %cmp.i815, label %reg_w1.exit813.reg_w1.exit830_crit_edge, label %do.body.i817

reg_w1.exit813.reg_w1.exit830_crit_edge:          ; preds = %reg_w1.exit813
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830

do.body.i817:                                     ; preds = %reg_w1.exit813
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %417 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %417)
  %cmp1.i816 = icmp sgt i32 %417, 6
  br i1 %cmp1.i816, label %do.end.i820, label %do.body.i817.do.end7.i827_crit_edge

do.body.i817.do.end7.i827_crit_edge:              ; preds = %do.body.i817
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i827

do.end.i820:                                      ; preds = %do.body.i817
  call void @__sanitizer_cov_trace_pc() #8
  %name.i818 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i819 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i818, i32 noundef 199, i32 noundef 0) #9
  br label %do.end7.i827

do.end7.i827:                                     ; preds = %do.end.i820, %do.body.i817.do.end7.i827_crit_edge
  %418 = ptrtoint ptr %usb_buf.i804 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %usb_buf.i804, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 0, ptr %419, align 1
  %421 = ptrtoint ptr %dev.i805 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %dev.i805, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %422, align 8
  %shl.i.i823 = shl i32 %424, 8
  %or.i824 = or i32 %shl.i.i823, -2147483648
  %425 = load ptr, ptr %usb_buf.i804, align 4
  %call11.i825 = tail call i32 @usb_control_msg(ptr noundef %422, i32 noundef %or.i824, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 199, i16 noundef zeroext 0, ptr noundef %425, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i825)
  %cmp12.i826 = icmp slt i32 %call11.i825, 0
  br i1 %cmp12.i826, label %do.end7.i827.reg_w1.exit830.sink.split_crit_edge, label %do.end7.i827.reg_w1.exit830_crit_edge

do.end7.i827.reg_w1.exit830_crit_edge:            ; preds = %do.end7.i827
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830

do.end7.i827.reg_w1.exit830.sink.split_crit_edge: ; preds = %do.end7.i827
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit830.sink.split

reg_w1.exit830.sink.split:                        ; preds = %do.end7.i827.reg_w1.exit830.sink.split_crit_edge, %do.end7.i810.reg_w1.exit830.sink.split_crit_edge, %do.end7.i793.reg_w1.exit830.sink.split_crit_edge, %do.end7.i776.reg_w1.exit830.sink.split_crit_edge, %do.end7.i759.reg_w1.exit830.sink.split_crit_edge, %do.end7.i742.reg_w1.exit830.sink.split_crit_edge
  %call11.i791.sink1590 = phi i32 [ %call11.i740, %do.end7.i742.reg_w1.exit830.sink.split_crit_edge ], [ %call11.i757, %do.end7.i759.reg_w1.exit830.sink.split_crit_edge ], [ %call11.i774, %do.end7.i776.reg_w1.exit830.sink.split_crit_edge ], [ %call11.i791, %do.end7.i793.reg_w1.exit830.sink.split_crit_edge ], [ %call11.i808, %do.end7.i810.reg_w1.exit830.sink.split_crit_edge ], [ %call11.i825, %do.end7.i827.reg_w1.exit830.sink.split_crit_edge ]
  %call19.i794 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i791.sink1590) #9
  %426 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %call11.i791.sink1590, ptr %usb_err.i, align 8
  br label %reg_w1.exit830

reg_w1.exit830:                                   ; preds = %reg_w1.exit830.sink.split, %do.end7.i827.reg_w1.exit830_crit_edge, %reg_w1.exit813.reg_w1.exit830_crit_edge, %if.end65.reg_w1.exit830_crit_edge, %reg_w1.exit779.reg_w1.exit830_crit_edge, %reg_w1.exit745.reg_w1.exit830_crit_edge
  %427 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %427)
  %.pr1576 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr1576)
  %cmp68 = icmp eq i8 %.pr1576, 0
  %428 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %.pr1580 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1580)
  %cmp.i832 = icmp slt i32 %.pr1580, 0
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %reg_w1.exit830
  br i1 %cmp.i832, label %if.then70.reg_w1.exit934.sink.split_crit_edge, label %do.body.i834

if.then70.reg_w1.exit934.sink.split_crit_edge:    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i834:                                     ; preds = %if.then70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %429 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %429)
  %cmp1.i833 = icmp sgt i32 %429, 6
  br i1 %cmp1.i833, label %do.end.i837, label %do.body.i834.do.end7.i844_crit_edge

do.body.i834.do.end7.i844_crit_edge:              ; preds = %do.body.i834
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i844

do.end.i837:                                      ; preds = %do.body.i834
  call void @__sanitizer_cov_trace_pc() #8
  %name.i835 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i836 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i835, i32 noundef 200, i32 noundef 44) #9
  br label %do.end7.i844

do.end7.i844:                                     ; preds = %do.end.i837, %do.body.i834.do.end7.i844_crit_edge
  %usb_buf.i838 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %430 = ptrtoint ptr %usb_buf.i838 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %usb_buf.i838, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 44, ptr %431, align 1
  %dev.i839 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %433 = ptrtoint ptr %dev.i839 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev.i839, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %434, align 8
  %shl.i.i840 = shl i32 %436, 8
  %or.i841 = or i32 %shl.i.i840, -2147483648
  %437 = load ptr, ptr %usb_buf.i838, align 4
  %call11.i842 = tail call i32 @usb_control_msg(ptr noundef %434, i32 noundef %or.i841, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 200, i16 noundef zeroext 0, ptr noundef %437, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i842)
  %cmp12.i843 = icmp slt i32 %call11.i842, 0
  br i1 %cmp12.i843, label %do.end7.i844.reg_w1.exit934.sink.split.sink.split_crit_edge, label %reg_w1.exit847

do.end7.i844.reg_w1.exit934.sink.split.sink.split_crit_edge: ; preds = %do.end7.i844
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split.sink.split

reg_w1.exit847:                                   ; preds = %do.end7.i844
  %438 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %.pr1429 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1429)
  %cmp.i849 = icmp slt i32 %.pr1429, 0
  br i1 %cmp.i849, label %reg_w1.exit847.reg_w1.exit934.sink.split_crit_edge, label %do.body.i851

reg_w1.exit847.reg_w1.exit934.sink.split_crit_edge: ; preds = %reg_w1.exit847
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i851:                                     ; preds = %reg_w1.exit847
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %439 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %439)
  %cmp1.i850 = icmp sgt i32 %439, 6
  br i1 %cmp1.i850, label %do.end.i854, label %do.body.i851.do.end7.i861_crit_edge

do.body.i851.do.end7.i861_crit_edge:              ; preds = %do.body.i851
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i861

do.end.i854:                                      ; preds = %do.body.i851
  call void @__sanitizer_cov_trace_pc() #8
  %name.i852 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i853 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i852, i32 noundef 201, i32 noundef 36) #9
  br label %do.end7.i861

do.end7.i861:                                     ; preds = %do.end.i854, %do.body.i851.do.end7.i861_crit_edge
  %440 = ptrtoint ptr %usb_buf.i838 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %usb_buf.i838, align 4
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 36, ptr %441, align 1
  %443 = ptrtoint ptr %dev.i839 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %dev.i839, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %444, align 8
  %shl.i.i857 = shl i32 %446, 8
  %or.i858 = or i32 %shl.i.i857, -2147483648
  %447 = load ptr, ptr %usb_buf.i838, align 4
  %call11.i859 = tail call i32 @usb_control_msg(ptr noundef %444, i32 noundef %or.i858, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 201, i16 noundef zeroext 0, ptr noundef %447, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i859)
  %cmp12.i860 = icmp slt i32 %call11.i859, 0
  br i1 %cmp12.i860, label %do.end7.i861.reg_w1.exit934.sink.split.sink.split_crit_edge, label %do.end7.i861.if.end72_crit_edge

do.end7.i861.if.end72_crit_edge:                  ; preds = %do.end7.i861
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end7.i861.reg_w1.exit934.sink.split.sink.split_crit_edge: ; preds = %do.end7.i861
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split.sink.split

if.else71:                                        ; preds = %reg_w1.exit830
  br i1 %cmp.i832, label %if.else71.reg_w1.exit934.sink.split_crit_edge, label %do.body.i868

if.else71.reg_w1.exit934.sink.split_crit_edge:    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i868:                                     ; preds = %if.else71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %448 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %448)
  %cmp1.i867 = icmp sgt i32 %448, 6
  br i1 %cmp1.i867, label %do.end.i871, label %do.body.i868.do.end7.i878_crit_edge

do.body.i868.do.end7.i878_crit_edge:              ; preds = %do.body.i868
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i878

do.end.i871:                                      ; preds = %do.body.i868
  call void @__sanitizer_cov_trace_pc() #8
  %name.i869 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i870 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i869, i32 noundef 200, i32 noundef 80) #9
  br label %do.end7.i878

do.end7.i878:                                     ; preds = %do.end.i871, %do.body.i868.do.end7.i878_crit_edge
  %usb_buf.i872 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %449 = ptrtoint ptr %usb_buf.i872 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %usb_buf.i872, align 4
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 80, ptr %450, align 1
  %dev.i873 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %452 = ptrtoint ptr %dev.i873 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %dev.i873, align 4
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %453, align 8
  %shl.i.i874 = shl i32 %455, 8
  %or.i875 = or i32 %shl.i.i874, -2147483648
  %456 = load ptr, ptr %usb_buf.i872, align 4
  %call11.i876 = tail call i32 @usb_control_msg(ptr noundef %453, i32 noundef %or.i875, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 200, i16 noundef zeroext 0, ptr noundef %456, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i876)
  %cmp12.i877 = icmp slt i32 %call11.i876, 0
  br i1 %cmp12.i877, label %do.end7.i878.reg_w1.exit934.sink.split.sink.split_crit_edge, label %reg_w1.exit881

do.end7.i878.reg_w1.exit934.sink.split.sink.split_crit_edge: ; preds = %do.end7.i878
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split.sink.split

reg_w1.exit881:                                   ; preds = %do.end7.i878
  %457 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %.pr1432 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1432)
  %cmp.i883 = icmp slt i32 %.pr1432, 0
  br i1 %cmp.i883, label %reg_w1.exit881.reg_w1.exit934.sink.split_crit_edge, label %do.body.i885

reg_w1.exit881.reg_w1.exit934.sink.split_crit_edge: ; preds = %reg_w1.exit881
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i885:                                     ; preds = %reg_w1.exit881
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %458 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %458)
  %cmp1.i884 = icmp sgt i32 %458, 6
  br i1 %cmp1.i884, label %do.end.i888, label %do.body.i885.do.end7.i895_crit_edge

do.body.i885.do.end7.i895_crit_edge:              ; preds = %do.body.i885
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i895

do.end.i888:                                      ; preds = %do.body.i885
  call void @__sanitizer_cov_trace_pc() #8
  %name.i886 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i887 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i886, i32 noundef 201, i32 noundef 60) #9
  br label %do.end7.i895

do.end7.i895:                                     ; preds = %do.end.i888, %do.body.i885.do.end7.i895_crit_edge
  %459 = ptrtoint ptr %usb_buf.i872 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %usb_buf.i872, align 4
  %461 = ptrtoint ptr %460 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 60, ptr %460, align 1
  %462 = ptrtoint ptr %dev.i873 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dev.i873, align 4
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %463, align 8
  %shl.i.i891 = shl i32 %465, 8
  %or.i892 = or i32 %shl.i.i891, -2147483648
  %466 = load ptr, ptr %usb_buf.i872, align 4
  %call11.i893 = tail call i32 @usb_control_msg(ptr noundef %463, i32 noundef %or.i892, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 201, i16 noundef zeroext 0, ptr noundef %466, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i893)
  %cmp12.i894 = icmp slt i32 %call11.i893, 0
  br i1 %cmp12.i894, label %do.end7.i895.reg_w1.exit934.sink.split.sink.split_crit_edge, label %do.end7.i895.if.end72_crit_edge

do.end7.i895.if.end72_crit_edge:                  ; preds = %do.end7.i895
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end7.i895.reg_w1.exit934.sink.split.sink.split_crit_edge: ; preds = %do.end7.i895
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split.sink.split

if.end72:                                         ; preds = %do.end7.i895.if.end72_crit_edge, %do.end7.i861.if.end72_crit_edge
  %467 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %.pr1435.pr = load i32, ptr %usb_err.i, align 8
  %468 = ptrtoint ptr %arrayidx601416 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %arrayidx601416, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1435.pr)
  %cmp.i900 = icmp slt i32 %.pr1435.pr, 0
  br i1 %cmp.i900, label %if.end72.reg_w1.exit934.sink.split_crit_edge, label %do.body.i902

if.end72.reg_w1.exit934.sink.split_crit_edge:     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split

do.body.i902:                                     ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %470 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %470)
  %cmp1.i901 = icmp sgt i32 %470, 6
  br i1 %cmp1.i901, label %do.end.i906, label %do.body.i902.do.end7.i913_crit_edge

do.body.i902.do.end7.i913_crit_edge:              ; preds = %do.body.i902
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i913

do.end.i906:                                      ; preds = %do.body.i902
  call void @__sanitizer_cov_trace_pc() #8
  %name.i903 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i904 = zext i8 %469 to i32
  %call.i905 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i903, i32 noundef 24, i32 noundef %conv4.i904) #9
  br label %do.end7.i913

do.end7.i913:                                     ; preds = %do.end.i906, %do.body.i902.do.end7.i913_crit_edge
  %usb_buf.i907 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %471 = ptrtoint ptr %usb_buf.i907 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %usb_buf.i907, align 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %469, ptr %472, align 1
  %dev.i908 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %474 = ptrtoint ptr %dev.i908 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dev.i908, align 4
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %475, align 8
  %shl.i.i909 = shl i32 %477, 8
  %or.i910 = or i32 %shl.i.i909, -2147483648
  %478 = load ptr, ptr %usb_buf.i907, align 4
  %call11.i911 = tail call i32 @usb_control_msg(ptr noundef %475, i32 noundef %or.i910, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef %478, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i911)
  %cmp12.i912 = icmp slt i32 %call11.i911, 0
  br i1 %cmp12.i912, label %do.end7.i913.reg_w1.exit934.sink.split.sink.split_crit_edge, label %reg_w1.exit916

do.end7.i913.reg_w1.exit934.sink.split.sink.split_crit_edge: ; preds = %do.end7.i913
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934.sink.split.sink.split

reg_w1.exit916:                                   ; preds = %do.end7.i913
  %479 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %.pr1438.pr = load i32, ptr %usb_err.i, align 8
  %480 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %481)
  %cond = icmp eq i8 %481, 7
  %482 = or i8 %reg17.0, -96
  %spec.select342 = select i1 %cond, i8 %225, i8 %482
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1438.pr)
  %cmp.i918 = icmp slt i32 %.pr1438.pr, 0
  br i1 %cmp.i918, label %reg_w1.exit916.reg_w1.exit934_crit_edge, label %do.body.i920

reg_w1.exit916.reg_w1.exit934_crit_edge:          ; preds = %reg_w1.exit916
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934

do.body.i920:                                     ; preds = %reg_w1.exit916
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %483 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %483)
  %cmp1.i919 = icmp sgt i32 %483, 6
  br i1 %cmp1.i919, label %do.end.i924, label %do.body.i920.do.end7.i931_crit_edge

do.body.i920.do.end7.i931_crit_edge:              ; preds = %do.body.i920
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i931

do.end.i924:                                      ; preds = %do.body.i920
  call void @__sanitizer_cov_trace_pc() #8
  %name.i921 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i922 = zext i8 %spec.select342 to i32
  %call.i923 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i921, i32 noundef 23, i32 noundef %conv4.i922) #9
  br label %do.end7.i931

do.end7.i931:                                     ; preds = %do.end.i924, %do.body.i920.do.end7.i931_crit_edge
  %484 = ptrtoint ptr %usb_buf.i907 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %usb_buf.i907, align 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 %spec.select342, ptr %485, align 1
  %487 = ptrtoint ptr %dev.i908 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %dev.i908, align 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %488, align 8
  %shl.i.i927 = shl i32 %490, 8
  %or.i928 = or i32 %shl.i.i927, -2147483648
  %491 = load ptr, ptr %usb_buf.i907, align 4
  %call11.i929 = tail call i32 @usb_control_msg(ptr noundef %488, i32 noundef %or.i928, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %491, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i929)
  %cmp12.i930 = icmp slt i32 %call11.i929, 0
  br i1 %cmp12.i930, label %do.end7.i931.reg_w1.exit1003.sink.split_crit_edge, label %do.end7.i931.reg_w1.exit934_crit_edge

do.end7.i931.reg_w1.exit934_crit_edge:            ; preds = %do.end7.i931
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit934

do.end7.i931.reg_w1.exit1003.sink.split_crit_edge: ; preds = %do.end7.i931
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003.sink.split

reg_w1.exit934.sink.split.sink.split:             ; preds = %do.end7.i913.reg_w1.exit934.sink.split.sink.split_crit_edge, %do.end7.i895.reg_w1.exit934.sink.split.sink.split_crit_edge, %do.end7.i878.reg_w1.exit934.sink.split.sink.split_crit_edge, %do.end7.i861.reg_w1.exit934.sink.split.sink.split_crit_edge, %do.end7.i844.reg_w1.exit934.sink.split.sink.split_crit_edge
  %call11.i859.sink1592.sink1598 = phi i32 [ %call11.i842, %do.end7.i844.reg_w1.exit934.sink.split.sink.split_crit_edge ], [ %call11.i876, %do.end7.i878.reg_w1.exit934.sink.split.sink.split_crit_edge ], [ %call11.i911, %do.end7.i913.reg_w1.exit934.sink.split.sink.split_crit_edge ], [ %call11.i859, %do.end7.i861.reg_w1.exit934.sink.split.sink.split_crit_edge ], [ %call11.i893, %do.end7.i895.reg_w1.exit934.sink.split.sink.split_crit_edge ]
  %call19.i862 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i859.sink1592.sink1598) #9
  %492 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %call11.i859.sink1592.sink1598, ptr %usb_err.i, align 8
  br label %reg_w1.exit934.sink.split

reg_w1.exit934.sink.split:                        ; preds = %reg_w1.exit934.sink.split.sink.split, %if.end72.reg_w1.exit934.sink.split_crit_edge, %reg_w1.exit881.reg_w1.exit934.sink.split_crit_edge, %if.else71.reg_w1.exit934.sink.split_crit_edge, %reg_w1.exit847.reg_w1.exit934.sink.split_crit_edge, %if.then70.reg_w1.exit934.sink.split_crit_edge, %if.else.reg_w1.exit934.sink.split_crit_edge, %if.then64.reg_w1.exit934.sink.split_crit_edge
  %493 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %494)
  %cond1543 = icmp eq i8 %494, 7
  %495 = or i8 %reg17.0, -96
  %spec.select3421544 = select i1 %cond1543, i8 %225, i8 %495
  br label %reg_w1.exit934

reg_w1.exit934:                                   ; preds = %reg_w1.exit934.sink.split, %do.end7.i931.reg_w1.exit934_crit_edge, %reg_w1.exit916.reg_w1.exit934_crit_edge
  %spec.select3421443.ph = phi i8 [ %spec.select342, %do.end7.i931.reg_w1.exit934_crit_edge ], [ %spec.select342, %reg_w1.exit916.reg_w1.exit934_crit_edge ], [ %spec.select3421544, %reg_w1.exit934.sink.split ]
  %496 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %.pr1444 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1444)
  %cmp.i936 = icmp slt i32 %.pr1444, 0
  br i1 %cmp.i936, label %reg_w1.exit934.reg_w1.exit1003_crit_edge, label %do.body.i938

reg_w1.exit934.reg_w1.exit1003_crit_edge:         ; preds = %reg_w1.exit934
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003

do.body.i938:                                     ; preds = %reg_w1.exit934
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %497 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %497)
  %cmp1.i937 = icmp sgt i32 %497, 6
  br i1 %cmp1.i937, label %do.end.i941, label %do.body.i938.do.end7.i948_crit_edge

do.body.i938.do.end7.i948_crit_edge:              ; preds = %do.body.i938
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i948

do.end.i941:                                      ; preds = %do.body.i938
  call void @__sanitizer_cov_trace_pc() #8
  %name.i939 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i940 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i939, i32 noundef 5, i32 noundef 0) #9
  br label %do.end7.i948

do.end7.i948:                                     ; preds = %do.end.i941, %do.body.i938.do.end7.i948_crit_edge
  %usb_buf.i942 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %498 = ptrtoint ptr %usb_buf.i942 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %usb_buf.i942, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 0, ptr %499, align 1
  %dev.i943 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %501 = ptrtoint ptr %dev.i943 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %dev.i943, align 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %502, align 8
  %shl.i.i944 = shl i32 %504, 8
  %or.i945 = or i32 %shl.i.i944, -2147483648
  %505 = load ptr, ptr %usb_buf.i942, align 4
  %call11.i946 = tail call i32 @usb_control_msg(ptr noundef %502, i32 noundef %or.i945, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef %505, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i946)
  %cmp12.i947 = icmp slt i32 %call11.i946, 0
  br i1 %cmp12.i947, label %do.end7.i948.reg_w1.exit1003.sink.split_crit_edge, label %reg_w1.exit951

do.end7.i948.reg_w1.exit1003.sink.split_crit_edge: ; preds = %do.end7.i948
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003.sink.split

reg_w1.exit951:                                   ; preds = %do.end7.i948
  %506 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %.pr1448 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1448)
  %cmp.i953 = icmp slt i32 %.pr1448, 0
  br i1 %cmp.i953, label %reg_w1.exit951.reg_w1.exit1003_crit_edge, label %do.body.i955

reg_w1.exit951.reg_w1.exit1003_crit_edge:         ; preds = %reg_w1.exit951
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003

do.body.i955:                                     ; preds = %reg_w1.exit951
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %507 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %507)
  %cmp1.i954 = icmp sgt i32 %507, 6
  br i1 %cmp1.i954, label %do.end.i958, label %do.body.i955.do.end7.i965_crit_edge

do.body.i955.do.end7.i965_crit_edge:              ; preds = %do.body.i955
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i965

do.end.i958:                                      ; preds = %do.body.i955
  call void @__sanitizer_cov_trace_pc() #8
  %name.i956 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i957 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i956, i32 noundef 7, i32 noundef 0) #9
  br label %do.end7.i965

do.end7.i965:                                     ; preds = %do.end.i958, %do.body.i955.do.end7.i965_crit_edge
  %508 = ptrtoint ptr %usb_buf.i942 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %usb_buf.i942, align 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 0, ptr %509, align 1
  %511 = ptrtoint ptr %dev.i943 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %dev.i943, align 4
  %513 = ptrtoint ptr %512 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %512, align 8
  %shl.i.i961 = shl i32 %514, 8
  %or.i962 = or i32 %shl.i.i961, -2147483648
  %515 = load ptr, ptr %usb_buf.i942, align 4
  %call11.i963 = tail call i32 @usb_control_msg(ptr noundef %512, i32 noundef %or.i962, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 7, i16 noundef zeroext 0, ptr noundef %515, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i963)
  %cmp12.i964 = icmp slt i32 %call11.i963, 0
  br i1 %cmp12.i964, label %do.end7.i965.reg_w1.exit1003.sink.split_crit_edge, label %reg_w1.exit968

do.end7.i965.reg_w1.exit1003.sink.split_crit_edge: ; preds = %do.end7.i965
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003.sink.split

reg_w1.exit968:                                   ; preds = %do.end7.i965
  %516 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %.pr1453.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1453.pr)
  %cmp.i970 = icmp slt i32 %.pr1453.pr, 0
  br i1 %cmp.i970, label %reg_w1.exit968.reg_w1.exit1003_crit_edge, label %do.body.i972

reg_w1.exit968.reg_w1.exit1003_crit_edge:         ; preds = %reg_w1.exit968
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003

do.body.i972:                                     ; preds = %reg_w1.exit968
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %517 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %517)
  %cmp1.i971 = icmp sgt i32 %517, 6
  br i1 %cmp1.i971, label %do.end.i975, label %do.body.i972.do.end7.i982_crit_edge

do.body.i972.do.end7.i982_crit_edge:              ; preds = %do.body.i972
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i982

do.end.i975:                                      ; preds = %do.body.i972
  call void @__sanitizer_cov_trace_pc() #8
  %name.i973 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i974 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i973, i32 noundef 6, i32 noundef 0) #9
  br label %do.end7.i982

do.end7.i982:                                     ; preds = %do.end.i975, %do.body.i972.do.end7.i982_crit_edge
  %518 = ptrtoint ptr %usb_buf.i942 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %usb_buf.i942, align 4
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 0, ptr %519, align 1
  %521 = ptrtoint ptr %dev.i943 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %dev.i943, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %522, align 8
  %shl.i.i978 = shl i32 %524, 8
  %or.i979 = or i32 %shl.i.i978, -2147483648
  %525 = load ptr, ptr %usb_buf.i942, align 4
  %call11.i980 = tail call i32 @usb_control_msg(ptr noundef %522, i32 noundef %or.i979, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef %525, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i980)
  %cmp12.i981 = icmp slt i32 %call11.i980, 0
  br i1 %cmp12.i981, label %do.end7.i982.reg_w1.exit1003.sink.split_crit_edge, label %reg_w1.exit985

do.end7.i982.reg_w1.exit1003.sink.split_crit_edge: ; preds = %do.end7.i982
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003.sink.split

reg_w1.exit985:                                   ; preds = %do.end7.i982
  %526 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %.pr1458.pr = load i32, ptr %usb_err.i, align 8
  %arrayidx81 = getelementptr i8, ptr %15, i32 20
  %527 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx81, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1458.pr)
  %cmp.i987 = icmp slt i32 %.pr1458.pr, 0
  br i1 %cmp.i987, label %reg_w1.exit985.reg_w1.exit1003_crit_edge, label %do.body.i989

reg_w1.exit985.reg_w1.exit1003_crit_edge:         ; preds = %reg_w1.exit985
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003

do.body.i989:                                     ; preds = %reg_w1.exit985
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %529 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %529)
  %cmp1.i988 = icmp sgt i32 %529, 6
  br i1 %cmp1.i988, label %do.end.i993, label %do.body.i989.do.end7.i1000_crit_edge

do.body.i989.do.end7.i1000_crit_edge:             ; preds = %do.body.i989
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1000

do.end.i993:                                      ; preds = %do.body.i989
  call void @__sanitizer_cov_trace_pc() #8
  %name.i990 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i991 = zext i8 %528 to i32
  %call.i992 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i990, i32 noundef 20, i32 noundef %conv4.i991) #9
  br label %do.end7.i1000

do.end7.i1000:                                    ; preds = %do.end.i993, %do.body.i989.do.end7.i1000_crit_edge
  %530 = ptrtoint ptr %usb_buf.i942 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %usb_buf.i942, align 4
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %528, ptr %531, align 1
  %533 = ptrtoint ptr %dev.i943 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %dev.i943, align 4
  %535 = ptrtoint ptr %534 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %534, align 8
  %shl.i.i996 = shl i32 %536, 8
  %or.i997 = or i32 %shl.i.i996, -2147483648
  %537 = load ptr, ptr %usb_buf.i942, align 4
  %call11.i998 = tail call i32 @usb_control_msg(ptr noundef %534, i32 noundef %or.i997, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef %537, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i998)
  %cmp12.i999 = icmp slt i32 %call11.i998, 0
  br i1 %cmp12.i999, label %do.end7.i1000.reg_w1.exit1003.sink.split_crit_edge, label %do.end7.i1000.reg_w1.exit1003_crit_edge

do.end7.i1000.reg_w1.exit1003_crit_edge:          ; preds = %do.end7.i1000
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003

do.end7.i1000.reg_w1.exit1003.sink.split_crit_edge: ; preds = %do.end7.i1000
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1003.sink.split

reg_w1.exit1003.sink.split:                       ; preds = %do.end7.i1000.reg_w1.exit1003.sink.split_crit_edge, %do.end7.i982.reg_w1.exit1003.sink.split_crit_edge, %do.end7.i965.reg_w1.exit1003.sink.split_crit_edge, %do.end7.i948.reg_w1.exit1003.sink.split_crit_edge, %do.end7.i931.reg_w1.exit1003.sink.split_crit_edge
  %call11.i963.sink1593 = phi i32 [ %call11.i929, %do.end7.i931.reg_w1.exit1003.sink.split_crit_edge ], [ %call11.i946, %do.end7.i948.reg_w1.exit1003.sink.split_crit_edge ], [ %call11.i963, %do.end7.i965.reg_w1.exit1003.sink.split_crit_edge ], [ %call11.i980, %do.end7.i982.reg_w1.exit1003.sink.split_crit_edge ], [ %call11.i998, %do.end7.i1000.reg_w1.exit1003.sink.split_crit_edge ]
  %spec.select34214431447145214571463.ph = phi i8 [ %spec.select342, %do.end7.i931.reg_w1.exit1003.sink.split_crit_edge ], [ %spec.select3421443.ph, %do.end7.i948.reg_w1.exit1003.sink.split_crit_edge ], [ %spec.select3421443.ph, %do.end7.i965.reg_w1.exit1003.sink.split_crit_edge ], [ %spec.select3421443.ph, %do.end7.i982.reg_w1.exit1003.sink.split_crit_edge ], [ %spec.select3421443.ph, %do.end7.i1000.reg_w1.exit1003.sink.split_crit_edge ]
  %call19.i966 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i963.sink1593) #9
  %538 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %call11.i963.sink1593, ptr %usb_err.i, align 8
  br label %reg_w1.exit1003

reg_w1.exit1003:                                  ; preds = %reg_w1.exit1003.sink.split, %do.end7.i1000.reg_w1.exit1003_crit_edge, %reg_w1.exit985.reg_w1.exit1003_crit_edge, %reg_w1.exit968.reg_w1.exit1003_crit_edge, %reg_w1.exit951.reg_w1.exit1003_crit_edge, %reg_w1.exit934.reg_w1.exit1003_crit_edge
  %spec.select34214431447145214571463 = phi i8 [ %spec.select3421443.ph, %reg_w1.exit985.reg_w1.exit1003_crit_edge ], [ %spec.select3421443.ph, %do.end7.i1000.reg_w1.exit1003_crit_edge ], [ %spec.select3421443.ph, %reg_w1.exit968.reg_w1.exit1003_crit_edge ], [ %spec.select3421443.ph, %reg_w1.exit934.reg_w1.exit1003_crit_edge ], [ %spec.select3421443.ph, %reg_w1.exit951.reg_w1.exit1003_crit_edge ], [ %spec.select34214431447145214571463.ph, %reg_w1.exit1003.sink.split ]
  tail call fastcc void @setgamma(ptr noundef %gspca_dev)
  %name.i1008 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf.i1011 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i1012 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %reg_w.exit1020.for.body_crit_edge, %reg_w1.exit1003
  %i.01585 = phi i32 [ 0, %reg_w1.exit1003 ], [ %inc, %reg_w.exit1020.for.body_crit_edge ]
  %539 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %540)
  %cmp.i1005 = icmp slt i32 %540, 0
  br i1 %cmp.i1005, label %for.body.reg_w.exit1020_crit_edge, label %do.body.i1007

for.body.reg_w.exit1020_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit1020

do.body.i1007:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %541 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %541)
  %cmp1.i1006 = icmp sgt i32 %541, 6
  br i1 %cmp1.i1006, label %do.end.i1010, label %do.body.i1007.if.end21.i1017_crit_edge

do.body.i1007.if.end21.i1017_crit_edge:           ; preds = %do.body.i1007
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1017

do.end.i1010:                                     ; preds = %do.body.i1007
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1009 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 132, i32 noundef 20, i32 noundef 0) #9
  br label %if.end21.i1017

if.end21.i1017:                                   ; preds = %do.end.i1010, %do.body.i1007.if.end21.i1017_crit_edge
  %542 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %usb_buf.i1011, align 4
  %544 = call ptr @memcpy(ptr %543, ptr @reg84, i32 21)
  %545 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dev.i1012, align 4
  %547 = ptrtoint ptr %546 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %546, align 8
  %shl.i.i1013 = shl i32 %548, 8
  %or.i1014 = or i32 %shl.i.i1013, -2147483648
  %549 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1015 = tail call i32 @usb_control_msg(ptr noundef %546, i32 noundef %or.i1014, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 132, i16 noundef zeroext 0, ptr noundef %549, i16 noundef zeroext 21, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1015)
  %cmp27.i1016 = icmp slt i32 %call26.i1015, 0
  br i1 %cmp27.i1016, label %do.end32.i1019, label %if.end21.i1017.reg_w.exit1020_crit_edge

if.end21.i1017.reg_w.exit1020_crit_edge:          ; preds = %if.end21.i1017
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit1020

do.end32.i1019:                                   ; preds = %if.end21.i1017
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i1018 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i1015) #9
  %550 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %call26.i1015, ptr %usb_err.i, align 8
  br label %reg_w.exit1020

reg_w.exit1020:                                   ; preds = %do.end32.i1019, %if.end21.i1017.reg_w.exit1020_crit_edge, %for.body.reg_w.exit1020_crit_edge
  %inc = add nuw nsw i32 %i.01585, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %reg_w.exit1020.for.body_crit_edge

reg_w.exit1020.for.body_crit_edge:                ; preds = %reg_w.exit1020
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %reg_w.exit1020
  %551 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %sensor, align 1
  %553 = zext i8 %552 to i64
  call void @__sanitizer_cov_trace_switch(i64 %553, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %552, label %sw.default90 [
    i8 0, label %for.end.sw.bb86_crit_edge
    i8 10, label %for.end.sw.bb86_crit_edge1599
    i8 14, label %for.end.sw.bb86_crit_edge1600
    i8 1, label %for.end.sw.bb87_crit_edge
    i8 6, label %for.end.sw.bb87_crit_edge1601
    i8 4, label %for.end.sw.bb87_crit_edge1602
    i8 8, label %for.end.sw.bb88_crit_edge
    i8 9, label %for.end.sw.bb88_crit_edge1603
    i8 12, label %for.end.sw.bb89_crit_edge
    i8 13, label %for.end.sw.bb89_crit_edge1604
  ]

for.end.sw.bb89_crit_edge1604:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89

for.end.sw.bb89_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb89

for.end.sw.bb88_crit_edge1603:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

for.end.sw.bb88_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88

for.end.sw.bb87_crit_edge1602:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87

for.end.sw.bb87_crit_edge1601:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87

for.end.sw.bb87_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb87

for.end.sw.bb86_crit_edge1600:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

for.end.sw.bb86_crit_edge1599:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

for.end.sw.bb86_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

sw.bb86:                                          ; preds = %for.end.sw.bb86_crit_edge, %for.end.sw.bb86_crit_edge1599, %for.end.sw.bb86_crit_edge1600
  %554 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %555)
  %cmp.i1022 = icmp slt i32 %555, 0
  br i1 %cmp.i1022, label %sw.bb86.sw.epilog91_crit_edge, label %do.body.i1024

sw.bb86.sw.epilog91_crit_edge:                    ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.body.i1024:                                    ; preds = %sw.bb86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %556 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %556)
  %cmp1.i1023 = icmp sgt i32 %556, 6
  br i1 %cmp1.i1023, label %do.end.i1027, label %do.body.i1024.do.end7.i1034_crit_edge

do.body.i1024.do.end7.i1034_crit_edge:            ; preds = %do.body.i1024
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1034

do.end.i1027:                                     ; preds = %do.body.i1024
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1026 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 154, i32 noundef 5) #9
  br label %do.end7.i1034

do.end7.i1034:                                    ; preds = %do.end.i1027, %do.body.i1024.do.end7.i1034_crit_edge
  %557 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %usb_buf.i1011, align 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 5, ptr %558, align 1
  %560 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %dev.i1012, align 4
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %561, align 8
  %shl.i.i1030 = shl i32 %563, 8
  %or.i1031 = or i32 %shl.i.i1030, -2147483648
  %564 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1032 = tail call i32 @usb_control_msg(ptr noundef %561, i32 noundef %or.i1031, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 154, i16 noundef zeroext 0, ptr noundef %564, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1032)
  %cmp12.i1033 = icmp slt i32 %call11.i1032, 0
  br i1 %cmp12.i1033, label %do.end7.i1034.sw.epilog91.sink.split_crit_edge, label %do.end7.i1034.sw.epilog91_crit_edge

do.end7.i1034.sw.epilog91_crit_edge:              ; preds = %do.end7.i1034
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.end7.i1034.sw.epilog91.sink.split_crit_edge:   ; preds = %do.end7.i1034
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91.sink.split

sw.bb87:                                          ; preds = %for.end.sw.bb87_crit_edge, %for.end.sw.bb87_crit_edge1601, %for.end.sw.bb87_crit_edge1602
  %565 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %566)
  %cmp.i1039 = icmp slt i32 %566, 0
  br i1 %cmp.i1039, label %sw.bb87.sw.epilog91_crit_edge, label %do.body.i1041

sw.bb87.sw.epilog91_crit_edge:                    ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.body.i1041:                                    ; preds = %sw.bb87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %567 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %567)
  %cmp1.i1040 = icmp sgt i32 %567, 6
  br i1 %cmp1.i1040, label %do.end.i1044, label %do.body.i1041.do.end7.i1051_crit_edge

do.body.i1041.do.end7.i1051_crit_edge:            ; preds = %do.body.i1041
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1051

do.end.i1044:                                     ; preds = %do.body.i1041
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1043 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 154, i32 noundef 7) #9
  br label %do.end7.i1051

do.end7.i1051:                                    ; preds = %do.end.i1044, %do.body.i1041.do.end7.i1051_crit_edge
  %568 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %usb_buf.i1011, align 4
  %570 = ptrtoint ptr %569 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 7, ptr %569, align 1
  %571 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %dev.i1012, align 4
  %573 = ptrtoint ptr %572 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %572, align 8
  %shl.i.i1047 = shl i32 %574, 8
  %or.i1048 = or i32 %shl.i.i1047, -2147483648
  %575 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1049 = tail call i32 @usb_control_msg(ptr noundef %572, i32 noundef %or.i1048, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 154, i16 noundef zeroext 0, ptr noundef %575, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1049)
  %cmp12.i1050 = icmp slt i32 %call11.i1049, 0
  br i1 %cmp12.i1050, label %do.end7.i1051.sw.epilog91.sink.split_crit_edge, label %do.end7.i1051.sw.epilog91_crit_edge

do.end7.i1051.sw.epilog91_crit_edge:              ; preds = %do.end7.i1051
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.end7.i1051.sw.epilog91.sink.split_crit_edge:   ; preds = %do.end7.i1051
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91.sink.split

sw.bb88:                                          ; preds = %for.end.sw.bb88_crit_edge, %for.end.sw.bb88_crit_edge1603
  %576 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %577)
  %cmp.i1056 = icmp slt i32 %577, 0
  br i1 %cmp.i1056, label %sw.bb88.sw.epilog91_crit_edge, label %do.body.i1058

sw.bb88.sw.epilog91_crit_edge:                    ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.body.i1058:                                    ; preds = %sw.bb88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %578 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %578)
  %cmp1.i1057 = icmp sgt i32 %578, 6
  br i1 %cmp1.i1057, label %do.end.i1061, label %do.body.i1058.do.end7.i1068_crit_edge

do.body.i1058.do.end7.i1068_crit_edge:            ; preds = %do.body.i1058
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1068

do.end.i1061:                                     ; preds = %do.body.i1058
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1060 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 154, i32 noundef 10) #9
  br label %do.end7.i1068

do.end7.i1068:                                    ; preds = %do.end.i1061, %do.body.i1058.do.end7.i1068_crit_edge
  %579 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %usb_buf.i1011, align 4
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 10, ptr %580, align 1
  %582 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %dev.i1012, align 4
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %583, align 8
  %shl.i.i1064 = shl i32 %585, 8
  %or.i1065 = or i32 %shl.i.i1064, -2147483648
  %586 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1066 = tail call i32 @usb_control_msg(ptr noundef %583, i32 noundef %or.i1065, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 154, i16 noundef zeroext 0, ptr noundef %586, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1066)
  %cmp12.i1067 = icmp slt i32 %call11.i1066, 0
  br i1 %cmp12.i1067, label %do.end7.i1068.sw.epilog91.sink.split_crit_edge, label %do.end7.i1068.sw.epilog91_crit_edge

do.end7.i1068.sw.epilog91_crit_edge:              ; preds = %do.end7.i1068
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.end7.i1068.sw.epilog91.sink.split_crit_edge:   ; preds = %do.end7.i1068
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91.sink.split

sw.bb89:                                          ; preds = %for.end.sw.bb89_crit_edge, %for.end.sw.bb89_crit_edge1604
  %587 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %cmp.i1073 = icmp slt i32 %588, 0
  br i1 %cmp.i1073, label %sw.bb89.sw.epilog91_crit_edge, label %do.body.i1075

sw.bb89.sw.epilog91_crit_edge:                    ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.body.i1075:                                    ; preds = %sw.bb89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %589 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %589)
  %cmp1.i1074 = icmp sgt i32 %589, 6
  br i1 %cmp1.i1074, label %do.end.i1078, label %do.body.i1075.do.end7.i1085_crit_edge

do.body.i1075.do.end7.i1085_crit_edge:            ; preds = %do.body.i1075
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1085

do.end.i1078:                                     ; preds = %do.body.i1075
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1077 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 154, i32 noundef 6) #9
  br label %do.end7.i1085

do.end7.i1085:                                    ; preds = %do.end.i1078, %do.body.i1075.do.end7.i1085_crit_edge
  %590 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %usb_buf.i1011, align 4
  %592 = ptrtoint ptr %591 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 6, ptr %591, align 1
  %593 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %dev.i1012, align 4
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %594, align 8
  %shl.i.i1081 = shl i32 %596, 8
  %or.i1082 = or i32 %shl.i.i1081, -2147483648
  %597 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1083 = tail call i32 @usb_control_msg(ptr noundef %594, i32 noundef %or.i1082, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 154, i16 noundef zeroext 0, ptr noundef %597, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1083)
  %cmp12.i1084 = icmp slt i32 %call11.i1083, 0
  br i1 %cmp12.i1084, label %do.end7.i1085.sw.epilog91.sink.split_crit_edge, label %do.end7.i1085.sw.epilog91_crit_edge

do.end7.i1085.sw.epilog91_crit_edge:              ; preds = %do.end7.i1085
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.end7.i1085.sw.epilog91.sink.split_crit_edge:   ; preds = %do.end7.i1085
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91.sink.split

sw.default90:                                     ; preds = %for.end
  %598 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %599)
  %cmp.i1090 = icmp slt i32 %599, 0
  br i1 %cmp.i1090, label %sw.default90.sw.epilog91_crit_edge, label %do.body.i1092

sw.default90.sw.epilog91_crit_edge:               ; preds = %sw.default90
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.body.i1092:                                    ; preds = %sw.default90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %600 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %600)
  %cmp1.i1091 = icmp sgt i32 %600, 6
  br i1 %cmp1.i1091, label %do.end.i1095, label %do.body.i1092.do.end7.i1102_crit_edge

do.body.i1092.do.end7.i1102_crit_edge:            ; preds = %do.body.i1092
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1102

do.end.i1095:                                     ; preds = %do.body.i1092
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1094 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 154, i32 noundef 8) #9
  br label %do.end7.i1102

do.end7.i1102:                                    ; preds = %do.end.i1095, %do.body.i1092.do.end7.i1102_crit_edge
  %601 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %usb_buf.i1011, align 4
  %603 = ptrtoint ptr %602 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 8, ptr %602, align 1
  %604 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %dev.i1012, align 4
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %605, align 8
  %shl.i.i1098 = shl i32 %607, 8
  %or.i1099 = or i32 %shl.i.i1098, -2147483648
  %608 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1100 = tail call i32 @usb_control_msg(ptr noundef %605, i32 noundef %or.i1099, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 154, i16 noundef zeroext 0, ptr noundef %608, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1100)
  %cmp12.i1101 = icmp slt i32 %call11.i1100, 0
  br i1 %cmp12.i1101, label %do.end7.i1102.sw.epilog91.sink.split_crit_edge, label %do.end7.i1102.sw.epilog91_crit_edge

do.end7.i1102.sw.epilog91_crit_edge:              ; preds = %do.end7.i1102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91

do.end7.i1102.sw.epilog91.sink.split_crit_edge:   ; preds = %do.end7.i1102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog91.sink.split

sw.epilog91.sink.split:                           ; preds = %do.end7.i1102.sw.epilog91.sink.split_crit_edge, %do.end7.i1085.sw.epilog91.sink.split_crit_edge, %do.end7.i1068.sw.epilog91.sink.split_crit_edge, %do.end7.i1051.sw.epilog91.sink.split_crit_edge, %do.end7.i1034.sw.epilog91.sink.split_crit_edge
  %call11.i1100.sink1594 = phi i32 [ %call11.i1032, %do.end7.i1034.sw.epilog91.sink.split_crit_edge ], [ %call11.i1049, %do.end7.i1051.sw.epilog91.sink.split_crit_edge ], [ %call11.i1066, %do.end7.i1068.sw.epilog91.sink.split_crit_edge ], [ %call11.i1083, %do.end7.i1085.sw.epilog91.sink.split_crit_edge ], [ %call11.i1100, %do.end7.i1102.sw.epilog91.sink.split_crit_edge ]
  %call19.i1103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i1100.sink1594) #9
  %609 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %call11.i1100.sink1594, ptr %usb_err.i, align 8
  br label %sw.epilog91

sw.epilog91:                                      ; preds = %sw.epilog91.sink.split, %do.end7.i1102.sw.epilog91_crit_edge, %sw.default90.sw.epilog91_crit_edge, %do.end7.i1085.sw.epilog91_crit_edge, %sw.bb89.sw.epilog91_crit_edge, %do.end7.i1068.sw.epilog91_crit_edge, %sw.bb88.sw.epilog91_crit_edge, %do.end7.i1051.sw.epilog91_crit_edge, %sw.bb87.sw.epilog91_crit_edge, %do.end7.i1034.sw.epilog91_crit_edge, %sw.bb86.sw.epilog91_crit_edge
  tail call fastcc void @setsharpness(ptr noundef %gspca_dev)
  %610 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %611)
  %cmp.i1107 = icmp slt i32 %611, 0
  br i1 %cmp.i1107, label %sw.epilog91.reg_w1.exit1173_crit_edge, label %do.body.i1109

sw.epilog91.reg_w1.exit1173_crit_edge:            ; preds = %sw.epilog91
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1173

do.body.i1109:                                    ; preds = %sw.epilog91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %612 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %612)
  %cmp1.i1108 = icmp sgt i32 %612, 6
  br i1 %cmp1.i1108, label %do.end.i1112, label %do.body.i1109.if.end21.i1119_crit_edge

do.body.i1109.if.end21.i1119_crit_edge:           ; preds = %do.body.i1109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1119

do.end.i1112:                                     ; preds = %do.body.i1109
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 132, i32 noundef 20, i32 noundef 0) #9
  br label %if.end21.i1119

if.end21.i1119:                                   ; preds = %do.end.i1112, %do.body.i1109.if.end21.i1119_crit_edge
  %613 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %usb_buf.i1011, align 4
  %615 = call ptr @memcpy(ptr %614, ptr @reg84, i32 21)
  %616 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %dev.i1012, align 4
  %618 = ptrtoint ptr %617 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %617, align 8
  %shl.i.i1115 = shl i32 %619, 8
  %or.i1116 = or i32 %shl.i.i1115, -2147483648
  %620 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1117 = tail call i32 @usb_control_msg(ptr noundef %617, i32 noundef %or.i1116, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 132, i16 noundef zeroext 0, ptr noundef %620, i16 noundef zeroext 21, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1117)
  %cmp27.i1118 = icmp slt i32 %call26.i1117, 0
  br i1 %cmp27.i1118, label %do.end32.i1121, label %reg_w.exit1122

do.end32.i1121:                                   ; preds = %if.end21.i1119
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i1120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i1117) #9
  br label %reg_w1.exit1173.sink.split

reg_w.exit1122:                                   ; preds = %if.end21.i1119
  %621 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %.pr1464 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1464)
  %cmp.i1124 = icmp slt i32 %.pr1464, 0
  br i1 %cmp.i1124, label %reg_w.exit1122.reg_w1.exit1173_crit_edge, label %do.body.i1126

reg_w.exit1122.reg_w1.exit1173_crit_edge:         ; preds = %reg_w.exit1122
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1173

do.body.i1126:                                    ; preds = %reg_w.exit1122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %622 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %622)
  %cmp1.i1125 = icmp sgt i32 %622, 6
  br i1 %cmp1.i1125, label %do.end.i1129, label %do.body.i1126.do.end7.i1136_crit_edge

do.body.i1126.do.end7.i1136_crit_edge:            ; preds = %do.body.i1126
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1136

do.end.i1129:                                     ; preds = %do.body.i1126
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 5, i32 noundef 32) #9
  br label %do.end7.i1136

do.end7.i1136:                                    ; preds = %do.end.i1129, %do.body.i1126.do.end7.i1136_crit_edge
  %623 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %usb_buf.i1011, align 4
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_store1_noabort(i32 %625)
  store i8 32, ptr %624, align 1
  %626 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %dev.i1012, align 4
  %628 = ptrtoint ptr %627 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %627, align 8
  %shl.i.i1132 = shl i32 %629, 8
  %or.i1133 = or i32 %shl.i.i1132, -2147483648
  %630 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1134 = tail call i32 @usb_control_msg(ptr noundef %627, i32 noundef %or.i1133, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef %630, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1134)
  %cmp12.i1135 = icmp slt i32 %call11.i1134, 0
  br i1 %cmp12.i1135, label %do.end17.i1138, label %reg_w1.exit1139

do.end17.i1138:                                   ; preds = %do.end7.i1136
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i1137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i1134) #9
  br label %reg_w1.exit1173.sink.split

reg_w1.exit1139:                                  ; preds = %do.end7.i1136
  %631 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %.pr1467.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1467.pr)
  %cmp.i1141 = icmp slt i32 %.pr1467.pr, 0
  br i1 %cmp.i1141, label %reg_w1.exit1139.reg_w1.exit1173_crit_edge, label %do.body.i1143

reg_w1.exit1139.reg_w1.exit1173_crit_edge:        ; preds = %reg_w1.exit1139
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1173

do.body.i1143:                                    ; preds = %reg_w1.exit1139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %632 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %632)
  %cmp1.i1142 = icmp sgt i32 %632, 6
  br i1 %cmp1.i1142, label %do.end.i1146, label %do.body.i1143.do.end7.i1153_crit_edge

do.body.i1143.do.end7.i1153_crit_edge:            ; preds = %do.body.i1143
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1153

do.end.i1146:                                     ; preds = %do.body.i1143
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 7, i32 noundef 32) #9
  br label %do.end7.i1153

do.end7.i1153:                                    ; preds = %do.end.i1146, %do.body.i1143.do.end7.i1153_crit_edge
  %633 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %usb_buf.i1011, align 4
  %635 = ptrtoint ptr %634 to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 32, ptr %634, align 1
  %636 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %dev.i1012, align 4
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %637, align 8
  %shl.i.i1149 = shl i32 %639, 8
  %or.i1150 = or i32 %shl.i.i1149, -2147483648
  %640 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1151 = tail call i32 @usb_control_msg(ptr noundef %637, i32 noundef %or.i1150, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 7, i16 noundef zeroext 0, ptr noundef %640, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1151)
  %cmp12.i1152 = icmp slt i32 %call11.i1151, 0
  br i1 %cmp12.i1152, label %do.end17.i1155, label %reg_w1.exit1156

do.end17.i1155:                                   ; preds = %do.end7.i1153
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i1154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i1151) #9
  br label %reg_w1.exit1173.sink.split

reg_w1.exit1156:                                  ; preds = %do.end7.i1153
  %641 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %.pr1470.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1470.pr)
  %cmp.i1158 = icmp slt i32 %.pr1470.pr, 0
  br i1 %cmp.i1158, label %reg_w1.exit1156.reg_w1.exit1173_crit_edge, label %do.body.i1160

reg_w1.exit1156.reg_w1.exit1173_crit_edge:        ; preds = %reg_w1.exit1156
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1173

do.body.i1160:                                    ; preds = %reg_w1.exit1156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %642 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %642)
  %cmp1.i1159 = icmp sgt i32 %642, 6
  br i1 %cmp1.i1159, label %do.end.i1163, label %do.body.i1160.do.end7.i1170_crit_edge

do.body.i1160.do.end7.i1170_crit_edge:            ; preds = %do.body.i1160
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1170

do.end.i1163:                                     ; preds = %do.body.i1160
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 6, i32 noundef 32) #9
  br label %do.end7.i1170

do.end7.i1170:                                    ; preds = %do.end.i1163, %do.body.i1160.do.end7.i1170_crit_edge
  %643 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %usb_buf.i1011, align 4
  %645 = ptrtoint ptr %644 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 32, ptr %644, align 1
  %646 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %dev.i1012, align 4
  %648 = ptrtoint ptr %647 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %647, align 8
  %shl.i.i1166 = shl i32 %649, 8
  %or.i1167 = or i32 %shl.i.i1166, -2147483648
  %650 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1168 = tail call i32 @usb_control_msg(ptr noundef %647, i32 noundef %or.i1167, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef %650, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1168)
  %cmp12.i1169 = icmp slt i32 %call11.i1168, 0
  br i1 %cmp12.i1169, label %do.end17.i1172, label %do.end7.i1170.reg_w1.exit1173_crit_edge

do.end7.i1170.reg_w1.exit1173_crit_edge:          ; preds = %do.end7.i1170
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1173

do.end17.i1172:                                   ; preds = %do.end7.i1170
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i1171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i1168) #9
  br label %reg_w1.exit1173.sink.split

reg_w1.exit1173.sink.split:                       ; preds = %do.end17.i1172, %do.end17.i1155, %do.end17.i1138, %do.end32.i1121
  %call11.i1134.sink = phi i32 [ %call11.i1134, %do.end17.i1138 ], [ %call26.i1117, %do.end32.i1121 ], [ %call11.i1151, %do.end17.i1155 ], [ %call11.i1168, %do.end17.i1172 ]
  %651 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %651)
  store i32 %call11.i1134.sink, ptr %usb_err.i, align 8
  br label %reg_w1.exit1173

reg_w1.exit1173:                                  ; preds = %reg_w1.exit1173.sink.split, %do.end7.i1170.reg_w1.exit1173_crit_edge, %reg_w1.exit1156.reg_w1.exit1173_crit_edge, %reg_w1.exit1139.reg_w1.exit1173_crit_edge, %reg_w.exit1122.reg_w1.exit1173_crit_edge, %sw.epilog91.reg_w1.exit1173_crit_edge
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %652 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %654 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %curr_mode, align 1
  %idxprom92 = zext i8 %655 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %653, i32 %idxprom92, i32 7
  %656 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %priv, align 4
  %658 = or i8 %224, 68
  %659 = and i8 %spec.select34214431447145214571463, -32
  %660 = or i8 %659, 2
  %661 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %sensor, align 1
  %663 = zext i8 %662 to i64
  call void @__sanitizer_cov_trace_switch(i64 %663, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %662, label %reg_w1.exit1173.if.end172_crit_edge [
    i8 0, label %reg_w1.exit1173.if.then171_crit_edge
    i8 1, label %sw.bb106
    i8 2, label %reg_w1.exit1173.sw.bb107_crit_edge
    i8 3, label %reg_w1.exit1173.sw.bb107_crit_edge1605
    i8 4, label %sw.bb120
    i8 5, label %sw.bb121
    i8 6, label %sw.bb134
    i8 7, label %sw.bb135
    i8 8, label %sw.bb155
    i8 9, label %sw.bb156
    i8 10, label %sw.bb163
    i8 11, label %sw.bb164
    i8 12, label %sw.bb165
    i8 13, label %sw.bb166
    i8 14, label %sw.bb167
  ]

reg_w1.exit1173.sw.bb107_crit_edge1605:           ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

reg_w1.exit1173.sw.bb107_crit_edge:               ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

reg_w1.exit1173.if.then171_crit_edge:             ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

reg_w1.exit1173.if.end172_crit_edge:              ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

sw.bb106:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb107:                                         ; preds = %reg_w1.exit1173.sw.bb107_crit_edge, %reg_w1.exit1173.sw.bb107_crit_edge1605
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %657)
  %tobool108.not = icmp eq i32 %657, 0
  %664 = and i8 %658, -98
  %spec.select343 = select i1 %tobool108.not, i8 %664, i8 %658
  %665 = or i8 %659, 1
  br label %if.end172

sw.bb120:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb121:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %657)
  %tobool122.not = icmp eq i32 %657, 0
  br i1 %tobool122.not, label %sw.bb121.if.end172_crit_edge, label %if.then123

sw.bb121.if.end172_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then123:                                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #8
  %666 = and i8 %658, -98
  %667 = or i8 %659, 1
  br label %if.end172

sw.bb134:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb135:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %657)
  %tobool136.not = icmp eq i32 %657, 0
  br i1 %tobool136.not, label %if.then137, label %if.else144

if.then137:                                       ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #8
  %668 = or i8 %659, 4
  br label %if.then171

if.else144:                                       ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #8
  %669 = and i8 %658, -98
  br label %if.then171

sw.bb155:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb156:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  %670 = or i8 %659, 1
  br label %if.then171

sw.bb163:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb164:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb165:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb166:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

sw.bb167:                                         ; preds = %reg_w1.exit1173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

if.then171:                                       ; preds = %sw.bb167, %sw.bb166, %sw.bb165, %sw.bb164, %sw.bb163, %sw.bb156, %sw.bb155, %if.else144, %if.then137, %sw.bb134, %sw.bb120, %sw.bb106, %reg_w1.exit1173.if.then171_crit_edge
  %reg01.3.ph = phi i8 [ %658, %sw.bb106 ], [ %658, %sw.bb120 ], [ %658, %sw.bb134 ], [ %658, %if.then137 ], [ %669, %if.else144 ], [ %658, %sw.bb155 ], [ %658, %sw.bb156 ], [ %658, %sw.bb163 ], [ %658, %sw.bb164 ], [ %658, %sw.bb165 ], [ %658, %sw.bb166 ], [ %658, %sw.bb167 ], [ %658, %reg_w1.exit1173.if.then171_crit_edge ]
  %reg17.2.ph = phi i8 [ %660, %sw.bb106 ], [ %660, %sw.bb120 ], [ %660, %sw.bb134 ], [ %668, %if.then137 ], [ %660, %if.else144 ], [ %660, %sw.bb155 ], [ %670, %sw.bb156 ], [ %660, %sw.bb163 ], [ %660, %sw.bb164 ], [ %660, %sw.bb165 ], [ %660, %sw.bb166 ], [ %660, %sw.bb167 ], [ %660, %reg_w1.exit1173.if.then171_crit_edge ]
  %init.0.ph = phi ptr [ @gc0307_sensor_param1, %sw.bb106 ], [ @mi0360b_sensor_param1, %sw.bb120 ], [ @mt9v111_sensor_param1, %sw.bb134 ], [ @om6802_sensor_param1, %if.then137 ], [ @om6802_sensor_param1, %if.else144 ], [ @ov7630_sensor_param1, %sw.bb155 ], [ @ov7648_sensor_param1, %sw.bb156 ], [ @ov7660_sensor_param1, %sw.bb163 ], [ @po1030_sensor_param1, %sw.bb164 ], [ @po2030n_sensor_param1, %sw.bb165 ], [ @soi768_sensor_param1, %sw.bb166 ], [ @sp80708_sensor_param1, %sw.bb167 ], [ @adcm1700_sensor_param1, %reg_w1.exit1173.if.then171_crit_edge ]
  br label %while.cond.i1175

while.cond.i1175:                                 ; preds = %if.end.i1181, %if.then171
  %data.addr.0.i1174 = phi ptr [ %init.0.ph, %if.then171 ], [ %incdec.ptr.i1180, %if.end.i1181 ]
  %671 = ptrtoint ptr %data.addr.0.i1174 to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %data.addr.0.i1174, align 1
  %673 = zext i8 %672 to i64
  call void @__sanitizer_cov_trace_switch(i64 %673, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %672, label %if.then.i1176 [
    i8 0, label %while.cond.i1175.if.end172_crit_edge
    i8 -35, label %if.else.i1179
  ]

while.cond.i1175.if.end172_crit_edge:             ; preds = %while.cond.i1175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then.i1176:                                    ; preds = %while.cond.i1175
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef %data.addr.0.i1174) #6
  br label %if.end.i1181

if.else.i1179:                                    ; preds = %while.cond.i1175
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6.i1177 = getelementptr [8 x i8], ptr %data.addr.0.i1174, i32 0, i32 1
  %674 = ptrtoint ptr %arrayidx6.i1177 to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %arrayidx6.i1177, align 1
  %conv7.i1178 = zext i8 %675 to i32
  tail call void @msleep(i32 noundef %conv7.i1178) #6
  br label %if.end.i1181

if.end.i1181:                                     ; preds = %if.else.i1179, %if.then.i1176
  %incdec.ptr.i1180 = getelementptr [8 x i8], ptr %data.addr.0.i1174, i32 1
  br label %while.cond.i1175

if.end172:                                        ; preds = %while.cond.i1175.if.end172_crit_edge, %if.then123, %sw.bb121.if.end172_crit_edge, %sw.bb107, %reg_w1.exit1173.if.end172_crit_edge
  %reg17.21480 = phi i8 [ %660, %reg_w1.exit1173.if.end172_crit_edge ], [ %667, %if.then123 ], [ %660, %sw.bb121.if.end172_crit_edge ], [ %665, %sw.bb107 ], [ %reg17.2.ph, %while.cond.i1175.if.end172_crit_edge ]
  %reg01.31478 = phi i8 [ %658, %reg_w1.exit1173.if.end172_crit_edge ], [ %666, %if.then123 ], [ %658, %sw.bb121.if.end172_crit_edge ], [ %spec.select343, %sw.bb107 ], [ %reg01.3.ph, %while.cond.i1175.if.end172_crit_edge ]
  %676 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %677)
  %cmp.i1184 = icmp slt i32 %677, 0
  br i1 %cmp.i1184, label %if.end172.reg_w.exit1199_crit_edge, label %do.body.i1186

if.end172.reg_w.exit1199_crit_edge:               ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit1199

do.body.i1186:                                    ; preds = %if.end172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %678 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %678)
  %cmp1.i1185 = icmp sgt i32 %678, 6
  br i1 %cmp1.i1185, label %do.end.i1189, label %do.body.i1186.if.end21.i1196_crit_edge

do.body.i1186.if.end21.i1196_crit_edge:           ; preds = %do.body.i1186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1196

do.end.i1189:                                     ; preds = %do.body.i1186
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 192, i32 noundef 45, i32 noundef 45) #9
  br label %if.end21.i1196

if.end21.i1196:                                   ; preds = %do.end.i1189, %do.body.i1186.if.end21.i1196_crit_edge
  %679 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %usb_buf.i1011, align 4
  %681 = call ptr @memcpy(ptr %680, ptr @sd_start.C0, i32 6)
  %682 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %dev.i1012, align 4
  %684 = ptrtoint ptr %683 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load i32, ptr %683, align 8
  %shl.i.i1192 = shl i32 %685, 8
  %or.i1193 = or i32 %shl.i.i1192, -2147483648
  %686 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1194 = tail call i32 @usb_control_msg(ptr noundef %683, i32 noundef %or.i1193, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 192, i16 noundef zeroext 0, ptr noundef %686, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1194)
  %cmp27.i1195 = icmp slt i32 %call26.i1194, 0
  br i1 %cmp27.i1195, label %do.end32.i1198, label %if.end21.i1196.reg_w.exit1199_crit_edge

if.end21.i1196.reg_w.exit1199_crit_edge:          ; preds = %if.end21.i1196
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit1199

do.end32.i1198:                                   ; preds = %if.end21.i1196
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i1197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i1194) #9
  %687 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %687)
  store i32 %call26.i1194, ptr %usb_err.i, align 8
  br label %reg_w.exit1199

reg_w.exit1199:                                   ; preds = %do.end32.i1198, %if.end21.i1196.reg_w.exit1199_crit_edge, %if.end172.reg_w.exit1199_crit_edge
  %688 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %sensor, align 1
  %690 = zext i8 %689 to i64
  call void @__sanitizer_cov_trace_switch(i64 %690, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %689, label %sw.default177 [
    i8 0, label %reg_w.exit1199.sw.bb175_crit_edge
    i8 1, label %reg_w.exit1199.sw.bb175_crit_edge1606
    i8 13, label %reg_w.exit1199.sw.bb175_crit_edge1607
    i8 12, label %sw.bb176
  ]

reg_w.exit1199.sw.bb175_crit_edge1607:            ; preds = %reg_w.exit1199
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb175

reg_w.exit1199.sw.bb175_crit_edge1606:            ; preds = %reg_w.exit1199
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb175

reg_w.exit1199.sw.bb175_crit_edge:                ; preds = %reg_w.exit1199
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb175

sw.bb175:                                         ; preds = %reg_w.exit1199.sw.bb175_crit_edge, %reg_w.exit1199.sw.bb175_crit_edge1606, %reg_w.exit1199.sw.bb175_crit_edge1607
  %691 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %692)
  %cmp.i1201 = icmp slt i32 %692, 0
  br i1 %cmp.i1201, label %sw.bb175.sw.epilog178thread-pre-split_crit_edge, label %do.body.i1203

sw.bb175.sw.epilog178thread-pre-split_crit_edge:  ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split

do.body.i1203:                                    ; preds = %sw.bb175
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %693 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %693)
  %cmp1.i1202 = icmp sgt i32 %693, 6
  br i1 %cmp1.i1202, label %do.end.i1206, label %do.body.i1203.if.end21.i1213_crit_edge

do.body.i1203.if.end21.i1213_crit_edge:           ; preds = %do.body.i1203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1213

do.end.i1206:                                     ; preds = %do.body.i1203
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 202, i32 noundef 20, i32 noundef 236) #9
  br label %if.end21.i1213

if.end21.i1213:                                   ; preds = %do.end.i1206, %do.body.i1203.if.end21.i1213_crit_edge
  %694 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %usb_buf.i1011, align 4
  %696 = ptrtoint ptr %695 to i32
  call void @__asan_storeN_noabort(i32 %696, i32 4)
  store i32 351013622, ptr %695, align 1
  %697 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %dev.i1012, align 4
  %699 = ptrtoint ptr %698 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %698, align 8
  %shl.i.i1209 = shl i32 %700, 8
  %or.i1210 = or i32 %shl.i.i1209, -2147483648
  %701 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1211 = tail call i32 @usb_control_msg(ptr noundef %698, i32 noundef %or.i1210, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 202, i16 noundef zeroext 0, ptr noundef %701, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1211)
  %cmp27.i1212 = icmp slt i32 %call26.i1211, 0
  br i1 %cmp27.i1212, label %if.end21.i1213.sw.epilog178thread-pre-split.sink.split_crit_edge, label %if.end21.i1213.sw.epilog178thread-pre-split_crit_edge

if.end21.i1213.sw.epilog178thread-pre-split_crit_edge: ; preds = %if.end21.i1213
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split

if.end21.i1213.sw.epilog178thread-pre-split.sink.split_crit_edge: ; preds = %if.end21.i1213
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split.sink.split

sw.bb176:                                         ; preds = %reg_w.exit1199
  %702 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %703)
  %cmp.i1218 = icmp slt i32 %703, 0
  br i1 %cmp.i1218, label %sw.bb176.sw.epilog185_crit_edge, label %do.body.i1220

sw.bb176.sw.epilog185_crit_edge:                  ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

do.body.i1220:                                    ; preds = %sw.bb176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %704 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %704)
  %cmp1.i1219 = icmp sgt i32 %704, 6
  br i1 %cmp1.i1219, label %do.end.i1223, label %do.body.i1220.if.end21.i1230_crit_edge

do.body.i1220.if.end21.i1230_crit_edge:           ; preds = %do.body.i1220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1230

do.end.i1223:                                     ; preds = %do.body.i1220
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 202, i32 noundef 30, i32 noundef 226) #9
  br label %if.end21.i1230

if.end21.i1230:                                   ; preds = %do.end.i1223, %do.body.i1220.if.end21.i1230_crit_edge
  %705 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %usb_buf.i1011, align 4
  %707 = ptrtoint ptr %706 to i32
  call void @__asan_storeN_noabort(i32 %707, i32 4)
  store i32 518132972, ptr %706, align 1
  %708 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %dev.i1012, align 4
  %710 = ptrtoint ptr %709 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %709, align 8
  %shl.i.i1226 = shl i32 %711, 8
  %or.i1227 = or i32 %shl.i.i1226, -2147483648
  %712 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1228 = tail call i32 @usb_control_msg(ptr noundef %709, i32 noundef %or.i1227, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 202, i16 noundef zeroext 0, ptr noundef %712, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1228)
  %cmp27.i1229 = icmp slt i32 %call26.i1228, 0
  br i1 %cmp27.i1229, label %if.end21.i1230.sw.epilog178thread-pre-split.sink.split_crit_edge, label %if.end21.i1230.sw.epilog178thread-pre-split_crit_edge

if.end21.i1230.sw.epilog178thread-pre-split_crit_edge: ; preds = %if.end21.i1230
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split

if.end21.i1230.sw.epilog178thread-pre-split.sink.split_crit_edge: ; preds = %if.end21.i1230
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split.sink.split

sw.default177:                                    ; preds = %reg_w.exit1199
  %713 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %714)
  %cmp.i1235 = icmp slt i32 %714, 0
  br i1 %cmp.i1235, label %sw.default177.sw.epilog178_crit_edge, label %do.body.i1237

sw.default177.sw.epilog178_crit_edge:             ; preds = %sw.default177
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

do.body.i1237:                                    ; preds = %sw.default177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %715 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %715)
  %cmp1.i1236 = icmp sgt i32 %715, 6
  br i1 %cmp1.i1236, label %do.end.i1240, label %do.body.i1237.if.end21.i1247_crit_edge

do.body.i1237.if.end21.i1247_crit_edge:           ; preds = %do.body.i1237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1247

do.end.i1240:                                     ; preds = %do.body.i1237
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 202, i32 noundef 40, i32 noundef 216) #9
  br label %if.end21.i1247

if.end21.i1247:                                   ; preds = %do.end.i1240, %do.body.i1237.if.end21.i1247_crit_edge
  %716 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %usb_buf.i1011, align 4
  %718 = ptrtoint ptr %717 to i32
  call void @__asan_storeN_noabort(i32 %718, i32 4)
  store i32 685249772, ptr %717, align 1
  %719 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %dev.i1012, align 4
  %721 = ptrtoint ptr %720 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %720, align 8
  %shl.i.i1243 = shl i32 %722, 8
  %or.i1244 = or i32 %shl.i.i1243, -2147483648
  %723 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1245 = tail call i32 @usb_control_msg(ptr noundef %720, i32 noundef %or.i1244, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 202, i16 noundef zeroext 0, ptr noundef %723, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1245)
  %cmp27.i1246 = icmp slt i32 %call26.i1245, 0
  br i1 %cmp27.i1246, label %if.end21.i1247.sw.epilog178thread-pre-split.sink.split_crit_edge, label %if.end21.i1247.sw.epilog178thread-pre-split_crit_edge

if.end21.i1247.sw.epilog178thread-pre-split_crit_edge: ; preds = %if.end21.i1247
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split

if.end21.i1247.sw.epilog178thread-pre-split.sink.split_crit_edge: ; preds = %if.end21.i1247
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178thread-pre-split.sink.split

sw.epilog178thread-pre-split.sink.split:          ; preds = %if.end21.i1247.sw.epilog178thread-pre-split.sink.split_crit_edge, %if.end21.i1230.sw.epilog178thread-pre-split.sink.split_crit_edge, %if.end21.i1213.sw.epilog178thread-pre-split.sink.split_crit_edge
  %call26.i1211.sink1595 = phi i32 [ %call26.i1211, %if.end21.i1213.sw.epilog178thread-pre-split.sink.split_crit_edge ], [ %call26.i1228, %if.end21.i1230.sw.epilog178thread-pre-split.sink.split_crit_edge ], [ %call26.i1245, %if.end21.i1247.sw.epilog178thread-pre-split.sink.split_crit_edge ]
  %call34.i1214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i1211.sink1595) #9
  %724 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %724)
  store i32 %call26.i1211.sink1595, ptr %usb_err.i, align 8
  br label %sw.epilog178thread-pre-split

sw.epilog178thread-pre-split:                     ; preds = %sw.epilog178thread-pre-split.sink.split, %if.end21.i1247.sw.epilog178thread-pre-split_crit_edge, %if.end21.i1230.sw.epilog178thread-pre-split_crit_edge, %if.end21.i1213.sw.epilog178thread-pre-split_crit_edge, %sw.bb175.sw.epilog178thread-pre-split_crit_edge
  %725 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %725)
  %.pr1482 = load i8, ptr %sensor, align 1
  br label %sw.epilog178

sw.epilog178:                                     ; preds = %sw.epilog178thread-pre-split, %sw.default177.sw.epilog178_crit_edge
  %726 = phi i8 [ %.pr1482, %sw.epilog178thread-pre-split ], [ %689, %sw.default177.sw.epilog178_crit_edge ]
  %727 = zext i8 %726 to i64
  call void @__sanitizer_cov_trace_switch(i64 %727, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %726, label %sw.default184 [
    i8 0, label %sw.epilog178.sw.bb181_crit_edge
    i8 8, label %sw.epilog178.sw.bb181_crit_edge1608
    i8 9, label %sw.epilog178.sw.bb181_crit_edge1609
    i8 10, label %sw.epilog178.sw.bb181_crit_edge1610
    i8 13, label %sw.epilog178.sw.bb181_crit_edge1611
    i8 1, label %sw.bb182
    i8 12, label %sw.bb183
  ]

sw.epilog178.sw.bb181_crit_edge1611:              ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb181

sw.epilog178.sw.bb181_crit_edge1610:              ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb181

sw.epilog178.sw.bb181_crit_edge1609:              ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb181

sw.epilog178.sw.bb181_crit_edge1608:              ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb181

sw.epilog178.sw.bb181_crit_edge:                  ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb181

sw.bb181:                                         ; preds = %sw.epilog178.sw.bb181_crit_edge, %sw.epilog178.sw.bb181_crit_edge1608, %sw.epilog178.sw.bb181_crit_edge1609, %sw.epilog178.sw.bb181_crit_edge1610, %sw.epilog178.sw.bb181_crit_edge1611
  %728 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %729)
  %cmp.i1252 = icmp slt i32 %729, 0
  br i1 %cmp.i1252, label %sw.bb181.sw.epilog185_crit_edge, label %do.body.i1254

sw.bb181.sw.epilog185_crit_edge:                  ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

do.body.i1254:                                    ; preds = %sw.bb181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %730 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %730)
  %cmp1.i1253 = icmp sgt i32 %730, 6
  br i1 %cmp1.i1253, label %do.end.i1257, label %do.body.i1254.if.end21.i1264_crit_edge

do.body.i1254.if.end21.i1264_crit_edge:           ; preds = %do.body.i1254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1264

do.end.i1257:                                     ; preds = %do.body.i1254
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 206, i32 noundef 50, i32 noundef 221) #9
  br label %if.end21.i1264

if.end21.i1264:                                   ; preds = %do.end.i1257, %do.body.i1254.if.end21.i1264_crit_edge
  %731 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %usb_buf.i1011, align 4
  %733 = ptrtoint ptr %732 to i32
  call void @__asan_storeN_noabort(i32 %733, i32 4)
  store i32 853357277, ptr %732, align 1
  %734 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %dev.i1012, align 4
  %736 = ptrtoint ptr %735 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %735, align 8
  %shl.i.i1260 = shl i32 %737, 8
  %or.i1261 = or i32 %shl.i.i1260, -2147483648
  %738 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1262 = tail call i32 @usb_control_msg(ptr noundef %735, i32 noundef %or.i1261, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 206, i16 noundef zeroext 0, ptr noundef %738, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1262)
  %cmp27.i1263 = icmp slt i32 %call26.i1262, 0
  br i1 %cmp27.i1263, label %if.end21.i1264.sw.epilog185.sink.split_crit_edge, label %if.end21.i1264.sw.epilog185_crit_edge

if.end21.i1264.sw.epilog185_crit_edge:            ; preds = %if.end21.i1264
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

if.end21.i1264.sw.epilog185.sink.split_crit_edge: ; preds = %if.end21.i1264
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185.sink.split

sw.bb182:                                         ; preds = %sw.epilog178
  %739 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %740)
  %cmp.i1269 = icmp slt i32 %740, 0
  br i1 %cmp.i1269, label %sw.bb182.sw.epilog185_crit_edge, label %do.body.i1271

sw.bb182.sw.epilog185_crit_edge:                  ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

do.body.i1271:                                    ; preds = %sw.bb182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %741 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %741)
  %cmp1.i1270 = icmp sgt i32 %741, 6
  br i1 %cmp1.i1270, label %do.end.i1274, label %do.body.i1271.if.end21.i1281_crit_edge

do.body.i1271.if.end21.i1281_crit_edge:           ; preds = %do.body.i1271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1281

do.end.i1274:                                     ; preds = %do.body.i1271
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 206, i32 noundef 50, i32 noundef 206) #9
  br label %if.end21.i1281

if.end21.i1281:                                   ; preds = %do.end.i1274, %do.body.i1271.if.end21.i1281_crit_edge
  %742 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %usb_buf.i1011, align 4
  %744 = ptrtoint ptr %743 to i32
  call void @__asan_storeN_noabort(i32 %744, i32 4)
  store i32 852372947, ptr %743, align 1
  %745 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %dev.i1012, align 4
  %747 = ptrtoint ptr %746 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %746, align 8
  %shl.i.i1277 = shl i32 %748, 8
  %or.i1278 = or i32 %shl.i.i1277, -2147483648
  %749 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1279 = tail call i32 @usb_control_msg(ptr noundef %746, i32 noundef %or.i1278, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 206, i16 noundef zeroext 0, ptr noundef %749, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1279)
  %cmp27.i1280 = icmp slt i32 %call26.i1279, 0
  br i1 %cmp27.i1280, label %if.end21.i1281.sw.epilog185.sink.split_crit_edge, label %if.end21.i1281.sw.epilog185_crit_edge

if.end21.i1281.sw.epilog185_crit_edge:            ; preds = %if.end21.i1281
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

if.end21.i1281.sw.epilog185.sink.split_crit_edge: ; preds = %if.end21.i1281
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185.sink.split

sw.bb183:                                         ; preds = %sw.epilog178
  %750 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %.pr1483 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1483)
  %cmp.i1286 = icmp slt i32 %.pr1483, 0
  br i1 %cmp.i1286, label %sw.bb183.sw.epilog185_crit_edge, label %do.body.i1288

sw.bb183.sw.epilog185_crit_edge:                  ; preds = %sw.bb183
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

do.body.i1288:                                    ; preds = %sw.bb183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %751 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %751)
  %cmp1.i1287 = icmp sgt i32 %751, 6
  br i1 %cmp1.i1287, label %do.end.i1291, label %do.body.i1288.if.end21.i1298_crit_edge

do.body.i1288.if.end21.i1298_crit_edge:           ; preds = %do.body.i1288
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1298

do.end.i1291:                                     ; preds = %do.body.i1288
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 206, i32 noundef 20, i32 noundef 231) #9
  br label %if.end21.i1298

if.end21.i1298:                                   ; preds = %do.end.i1291, %do.body.i1288.if.end21.i1298_crit_edge
  %752 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %usb_buf.i1011, align 4
  %754 = ptrtoint ptr %753 to i32
  call void @__asan_storeN_noabort(i32 %754, i32 4)
  store i32 350691037, ptr %753, align 1
  %755 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %dev.i1012, align 4
  %757 = ptrtoint ptr %756 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %756, align 8
  %shl.i.i1294 = shl i32 %758, 8
  %or.i1295 = or i32 %shl.i.i1294, -2147483648
  %759 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1296 = tail call i32 @usb_control_msg(ptr noundef %756, i32 noundef %or.i1295, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 206, i16 noundef zeroext 0, ptr noundef %759, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1296)
  %cmp27.i1297 = icmp slt i32 %call26.i1296, 0
  br i1 %cmp27.i1297, label %if.end21.i1298.sw.epilog185.sink.split_crit_edge, label %if.end21.i1298.sw.epilog185_crit_edge

if.end21.i1298.sw.epilog185_crit_edge:            ; preds = %if.end21.i1298
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

if.end21.i1298.sw.epilog185.sink.split_crit_edge: ; preds = %if.end21.i1298
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185.sink.split

sw.default184:                                    ; preds = %sw.epilog178
  %760 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %761)
  %cmp.i1303 = icmp slt i32 %761, 0
  br i1 %cmp.i1303, label %sw.default184.sw.epilog185_crit_edge, label %do.body.i1305

sw.default184.sw.epilog185_crit_edge:             ; preds = %sw.default184
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

do.body.i1305:                                    ; preds = %sw.default184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %762 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %762)
  %cmp1.i1304 = icmp sgt i32 %762, 6
  br i1 %cmp1.i1304, label %do.end.i1308, label %do.body.i1305.if.end21.i1315_crit_edge

do.body.i1305.if.end21.i1315_crit_edge:           ; preds = %do.body.i1305
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i1315

do.end.i1308:                                     ; preds = %do.body.i1305
  call void @__sanitizer_cov_trace_pc() #8
  %call.i1307 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i1008, i32 noundef 206, i32 noundef 50, i32 noundef 221) #9
  br label %if.end21.i1315

if.end21.i1315:                                   ; preds = %do.end.i1308, %do.body.i1305.if.end21.i1315_crit_edge
  %763 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %usb_buf.i1011, align 4
  %765 = ptrtoint ptr %764 to i32
  call void @__asan_storeN_noabort(i32 %765, i32 4)
  store i32 853355997, ptr %764, align 1
  %766 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %dev.i1012, align 4
  %768 = ptrtoint ptr %767 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %767, align 8
  %shl.i.i1311 = shl i32 %769, 8
  %or.i1312 = or i32 %shl.i.i1311, -2147483648
  %770 = load ptr, ptr %usb_buf.i1011, align 4
  %call26.i1313 = tail call i32 @usb_control_msg(ptr noundef %767, i32 noundef %or.i1312, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 206, i16 noundef zeroext 0, ptr noundef %770, i16 noundef zeroext 4, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i1313)
  %cmp27.i1314 = icmp slt i32 %call26.i1313, 0
  br i1 %cmp27.i1314, label %if.end21.i1315.sw.epilog185.sink.split_crit_edge, label %if.end21.i1315.sw.epilog185_crit_edge

if.end21.i1315.sw.epilog185_crit_edge:            ; preds = %if.end21.i1315
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185

if.end21.i1315.sw.epilog185.sink.split_crit_edge: ; preds = %if.end21.i1315
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog185.sink.split

sw.epilog185.sink.split:                          ; preds = %if.end21.i1315.sw.epilog185.sink.split_crit_edge, %if.end21.i1298.sw.epilog185.sink.split_crit_edge, %if.end21.i1281.sw.epilog185.sink.split_crit_edge, %if.end21.i1264.sw.epilog185.sink.split_crit_edge
  %call26.i1313.sink1596 = phi i32 [ %call26.i1262, %if.end21.i1264.sw.epilog185.sink.split_crit_edge ], [ %call26.i1279, %if.end21.i1281.sw.epilog185.sink.split_crit_edge ], [ %call26.i1296, %if.end21.i1298.sw.epilog185.sink.split_crit_edge ], [ %call26.i1313, %if.end21.i1315.sw.epilog185.sink.split_crit_edge ]
  %call34.i1316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i1313.sink1596) #9
  %771 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %771)
  store i32 %call26.i1313.sink1596, ptr %usb_err.i, align 8
  br label %sw.epilog185

sw.epilog185:                                     ; preds = %sw.epilog185.sink.split, %if.end21.i1315.sw.epilog185_crit_edge, %sw.default184.sw.epilog185_crit_edge, %if.end21.i1298.sw.epilog185_crit_edge, %sw.bb183.sw.epilog185_crit_edge, %if.end21.i1281.sw.epilog185_crit_edge, %sw.bb182.sw.epilog185_crit_edge, %if.end21.i1264.sw.epilog185_crit_edge, %sw.bb181.sw.epilog185_crit_edge, %sw.bb176.sw.epilog185_crit_edge
  %772 = ptrtoint ptr %arrayidx601416 to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %arrayidx601416, align 1
  %.tr = trunc i32 %657 to i8
  %774 = shl i8 %.tr, 4
  %775 = or i8 %774, %773
  %conv190 = or i8 %775, 64
  %reg18 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %776 = ptrtoint ptr %reg18 to i32
  call void @__asan_store1_noabort(i32 %776)
  store i8 %conv190, ptr %reg18, align 1
  %777 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %778)
  %cmp.i1320 = icmp slt i32 %778, 0
  br i1 %cmp.i1320, label %sw.epilog185.reg_w1.exit1336_crit_edge, label %do.body.i1322

sw.epilog185.reg_w1.exit1336_crit_edge:           ; preds = %sw.epilog185
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1336

do.body.i1322:                                    ; preds = %sw.epilog185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %779 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %779)
  %cmp1.i1321 = icmp sgt i32 %779, 6
  br i1 %cmp1.i1321, label %do.end.i1326, label %do.body.i1322.do.end7.i1333_crit_edge

do.body.i1322.do.end7.i1333_crit_edge:            ; preds = %do.body.i1322
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1333

do.end.i1326:                                     ; preds = %do.body.i1322
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i1324 = zext i8 %conv190 to i32
  %call.i1325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 24, i32 noundef %conv4.i1324) #9
  br label %do.end7.i1333

do.end7.i1333:                                    ; preds = %do.end.i1326, %do.body.i1322.do.end7.i1333_crit_edge
  %780 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %usb_buf.i1011, align 4
  %782 = ptrtoint ptr %781 to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 %conv190, ptr %781, align 1
  %783 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %dev.i1012, align 4
  %785 = ptrtoint ptr %784 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %784, align 8
  %shl.i.i1329 = shl i32 %786, 8
  %or.i1330 = or i32 %shl.i.i1329, -2147483648
  %787 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1331 = tail call i32 @usb_control_msg(ptr noundef %784, i32 noundef %or.i1330, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef %787, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1331)
  %cmp12.i1332 = icmp slt i32 %call11.i1331, 0
  br i1 %cmp12.i1332, label %do.end17.i1335, label %do.end7.i1333.reg_w1.exit1336_crit_edge

do.end7.i1333.reg_w1.exit1336_crit_edge:          ; preds = %do.end7.i1333
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1336

do.end17.i1335:                                   ; preds = %do.end7.i1333
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i1334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i1331) #9
  %788 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %call11.i1331, ptr %usb_err.i, align 8
  br label %reg_w1.exit1336

reg_w1.exit1336:                                  ; preds = %do.end17.i1335, %do.end7.i1333.reg_w1.exit1336_crit_edge, %sw.epilog185.reg_w1.exit1336_crit_edge
  tail call fastcc void @setjpegqual(ptr noundef %gspca_dev)
  %789 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %790)
  %cmp.i1338 = icmp slt i32 %790, 0
  br i1 %cmp.i1338, label %reg_w1.exit1336.reg_w1.exit1372_crit_edge, label %do.body.i1340

reg_w1.exit1336.reg_w1.exit1372_crit_edge:        ; preds = %reg_w1.exit1336
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1372

do.body.i1340:                                    ; preds = %reg_w1.exit1336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %791 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %791)
  %cmp1.i1339 = icmp sgt i32 %791, 6
  br i1 %cmp1.i1339, label %do.end.i1344, label %do.body.i1340.do.end7.i1351_crit_edge

do.body.i1340.do.end7.i1351_crit_edge:            ; preds = %do.body.i1340
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1351

do.end.i1344:                                     ; preds = %do.body.i1340
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i1342 = zext i8 %reg17.21480 to i32
  %call.i1343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 23, i32 noundef %conv4.i1342) #9
  br label %do.end7.i1351

do.end7.i1351:                                    ; preds = %do.end.i1344, %do.body.i1340.do.end7.i1351_crit_edge
  %792 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %usb_buf.i1011, align 4
  %794 = ptrtoint ptr %793 to i32
  call void @__asan_store1_noabort(i32 %794)
  store i8 %reg17.21480, ptr %793, align 1
  %795 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %dev.i1012, align 4
  %797 = ptrtoint ptr %796 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %796, align 8
  %shl.i.i1347 = shl i32 %798, 8
  %or.i1348 = or i32 %shl.i.i1347, -2147483648
  %799 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1349 = tail call i32 @usb_control_msg(ptr noundef %796, i32 noundef %or.i1348, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %799, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1349)
  %cmp12.i1350 = icmp slt i32 %call11.i1349, 0
  br i1 %cmp12.i1350, label %do.end7.i1351.reg_w1.exit1372.sink.split_crit_edge, label %reg_w1.exit1354

do.end7.i1351.reg_w1.exit1372.sink.split_crit_edge: ; preds = %do.end7.i1351
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1372.sink.split

reg_w1.exit1354:                                  ; preds = %do.end7.i1351
  %800 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %.pr1485 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1485)
  %cmp.i1356 = icmp slt i32 %.pr1485, 0
  br i1 %cmp.i1356, label %reg_w1.exit1354.reg_w1.exit1372_crit_edge, label %do.body.i1358

reg_w1.exit1354.reg_w1.exit1372_crit_edge:        ; preds = %reg_w1.exit1354
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1372

do.body.i1358:                                    ; preds = %reg_w1.exit1354
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %801 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %801)
  %cmp1.i1357 = icmp sgt i32 %801, 6
  br i1 %cmp1.i1357, label %do.end.i1362, label %do.body.i1358.do.end7.i1369_crit_edge

do.body.i1358.do.end7.i1369_crit_edge:            ; preds = %do.body.i1358
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i1369

do.end.i1362:                                     ; preds = %do.body.i1358
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i1360 = zext i8 %reg01.31478 to i32
  %call.i1361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i1008, i32 noundef 1, i32 noundef %conv4.i1360) #9
  br label %do.end7.i1369

do.end7.i1369:                                    ; preds = %do.end.i1362, %do.body.i1358.do.end7.i1369_crit_edge
  %802 = ptrtoint ptr %usb_buf.i1011 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %usb_buf.i1011, align 4
  %804 = ptrtoint ptr %803 to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 %reg01.31478, ptr %803, align 1
  %805 = ptrtoint ptr %dev.i1012 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %dev.i1012, align 4
  %807 = ptrtoint ptr %806 to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %806, align 8
  %shl.i.i1365 = shl i32 %808, 8
  %or.i1366 = or i32 %shl.i.i1365, -2147483648
  %809 = load ptr, ptr %usb_buf.i1011, align 4
  %call11.i1367 = tail call i32 @usb_control_msg(ptr noundef %806, i32 noundef %or.i1366, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %809, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i1367)
  %cmp12.i1368 = icmp slt i32 %call11.i1367, 0
  br i1 %cmp12.i1368, label %do.end7.i1369.reg_w1.exit1372.sink.split_crit_edge, label %do.end7.i1369.reg_w1.exit1372_crit_edge

do.end7.i1369.reg_w1.exit1372_crit_edge:          ; preds = %do.end7.i1369
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1372

do.end7.i1369.reg_w1.exit1372.sink.split_crit_edge: ; preds = %do.end7.i1369
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit1372.sink.split

reg_w1.exit1372.sink.split:                       ; preds = %do.end7.i1369.reg_w1.exit1372.sink.split_crit_edge, %do.end7.i1351.reg_w1.exit1372.sink.split_crit_edge
  %call11.i1349.sink1597 = phi i32 [ %call11.i1349, %do.end7.i1351.reg_w1.exit1372.sink.split_crit_edge ], [ %call11.i1367, %do.end7.i1369.reg_w1.exit1372.sink.split_crit_edge ]
  %call19.i1352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i1349.sink1597) #9
  %810 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %810)
  store i32 %call11.i1349.sink1597, ptr %usb_err.i, align 8
  br label %reg_w1.exit1372

reg_w1.exit1372:                                  ; preds = %reg_w1.exit1372.sink.split, %do.end7.i1369.reg_w1.exit1372_crit_edge, %reg_w1.exit1354.reg_w1.exit1372_crit_edge, %reg_w1.exit1336.reg_w1.exit1372_crit_edge
  %reg01192 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %811 = ptrtoint ptr %reg01192 to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 %reg01.31478, ptr %reg01192, align 1
  %reg17193 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %812 = ptrtoint ptr %reg17193 to i32
  call void @__asan_store1_noabort(i32 %812)
  store i8 %reg17.21480, ptr %reg17193, align 2
  %pktsz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %813 = ptrtoint ptr %pktsz to i32
  call void @__asan_store8_noabort(i32 %813)
  store i64 0, ptr %pktsz, align 8
  %814 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load i32, ptr %usb_err.i, align 8
  ret i32 %815
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %npkt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 14
  %0 = ptrtoint ptr %npkt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %npkt, align 4
  %inc = add i16 %1, 1
  store i16 %inc, ptr %npkt, align 4
  %pktsz = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 13
  %2 = ptrtoint ptr %pktsz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pktsz, align 8
  %add = add i32 %3, %len
  store i32 %add, ptr %pktsz, align 8
  %short_mark = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 16
  %4 = ptrtoint ptr %short_mark to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %short_mark, align 1
  %conv = sext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %short_mark to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %short_mark, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp slt i8 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp6 = icmp eq i8 %8, -1
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true8:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp11 = icmp eq i8 %10, 0
  br i1 %cmp11, label %land.lhs.true8.marker_found_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true8.marker_found_crit_edge:            ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %marker_found

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr)
  %cmp16 = icmp eq i8 %.pr, -1
  br i1 %cmp16, label %land.lhs.true18, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true18:                                  ; preds = %if.end
  %arrayidx19 = getelementptr i8, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp21 = icmp eq i8 %13, -1
  br i1 %cmp21, label %land.lhs.true18.if.else_crit_edge, label %land.lhs.true18.if.end24_crit_edge

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end24:                                         ; preds = %land.lhs.true18.if.end24_crit_edge, %if.end.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %sub = sub i32 %len, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 1
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %data, i32 %conv
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry.if.end29_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.end28 ], [ %data, %entry.if.end29_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %if.end28 ], [ %len, %entry.if.end29_crit_edge ]
  %sub30 = add i32 %len.addr.0, -1
  %dec312 = add i32 %len.addr.0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec312)
  %cmp31313 = icmp sgt i32 %dec312, -1
  br i1 %cmp31313, label %if.end29.for.body_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %if.end29.for.body_crit_edge
  %dec315 = phi i32 [ %dec, %for.cond.backedge.for.body_crit_edge ], [ %dec312, %if.end29.for.body_crit_edge ]
  %i.0314 = phi i32 [ %i.0.be, %for.cond.backedge.for.body_crit_edge ], [ %sub30, %if.end29.for.body_crit_edge ]
  %arrayidx33 = getelementptr i8, ptr %data.addr.0, i32 %dec315
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp35.not = icmp eq i8 %15, -1
  br i1 %cmp35.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec38 = add i32 %i.0314, -2
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %lor.lhs.false.for.cond.backedge_crit_edge, %if.end39.for.cond.backedge_crit_edge, %if.then37
  %i.0.be = phi i32 [ %dec38, %if.then37 ], [ %dec315, %lor.lhs.false.for.cond.backedge_crit_edge ], [ %dec315, %if.end39.for.cond.backedge_crit_edge ]
  %dec = add i32 %i.0.be, -1
  %cmp31 = icmp sgt i32 %dec, -1
  br i1 %cmp31, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end39:                                         ; preds = %for.body
  %arrayidx41 = getelementptr i8, ptr %data.addr.0, i32 %i.0314
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp43 = icmp eq i8 %17, -1
  br i1 %cmp43, label %if.then45, label %if.end39.for.cond.backedge_crit_edge

if.end39.for.cond.backedge_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

if.then45:                                        ; preds = %if.end39
  %add46 = add nuw i32 %i.0314, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %len.addr.0)
  %cmp47.not = icmp slt i32 %add46, %len.addr.0
  br i1 %cmp47.not, label %lor.lhs.false, label %if.then45.marker_found_crit_edge

if.then45.marker_found_crit_edge:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %marker_found

lor.lhs.false:                                    ; preds = %if.then45
  %arrayidx50 = getelementptr i8, ptr %data.addr.0, i32 %add46
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp52 = icmp eq i8 %19, 0
  br i1 %cmp52, label %lor.lhs.false.marker_found_crit_edge, label %lor.lhs.false.for.cond.backedge_crit_edge

lor.lhs.false.for.cond.backedge_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

lor.lhs.false.marker_found_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %marker_found

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.end29.for.end_crit_edge
  %arrayidx58 = getelementptr i8, ptr %data.addr.0, i32 %sub30
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp60 = icmp eq i8 %21, -1
  br i1 %cmp60, label %if.then62, label %for.end.if.end64_crit_edge

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %short_mark to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %short_mark, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end.if.end64_crit_edge
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %23 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp66 = icmp eq i8 %24, 3
  br i1 %cmp66, label %if.then68, label %if.end64.if.end69_crit_edge

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 26
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64.if.end69_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
  br label %cleanup

marker_found:                                     ; preds = %lor.lhs.false.marker_found_crit_edge, %if.then45.marker_found_crit_edge, %land.lhs.true8.marker_found_crit_edge
  %data.addr.1 = phi ptr [ %data, %land.lhs.true8.marker_found_crit_edge ], [ %data.addr.0, %lor.lhs.false.marker_found_crit_edge ], [ %data.addr.0, %if.then45.marker_found_crit_edge ]
  %len.addr.1 = phi i32 [ %len, %land.lhs.true8.marker_found_crit_edge ], [ %len.addr.0, %lor.lhs.false.marker_found_crit_edge ], [ %len.addr.0, %if.then45.marker_found_crit_edge ]
  %i.1 = phi i32 [ %conv, %land.lhs.true8.marker_found_crit_edge ], [ %dec315, %lor.lhs.false.marker_found_crit_edge ], [ %dec315, %if.then45.marker_found_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1)
  %cmp70 = icmp sgt i32 %i.1, 2
  br i1 %cmp70, label %if.then72, label %marker_found.if.else_crit_edge

marker_found.if.else_crit_edge:                   ; preds = %marker_found
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then72:                                        ; preds = %marker_found
  %sub73 = add nsw i32 %i.1, -2
  %arrayidx74 = getelementptr i8, ptr %data.addr.1, i32 %sub73
  %25 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp76.not = icmp eq i8 %26, -1
  br i1 %cmp76.not, label %lor.lhs.false78, label %if.then72.if.end98_crit_edge

if.then72.if.end98_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

lor.lhs.false78:                                  ; preds = %if.then72
  %sub79 = add nsw i32 %i.1, -1
  %arrayidx80 = getelementptr i8, ptr %data.addr.1, i32 %sub79
  %27 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %28)
  %cmp82.not = icmp eq i8 %28, -39
  br i1 %cmp82.not, label %lor.lhs.false78.if.then101_crit_edge, label %lor.lhs.false78.if.end98_crit_edge

lor.lhs.false78.if.end98_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

lor.lhs.false78.if.then101_crit_edge:             ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

if.else:                                          ; preds = %marker_found.if.else_crit_edge, %land.lhs.true18.if.else_crit_edge
  %i.1287 = phi i32 [ %i.1, %marker_found.if.else_crit_edge ], [ 0, %land.lhs.true18.if.else_crit_edge ]
  %len.addr.1285 = phi i32 [ %len.addr.1, %marker_found.if.else_crit_edge ], [ %len, %land.lhs.true18.if.else_crit_edge ]
  %data.addr.1282 = phi ptr [ %data.addr.1, %marker_found.if.else_crit_edge ], [ %data, %land.lhs.true18.if.else_crit_edge ]
  %add87 = add nsw i32 %i.1287, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %len.addr.1285)
  %cmp88 = icmp slt i32 %add87, %len.addr.1285
  br i1 %cmp88, label %if.then90, label %if.else.if.then101_crit_edge

if.else.if.then101_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

if.then90:                                        ; preds = %if.else
  %arrayidx92 = getelementptr i8, ptr %data.addr.1282, i32 %add87
  %29 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx92, align 1
  %31 = and i8 %30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %if.then90.if.then101_crit_edge, label %if.then90.if.end98_crit_edge

if.then90.if.end98_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then90.if.then101_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then101

if.end98:                                         ; preds = %if.then90.if.end98_crit_edge, %lor.lhs.false78.if.end98_crit_edge, %if.then72.if.end98_crit_edge
  %i.1286 = phi i32 [ %i.1, %lor.lhs.false78.if.end98_crit_edge ], [ %i.1, %if.then72.if.end98_crit_edge ], [ %i.1287, %if.then90.if.end98_crit_edge ]
  %len.addr.1284 = phi i32 [ %len.addr.1, %lor.lhs.false78.if.end98_crit_edge ], [ %len.addr.1, %if.then72.if.end98_crit_edge ], [ %len.addr.1285, %if.then90.if.end98_crit_edge ]
  %data.addr.1281 = phi ptr [ %data.addr.1, %lor.lhs.false78.if.end98_crit_edge ], [ %data.addr.1, %if.then72.if.end98_crit_edge ], [ %data.addr.1282, %if.then90.if.end98_crit_edge ]
  %new_qual.0 = phi i32 [ -3, %lor.lhs.false78.if.end98_crit_edge ], [ -3, %if.then72.if.end98_crit_edge ], [ -5, %if.then90.if.end98_crit_edge ]
  %last_packet_type95 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %32 = ptrtoint ptr %last_packet_type95 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %last_packet_type95, align 4
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data.addr.1281, i32 noundef %i.1286) #6
  br label %if.then120

if.then101:                                       ; preds = %if.then90.if.then101_crit_edge, %if.else.if.then101_crit_edge, %lor.lhs.false78.if.then101_crit_edge
  %i.1286.ph = phi i32 [ %i.1, %lor.lhs.false78.if.then101_crit_edge ], [ %i.1287, %if.then90.if.then101_crit_edge ], [ %i.1287, %if.else.if.then101_crit_edge ]
  %len.addr.1284.ph = phi i32 [ %len.addr.1, %lor.lhs.false78.if.then101_crit_edge ], [ %len.addr.1285, %if.then90.if.then101_crit_edge ], [ %len.addr.1285, %if.else.if.then101_crit_edge ]
  %data.addr.1281.ph = phi ptr [ %data.addr.1, %lor.lhs.false78.if.then101_crit_edge ], [ %data.addr.1282, %if.then90.if.then101_crit_edge ], [ %data.addr.1282, %if.else.if.then101_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data.addr.1281.ph, i32 noundef %i.1286.ph) #6
  %33 = ptrtoint ptr %pktsz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pktsz, align 8
  %mul = mul i32 %34, 100
  %35 = ptrtoint ptr %npkt to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %npkt, align 4
  %conv104 = zext i16 %36 to i32
  %urb = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11
  %37 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb, align 8
  %length = getelementptr inbounds %struct.urb, ptr %38, i32 1, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %mul107 = mul i32 %40, %conv104
  %div = udiv i32 %mul, %mul107
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %div)
  %cmp108 = icmp sgt i32 %div, 84
  br i1 %cmp108, label %if.then101.if.then120_crit_edge, label %if.else111

if.then101.if.then120_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.else111:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %div)
  %cmp112 = icmp slt i32 %div, 75
  br i1 %cmp112, label %if.else111.if.then120_crit_edge, label %if.else155

if.else111.if.then120_crit_edge:                  ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.then120:                                       ; preds = %if.else111.if.then120_crit_edge, %if.then101.if.then120_crit_edge, %if.end98
  %data.addr.1281297.ph = phi ptr [ %data.addr.1281.ph, %if.then101.if.then120_crit_edge ], [ %data.addr.1281, %if.end98 ], [ %data.addr.1281.ph, %if.else111.if.then120_crit_edge ]
  %len.addr.1284295.ph = phi i32 [ %len.addr.1284.ph, %if.then101.if.then120_crit_edge ], [ %len.addr.1284, %if.end98 ], [ %len.addr.1284.ph, %if.else111.if.then120_crit_edge ]
  %i.1286293.ph = phi i32 [ %i.1286.ph, %if.then101.if.then120_crit_edge ], [ %i.1286, %if.end98 ], [ %i.1286.ph, %if.else111.if.then120_crit_edge ]
  %new_qual.2.ph = phi i32 [ -3, %if.then101.if.then120_crit_edge ], [ %new_qual.0, %if.end98 ], [ 2, %if.else111.if.then120_crit_edge ]
  %nchg = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %41 = ptrtoint ptr %nchg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nchg, align 2
  %43 = trunc i32 %new_qual.2.ph to i8
  %conv123 = add i8 %42, %43
  store i8 %conv123, ptr %nchg, align 2
  %44 = add i8 %conv123, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %44)
  %45 = icmp ult i8 %44, -18
  br i1 %45, label %if.then133, label %if.then120.if.end157_crit_edge

if.then120.if.end157_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then133:                                       ; preds = %if.then120
  %46 = ptrtoint ptr %nchg to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %nchg, align 2
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %47 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %quality, align 8
  %conv135 = zext i8 %48 to i32
  %add136 = add nsw i32 %new_qual.2.ph, %conv135
  %49 = tail call i32 @llvm.smin.i32(i32 %add136, i32 90)
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 25)
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv135)
  %cmp148.not = icmp eq i32 %50, %conv135
  br i1 %cmp148.not, label %if.then133.if.end157_crit_edge, label %if.then150

if.then133.if.end157_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end157

if.then150:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %conv151 = trunc i32 %50 to i8
  %51 = ptrtoint ptr %quality to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv151, ptr %quality, align 8
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %work) #6
  br label %if.end157

if.else155:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #8
  %nchg156 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 15
  %53 = ptrtoint ptr %nchg156 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %nchg156, align 2
  br label %if.end157

if.end157:                                        ; preds = %if.else155, %if.then150, %if.then133.if.end157_crit_edge, %if.then120.if.end157_crit_edge
  %i.1286293308 = phi i32 [ %i.1286293.ph, %if.then120.if.end157_crit_edge ], [ %i.1286293.ph, %if.then150 ], [ %i.1286293.ph, %if.then133.if.end157_crit_edge ], [ %i.1286.ph, %if.else155 ]
  %len.addr.1284295306 = phi i32 [ %len.addr.1284295.ph, %if.then120.if.end157_crit_edge ], [ %len.addr.1284295.ph, %if.then150 ], [ %len.addr.1284295.ph, %if.then133.if.end157_crit_edge ], [ %len.addr.1284.ph, %if.else155 ]
  %data.addr.1281297304 = phi ptr [ %data.addr.1281297.ph, %if.then120.if.end157_crit_edge ], [ %data.addr.1281297.ph, %if.then150 ], [ %data.addr.1281297.ph, %if.then133.if.end157_crit_edge ], [ %data.addr.1281.ph, %if.else155 ]
  %54 = ptrtoint ptr %npkt to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %npkt, align 4
  %55 = ptrtoint ptr %pktsz to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %pktsz, align 8
  %add160 = add i32 %i.1286293308, 62
  call void @__sanitizer_cov_trace_cmp4(i32 %add160, i32 %len.addr.1284295306)
  %cmp161 = icmp sgt i32 %add160, %len.addr.1284295306
  br i1 %cmp161, label %if.then163, label %if.end168

if.then163:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  %sub165 = sub i32 %add160, %len.addr.1284295306
  %conv166 = trunc i32 %sub165 to i8
  %56 = ptrtoint ptr %short_mark to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv166, ptr %short_mark, align 1
  br label %cleanup

if.end168:                                        ; preds = %if.end157
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 22
  %57 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ag_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp170 = icmp sgt i8 %58, -1
  br i1 %cmp170, label %if.then172, label %if.end168.if.end174_crit_edge

if.end168.if.end174_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then172:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr173 = getelementptr i8, ptr %data.addr.1281297304, i32 %i.1286293308
  %arrayidx.i = getelementptr i8, ptr %add.ptr173, i32 27
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %60 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr i8, ptr %add.ptr173, i32 28
  %61 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %62 to i32
  %add.i = or i32 %shl.i, %conv2.i
  %arrayidx3.i = getelementptr i8, ptr %add.ptr173, i32 31
  %63 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %64 to i32
  %arrayidx7.i = getelementptr i8, ptr %add.ptr173, i32 32
  %65 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %66 to i32
  %arrayidx10.i = getelementptr i8, ptr %add.ptr173, i32 23
  %67 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %68 to i32
  %arrayidx14.i = getelementptr i8, ptr %add.ptr173, i32 24
  %69 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %70 to i32
  %arrayidx17.i = getelementptr i8, ptr %add.ptr173, i32 35
  %71 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %72 to i32
  %arrayidx21.i = getelementptr i8, ptr %add.ptr173, i32 36
  %73 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %74 to i32
  %arrayidx24.i = getelementptr i8, ptr %add.ptr173, i32 29
  %75 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %76 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 10
  %arrayidx28.i = getelementptr i8, ptr %add.ptr173, i32 30
  %77 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %78 to i32
  %shl30.i = shl nuw nsw i32 %conv29.i, 2
  %reass.add.i = add nuw nsw i32 %conv11.i, %conv4.i
  %reass.add43.i = add nuw nsw i32 %reass.add.i, %conv18.i
  %reass.mul.i = shl nuw nsw i32 %reass.add43.i, 8
  %add13.i = add nuw nsw i32 %add.i, %conv8.i
  %add16.i = add nuw nsw i32 %add13.i, %conv15.i
  %add20.i = add nuw nsw i32 %add16.i, %conv22.i
  %add23.i = add nuw nsw i32 %add20.i, %reass.mul.i
  %add27.i = add i32 %add23.i, %shl26.i
  %add31.i = add i32 %add27.i, %shl30.i
  %shr.i = ashr i32 %add31.i, 10
  %avg_lum32.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum32.i, i32 noundef 4) #6
  %79 = ptrtoint ptr %avg_lum32.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 %shr.i, ptr %avg_lum32.i, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %if.end168.if.end174_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add160, i32 %len.addr.1284295306)
  %cmp176 = icmp slt i32 %add160, %len.addr.1284295306
  br i1 %cmp176, label %if.then178, label %if.end174.cleanup_crit_edge

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr179 = getelementptr i8, ptr %data.addr.1281297304, i32 %add160
  %sub180 = sub i32 %len.addr.1284295306, %add160
  %jpeg_hdr181 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 26
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr181, i32 noundef 589) #6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr179, i32 noundef %sub180) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %if.end174.cleanup_crit_edge, %if.then163, %if.end69, %if.end24.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg011 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 18
  %0 = ptrtoint ptr %reg011 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg011, align 1
  %reg172 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 19
  %2 = ptrtoint ptr %reg172 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg172, align 2
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge301
    i8 12, label %entry.sw.bb_crit_edge302
    i8 14, label %entry.sw.bb_crit_edge303
    i8 2, label %sw.bb10
    i8 3, label %entry.sw.bb14_crit_edge
    i8 4, label %entry.sw.bb14_crit_edge304
    i8 6, label %entry.sw.bb18_crit_edge
    i8 7, label %entry.sw.bb18_crit_edge305
    i8 11, label %entry.sw.bb18_crit_edge306
    i8 8, label %entry.sw.bb22_crit_edge
    i8 9, label %entry.sw.bb22_crit_edge307
    i8 10, label %sw.bb26
    i8 13, label %sw.bb30
  ]

entry.sw.bb22_crit_edge307:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22

entry.sw.bb18_crit_edge306:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

entry.sw.bb18_crit_edge305:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

entry.sw.bb18_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

entry.sw.bb14_crit_edge304:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.bb_crit_edge303:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge302:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge301:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge301, %entry.sw.bb_crit_edge302, %entry.sw.bb_crit_edge303
  %7 = or i8 %1, 8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp slt i32 %9, 0
  br i1 %cmp.i, label %sw.bb.reg_w1.exit.thread_crit_edge, label %do.body.i

sw.bb.reg_w1.exit.thread_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit.thread

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp1.i = icmp sgt i32 %10, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %7 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 1, i32 noundef %conv4.i) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %12, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit.thread

reg_w1.exit.thread:                               ; preds = %do.end17.i, %sw.bb.reg_w1.exit.thread_crit_edge
  %20 = and i8 %1, -13
  br label %sw.epilog

reg_w1.exit:                                      ; preds = %do.end7.i
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %usb_err.i, align 8
  %22 = and i8 %1, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i83 = icmp slt i32 %.pr, 0
  br i1 %cmp.i83, label %reg_w1.exit.sw.epilog_crit_edge, label %do.body.i85

reg_w1.exit.sw.epilog_crit_edge:                  ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i85:                                      ; preds = %reg_w1.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp1.i84 = icmp sgt i32 %23, 6
  br i1 %cmp1.i84, label %do.end.i89, label %do.body.i85.do.end7.i96_crit_edge

do.body.i85.do.end7.i96_crit_edge:                ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i96

do.end.i89:                                       ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  %name.i86 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i87 = zext i8 %22 to i32
  %call.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i86, i32 noundef 1, i32 noundef %conv4.i87) #9
  br label %do.end7.i96

do.end7.i96:                                      ; preds = %do.end.i89, %do.body.i85.do.end7.i96_crit_edge
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %22, ptr %25, align 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i92 = shl i32 %30, 8
  %or.i93 = or i32 %shl.i.i92, -2147483648
  %31 = load ptr, ptr %usb_buf.i, align 4
  %call11.i94 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i93, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i94)
  %cmp12.i95 = icmp slt i32 %call11.i94, 0
  br i1 %cmp12.i95, label %do.end17.i98, label %do.end7.i96.sw.epilog_crit_edge

do.end7.i96.sw.epilog_crit_edge:                  ; preds = %do.end7.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17.i98:                                     ; preds = %do.end7.i96
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i94) #9
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call11.i94, ptr %usb_err.i, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %33 = and i8 %1, -5
  %usb_err.i100 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %34 = ptrtoint ptr %usb_err.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %usb_err.i100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i101 = icmp slt i32 %35, 0
  br i1 %cmp.i101, label %sw.bb10.reg_w1.exit117_crit_edge, label %do.body.i103

sw.bb10.reg_w1.exit117_crit_edge:                 ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit117

do.body.i103:                                     ; preds = %sw.bb10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp1.i102 = icmp sgt i32 %36, 6
  br i1 %cmp1.i102, label %do.end.i107, label %do.body.i103.do.end7.i114_crit_edge

do.body.i103.do.end7.i114_crit_edge:              ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i114

do.end.i107:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  %name.i104 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i105 = zext i8 %33 to i32
  %call.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i104, i32 noundef 1, i32 noundef %conv4.i105) #9
  br label %do.end7.i114

do.end7.i114:                                     ; preds = %do.end.i107, %do.body.i103.do.end7.i114_crit_edge
  %usb_buf.i108 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %37 = ptrtoint ptr %usb_buf.i108 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf.i108, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %33, ptr %38, align 1
  %dev.i109 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %40 = ptrtoint ptr %dev.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i109, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i110 = shl i32 %43, 8
  %or.i111 = or i32 %shl.i.i110, -2147483648
  %44 = load ptr, ptr %usb_buf.i108, align 4
  %call11.i112 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i111, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %44, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i112)
  %cmp12.i113 = icmp slt i32 %call11.i112, 0
  br i1 %cmp12.i113, label %do.end17.i116, label %do.end7.i114.reg_w1.exit117_crit_edge

do.end7.i114.reg_w1.exit117_crit_edge:            ; preds = %do.end7.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit117

do.end17.i116:                                    ; preds = %do.end7.i114
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i112) #9
  %45 = ptrtoint ptr %usb_err.i100 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call11.i112, ptr %usb_err.i100, align 8
  br label %reg_w1.exit117

reg_w1.exit117:                                   ; preds = %do.end17.i116, %do.end7.i114.reg_w1.exit117_crit_edge, %sw.bb10.reg_w1.exit117_crit_edge
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @sd_stopN.stophv7131)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge304
  %46 = and i8 %1, -5
  %usb_err.i118 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %47 = ptrtoint ptr %usb_err.i118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usb_err.i118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i119 = icmp slt i32 %48, 0
  br i1 %cmp.i119, label %sw.bb14.reg_w1.exit135_crit_edge, label %do.body.i121

sw.bb14.reg_w1.exit135_crit_edge:                 ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit135

do.body.i121:                                     ; preds = %sw.bb14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %cmp1.i120 = icmp sgt i32 %49, 6
  br i1 %cmp1.i120, label %do.end.i125, label %do.body.i121.do.end7.i132_crit_edge

do.body.i121.do.end7.i132_crit_edge:              ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i132

do.end.i125:                                      ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #8
  %name.i122 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i123 = zext i8 %46 to i32
  %call.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i122, i32 noundef 1, i32 noundef %conv4.i123) #9
  br label %do.end7.i132

do.end7.i132:                                     ; preds = %do.end.i125, %do.body.i121.do.end7.i132_crit_edge
  %usb_buf.i126 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %50 = ptrtoint ptr %usb_buf.i126 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i126, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %46, ptr %51, align 1
  %dev.i127 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %53 = ptrtoint ptr %dev.i127 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i127, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i128 = shl i32 %56, 8
  %or.i129 = or i32 %shl.i.i128, -2147483648
  %57 = load ptr, ptr %usb_buf.i126, align 4
  %call11.i130 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i129, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %57, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i130)
  %cmp12.i131 = icmp slt i32 %call11.i130, 0
  br i1 %cmp12.i131, label %do.end17.i134, label %do.end7.i132.reg_w1.exit135_crit_edge

do.end7.i132.reg_w1.exit135_crit_edge:            ; preds = %do.end7.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit135

do.end17.i134:                                    ; preds = %do.end7.i132
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i130) #9
  %58 = ptrtoint ptr %usb_err.i118 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call11.i130, ptr %usb_err.i118, align 8
  br label %reg_w1.exit135

reg_w1.exit135:                                   ; preds = %do.end17.i134, %do.end7.i132.reg_w1.exit135_crit_edge, %sw.bb14.reg_w1.exit135_crit_edge
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @sd_stopN.stopmi0360)
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry.sw.bb18_crit_edge, %entry.sw.bb18_crit_edge305, %entry.sw.bb18_crit_edge306
  %59 = and i8 %1, -5
  %usb_err.i136 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %60 = ptrtoint ptr %usb_err.i136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %usb_err.i136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i137 = icmp slt i32 %61, 0
  br i1 %cmp.i137, label %sw.bb18.sw.epilog_crit_edge, label %do.body.i139

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i139:                                     ; preds = %sw.bb18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %62 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp1.i138 = icmp sgt i32 %62, 6
  br i1 %cmp1.i138, label %do.end.i143, label %do.body.i139.do.end7.i150_crit_edge

do.body.i139.do.end7.i150_crit_edge:              ; preds = %do.body.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i150

do.end.i143:                                      ; preds = %do.body.i139
  call void @__sanitizer_cov_trace_pc() #8
  %name.i140 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i141 = zext i8 %59 to i32
  %call.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i140, i32 noundef 1, i32 noundef %conv4.i141) #9
  br label %do.end7.i150

do.end7.i150:                                     ; preds = %do.end.i143, %do.body.i139.do.end7.i150_crit_edge
  %usb_buf.i144 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %63 = ptrtoint ptr %usb_buf.i144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_buf.i144, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %59, ptr %64, align 1
  %dev.i145 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %66 = ptrtoint ptr %dev.i145 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i145, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i146 = shl i32 %69, 8
  %or.i147 = or i32 %shl.i.i146, -2147483648
  %70 = load ptr, ptr %usb_buf.i144, align 4
  %call11.i148 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i147, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %70, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i148)
  %cmp12.i149 = icmp slt i32 %call11.i148, 0
  br i1 %cmp12.i149, label %do.end17.i152, label %do.end7.i150.sw.epilog_crit_edge

do.end7.i150.sw.epilog_crit_edge:                 ; preds = %do.end7.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17.i152:                                    ; preds = %do.end7.i150
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i148) #9
  %71 = ptrtoint ptr %usb_err.i136 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call11.i148, ptr %usb_err.i136, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge307
  %72 = and i8 %1, -5
  %usb_err.i154 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %73 = ptrtoint ptr %usb_err.i154 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %usb_err.i154, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i155 = icmp slt i32 %74, 0
  br i1 %cmp.i155, label %sw.bb22.reg_w1.exit171_crit_edge, label %do.body.i157

sw.bb22.reg_w1.exit171_crit_edge:                 ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171

do.body.i157:                                     ; preds = %sw.bb22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %75 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %75)
  %cmp1.i156 = icmp sgt i32 %75, 6
  br i1 %cmp1.i156, label %do.end.i161, label %do.body.i157.do.end7.i168_crit_edge

do.body.i157.do.end7.i168_crit_edge:              ; preds = %do.body.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i168

do.end.i161:                                      ; preds = %do.body.i157
  call void @__sanitizer_cov_trace_pc() #8
  %name.i158 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i159 = zext i8 %72 to i32
  %call.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i158, i32 noundef 1, i32 noundef %conv4.i159) #9
  br label %do.end7.i168

do.end7.i168:                                     ; preds = %do.end.i161, %do.body.i157.do.end7.i168_crit_edge
  %usb_buf.i162 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %76 = ptrtoint ptr %usb_buf.i162 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i162, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %72, ptr %77, align 1
  %dev.i163 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %79 = ptrtoint ptr %dev.i163 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i163, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %shl.i.i164 = shl i32 %82, 8
  %or.i165 = or i32 %shl.i.i164, -2147483648
  %83 = load ptr, ptr %usb_buf.i162, align 4
  %call11.i166 = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or.i165, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %83, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i166)
  %cmp12.i167 = icmp slt i32 %call11.i166, 0
  br i1 %cmp12.i167, label %do.end17.i170, label %do.end7.i168.reg_w1.exit171_crit_edge

do.end7.i168.reg_w1.exit171_crit_edge:            ; preds = %do.end7.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit171

do.end17.i170:                                    ; preds = %do.end7.i168
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i166) #9
  %84 = ptrtoint ptr %usb_err.i154 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call11.i166, ptr %usb_err.i154, align 8
  br label %reg_w1.exit171

reg_w1.exit171:                                   ; preds = %do.end17.i170, %do.end7.i168.reg_w1.exit171_crit_edge, %sw.bb22.reg_w1.exit171_crit_edge
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @sd_stopN.stopov7648)
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %85 = and i8 %1, -5
  %usb_err.i172 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %86 = ptrtoint ptr %usb_err.i172 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usb_err.i172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i173 = icmp slt i32 %87, 0
  br i1 %cmp.i173, label %sw.bb26.sw.epilog_crit_edge, label %do.body.i175

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i175:                                     ; preds = %sw.bb26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %88 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %88)
  %cmp1.i174 = icmp sgt i32 %88, 6
  br i1 %cmp1.i174, label %do.end.i179, label %do.body.i175.do.end7.i186_crit_edge

do.body.i175.do.end7.i186_crit_edge:              ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i186

do.end.i179:                                      ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  %name.i176 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i177 = zext i8 %85 to i32
  %call.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i176, i32 noundef 1, i32 noundef %conv4.i177) #9
  br label %do.end7.i186

do.end7.i186:                                     ; preds = %do.end.i179, %do.body.i175.do.end7.i186_crit_edge
  %usb_buf.i180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %89 = ptrtoint ptr %usb_buf.i180 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %usb_buf.i180, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %85, ptr %90, align 1
  %dev.i181 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %92 = ptrtoint ptr %dev.i181 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i181, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i182 = shl i32 %95, 8
  %or.i183 = or i32 %shl.i.i182, -2147483648
  %96 = load ptr, ptr %usb_buf.i180, align 4
  %call11.i184 = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or.i183, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %96, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i184)
  %cmp12.i185 = icmp slt i32 %call11.i184, 0
  br i1 %cmp12.i185, label %do.end17.i188, label %do.end7.i186.sw.epilog_crit_edge

do.end7.i186.sw.epilog_crit_edge:                 ; preds = %do.end7.i186
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17.i188:                                    ; preds = %do.end7.i186
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i184) #9
  %97 = ptrtoint ptr %usb_err.i172 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call11.i184, ptr %usb_err.i172, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @sd_stopN.stopsoi768)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %do.end17.i188, %do.end7.i186.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge, %reg_w1.exit171, %do.end17.i152, %do.end7.i150.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %reg_w1.exit135, %reg_w1.exit117, %do.end17.i98, %do.end7.i96.sw.epilog_crit_edge, %reg_w1.exit.sw.epilog_crit_edge, %reg_w1.exit.thread, %entry.sw.epilog_crit_edge
  %reg01.0 = phi i8 [ %1, %entry.sw.epilog_crit_edge ], [ %1, %sw.bb30 ], [ %72, %reg_w1.exit171 ], [ %46, %reg_w1.exit135 ], [ %33, %reg_w1.exit117 ], [ %20, %reg_w1.exit.thread ], [ %22, %reg_w1.exit.sw.epilog_crit_edge ], [ %22, %do.end7.i96.sw.epilog_crit_edge ], [ %22, %do.end17.i98 ], [ %59, %sw.bb18.sw.epilog_crit_edge ], [ %59, %do.end7.i150.sw.epilog_crit_edge ], [ %59, %do.end17.i152 ], [ %85, %sw.bb26.sw.epilog_crit_edge ], [ %85, %do.end7.i186.sw.epilog_crit_edge ], [ %85, %do.end17.i188 ]
  %98 = and i8 %3, -33
  %99 = or i8 %reg01.0, 32
  %usb_err.i190 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %100 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %usb_err.i190, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i191 = icmp slt i32 %101, 0
  br i1 %cmp.i191, label %sw.epilog.reg_w1.exit207.thread_crit_edge, label %do.body.i193

sw.epilog.reg_w1.exit207.thread_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit207.thread

do.body.i193:                                     ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %102 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %102)
  %cmp1.i192 = icmp sgt i32 %102, 6
  br i1 %cmp1.i192, label %do.end.i197, label %do.body.i193.do.end7.i204_crit_edge

do.body.i193.do.end7.i204_crit_edge:              ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i204

do.end.i197:                                      ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #8
  %name.i194 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i195 = zext i8 %99 to i32
  %call.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i194, i32 noundef 1, i32 noundef %conv4.i195) #9
  br label %do.end7.i204

do.end7.i204:                                     ; preds = %do.end.i197, %do.body.i193.do.end7.i204_crit_edge
  %usb_buf.i198 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %103 = ptrtoint ptr %usb_buf.i198 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %usb_buf.i198, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %99, ptr %104, align 1
  %dev.i199 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %106 = ptrtoint ptr %dev.i199 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i199, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  %shl.i.i200 = shl i32 %109, 8
  %or.i201 = or i32 %shl.i.i200, -2147483648
  %110 = load ptr, ptr %usb_buf.i198, align 4
  %call11.i202 = tail call i32 @usb_control_msg(ptr noundef %107, i32 noundef %or.i201, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %110, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i202)
  %cmp12.i203 = icmp slt i32 %call11.i202, 0
  br i1 %cmp12.i203, label %do.end17.i206, label %reg_w1.exit207

do.end17.i206:                                    ; preds = %do.end7.i204
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i202) #9
  %111 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call11.i202, ptr %usb_err.i190, align 8
  br label %reg_w1.exit207.thread

reg_w1.exit207.thread:                            ; preds = %do.end17.i206, %sw.epilog.reg_w1.exit207.thread_crit_edge
  %112 = or i8 %reg01.0, 33
  br label %reg_w1.exit225

reg_w1.exit207:                                   ; preds = %do.end7.i204
  %113 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr281 = load i32, ptr %usb_err.i190, align 8
  %114 = or i8 %reg01.0, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr281)
  %cmp.i209 = icmp slt i32 %.pr281, 0
  br i1 %cmp.i209, label %reg_w1.exit207.reg_w1.exit279_crit_edge, label %do.body.i211

reg_w1.exit207.reg_w1.exit279_crit_edge:          ; preds = %reg_w1.exit207
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279

do.body.i211:                                     ; preds = %reg_w1.exit207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %115 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %115)
  %cmp1.i210 = icmp sgt i32 %115, 6
  br i1 %cmp1.i210, label %do.end.i215, label %do.body.i211.do.end7.i222_crit_edge

do.body.i211.do.end7.i222_crit_edge:              ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i222

do.end.i215:                                      ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #8
  %name.i212 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i213 = zext i8 %114 to i32
  %call.i214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i212, i32 noundef 1, i32 noundef %conv4.i213) #9
  br label %do.end7.i222

do.end7.i222:                                     ; preds = %do.end.i215, %do.body.i211.do.end7.i222_crit_edge
  %116 = ptrtoint ptr %usb_buf.i198 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb_buf.i198, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %114, ptr %117, align 1
  %119 = ptrtoint ptr %dev.i199 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i199, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  %shl.i.i218 = shl i32 %122, 8
  %or.i219 = or i32 %shl.i.i218, -2147483648
  %123 = load ptr, ptr %usb_buf.i198, align 4
  %call11.i220 = tail call i32 @usb_control_msg(ptr noundef %120, i32 noundef %or.i219, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %123, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i220)
  %cmp12.i221 = icmp slt i32 %call11.i220, 0
  br i1 %cmp12.i221, label %do.end7.i222.reg_w1.exit279.sink.split_crit_edge, label %do.end7.i222.reg_w1.exit225_crit_edge

do.end7.i222.reg_w1.exit225_crit_edge:            ; preds = %do.end7.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit225

do.end7.i222.reg_w1.exit279.sink.split_crit_edge: ; preds = %do.end7.i222
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279.sink.split

reg_w1.exit225:                                   ; preds = %do.end7.i222.reg_w1.exit225_crit_edge, %reg_w1.exit207.thread
  %.ph = phi i8 [ %114, %do.end7.i222.reg_w1.exit225_crit_edge ], [ %112, %reg_w1.exit207.thread ]
  %124 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr283 = load i32, ptr %usb_err.i190, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr283)
  %cmp.i227 = icmp slt i32 %.pr283, 0
  br i1 %cmp.i227, label %reg_w1.exit225.reg_w1.exit243.thread_crit_edge, label %do.body.i229

reg_w1.exit225.reg_w1.exit243.thread_crit_edge:   ; preds = %reg_w1.exit225
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit243.thread

do.body.i229:                                     ; preds = %reg_w1.exit225
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %125 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %125)
  %cmp1.i228 = icmp sgt i32 %125, 6
  br i1 %cmp1.i228, label %do.end.i233, label %do.body.i229.do.end7.i240_crit_edge

do.body.i229.do.end7.i240_crit_edge:              ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i240

do.end.i233:                                      ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #8
  %name.i230 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i231 = zext i8 %98 to i32
  %call.i232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i230, i32 noundef 23, i32 noundef %conv4.i231) #9
  br label %do.end7.i240

do.end7.i240:                                     ; preds = %do.end.i233, %do.body.i229.do.end7.i240_crit_edge
  %usb_buf.i234 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %126 = ptrtoint ptr %usb_buf.i234 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb_buf.i234, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %98, ptr %127, align 1
  %dev.i235 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %129 = ptrtoint ptr %dev.i235 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i235, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  %shl.i.i236 = shl i32 %132, 8
  %or.i237 = or i32 %shl.i.i236, -2147483648
  %133 = load ptr, ptr %usb_buf.i234, align 4
  %call11.i238 = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or.i237, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 23, i16 noundef zeroext 0, ptr noundef %133, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i238)
  %cmp12.i239 = icmp slt i32 %call11.i238, 0
  br i1 %cmp12.i239, label %do.end17.i242, label %reg_w1.exit243

do.end17.i242:                                    ; preds = %do.end7.i240
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i238) #9
  %134 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %call11.i238, ptr %usb_err.i190, align 8
  br label %reg_w1.exit243.thread

reg_w1.exit243.thread:                            ; preds = %do.end17.i242, %reg_w1.exit225.reg_w1.exit243.thread_crit_edge
  %135 = and i8 %.ph, -65
  br label %reg_w1.exit261

reg_w1.exit243:                                   ; preds = %do.end7.i240
  %136 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr287.pr = load i32, ptr %usb_err.i190, align 8
  %137 = and i8 %.ph, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr287.pr)
  %cmp.i245 = icmp slt i32 %.pr287.pr, 0
  br i1 %cmp.i245, label %reg_w1.exit243.reg_w1.exit279_crit_edge, label %do.body.i247

reg_w1.exit243.reg_w1.exit279_crit_edge:          ; preds = %reg_w1.exit243
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279

do.body.i247:                                     ; preds = %reg_w1.exit243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %138 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %138)
  %cmp1.i246 = icmp sgt i32 %138, 6
  br i1 %cmp1.i246, label %do.end.i251, label %do.body.i247.do.end7.i258_crit_edge

do.body.i247.do.end7.i258_crit_edge:              ; preds = %do.body.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i258

do.end.i251:                                      ; preds = %do.body.i247
  call void @__sanitizer_cov_trace_pc() #8
  %name.i248 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i249 = zext i8 %137 to i32
  %call.i250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i248, i32 noundef 1, i32 noundef %conv4.i249) #9
  br label %do.end7.i258

do.end7.i258:                                     ; preds = %do.end.i251, %do.body.i247.do.end7.i258_crit_edge
  %139 = ptrtoint ptr %usb_buf.i234 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %usb_buf.i234, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %137, ptr %140, align 1
  %142 = ptrtoint ptr %dev.i235 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i235, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 8
  %shl.i.i254 = shl i32 %145, 8
  %or.i255 = or i32 %shl.i.i254, -2147483648
  %146 = load ptr, ptr %usb_buf.i234, align 4
  %call11.i256 = tail call i32 @usb_control_msg(ptr noundef %143, i32 noundef %or.i255, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %146, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i256)
  %cmp12.i257 = icmp slt i32 %call11.i256, 0
  br i1 %cmp12.i257, label %do.end7.i258.reg_w1.exit279.sink.split_crit_edge, label %do.end7.i258.reg_w1.exit261_crit_edge

do.end7.i258.reg_w1.exit261_crit_edge:            ; preds = %do.end7.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit261

do.end7.i258.reg_w1.exit279.sink.split_crit_edge: ; preds = %do.end7.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279.sink.split

reg_w1.exit261:                                   ; preds = %do.end7.i258.reg_w1.exit261_crit_edge, %reg_w1.exit243.thread
  %.ph290 = phi i8 [ %137, %do.end7.i258.reg_w1.exit261_crit_edge ], [ %135, %reg_w1.exit243.thread ]
  %147 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr291 = load i32, ptr %usb_err.i190, align 8
  %148 = or i8 %.ph290, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr291)
  %cmp.i263 = icmp slt i32 %.pr291, 0
  br i1 %cmp.i263, label %reg_w1.exit261.reg_w1.exit279_crit_edge, label %do.body.i265

reg_w1.exit261.reg_w1.exit279_crit_edge:          ; preds = %reg_w1.exit261
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279

do.body.i265:                                     ; preds = %reg_w1.exit261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %149 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %149)
  %cmp1.i264 = icmp sgt i32 %149, 6
  br i1 %cmp1.i264, label %do.end.i269, label %do.body.i265.do.end7.i276_crit_edge

do.body.i265.do.end7.i276_crit_edge:              ; preds = %do.body.i265
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i276

do.end.i269:                                      ; preds = %do.body.i265
  call void @__sanitizer_cov_trace_pc() #8
  %name.i266 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i267 = zext i8 %148 to i32
  %call.i268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i266, i32 noundef 1, i32 noundef %conv4.i267) #9
  br label %do.end7.i276

do.end7.i276:                                     ; preds = %do.end.i269, %do.body.i265.do.end7.i276_crit_edge
  %usb_buf.i270 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %150 = ptrtoint ptr %usb_buf.i270 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %usb_buf.i270, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %148, ptr %151, align 1
  %dev.i271 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %153 = ptrtoint ptr %dev.i271 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i271, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 8
  %shl.i.i272 = shl i32 %156, 8
  %or.i273 = or i32 %shl.i.i272, -2147483648
  %157 = load ptr, ptr %usb_buf.i270, align 4
  %call11.i274 = tail call i32 @usb_control_msg(ptr noundef %154, i32 noundef %or.i273, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %157, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i274)
  %cmp12.i275 = icmp slt i32 %call11.i274, 0
  br i1 %cmp12.i275, label %do.end7.i276.reg_w1.exit279.sink.split_crit_edge, label %do.end7.i276.reg_w1.exit279_crit_edge

do.end7.i276.reg_w1.exit279_crit_edge:            ; preds = %do.end7.i276
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279

do.end7.i276.reg_w1.exit279.sink.split_crit_edge: ; preds = %do.end7.i276
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit279.sink.split

reg_w1.exit279.sink.split:                        ; preds = %do.end7.i276.reg_w1.exit279.sink.split_crit_edge, %do.end7.i258.reg_w1.exit279.sink.split_crit_edge, %do.end7.i222.reg_w1.exit279.sink.split_crit_edge
  %call11.i220.sink300 = phi i32 [ %call11.i220, %do.end7.i222.reg_w1.exit279.sink.split_crit_edge ], [ %call11.i256, %do.end7.i258.reg_w1.exit279.sink.split_crit_edge ], [ %call11.i274, %do.end7.i276.reg_w1.exit279.sink.split_crit_edge ]
  %call19.i223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i220.sink300) #9
  %158 = ptrtoint ptr %usb_err.i190 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %call11.i220.sink300, ptr %usb_err.i190, align 8
  br label %reg_w1.exit279

reg_w1.exit279:                                   ; preds = %reg_w1.exit279.sink.split, %do.end7.i276.reg_w1.exit279_crit_edge, %reg_w1.exit261.reg_w1.exit279_crit_edge, %reg_w1.exit243.reg_w1.exit279_crit_edge, %reg_w1.exit207.reg_w1.exit279_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #6
  %work = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #6
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ag_cnt = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 22
  %0 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ag_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp slt i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add nsw i8 %1, -1
  %2 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dec, ptr %ag_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4.not = icmp eq i8 %1, 0
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %ag_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %ag_cnt, align 1
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_lum, i32 noundef 4) #6
  %4 = ptrtoint ptr %avg_lum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %avg_lum, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp9 = icmp sgt i32 %6, 3
  br i1 %cmp9, label %do.end, label %if.end7.do.end16_crit_edge

if.end7.do.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name, i32 noundef %5) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end, %if.end7.do.end16_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %7 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp18 = icmp eq i8 %8, 12
  br i1 %cmp18, label %if.then20, label %if.end24

if.then20:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @gspca_expo_autogain(ptr noundef %gspca_dev, i32 noundef %5, i32 noundef 130, i32 noundef 20, i32 noundef 15, i32 noundef 1024) #6
  br label %cleanup

if.end24:                                         ; preds = %do.end16
  %9 = add i32 %5, -151
  call void @__sanitizer_cov_trace_const_cmp4(i32 -41, i32 %9)
  %10 = icmp ult i32 %9, -41
  br i1 %10, label %if.then33, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.end24
  %11 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %8, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb45
    i8 7, label %if.then33.sw.bb58_crit_edge
    i8 6, label %if.then33.sw.bb58_crit_edge136
  ]

if.then33.sw.bb58_crit_edge136:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58

if.then33.sw.bb58_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58

sw.bb:                                            ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %exposure = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %12 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exposure, align 8
  %sub37 = sub i32 130, %5
  %shr = ashr i32 %sub37, 6
  %add38 = add i32 %13, %shr
  %14 = tail call i32 @llvm.smax.i32(i32 %add38, i32 0)
  %call43 = tail call fastcc i32 @expo_adjust(ptr noundef %gspca_dev, i32 noundef %14)
  %15 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call43, ptr %exposure, align 8
  br label %cleanup

sw.bb45:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %exposure46 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %16 = ptrtoint ptr %exposure46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exposure46, align 8
  %shr47 = lshr i32 %17, 8
  %sub49 = sub i32 130, %5
  %shr50 = ashr i32 %sub49, 4
  %add51 = add nsw i32 %shr47, %shr50
  %18 = tail call i32 @llvm.smax.i32(i32 %add51, i32 0)
  %shl = shl i32 %18, 8
  %call56 = tail call fastcc i32 @expo_adjust(ptr noundef %gspca_dev, i32 noundef %shl)
  %19 = ptrtoint ptr %exposure46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call56, ptr %exposure46, align 8
  br label %cleanup

sw.bb58:                                          ; preds = %if.then33.sw.bb58_crit_edge, %if.then33.sw.bb58_crit_edge136
  %exposure59 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %20 = ptrtoint ptr %exposure59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exposure59, align 8
  %sub61 = sub i32 130, %5
  %shr62 = ashr i32 %sub61, 2
  %add63 = add i32 %21, %shr62
  %22 = tail call i32 @llvm.smax.i32(i32 %add63, i32 0)
  %call68 = tail call fastcc i32 @expo_adjust(ptr noundef %gspca_dev, i32 noundef %22)
  %23 = ptrtoint ptr %exposure59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call68, ptr %exposure59, align 8
  tail call fastcc void @setredblue(ptr noundef %gspca_dev)
  br label %cleanup

sw.default:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %exposure70 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %24 = ptrtoint ptr %exposure70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %exposure70, align 8
  %sub72 = sub i32 130, %5
  %shr73 = ashr i32 %sub72, 6
  %add74 = add i32 %25, %shr73
  %26 = tail call i32 @llvm.smax.i32(i32 %add74, i32 0)
  %call79 = tail call fastcc i32 @expo_adjust(ptr noundef %gspca_dev, i32 noundef %26)
  %27 = ptrtoint ptr %exposure70 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call79, ptr %exposure70, align 8
  tail call fastcc void @setredblue(ptr noundef %gspca_dev)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb58, %sw.bb45, %sw.bb, %if.end24.cleanup_crit_edge, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1 = icmp eq i8 %1, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 212, i32 noundef 1) #6
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 212, i32 noundef 0) #6
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qual_upd(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr i8, ptr %work, i32 -168
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr i8, ptr %work, i32 -1244
  %quality = getelementptr i8, ptr %work, i32 52
  %1 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %quality, align 8
  %conv = zext i8 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %conv) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -2660
  %usb_err = getelementptr i8, ptr %work, i32 -76
  %3 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %usb_err, align 8
  tail call fastcc void @setjpegqual(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %usb_lock) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setjpegqual(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 26
  %quality = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 17
  %0 = ptrtoint ptr %quality to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %quality, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  br i1 %cmp.i, label %entry.if.end4.i_crit_edge, label %if.else.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %1)
  %cmp1.i = icmp ult i8 %1, 50
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %div31.rhs.trunc.i = zext i8 %1 to i16
  %div3132.i = udiv i16 5000, %div31.rhs.trunc.i
  %div31.zext.i = zext i16 %div3132.i to i32
  br label %if.end4.i

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.neg.i = mul nsw i32 %conv, -2
  %sub.i = add nsw i32 %mul.neg.i, 200
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else3.i, %if.then2.i, %entry.if.end4.i_crit_edge
  %sc.0.i = phi i32 [ %div31.zext.i, %if.then2.i ], [ %sub.i, %if.else3.i ], [ 5000, %entry.if.end4.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i
  %i.033.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.033.i, 7
  %arrayidx.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %mul6.i = mul nsw i32 %sc.0.i, %conv.i
  %add7.i = add nsw i32 %mul6.i, 50
  %div8.i = sdiv i32 %add7.i, 100
  %conv9.i = trunc i32 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %4 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.033.i, 72
  %arrayidx13.i = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %5 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %6 to i32
  %mul15.i = mul nsw i32 %sc.0.i, %conv14.i
  %add16.i = add nsw i32 %mul15.i, 50
  %div17.i = sdiv i32 %add16.i, 100
  %conv18.i = trunc i32 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %7 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %8 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf, align 4
  %arrayidx = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 7
  %10 = call ptr @memcpy(ptr %9, ptr %arrayidx, i32 64)
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -2147483648
  %15 = load ptr, ptr %usb_buf, align 4
  %call4 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef %15, i16 noundef zeroext 64, i32 noundef 500) #6
  %16 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf, align 4
  %arrayidx7 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 26, i32 72
  %18 = call ptr @memcpy(ptr %17, ptr %arrayidx7, i32 64)
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i31 = shl i32 %22, 8
  %or11 = or i32 %shl.i31, -2147483648
  %23 = load ptr, ptr %usb_buf, align 4
  %call13 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or11, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 320, i16 noundef zeroext 0, ptr noundef %23, i16 noundef zeroext 64, i32 noundef 500) #6
  %reg18 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 20
  %24 = ptrtoint ptr %reg18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg18, align 1
  %26 = xor i8 %25, 64
  store i8 %26, ptr %reg18, align 1
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i32 = icmp slt i32 %28, 0
  br i1 %cmp.i32, label %jpeg_set_qual.exit.reg_w1.exit_crit_edge, label %do.body.i

jpeg_set_qual.exit.reg_w1.exit_crit_edge:         ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.body.i:                                        ; preds = %jpeg_set_qual.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %cmp1.i33 = icmp sgt i32 %29, 6
  br i1 %cmp1.i33, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %26 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 24, i32 noundef %conv4.i) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %30 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %26, ptr %31, align 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i = shl i32 %36, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %37 = load ptr, ptr %usb_buf, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 24, i16 noundef zeroext 0, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end7.i.reg_w1.exit_crit_edge

do.end7.i.reg_w1.exit_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %38 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %do.end17.i, %do.end7.i.reg_w1.exit_crit_edge, %jpeg_set_qual.exit.reg_w1.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr nocapture noundef readonly %buffer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1 = icmp sgt i32 %2, 6
  br i1 %cmp1, label %do.end, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %arrayidx = getelementptr i8, ptr %buffer, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %arrayidx4 = getelementptr i8, ptr %buffer, i32 3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %conv, i32 noundef %conv5) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf, align 4
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %buffer, align 1
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %8, align 1
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -2147483648
  %16 = load ptr, ptr %usb_buf, align 4
  %call12 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef %16, i16 noundef zeroext 8, i32 noundef 500) #6
  tail call void @msleep(i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end18, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call12) #9
  %17 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call12, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_r(ptr noundef %gspca_dev, i8 noundef zeroext %reg, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %mode = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mode) #6
  %0 = getelementptr inbounds [8 x i8], ptr %mode, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %mode, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %mode, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %mode, i32 0, i32 7
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %5, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 7, label %entry.sw.epilog_crit_edge20
    i8 1, label %entry.sw.epilog_crit_edge21
  ]

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21
  %storemerge = phi i8 [ -111, %sw.default ], [ -112, %entry.sw.epilog_crit_edge ], [ -112, %entry.sw.epilog_crit_edge20 ], [ -112, %entry.sw.epilog_crit_edge21 ]
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %mode, align 1
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 25
  %8 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_addr, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %2, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %3, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %mode)
  tail call void @msleep(i32 noundef 2) #6
  %14 = and i8 %storemerge, -127
  %len.tr = trunc i32 %len to i8
  %15 = shl i8 %len.tr, 4
  %16 = or i8 %15, %14
  %conv12 = or i8 %16, 2
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %mode, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %1, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %mode)
  tail call void @msleep(i32 noundef 2) #6
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %sw.epilog.reg_r.exit_crit_edge, label %if.end3.i

sw.epilog.reg_r.exit_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end3.i:                                        ; preds = %sw.epilog
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i = shl i32 %24, 8
  %or6.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or6.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 10, i16 noundef zeroext 0, ptr noundef %26, i16 noundef zeroext 5, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp9.i = icmp sgt i32 %27, 5
  br i1 %cmp9.i, label %do.end14.i, label %if.end3.i.do.end25.i_crit_edge

if.end3.i.do.end25.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25.i

do.end14.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %name17.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv21.i = zext i8 %31 to i32
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name17.i, i32 noundef 10, i32 noundef %conv21.i) #9
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end14.i, %if.end3.i.do.end25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp26.i = icmp slt i32 %call7.i, 0
  br i1 %cmp26.i, label %do.end31.i, label %do.end25.i.reg_r.exit_crit_edge

do.end25.i.reg_r.exit_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end31.i:                                       ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call7.i) #9
  %32 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call7.i, ptr %usb_err.i, align 8
  %33 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i, align 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 64)
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end31.i, %do.end25.i.reg_r.exit_crit_edge, %sw.epilog.reg_r.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %rgain.i = alloca [8 x i8], align 8
  %rexpo.i = alloca [8 x i8], align 8
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
  %4 = load i8, ptr %streaming, align 2, !range !330
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb2
    i32 9963790, label %sw.bb3
    i32 9963792, label %sw.bb4
    i32 9963794, label %sw.bb5
    i32 9963797, label %sw.bb6
    i32 9963803, label %sw.bb7
    i32 9963813, label %sw.bb8
    i32 9963800, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %brightness1.i = getelementptr i8, ptr %1, i32 1028
  %8 = ptrtoint ptr %brightness1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %brightness1.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %sub.i = add i32 %11, 896
  %12 = lshr i32 %sub.i, 2
  %conv.i = trunc i32 %12 to i8
  %sensor.i = getelementptr i8, ptr %1, i32 1135
  %13 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sensor.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %14, label %sw.bb.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 2, label %sw.bb5.i
    i8 3, label %sw.bb.sw.bb14.i_crit_edge
    i8 5, label %sw.bb.sw.bb14.i_crit_edge112
    i8 4, label %sw.bb18.i
    i8 1, label %sw.bb22.i
    i8 6, label %sw.bb25.i
    i8 7, label %sw.bb29.i
  ]

sw.bb.sw.bb14.i_crit_edge112:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

sw.bb.sw.bb14.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %16 = and i32 %sub.i, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  %spec.store.select.i = select i1 %cmp.not.i, i8 %conv.i, i8 0
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %shl.i)
  %cmp6.i = icmp ugt i32 %shl.i, 3000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp9.i = icmp eq i32 %shl.i, 0
  %spec.store.select36.i = select i1 %cmp9.i, i32 672, i32 %shl.i
  %expo.0.i = select i1 %cmp6.i, i32 3000000, i32 %spec.store.select36.i
  %call.i = tail call fastcc i32 @expo_adjust(ptr noundef %add.ptr, i32 noundef %expo.0.i) #6
  %exposure.i = getelementptr i8, ptr %1, i32 1072
  %17 = ptrtoint ptr %exposure.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %exposure.i, align 8
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %sw.bb.sw.bb14.i_crit_edge, %sw.bb.sw.bb14.i_crit_edge112
  %shl15.i = shl i32 %11, 4
  %call16.i = tail call fastcc i32 @expo_adjust(ptr noundef %add.ptr, i32 noundef %shl15.i) #6
  %exposure17.i = getelementptr i8, ptr %1, i32 1072
  %18 = ptrtoint ptr %exposure17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call16.i, ptr %exposure17.i, align 8
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shl19.i = shl i32 %11, 2
  %call20.i = tail call fastcc i32 @expo_adjust(ptr noundef %add.ptr, i32 noundef %shl19.i) #6
  %exposure21.i = getelementptr i8, ptr %1, i32 1072
  %19 = ptrtoint ptr %exposure21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call20.i, ptr %exposure21.i, align 8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = tail call fastcc i32 @expo_adjust(ptr noundef %add.ptr, i32 noundef %11) #6
  %exposure24.i = getelementptr i8, ptr %1, i32 1072
  %20 = ptrtoint ptr %exposure24.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call23.i, ptr %exposure24.i, align 8
  br label %sw.epilog

sw.bb25.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shl26.i = shl i32 %11, 2
  %call27.i = tail call fastcc i32 @expo_adjust(ptr noundef %add.ptr, i32 noundef %shl26.i) #6
  %exposure28.i = getelementptr i8, ptr %1, i32 1072
  %21 = ptrtoint ptr %exposure28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call27.i, ptr %exposure28.i, align 8
  br label %sw.epilog

sw.bb29.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shl30.i = shl i32 %11, 2
  %call31.i = tail call fastcc i32 @expo_adjust(ptr noundef %add.ptr, i32 noundef %shl30.i) #6
  %exposure32.i = getelementptr i8, ptr %1, i32 1072
  %22 = ptrtoint ptr %exposure32.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call31.i, ptr %exposure32.i, align 8
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %sw.bb18.i, %sw.bb14.i, %sw.bb5.i, %sw.bb.i, %sw.bb.sw.epilog.i_crit_edge
  %k2.0.i = phi i8 [ %conv.i, %sw.bb.sw.epilog.i_crit_edge ], [ %conv.i, %sw.bb18.i ], [ %conv.i, %sw.bb14.i ], [ %conv.i, %sw.bb5.i ], [ %spec.store.select.i, %sw.bb.i ]
  %23 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp slt i32 %24, 0
  br i1 %cmp.i.i, label %sw.epilog.i.sw.epilog_crit_edge, label %do.body.i.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i.i:                                      ; preds = %sw.epilog.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp1.i.i = icmp sgt i32 %25, 6
  br i1 %cmp1.i.i, label %do.end.i.i, label %do.body.i.i.do.end7.i.i_crit_edge

do.body.i.i.do.end7.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv4.i.i = zext i8 %k2.0.i to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i, i32 noundef 150, i32 noundef %conv4.i.i) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end7.i.i_crit_edge
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %26 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %k2.0.i, ptr %27, align 1
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i.i = shl i32 %32, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %33 = load ptr, ptr %usb_buf.i.i, align 4
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 150, i16 noundef zeroext 0, ptr noundef %33, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end17.i.i, label %do.end7.i.i.sw.epilog_crit_edge

do.end7.i.i.sw.epilog_crit_edge:                  ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.i) #9
  %34 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call11.i.i, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %contrast1.i = getelementptr i8, ptr %1, i32 1032
  %35 = ptrtoint ptr %contrast1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %contrast1.i, align 8
  %val.i26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i26, align 4
  %mul.i = mul i32 %38, 37
  %div.i = sdiv i32 %mul.i, 128
  %39 = trunc i32 %div.i to i8
  %conv.i27 = add i8 %39, 37
  %conv2.i = zext i8 %conv.i27 to i16
  %add3.i = add nuw nsw i16 %conv2.i, 1
  %div417.i = lshr i16 %add3.i, 1
  %conv5.i = trunc i16 %div417.i to i8
  %div10.i = udiv i8 %conv.i27, 5
  %40 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i29 = icmp slt i32 %41, 0
  br i1 %cmp.i.i29, label %sw.bb1.sw.epilog_crit_edge, label %do.body.i.i31

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i.i31:                                    ; preds = %sw.bb1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp1.i.i30 = icmp sgt i32 %42, 6
  br i1 %cmp1.i.i30, label %do.end.i.i35, label %do.body.i.i31.if.end21.i.i_crit_edge

do.body.i.i31.if.end21.i.i_crit_edge:             ; preds = %do.body.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i.i

do.end.i.i35:                                     ; preds = %do.body.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i32 = getelementptr i8, ptr %1, i32 -168
  %conv4.i.i33 = zext i16 %div417.i to i32
  %call.i.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i.i32, i32 noundef 132, i32 noundef %conv4.i.i33, i32 noundef 0) #9
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %do.end.i.i35, %do.body.i.i31.if.end21.i.i_crit_edge
  %usb_buf.i.i36 = getelementptr i8, ptr %1, i32 204
  %43 = ptrtoint ptr %usb_buf.i.i36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i.i36, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv5.i, ptr %44, align 1
  %contrast.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %44, i32 1
  %46 = ptrtoint ptr %contrast.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %contrast.sroa.6.0..sroa_idx.i, align 1
  %contrast.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %44, i32 2
  %47 = ptrtoint ptr %contrast.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i27, ptr %contrast.sroa.9.0..sroa_idx.i, align 1
  %contrast.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %44, i32 3
  %48 = ptrtoint ptr %contrast.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %contrast.sroa.11.0..sroa_idx.i, align 1
  %contrast.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %44, i32 4
  %49 = ptrtoint ptr %contrast.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %div10.i, ptr %contrast.sroa.13.0..sroa_idx.i, align 1
  %contrast.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %44, i32 5
  %50 = ptrtoint ptr %contrast.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %contrast.sroa.15.0..sroa_idx.i, align 1
  %dev.i.i37 = getelementptr i8, ptr %1, i32 -100
  %51 = ptrtoint ptr %dev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i37, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i.i38 = shl i32 %54, 8
  %or.i.i39 = or i32 %shl.i.i.i38, -2147483648
  %55 = load ptr, ptr %usb_buf.i.i36, align 4
  %call26.i.i = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i.i39, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 132, i16 noundef zeroext 0, ptr noundef %55, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp27.i.i = icmp slt i32 %call26.i.i, 0
  br i1 %cmp27.i.i, label %do.end32.i.i, label %if.end21.i.i.sw.epilog_crit_edge

if.end21.i.i.sw.epilog_crit_edge:                 ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end32.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i.i) #9
  %56 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call26.i.i, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %saturation.i = getelementptr i8, ptr %1, i32 1036
  %57 = ptrtoint ptr %saturation.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %saturation.i, align 4
  %val.i40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %val.i40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i40, align 4
  %sensor.i41 = getelementptr i8, ptr %1, i32 1135
  %61 = ptrtoint ptr %sensor.i41 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sensor.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %62)
  %cmp.i = icmp eq i8 %62, 4
  %conv4.i = select i1 %cmp.i, i32 -20, i32 -24
  %mul.i42 = mul i32 %conv4.i, %60
  %div.i43 = sdiv i32 %mul.i42, 25
  %conv5.i44 = trunc i32 %div.i43 to i8
  %63 = lshr i32 %div.i43, 8
  %64 = trunc i32 %63 to i8
  %conv8.i = and i8 %64, 15
  %mul.1.i = mul i32 %60, -38
  %div.1.i = sdiv i32 %mul.1.i, 25
  %conv5.1.i = trunc i32 %div.1.i to i8
  %65 = lshr i32 %div.1.i, 8
  %66 = trunc i32 %65 to i8
  %conv8.1.i = and i8 %66, 15
  %mul.2.i = shl i32 %60, 6
  %div.2.i = sdiv i32 %mul.2.i, 25
  %conv5.2.i = trunc i32 %div.2.i to i8
  %67 = lshr i32 %div.2.i, 8
  %68 = trunc i32 %67 to i8
  %conv8.2.i = and i8 %68, 15
  %conv4.3.i = select i1 %cmp.i, i32 60, i32 62
  %mul.3.i = mul i32 %conv4.3.i, %60
  %div.3.i = sdiv i32 %mul.3.i, 25
  %conv5.3.i = trunc i32 %div.3.i to i8
  %69 = lshr i32 %div.3.i, 8
  %70 = trunc i32 %69 to i8
  %conv8.3.i = and i8 %70, 15
  %mul.4.i = mul i32 %60, -51
  %div.4.i = sdiv i32 %mul.4.i, 25
  %conv5.4.i = trunc i32 %div.4.i to i8
  %71 = lshr i32 %div.4.i, 8
  %72 = trunc i32 %71 to i8
  %conv8.4.i = and i8 %72, 15
  %mul.5.i = mul i32 %60, -9
  %div.5.i = sdiv i32 %mul.5.i, 25
  %conv5.5.i = trunc i32 %div.5.i to i8
  %73 = lshr i32 %div.5.i, 8
  %74 = trunc i32 %73 to i8
  %conv8.5.i = and i8 %74, 15
  %75 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i46 = icmp slt i32 %76, 0
  br i1 %cmp.i.i46, label %sw.bb2.sw.epilog_crit_edge, label %do.body.i.i48

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i.i48:                                    ; preds = %sw.bb2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %77)
  %cmp1.i.i47 = icmp sgt i32 %77, 6
  br i1 %cmp1.i.i47, label %do.end.i.i52, label %do.body.i.i48.if.end21.i.i59_crit_edge

do.body.i.i48.if.end21.i.i59_crit_edge:           ; preds = %do.body.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i.i59

do.end.i.i52:                                     ; preds = %do.body.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i49 = getelementptr i8, ptr %1, i32 -168
  %conv4.i.i50 = and i32 %div.i43, 255
  %conv6.i.i = zext i8 %conv8.i to i32
  %call.i.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i.i49, i32 noundef 138, i32 noundef %conv4.i.i50, i32 noundef %conv6.i.i) #9
  br label %if.end21.i.i59

if.end21.i.i59:                                   ; preds = %do.end.i.i52, %do.body.i.i48.if.end21.i.i59_crit_edge
  %usb_buf.i.i53 = getelementptr i8, ptr %1, i32 204
  %78 = ptrtoint ptr %usb_buf.i.i53 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i.i53, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv5.i44, ptr %79, align 1
  %reg8a.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 1
  %81 = ptrtoint ptr %reg8a.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv8.i, ptr %reg8a.sroa.6.0..sroa_idx.i, align 1
  %reg8a.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 2
  %82 = ptrtoint ptr %reg8a.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv5.1.i, ptr %reg8a.sroa.9.0..sroa_idx.i, align 1
  %reg8a.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 3
  %83 = ptrtoint ptr %reg8a.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv8.1.i, ptr %reg8a.sroa.11.0..sroa_idx.i, align 1
  %reg8a.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 4
  %84 = ptrtoint ptr %reg8a.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv5.2.i, ptr %reg8a.sroa.13.0..sroa_idx.i, align 1
  %reg8a.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 5
  %85 = ptrtoint ptr %reg8a.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv8.2.i, ptr %reg8a.sroa.15.0..sroa_idx.i, align 1
  %reg8a.sroa.17.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 6
  %86 = ptrtoint ptr %reg8a.sroa.17.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv5.3.i, ptr %reg8a.sroa.17.0..sroa_idx.i, align 1
  %reg8a.sroa.19.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 7
  %87 = ptrtoint ptr %reg8a.sroa.19.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv8.3.i, ptr %reg8a.sroa.19.0..sroa_idx.i, align 1
  %reg8a.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 8
  %88 = ptrtoint ptr %reg8a.sroa.21.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv5.4.i, ptr %reg8a.sroa.21.0..sroa_idx.i, align 1
  %reg8a.sroa.23.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 9
  %89 = ptrtoint ptr %reg8a.sroa.23.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv8.4.i, ptr %reg8a.sroa.23.0..sroa_idx.i, align 1
  %reg8a.sroa.25.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 10
  %90 = ptrtoint ptr %reg8a.sroa.25.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv5.5.i, ptr %reg8a.sroa.25.0..sroa_idx.i, align 1
  %reg8a.sroa.27.0..sroa_idx.i = getelementptr inbounds i8, ptr %79, i32 11
  %91 = ptrtoint ptr %reg8a.sroa.27.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv8.5.i, ptr %reg8a.sroa.27.0..sroa_idx.i, align 1
  %dev.i.i54 = getelementptr i8, ptr %1, i32 -100
  %92 = ptrtoint ptr %dev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i.i54, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i.i55 = shl i32 %95, 8
  %or.i.i56 = or i32 %shl.i.i.i55, -2147483648
  %96 = load ptr, ptr %usb_buf.i.i53, align 4
  %call26.i.i57 = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or.i.i56, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 138, i16 noundef zeroext 0, ptr noundef %96, i16 noundef zeroext 12, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i57)
  %cmp27.i.i58 = icmp slt i32 %call26.i.i57, 0
  br i1 %cmp27.i.i58, label %do.end32.i.i61, label %if.end21.i.i59.sw.epilog_crit_edge

if.end21.i.i59.sw.epilog_crit_edge:               ; preds = %if.end21.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end32.i.i61:                                   ; preds = %if.end21.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i.i57) #9
  %97 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call26.i.i57, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @setredblue(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @setgamma(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %sensor.i62 = getelementptr i8, ptr %1, i32 1135
  %98 = ptrtoint ptr %sensor.i62 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sensor.i62, align 1
  %100 = and i8 %99, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %100)
  %switch.i = icmp eq i8 %100, 8
  br i1 %switch.i, label %sw.bb.i65, label %sw.epilog.i66

sw.bb.i65:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %99)
  %cmp.i63 = icmp eq i8 %99, 8
  %..i = select i1 %cmp.i63, i8 -64, i8 -96
  %101 = getelementptr i8, ptr %1, i32 184
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %val.i64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %103, i32 0, i32 22
  %104 = ptrtoint ptr %val.i64 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i = icmp eq i32 %105, 0
  %106 = or i8 %..i, 3
  %comb.1.i = select i1 %tobool.not.i, i8 %..i, i8 %106
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext %comb.1.i) #6
  br label %setautogain.exit

sw.epilog.i66:                                    ; preds = %sw.bb5
  %107 = getelementptr i8, ptr %1, i32 184
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %val10.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %109, i32 0, i32 22
  %110 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %val10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool11.not.i = icmp eq i32 %111, 0
  %ag_cnt14.i = getelementptr i8, ptr %1, i32 1133
  br i1 %tobool11.not.i, label %if.else13.i, label %if.then12.i

if.then12.i:                                      ; preds = %sw.epilog.i66
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %ag_cnt14.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 13, ptr %ag_cnt14.i, align 1
  br label %setautogain.exit

if.else13.i:                                      ; preds = %sw.epilog.i66
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %ag_cnt14.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %ag_cnt14.i, align 1
  br label %setautogain.exit

setautogain.exit:                                 ; preds = %if.else13.i, %if.then12.i, %sw.bb.i65
  %114 = ptrtoint ptr %sensor.i62 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %sensor.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %115)
  %cmp.i68 = icmp eq i8 %115, 12
  br i1 %cmp.i68, label %setexposure.exit, label %setautogain.exit.sw.epilog_crit_edge

setautogain.exit.sw.epilog_crit_edge:             ; preds = %setautogain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

setexposure.exit:                                 ; preds = %setautogain.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rexpo.i) #6
  %116 = ptrtoint ptr %rexpo.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 -6814480597788917744, ptr %rexpo.i, align 8
  %exposure.i69 = getelementptr i8, ptr %1, i32 188
  %117 = ptrtoint ptr %exposure.i69 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %exposure.i69, align 4
  %val.i70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %118, i32 0, i32 22
  %119 = ptrtoint ptr %val.i70 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val.i70, align 4
  %121 = lshr i32 %120, 8
  %conv2.i71 = trunc i32 %121 to i8
  %arrayidx.i = getelementptr inbounds [8 x i8], ptr %rexpo.i, i32 0, i32 3
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv2.i71, ptr %arrayidx.i, align 1
  call fastcc void @i2c_w8(ptr noundef %add.ptr, ptr noundef nonnull %rexpo.i) #6
  tail call void @msleep(i32 noundef 6) #6
  %arrayidx3.i = getelementptr inbounds [8 x i8], ptr %rexpo.i, i32 0, i32 2
  %123 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 27, ptr %arrayidx3.i, align 2
  %124 = ptrtoint ptr %exposure.i69 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %exposure.i69, align 4
  %val5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %125, i32 0, i32 22
  %126 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val5.i, align 4
  %conv6.i = trunc i32 %127 to i8
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv6.i, ptr %arrayidx.i, align 1
  call fastcc void @i2c_w8(ptr noundef %add.ptr, ptr noundef nonnull %rexpo.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rexpo.i) #6
  %129 = ptrtoint ptr %sensor.i62 to i32
  call void @__asan_load1_noabort(i32 %129)
  %.pr = load i8, ptr %sensor.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %.pr)
  %cmp.i73 = icmp eq i8 %.pr, 12
  br i1 %cmp.i73, label %if.then.i77, label %setexposure.exit.sw.epilog_crit_edge

setexposure.exit.sw.epilog_crit_edge:             ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i77:                                      ; preds = %setexposure.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rgain.i) #6
  %130 = ptrtoint ptr %rgain.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 -6814486095347056619, ptr %rgain.i, align 8
  %gain.i = getelementptr i8, ptr %1, i32 192
  %131 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %gain.i, align 8
  %val.i74 = getelementptr inbounds %struct.v4l2_ctrl, ptr %132, i32 0, i32 22
  %133 = ptrtoint ptr %val.i74 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %val.i74, align 4
  %conv2.i75 = trunc i32 %134 to i8
  %arrayidx.i76 = getelementptr inbounds [8 x i8], ptr %rgain.i, i32 0, i32 3
  %135 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv2.i75, ptr %arrayidx.i76, align 1
  call fastcc void @i2c_w8(ptr noundef %add.ptr, ptr noundef nonnull %rgain.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rgain.i) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %sensor.i78 = getelementptr i8, ptr %1, i32 1135
  %136 = ptrtoint ptr %sensor.i78 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %sensor.i78, align 1
  %138 = zext i8 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %137, label %sw.bb6.sw.epilog_crit_edge [
    i8 2, label %sw.bb.i81
    i8 8, label %sw.bb3.i
    i8 9, label %sw.bb12.i
    i8 12, label %sw.bb21.i
  ]

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i81:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %139 = getelementptr i8, ptr %1, i32 1048
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 8
  %val.i79 = getelementptr inbounds %struct.v4l2_ctrl, ptr %141, i32 0, i32 22
  %142 = ptrtoint ptr %val.i79 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %val.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i80 = icmp eq i32 %143, 0
  %spec.select.i = select i1 %tobool.not.i80, i8 24, i8 25
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext %spec.select.i) #6
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %144 = getelementptr i8, ptr %1, i32 1048
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 8
  %val5.i82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %146, i32 0, i32 22
  %147 = ptrtoint ptr %val5.i82 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %val5.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool6.not.i = icmp eq i32 %148, 0
  %spec.select55.i = select i1 %tobool6.not.i, i8 -126, i8 2
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 117, i8 noundef zeroext %spec.select55.i) #6
  br label %sw.epilog

sw.bb12.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %149 = getelementptr i8, ptr %1, i32 1048
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  %val14.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %151, i32 0, i32 22
  %152 = ptrtoint ptr %val14.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %val14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool15.not.i = icmp eq i32 %153, 0
  %spec.select56.i = select i1 %tobool15.not.i, i8 6, i8 -122
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 117, i8 noundef zeroext %spec.select56.i) #6
  br label %sw.epilog

sw.bb21.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %154 = getelementptr i8, ptr %1, i32 1048
  %hflip.i = getelementptr i8, ptr %1, i32 1052
  %155 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hflip.i, align 4
  %val22.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %156, i32 0, i32 22
  %157 = ptrtoint ptr %val22.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %val22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool23.not.i = icmp eq i32 %158, 0
  %spec.select57.i = select i1 %tobool23.not.i, i8 10, i8 -118
  %159 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %154, align 8
  %val30.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %160, i32 0, i32 22
  %161 = ptrtoint ptr %val30.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool31.not.i = icmp eq i32 %162, 0
  %163 = or i8 %spec.select57.i, 64
  %comn.4.i = select i1 %tobool31.not.i, i8 %spec.select57.i, i8 %163
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext %comn.4.i) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @setsharpness(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %sensor.i84 = getelementptr i8, ptr %1, i32 1135
  %164 = ptrtoint ptr %sensor.i84 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %sensor.i84, align 1
  %166 = zext i8 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %165, label %sw.bb8.sw.epilog_crit_edge [
    i8 0, label %sw.bb.i89
    i8 6, label %sw.bb2.i
  ]

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i89:                                        ; preds = %sw.bb8
  %illum.i = getelementptr i8, ptr %1, i32 1060
  %167 = ptrtoint ptr %illum.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %illum.i, align 4
  %val.i85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %168, i32 0, i32 22
  %169 = ptrtoint ptr %val.i85 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %val.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i86 = icmp eq i32 %170, 0
  %conv1.i = select i1 %tobool.not.i86, i8 96, i8 100
  %171 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp.i.i88 = icmp slt i32 %172, 0
  br i1 %cmp.i.i88, label %sw.bb.i89.sw.epilog_crit_edge, label %do.body.i.i91

sw.bb.i89.sw.epilog_crit_edge:                    ; preds = %sw.bb.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i.i91:                                    ; preds = %sw.bb.i89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %173 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %173)
  %cmp1.i.i90 = icmp sgt i32 %173, 6
  br i1 %cmp1.i.i90, label %do.end.i.i95, label %do.body.i.i91.do.end7.i.i102_crit_edge

do.body.i.i91.do.end7.i.i102_crit_edge:           ; preds = %do.body.i.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i.i102

do.end.i.i95:                                     ; preds = %do.body.i.i91
  call void @__sanitizer_cov_trace_pc() #8
  %name.i.i92 = getelementptr i8, ptr %1, i32 -168
  %conv4.i.i93 = zext i8 %conv1.i to i32
  %call.i.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i.i92, i32 noundef 2, i32 noundef %conv4.i.i93) #9
  br label %do.end7.i.i102

do.end7.i.i102:                                   ; preds = %do.end.i.i95, %do.body.i.i91.do.end7.i.i102_crit_edge
  %usb_buf.i.i96 = getelementptr i8, ptr %1, i32 204
  %174 = ptrtoint ptr %usb_buf.i.i96 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %usb_buf.i.i96, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv1.i, ptr %175, align 1
  %dev.i.i97 = getelementptr i8, ptr %1, i32 -100
  %177 = ptrtoint ptr %dev.i.i97 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i.i97, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 8
  %shl.i.i.i98 = shl i32 %180, 8
  %or.i.i99 = or i32 %shl.i.i.i98, -2147483648
  %181 = load ptr, ptr %usb_buf.i.i96, align 4
  %call11.i.i100 = tail call i32 @usb_control_msg(ptr noundef %178, i32 noundef %or.i.i99, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %181, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i100)
  %cmp12.i.i101 = icmp slt i32 %call11.i.i100, 0
  br i1 %cmp12.i.i101, label %do.end17.i.i104, label %do.end7.i.i102.sw.epilog_crit_edge

do.end7.i.i102.sw.epilog_crit_edge:               ; preds = %do.end7.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17.i.i104:                                  ; preds = %do.end7.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i.i100) #9
  %182 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %call11.i.i100, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb8
  %illum3.i = getelementptr i8, ptr %1, i32 1060
  %183 = ptrtoint ptr %illum3.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %illum3.i, align 4
  %val4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %184, i32 0, i32 22
  %185 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %val4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool5.not.i = icmp eq i32 %186, 0
  %conv7.i = select i1 %tobool5.not.i, i8 116, i8 119
  %187 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp.i13.i = icmp slt i32 %188, 0
  br i1 %cmp.i13.i, label %sw.bb2.i.sw.epilog_crit_edge, label %do.body.i15.i

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i15.i:                                    ; preds = %sw.bb2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %189 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %189)
  %cmp1.i14.i = icmp sgt i32 %189, 6
  br i1 %cmp1.i14.i, label %do.end.i19.i, label %do.body.i15.i.do.end7.i26.i_crit_edge

do.body.i15.i.do.end7.i26.i_crit_edge:            ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i26.i

do.end.i19.i:                                     ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i16.i = getelementptr i8, ptr %1, i32 -168
  %conv4.i17.i = zext i8 %conv7.i to i32
  %call.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i16.i, i32 noundef 2, i32 noundef %conv4.i17.i) #9
  br label %do.end7.i26.i

do.end7.i26.i:                                    ; preds = %do.end.i19.i, %do.body.i15.i.do.end7.i26.i_crit_edge
  %usb_buf.i20.i = getelementptr i8, ptr %1, i32 204
  %190 = ptrtoint ptr %usb_buf.i20.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %usb_buf.i20.i, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv7.i, ptr %191, align 1
  %dev.i21.i = getelementptr i8, ptr %1, i32 -100
  %193 = ptrtoint ptr %dev.i21.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i21.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 8
  %shl.i.i22.i = shl i32 %196, 8
  %or.i23.i = or i32 %shl.i.i22.i, -2147483648
  %197 = load ptr, ptr %usb_buf.i20.i, align 4
  %call11.i24.i = tail call i32 @usb_control_msg(ptr noundef %194, i32 noundef %or.i23.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 2, i16 noundef zeroext 0, ptr noundef %197, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i24.i)
  %cmp12.i25.i = icmp slt i32 %call11.i24.i, 0
  br i1 %cmp12.i25.i, label %do.end17.i28.i, label %do.end7.i26.i.sw.epilog_crit_edge

do.end7.i26.i.sw.epilog_crit_edge:                ; preds = %do.end7.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17.i28.i:                                   ; preds = %do.end7.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i24.i) #9
  %198 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call11.i24.i, ptr %usb_err, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %sensor.i106 = getelementptr i8, ptr %1, i32 1135
  %199 = ptrtoint ptr %sensor.i106 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %sensor.i106, align 1
  %201 = zext i8 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %200, label %sw.bb9.sw.epilog10.i_crit_edge [
    i8 10, label %if.then.i108
    i8 8, label %sw.bb8.i
    i8 9, label %sw.bb9.i
  ]

sw.bb9.sw.epilog10.i_crit_edge:                   ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10.i

if.then.i108:                                     ; preds = %sw.bb9
  %freq.i = getelementptr i8, ptr %1, i32 1068
  %202 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %freq.i, align 4
  %val.i107 = getelementptr inbounds %struct.v4l2_ctrl, ptr %203, i32 0, i32 22
  %204 = ptrtoint ptr %val.i107 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %val.i107, align 4
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %205, label %if.then.i108.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i109
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb5.i110
  ]

if.then.i108.sw.epilog_crit_edge:                 ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i109:                                       ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext -1) #6
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext -33) #6
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 59, i8 noundef zeroext 10) #6
  br label %sw.epilog

sw.bb5.i110:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 19, i8 noundef zeroext -33) #6
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 59, i8 noundef zeroext 2) #6
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10.i

sw.bb9.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10.i

sw.epilog10.i:                                    ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb9.sw.epilog10.i_crit_edge
  %reg2a.0.i = phi i8 [ 17, %sw.bb9.i ], [ 8, %sw.bb8.i ], [ 0, %sw.bb9.sw.epilog10.i_crit_edge ]
  %reg2d.0.i = phi i8 [ -127, %sw.bb9.i ], [ 1, %sw.bb8.i ], [ 0, %sw.bb9.sw.epilog10.i_crit_edge ]
  %freq11.i = getelementptr i8, ptr %1, i32 1068
  %207 = ptrtoint ptr %freq11.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %freq11.i, align 4
  %val12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %208, i32 0, i32 22
  %209 = ptrtoint ptr %val12.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %val12.i, align 4
  %211 = zext i32 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %210, label %sw.epilog10.i.sw.epilog27.i_crit_edge [
    i32 2, label %sw.bb20.i
    i32 1, label %sw.bb13.i
  ]

sw.epilog10.i.sw.epilog27.i_crit_edge:            ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.i

sw.bb13.i:                                        ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #8
  %212 = or i8 %reg2a.0.i, -128
  %213 = or i8 %reg2d.0.i, 4
  br label %sw.epilog27.i

sw.bb20.i:                                        ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #8
  %214 = or i8 %reg2a.0.i, -128
  %215 = or i8 %reg2d.0.i, 4
  br label %sw.epilog27.i

sw.epilog27.i:                                    ; preds = %sw.bb20.i, %sw.bb13.i, %sw.epilog10.i.sw.epilog27.i_crit_edge
  %reg2a.1.i = phi i8 [ %reg2a.0.i, %sw.epilog10.i.sw.epilog27.i_crit_edge ], [ %212, %sw.bb13.i ], [ %214, %sw.bb20.i ]
  %reg2b.0.i = phi i8 [ 0, %sw.epilog10.i.sw.epilog27.i_crit_edge ], [ -84, %sw.bb13.i ], [ 0, %sw.bb20.i ]
  %reg2d.1.i = phi i8 [ %reg2d.0.i, %sw.epilog10.i.sw.epilog27.i_crit_edge ], [ %213, %sw.bb13.i ], [ %215, %sw.bb20.i ]
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 42, i8 noundef zeroext %reg2a.1.i) #6
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 43, i8 noundef zeroext %reg2b.0.i) #6
  tail call fastcc void @i2c_w1(ptr noundef %add.ptr, i8 noundef zeroext 45, i8 noundef zeroext %reg2d.1.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog27.i, %sw.bb5.i110, %sw.bb4.i, %sw.bb.i109, %if.then.i108.sw.epilog_crit_edge, %do.end17.i28.i, %do.end7.i26.i.sw.epilog_crit_edge, %sw.bb2.i.sw.epilog_crit_edge, %do.end17.i.i104, %do.end7.i.i102.sw.epilog_crit_edge, %sw.bb.i89.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb7, %sw.bb21.i, %sw.bb12.i, %sw.bb3.i, %sw.bb.i81, %sw.bb6.sw.epilog_crit_edge, %if.then.i77, %setexposure.exit.sw.epilog_crit_edge, %setautogain.exit.sw.epilog_crit_edge, %sw.bb4, %sw.bb3, %do.end32.i.i61, %if.end21.i.i59.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %do.end32.i.i, %if.end21.i.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %do.end17.i.i, %do.end7.i.i.sw.epilog_crit_edge, %sw.epilog.i.sw.epilog_crit_edge, %sw.bb29.i, %sw.bb25.i, %sw.bb22.i
  %216 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %217, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setredblue(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  %rg1b = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %1)
  %cmp = icmp eq i8 %1, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rg1b) #6
  %2 = ptrtoint ptr %rg1b to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -4508641986621734896, ptr %rg1b, align 8
  %3 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %.tr = trunc i32 %7 to i8
  %conv2 = shl i8 %.tr, 1
  %arrayidx = getelementptr inbounds [8 x i8], ptr %rg1b, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %arrayidx, align 1
  %blue_bal = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %blue_bal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %blue_bal, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val3, align 4
  %.tr20 = trunc i32 %12 to i8
  %conv5 = shl i8 %.tr20, 1
  %arrayidx6 = getelementptr inbounds [8 x i8], ptr %rg1b, i32 0, i32 5
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5, ptr %arrayidx6, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %rg1b)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rg1b) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val8, align 4
  %conv9 = trunc i32 %18 to i8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp1.i = icmp sgt i32 %21, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = and i32 %18, 255
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 5, i32 noundef %conv4.i) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %22 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9, ptr %23, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i = shl i32 %28, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %29 = load ptr, ptr %usb_buf.i, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef %29, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %30 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %cleanup

reg_w1.exit:                                      ; preds = %do.end7.i
  %31 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %usb_err.i, align 8
  %blue_bal10 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %blue_bal10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blue_bal10, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val11, align 4
  %conv12 = trunc i32 %35 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i22 = icmp slt i32 %.pr, 0
  br i1 %cmp.i22, label %reg_w1.exit.cleanup_crit_edge, label %do.body.i24

reg_w1.exit.cleanup_crit_edge:                    ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i24:                                      ; preds = %reg_w1.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp1.i23 = icmp sgt i32 %36, 6
  br i1 %cmp1.i23, label %do.end.i28, label %do.body.i24.do.end7.i35_crit_edge

do.body.i24.do.end7.i35_crit_edge:                ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i35

do.end.i28:                                       ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #8
  %name.i25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i26 = and i32 %35, 255
  %call.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i25, i32 noundef 6, i32 noundef %conv4.i26) #9
  br label %do.end7.i35

do.end7.i35:                                      ; preds = %do.end.i28, %do.body.i24.do.end7.i35_crit_edge
  %37 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_buf.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv12, ptr %38, align 1
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i31 = shl i32 %43, 8
  %or.i32 = or i32 %shl.i.i31, -2147483648
  %44 = load ptr, ptr %usb_buf.i, align 4
  %call11.i33 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i32, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef %44, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i33)
  %cmp12.i34 = icmp slt i32 %call11.i33, 0
  br i1 %cmp12.i34, label %do.end17.i37, label %do.end7.i35.cleanup_crit_edge

do.end7.i35.cleanup_crit_edge:                    ; preds = %do.end7.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17.i37:                                     ; preds = %do.end7.i35
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i33) #9
  %45 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call11.i33, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end17.i37, %do.end7.i35.cleanup_crit_edge, %reg_w1.exit.cleanup_crit_edge, %do.end17.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setgamma(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %2 = icmp ult i8 %1, 15
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [15 x ptr], ptr @switch.table.setgamma, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %gamma_base.0 = phi ptr [ %switch.load, %switch.lookup ], [ @gamma_def, %entry.sw.epilog_crit_edge ]
  %gamma4 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %5 = ptrtoint ptr %gamma4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gamma4, align 8
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val5, align 4
  %sub = add i32 %8, -20
  %9 = ptrtoint ptr %gamma_base.0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gamma_base.0, align 1
  %arrayidx.1 = getelementptr i8, ptr %gamma_base.0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %mul.1 = mul i32 %sub, 20
  %div.1 = sdiv i32 %mul.1, 32
  %13 = trunc i32 %div.1 to i8
  %conv10.1 = add i8 %12, %13
  %arrayidx.2 = getelementptr i8, ptr %gamma_base.0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %mul.2 = mul i32 %sub, 28
  %div.2 = sdiv i32 %mul.2, 32
  %16 = trunc i32 %div.2 to i8
  %conv10.2 = add i8 %15, %16
  %arrayidx.3 = getelementptr i8, ptr %gamma_base.0, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3, align 1
  %conv10.3 = add i8 %18, %16
  %arrayidx.4 = getelementptr i8, ptr %gamma_base.0, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %conv10.4 = add i8 %20, %16
  %arrayidx.5 = getelementptr i8, ptr %gamma_base.0, i32 5
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5, align 1
  %conv10.5 = add i8 %22, %16
  %arrayidx.6 = getelementptr i8, ptr %gamma_base.0, i32 6
  %23 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.6, align 1
  %mul.6 = mul i32 %sub, 27
  %div.6 = sdiv i32 %mul.6, 32
  %25 = trunc i32 %div.6 to i8
  %conv10.6 = add i8 %24, %25
  %arrayidx.7 = getelementptr i8, ptr %gamma_base.0, i32 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.7, align 1
  %mul.7 = mul i32 %sub, 26
  %div.7 = sdiv i32 %mul.7, 32
  %28 = trunc i32 %div.7 to i8
  %conv10.7 = add i8 %27, %28
  %arrayidx.8 = getelementptr i8, ptr %gamma_base.0, i32 8
  %29 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.8, align 1
  %mul.8 = mul i32 %sub, 24
  %div.8 = sdiv i32 %mul.8, 32
  %31 = trunc i32 %div.8 to i8
  %conv10.8 = add i8 %30, %31
  %arrayidx.9 = getelementptr i8, ptr %gamma_base.0, i32 9
  %32 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.9, align 1
  %mul.9 = mul i32 %sub, 19
  %div.9 = sdiv i32 %mul.9, 32
  %34 = trunc i32 %div.9 to i8
  %conv10.9 = add i8 %33, %34
  %arrayidx.10 = getelementptr i8, ptr %gamma_base.0, i32 10
  %35 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.10, align 1
  %mul.10 = shl i32 %sub, 4
  %div.10 = sdiv i32 %mul.10, 32
  %37 = trunc i32 %div.10 to i8
  %conv10.10 = add i8 %36, %37
  %arrayidx.11 = getelementptr i8, ptr %gamma_base.0, i32 11
  %38 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.11, align 1
  %mul.11 = mul i32 %sub, 14
  %div.11 = sdiv i32 %mul.11, 32
  %40 = trunc i32 %div.11 to i8
  %conv10.11 = add i8 %39, %40
  %arrayidx.12 = getelementptr i8, ptr %gamma_base.0, i32 12
  %41 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.12, align 1
  %mul.12 = shl i32 %sub, 3
  %div.12 = sdiv i32 %mul.12, 32
  %43 = trunc i32 %div.12 to i8
  %conv10.12 = add i8 %42, %43
  %arrayidx.13 = getelementptr i8, ptr %gamma_base.0, i32 13
  %44 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.13, align 1
  %mul.13 = mul i32 %sub, 7
  %div.13 = sdiv i32 %mul.13, 32
  %46 = trunc i32 %div.13 to i8
  %conv10.13 = add i8 %45, %46
  %arrayidx.14 = getelementptr i8, ptr %gamma_base.0, i32 14
  %47 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.14, align 1
  %mul.14 = shl i32 %sub, 2
  %div.14 = sdiv i32 %mul.14, 32
  %49 = trunc i32 %div.14 to i8
  %conv10.14 = add i8 %48, %49
  %arrayidx.15 = getelementptr i8, ptr %gamma_base.0, i32 15
  %50 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.15, align 1
  %mul.15 = shl i32 %sub, 1
  %div.15 = sdiv i32 %mul.15, 32
  %52 = trunc i32 %div.15 to i8
  %conv10.15 = add i8 %51, %52
  %arrayidx.16 = getelementptr i8, ptr %gamma_base.0, i32 16
  %53 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.16, align 1
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp slt i32 %56, 0
  br i1 %cmp.i, label %sw.epilog.reg_w.exit_crit_edge, label %do.body.i

sw.epilog.reg_w.exit_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.body.i:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %57 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %cmp1.i = icmp sgt i32 %57, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.if.end21.i_crit_edge

do.body.i.if.end21.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = zext i8 %10 to i32
  %conv6.i = zext i8 %conv10.1 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name.i, i32 noundef 32, i32 noundef %conv4.i, i32 noundef %conv6.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %do.body.i.if.end21.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %58 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %10, ptr %59, align 1
  %gamma.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 1
  %61 = ptrtoint ptr %gamma.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv10.1, ptr %gamma.sroa.6.0..sroa_idx, align 1
  %gamma.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 2
  %62 = ptrtoint ptr %gamma.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv10.2, ptr %gamma.sroa.9.0..sroa_idx, align 1
  %gamma.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 3
  %63 = ptrtoint ptr %gamma.sroa.11.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv10.3, ptr %gamma.sroa.11.0..sroa_idx, align 1
  %gamma.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 4
  %64 = ptrtoint ptr %gamma.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv10.4, ptr %gamma.sroa.13.0..sroa_idx, align 1
  %gamma.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 5
  %65 = ptrtoint ptr %gamma.sroa.15.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv10.5, ptr %gamma.sroa.15.0..sroa_idx, align 1
  %gamma.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 6
  %66 = ptrtoint ptr %gamma.sroa.17.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv10.6, ptr %gamma.sroa.17.0..sroa_idx, align 1
  %gamma.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 7
  %67 = ptrtoint ptr %gamma.sroa.19.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv10.7, ptr %gamma.sroa.19.0..sroa_idx, align 1
  %gamma.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 8
  %68 = ptrtoint ptr %gamma.sroa.21.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv10.8, ptr %gamma.sroa.21.0..sroa_idx, align 1
  %gamma.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 9
  %69 = ptrtoint ptr %gamma.sroa.23.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv10.9, ptr %gamma.sroa.23.0..sroa_idx, align 1
  %gamma.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 10
  %70 = ptrtoint ptr %gamma.sroa.25.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv10.10, ptr %gamma.sroa.25.0..sroa_idx, align 1
  %gamma.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 11
  %71 = ptrtoint ptr %gamma.sroa.27.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv10.11, ptr %gamma.sroa.27.0..sroa_idx, align 1
  %gamma.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 12
  %72 = ptrtoint ptr %gamma.sroa.29.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv10.12, ptr %gamma.sroa.29.0..sroa_idx, align 1
  %gamma.sroa.31.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 13
  %73 = ptrtoint ptr %gamma.sroa.31.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv10.13, ptr %gamma.sroa.31.0..sroa_idx, align 1
  %gamma.sroa.33.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 14
  %74 = ptrtoint ptr %gamma.sroa.33.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv10.14, ptr %gamma.sroa.33.0..sroa_idx, align 1
  %gamma.sroa.35.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 15
  %75 = ptrtoint ptr %gamma.sroa.35.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv10.15, ptr %gamma.sroa.35.0..sroa_idx, align 1
  %gamma.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %59, i32 16
  %76 = ptrtoint ptr %gamma.sroa.37.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %54, ptr %gamma.sroa.37.0..sroa_idx, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %shl.i.i = shl i32 %80, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %81 = load ptr, ptr %usb_buf.i, align 4
  %call26.i = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef %81, i16 noundef zeroext 17, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end32.i, label %if.end21.i.reg_w.exit_crit_edge

if.end21.i.reg_w.exit_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end32.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %call26.i) #9
  %82 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call26.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end32.i, %if.end21.i.reg_w.exit_crit_edge, %sw.epilog.reg_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setsharpness(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sharpness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %sharpness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sharpness, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %conv = trunc i32 %3 to i8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.reg_w1.exit_crit_edge, label %do.body.i

entry.reg_w1.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv4.i = and i32 %3, 255
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 153, i32 noundef %conv4.i) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %8, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %14 = load ptr, ptr %usb_buf.i, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 153, i16 noundef zeroext 0, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end7.i.reg_w1.exit_crit_edge

do.end7.i.reg_w1.exit_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %do.end17.i, %do.end7.i.reg_w1.exit_crit_edge, %entry.reg_w1.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @expo_adjust(ptr noundef %gspca_dev, i32 noundef %expo) unnamed_addr #2 align 64 {
entry:
  %Expodoit = alloca [8 x i8], align 8
  %expoMi = alloca [8 x i8], align 8
  %expoMof = alloca [8 x i8], align 8
  %expoMo10 = alloca [8 x i8], align 8
  %expo_c1 = alloca [8 x i8], align 8
  %gainOm = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %entry.sw.bb14_crit_edge
    i8 4, label %entry.sw.bb14_crit_edge159
    i8 5, label %sw.bb26
    i8 6, label %sw.bb67
    i8 7, label %sw.bb83
  ]

entry.sw.bb14_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %expo, 25
  %div155 = lshr i32 %mul, 8
  %3 = trunc i32 %div155 to i8
  %conv1 = add i8 %3, 19
  tail call fastcc void @i2c_w1(ptr noundef %gspca_dev, i8 noundef zeroext 104, i8 noundef zeroext %conv1)
  %sub = add nuw nsw i32 %div155, 7
  %mul2 = shl nuw nsw i32 %sub, 2
  %mul3 = mul i32 %mul2, %sub
  %4 = lshr i32 %mul3, 8
  %conv4 = trunc i32 %4 to i8
  tail call fastcc void @i2c_w1(ptr noundef %gspca_dev, i8 noundef zeroext 3, i8 noundef zeroext %conv4)
  %conv5 = trunc i32 %mul3 to i8
  tail call fastcc void @i2c_w1(ptr noundef %gspca_dev, i8 noundef zeroext 4, i8 noundef zeroext %conv5)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %Expodoit) #6
  %5 = ptrtoint ptr %Expodoit to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -4534802667855151082, ptr %Expodoit, align 8
  %shr7 = lshr i32 %expo, 16
  %conv8 = trunc i32 %shr7 to i8
  %arrayidx = getelementptr inbounds [8 x i8], ptr %Expodoit, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %arrayidx, align 1
  %shr9 = lshr i32 %expo, 8
  %conv10 = trunc i32 %shr9 to i8
  %arrayidx11 = getelementptr inbounds [8 x i8], ptr %Expodoit, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %arrayidx11, align 4
  %conv12 = trunc i32 %expo to i8
  %arrayidx13 = getelementptr inbounds [8 x i8], ptr %Expodoit, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %arrayidx13, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %Expodoit)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %Expodoit) #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expoMi) #6
  %9 = ptrtoint ptr %expoMi to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -5666362860557565930, ptr %expoMi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1589, i32 %expo)
  %cmp = icmp ugt i32 %expo, 1589
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expo)
  %cmp16 = icmp eq i32 %expo, 0
  %spec.select = select i1 %cmp16, i32 1, i32 %expo
  %expo.addr.0 = select i1 %cmp, i32 1589, i32 %spec.select
  %shr20 = lshr i32 %expo.addr.0, 8
  %conv21 = trunc i32 %shr20 to i8
  %arrayidx22 = getelementptr inbounds [8 x i8], ptr %expoMi, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv21, ptr %arrayidx22, align 1
  %conv23 = trunc i32 %expo.addr.0 to i8
  %arrayidx24 = getelementptr inbounds [8 x i8], ptr %expoMi, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx24, align 4
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %expoMi)
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @expo_adjust.doit)
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @expo_adjust.sensorgo)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expoMi) #6
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expoMof) #6
  %12 = ptrtoint ptr %expoMof to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -6836166266697285616, ptr %expoMof, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expoMo10) #6
  %13 = ptrtoint ptr %expoMo10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -6836165167185657840, ptr %expoMo10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %expo)
  %cmp27 = icmp ugt i32 %expo, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expo)
  %cmp31 = icmp eq i32 %expo, 0
  %spec.select156 = select i1 %cmp31, i32 1, i32 %expo
  %expo.addr.1 = select i1 %cmp27, i32 8191, i32 %spec.select156
  %and = lshr i32 %expo.addr.1, 2
  %conv37 = trunc i32 %and to i8
  %arrayidx38 = getelementptr inbounds [8 x i8], ptr %expoMof, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv37, ptr %arrayidx38, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %expoMof)
  %and40 = lshr i32 %expo.addr.1, 10
  %shr41 = and i32 %and40, 7
  %and42 = shl i32 %expo.addr.1, 4
  %shl = and i32 %and42, 48
  %or = or i32 %shr41, %shl
  %conv43 = trunc i32 %or to i8
  %arrayidx44 = getelementptr inbounds [8 x i8], ptr %expoMo10, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv43, ptr %arrayidx44, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %expoMo10)
  tail call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull @expo_adjust.gainMo)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp46 = icmp sgt i32 %16, 3
  br i1 %cmp46, label %do.end, label %sw.bb26.do.end66_crit_edge

sw.bb26.do.end66_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end66

do.end:                                           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %and53 = shl nuw nsw i32 %shr41, 10
  %shl57 = and i32 %expo.addr.1, 1020
  %or58 = or i32 %and53, %shl57
  %17 = and i32 %expo.addr.1, 3
  %or63 = or i32 %or58, %17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %or63) #9
  br label %do.end66

do.end66:                                         ; preds = %do.end, %sw.bb26.do.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expoMo10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expoMof) #6
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expo_c1) #6
  %18 = ptrtoint ptr %expo_c1 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -5666644335534276592, ptr %expo_c1, align 8
  %19 = tail call i32 @llvm.umax.i32(i32 %expo, i32 96)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 912)
  %shr77 = lshr i32 %20, 8
  %conv78 = trunc i32 %shr77 to i8
  %arrayidx79 = getelementptr inbounds [8 x i8], ptr %expo_c1, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv78, ptr %arrayidx79, align 1
  %conv80 = trunc i32 %20 to i8
  %arrayidx81 = getelementptr inbounds [8 x i8], ptr %expo_c1, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv80, ptr %arrayidx81, align 4
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %expo_c1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expo_c1) #6
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gainOm) #6
  %23 = ptrtoint ptr %gainOm to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -6902640540689367024, ptr %gainOm, align 8
  %24 = tail call i32 @llvm.umin.i32(i32 %expo, i32 1023)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp88 = icmp eq i32 %24, 0
  %expo.addr.4 = select i1 %cmp88, i32 1, i32 %24
  %shr92 = lshr i32 %expo.addr.4, 2
  %conv93 = trunc i32 %shr92 to i8
  %arrayidx94 = getelementptr inbounds [8 x i8], ptr %gainOm, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv93, ptr %arrayidx94, align 1
  call fastcc void @i2c_w8(ptr noundef %gspca_dev, ptr noundef nonnull %gainOm)
  %shr96 = lshr i32 %expo.addr.4, 5
  %conv97 = trunc i32 %shr96 to i8
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp slt i32 %27, 0
  br i1 %cmp.i, label %sw.bb83.reg_w1.exit_crit_edge, label %do.body.i

sw.bb83.reg_w1.exit_crit_edge:                    ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.body.i:                                        ; preds = %sw.bb83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp1.i = icmp sgt i32 %28, 6
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i, i32 noundef 150, i32 noundef %shr96) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv97, ptr %30, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i = shl i32 %35, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %36 = load ptr, ptr %usb_buf.i, align 4
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 150, i16 noundef zeroext 0, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end17.i, label %do.end7.i.reg_w1.exit_crit_edge

do.end7.i.reg_w1.exit_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w1.exit

do.end17.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call11.i) #9
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call11.i, ptr %usb_err.i, align 8
  br label %reg_w1.exit

reg_w1.exit:                                      ; preds = %do.end17.i, %do.end7.i.reg_w1.exit_crit_edge, %sw.bb83.reg_w1.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp99 = icmp sgt i32 %38, 3
  br i1 %cmp99, label %do.end104, label %reg_w1.exit.do.end114_crit_edge

reg_w1.exit.do.end114_crit_edge:                  ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

do.end104:                                        ; preds = %reg_w1.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name107 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name107, i32 noundef %shr92) #9
  br label %do.end114

do.end114:                                        ; preds = %do.end104, %reg_w1.exit.do.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gainOm) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end114, %sw.bb67, %do.end66, %sw.bb14, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  %expo.addr.5 = phi i32 [ %expo, %entry.sw.epilog_crit_edge ], [ %expo.addr.4, %do.end114 ], [ %20, %sw.bb67 ], [ %expo.addr.1, %do.end66 ], [ %expo.addr.0, %sw.bb14 ], [ %expo, %sw.bb6 ], [ %expo, %sw.bb ]
  ret i32 %expo.addr.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_w1(ptr noundef %gspca_dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp1 = icmp sgt i32 %2, 6
  br i1 %cmp1, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv = zext i8 %reg to i32
  %conv4 = zext i8 %val to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 24
  %3 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sensor, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %4, label %sw.default [
    i8 0, label %do.end7.sw.epilog_crit_edge
    i8 7, label %do.end7.sw.epilog_crit_edge61
    i8 1, label %do.end7.sw.epilog_crit_edge62
  ]

do.end7.sw.epilog_crit_edge62:                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end7.sw.epilog_crit_edge61:                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end7.sw.epilog_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end7.sw.epilog_crit_edge, %do.end7.sw.epilog_crit_edge61, %do.end7.sw.epilog_crit_edge62
  %.sink = phi i8 [ -95, %sw.default ], [ -96, %do.end7.sw.epilog_crit_edge ], [ -96, %do.end7.sw.epilog_crit_edge61 ], [ -96, %do.end7.sw.epilog_crit_edge62 ]
  %usb_buf9 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf9, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %7, align 1
  %i2c_addr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 25
  %9 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_addr, align 8
  %usb_buf11 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf11, align 4
  %arrayidx12 = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx12, align 1
  %14 = load ptr, ptr %usb_buf11, align 4
  %arrayidx14 = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %reg, ptr %arrayidx14, align 1
  %16 = load ptr, ptr %usb_buf11, align 4
  %arrayidx16 = getelementptr i8, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %val, ptr %arrayidx16, align 1
  %18 = load ptr, ptr %usb_buf11, align 4
  %arrayidx18 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx18, align 1
  %20 = load ptr, ptr %usb_buf11, align 4
  %arrayidx20 = getelementptr i8, ptr %20, i32 5
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx20, align 1
  %22 = load ptr, ptr %usb_buf11, align 4
  %arrayidx22 = getelementptr i8, ptr %22, i32 6
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx22, align 1
  %24 = load ptr, ptr %usb_buf11, align 4
  %arrayidx24 = getelementptr i8, ptr %24, i32 7
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %arrayidx24, align 1
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i = shl i32 %29, 8
  %or = or i32 %shl.i, -2147483648
  %30 = load ptr, ptr %usb_buf11, align 4
  %call28 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or, i8 noundef zeroext 8, i8 noundef zeroext 65, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef %30, i16 noundef zeroext 8, i32 noundef 500) #6
  tail call void @msleep(i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %call28) #9
  %31 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call28, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !171, !172, !173, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !240, !241, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !317, !318, !319}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_sonixj__307_2981_sd_driver_init6, !8, !"__initcall__kmod_gspca_sonixj__307_2981_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2981, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2970, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2969, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2874, i32 29}
!17 = !{ptr @sd_config.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1538, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cif_mode, !21, !"cif_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 110, i32 37}
!22 = !{ptr @vga_mode, !23, !"vga_mode", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 117, i32 37}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2163, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @qual_upd._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @qual_upd._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @jpeg_head, !31, !"jpeg_head", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1181, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @reg_w1._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @reg_w1._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1192, i32 3}
!39 = !{ptr @reg_w1._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @reg_w1._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1559, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sd_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sd_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1149, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @reg_r._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @reg_r._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1160, i32 2}
!53 = !{ptr @reg_r._entry.15, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @reg_r._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1163, i32 3}
!57 = !{ptr @reg_r._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @reg_r._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @mi0360_probe.probe_tb, !60, !"probe_tb", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1362, i32 18}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1396, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mi0360_probe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mi0360_probe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1400, i32 3}
!68 = !{ptr @mi0360_probe._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mi0360_probe._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1404, i32 3}
!72 = !{ptr @mi0360_probe._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mi0360_probe._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1407, i32 3}
!76 = !{ptr @mi0360_probe._entry.29, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mi0360_probe._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1276, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @i2c_w8._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @i2c_w8._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1288, i32 3}
!85 = !{ptr @i2c_w8._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @i2c_w8._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1433, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ov7630_probe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ov7630_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1436, i32 2}
!94 = !{ptr @ov7630_probe._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ov7630_probe._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1453, i32 3}
!98 = !{ptr @ov7648_probe._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ov7648_probe._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1468, i32 3}
!102 = !{ptr @ov7648_probe._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ov7648_probe._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1472, i32 2}
!106 = !{ptr @ov7648_probe._entry.46, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ov7648_probe._entry_ptr.48, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1491, i32 3}
!110 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @po2030n_probe._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @po2030n_probe._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1507, i32 3}
!115 = !{ptr @po2030n_probe._entry.51, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @po2030n_probe._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1510, i32 3}
!119 = !{ptr @po2030n_probe._entry.54, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @po2030n_probe._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1205, i32 2}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @reg_w._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @reg_w._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1209, i32 3}
!128 = !{ptr @reg_w._entry.59, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @reg_w._entry_ptr.61, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1222, i32 3}
!132 = !{ptr @reg_w._entry.62, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @reg_w._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @sn_tb, !135, !"sn_tb", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 302, i32 18}
!136 = !{ptr @sn_adcm1700, !137, !"sn_adcm1700", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 136, i32 17}
!138 = !{ptr @sn_gc0307, !139, !"sn_gc0307", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 147, i32 17}
!140 = !{ptr @sn_hv7131, !141, !"sn_hv7131", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 158, i32 17}
!142 = !{ptr @sn_mi0360, !143, !"sn_mi0360", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 169, i32 17}
!144 = !{ptr @sn_mi0360b, !145, !"sn_mi0360b", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 180, i32 17}
!146 = !{ptr @sn_mo4000, !147, !"sn_mo4000", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 191, i32 17}
!148 = !{ptr @sn_mt9v111, !149, !"sn_mt9v111", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 202, i32 17}
!150 = !{ptr @sn_om6802, !151, !"sn_om6802", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 213, i32 17}
!152 = !{ptr @sn_ov7630, !153, !"sn_ov7630", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 224, i32 17}
!154 = !{ptr @sn_ov7648, !155, !"sn_ov7648", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 235, i32 17}
!156 = !{ptr @sn_ov7660, !157, !"sn_ov7660", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 246, i32 17}
!158 = !{ptr @sn_po1030, !159, !"sn_po1030", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 257, i32 17}
!160 = !{ptr @sn_po2030n, !161, !"sn_po2030n", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 268, i32 17}
!162 = !{ptr @sn_soi768, !163, !"sn_soi768", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 279, i32 17}
!164 = !{ptr @sn_sp80708, !165, !"sn_sp80708", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 290, i32 17}
!166 = !{ptr @sd_init_controls._key, !167, !"_key", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1623, i32 2}
!168 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1680, i32 3}
!171 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @sd_init_controls._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @sd_init_controls._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @sd_ctrl_ops, !175, !"sd_ctrl_ops", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1612, i32 35}
!176 = !{ptr @expo_adjust.doit, !177, !"doit", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1725, i32 19}
!178 = !{ptr @expo_adjust.sensorgo, !179, !"sensorgo", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1727, i32 19}
!180 = !{ptr @expo_adjust.gainMo, !181, !"gainMo", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1746, i32 19}
!182 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1759, i32 3}
!184 = !{ptr @.str.69, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @expo_adjust._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @expo_adjust._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @expo_adjust._entry.70, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1790, i32 3}
!189 = !{ptr @expo_adjust._entry_ptr.71, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.72, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1235, i32 2}
!192 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @i2c_w1._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @i2c_w1._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1263, i32 3}
!197 = !{ptr @i2c_w1._entry.74, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @i2c_w1._entry_ptr.76, !196, !"_entry_ptr", i1 false, i1 false}
!199 = distinct !{null, !200, !"uv_com", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1867, i32 19}
!201 = distinct !{null, !202, !"uv_mi0360b", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1871, i32 19}
!203 = distinct !{null, !204, !"delta", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1914, i32 18}
!205 = !{ptr @gamma_spec_0, !206, !"gamma_spec_0", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 326, i32 17}
!207 = !{ptr @gamma_spec_1, !208, !"gamma_spec_1", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 331, i32 17}
!209 = !{ptr @gamma_spec_2, !210, !"gamma_spec_2", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 336, i32 17}
!211 = !{ptr @gamma_spec_3, !212, !"gamma_spec_3", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 341, i32 17}
!213 = !{ptr @gamma_def, !214, !"gamma_def", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 321, i32 17}
!215 = !{ptr @sd_start.reg9a_def, !216, !"reg9a_def", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2180, i32 18}
!217 = !{ptr @sd_start.reg9a_spec, !218, !"reg9a_spec", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2182, i32 18}
!219 = !{ptr @sd_start.regd4, !220, !"regd4", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2184, i32 18}
!221 = !{ptr @sd_start.C0, !222, !"C0", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2185, i32 18}
!223 = distinct !{null, !224, !"CA", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2186, i32 18}
!225 = distinct !{null, !226, !"CA_adcm1700", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2187, i32 18}
!227 = distinct !{null, !228, !"CA_po2030n", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2189, i32 18}
!229 = distinct !{null, !230, !"CE", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2191, i32 18}
!231 = distinct !{null, !232, !"CE_gc0307", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2192, i32 18}
!233 = distinct !{null, !234, !"CE_ov76xx", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2194, i32 18}
!235 = distinct !{null, !236, !"CE_po2030n", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2196, i32 18}
!237 = !{ptr @.str.77, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1349, i32 3}
!239 = !{ptr @.str.78, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @hv7131r_probe._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @hv7131r_probe._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.80, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1352, i32 2}
!244 = !{ptr @hv7131r_probe._entry.79, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @hv7131r_probe._entry_ptr.81, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @om6802_init0, !247, !"om6802_init0", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 639, i32 17}
!248 = !{ptr @sensor_init, !249, !"sensor_init", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1122, i32 19}
!250 = !{ptr @adcm1700_sensor_init, !251, !"adcm1700_sensor_init", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 356, i32 17}
!252 = !{ptr @gc0307_sensor_init, !253, !"gc0307_sensor_init", i1 false, i1 false}
!253 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 392, i32 17}
!254 = !{ptr @hv7131r_sensor_init, !255, !"hv7131r_sensor_init", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 444, i32 17}
!256 = !{ptr @mi0360_sensor_init, !257, !"mi0360_sensor_init", i1 false, i1 false}
!257 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 477, i32 17}
!258 = !{ptr @mi0360b_sensor_init, !259, !"mi0360b_sensor_init", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 531, i32 17}
!260 = !{ptr @mo4000_sensor_init, !261, !"mo4000_sensor_init", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 587, i32 17}
!262 = !{ptr @mt9v111_sensor_init, !263, !"mt9v111_sensor_init", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 610, i32 17}
!264 = !{ptr @om6802_sensor_init, !265, !"om6802_sensor_init", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 644, i32 17}
!266 = !{ptr @ov7630_sensor_init, !267, !"ov7630_sensor_init", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 682, i32 17}
!268 = !{ptr @ov7648_sensor_init, !269, !"ov7648_sensor_init", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 739, i32 17}
!270 = !{ptr @ov7660_sensor_init, !271, !"ov7660_sensor_init", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 789, i32 17}
!272 = !{ptr @po1030_sensor_init, !273, !"po1030_sensor_init", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 884, i32 17}
!274 = !{ptr @po2030n_sensor_init, !275, !"po2030n_sensor_init", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 938, i32 17}
!276 = !{ptr @soi768_sensor_init, !277, !"soi768_sensor_init", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1006, i32 17}
!278 = !{ptr @sp80708_sensor_init, !279, !"sp80708_sensor_init", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1037, i32 17}
!280 = !{ptr @reg84, !281, !"reg84", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 347, i32 17}
!282 = !{ptr @adcm1700_sensor_param1, !283, !"adcm1700_sensor_param1", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 376, i32 17}
!284 = !{ptr @gc0307_sensor_param1, !285, !"gc0307_sensor_param1", i1 false, i1 false}
!285 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 433, i32 17}
!286 = !{ptr @mi0360b_sensor_param1, !287, !"mi0360b_sensor_param1", i1 false, i1 false}
!287 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 575, i32 17}
!288 = !{ptr @mt9v111_sensor_param1, !289, !"mt9v111_sensor_param1", i1 false, i1 false}
!289 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 631, i32 17}
!290 = !{ptr @om6802_sensor_param1, !291, !"om6802_sensor_param1", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 675, i32 17}
!292 = !{ptr @ov7630_sensor_param1, !293, !"ov7630_sensor_param1", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 721, i32 17}
!294 = !{ptr @ov7648_sensor_param1, !295, !"ov7648_sensor_param1", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 769, i32 17}
!296 = !{ptr @ov7660_sensor_param1, !297, !"ov7660_sensor_param1", i1 false, i1 false}
!297 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 855, i32 17}
!298 = !{ptr @po1030_sensor_param1, !299, !"po1030_sensor_param1", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 922, i32 17}
!300 = !{ptr @po2030n_sensor_param1, !301, !"po2030n_sensor_param1", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 991, i32 17}
!302 = !{ptr @soi768_sensor_param1, !303, !"soi768_sensor_param1", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1015, i32 17}
!304 = !{ptr @sp80708_sensor_param1, !305, !"sp80708_sensor_param1", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 1111, i32 17}
!306 = !{ptr @sd_stopN.stophv7131, !307, !"stophv7131", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2488, i32 18}
!308 = !{ptr @sd_stopN.stopmi0360, !309, !"stopmi0360", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2490, i32 18}
!310 = !{ptr @sd_stopN.stopov7648, !311, !"stopov7648", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2492, i32 18}
!312 = !{ptr @sd_stopN.stopsoi768, !313, !"stopsoi768", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2494, i32 18}
!314 = !{ptr @.str.82, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2585, i32 2}
!316 = !{ptr @.str.83, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @do_autogain._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @do_autogain._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @device_table, !320, !"device_table", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/gspca/sonixj.c", i32 2897, i32 35}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!330 = !{i8 0, i8 2}
