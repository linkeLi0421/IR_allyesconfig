; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca500.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca500.c"
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
%struct.sd = type { %struct.gspca_dev, i8, [589 x i8] }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca500.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_spca500.description=GSPCA/SPCA500 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_spca500.file=drivers/media/usb/gspca/gspca_spca500\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_spca500.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca500__307_979_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_spca500\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spca500\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [16 x %struct.usb_device_id], [96 x i8] } { [16 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1034, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 1054, i16 16394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1133, i16 2192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 1133, i16 2304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 1133, i16 2305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 1189, i16 12300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1276, i16 29491, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15872, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 1375, i16 -15840, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 1725, i16 1028, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1726, i16 2048, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 2125, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 2250, i16 259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 10393, i16 300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 -32634, i16 1584, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 1195724874, i32 1, i32 176, i32 10094, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 352, i32 38606, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: SPCA500 init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/spca500.c\00", [62 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: SPCA500 init done\0A\00", [39 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.7 = internal global ptr @sd_init._entry.5, section ".printk_index", align 4
@spca500_clksmart310_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: ClickSmart310 init 0x0d05 0x%02x 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spca500_clksmart310_init\00", [39 x i8] zeroinitializer }, align 32
@spca500_clksmart310_init._entry_ptr = internal global ptr @spca500_clksmart310_init._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: reg write: [0x%02x] = 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_spca500: reg write: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.14 = internal global ptr @reg_w._entry.12, section ".printk_index", align 4
@spca500_ping310._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: ClickSmart310 ping 0x0d04 0x%02x 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spca500_ping310\00", [16 x i8] zeroinitializer }, align 32
@spca500_ping310._entry_ptr = internal global ptr @spca500_ping310._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spca500:912:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_spca500: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Spca500 Sensor Address 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: Spca500 curr_mode: %d Xmult: 0x%02x, Ymult: 0x%02x\00", [39 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.24 = internal global ptr @sd_start._entry.22, section ".printk_index", align 4
@qtable_creative_pccam = internal constant { [2 x [64 x i8]], [32 x i8] } { [2 x [64 x i8]] [[64 x i8] c"\05\03\03\05\07\0C\0F\12\04\04\04\06\08\11\12\11\04\04\05\07\0C\11\15\11\04\05\07\09\0F\1A\18\13\05\07\0B\11\14!\1F\17\07\0B\11\13\18\1F\22\1C\0F\13\17\1A\1F$$\1E\16\1C\1D\1D\22\1E\1F\1E", [64 x i8] c"\05\05\07\0E\1E\1E\1E\1E\05\06\08\14\1E\1E\1E\1E\07\08\11\1E\1E\1E\1E\1E\0E\14\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E"], [32 x i8] zeroinitializer }, align 32
@sd_start._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: spca50x_setup_qtable failed\0A\00", [61 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.27 = internal global ptr @sd_start._entry.25, section ".printk_index", align 4
@sd_start._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: reg_r_wait() failed\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.30 = internal global ptr @sd_start._entry.28, section ".printk_index", align 4
@spca500_visual_defaults = internal constant { [13 x [3 x i16]], [50 x i8] } { [13 x [3 x i16]] [[3 x i16] [i16 0, i16 3, i16 -32405], [3 x i16] [i16 0, i16 0, i16 -32409], [3 x i16] [i16 0, i16 32, i16 -32408], [3 x i16] [i16 0, i16 3, i16 -32405], [3 x i16] [i16 0, i16 0, i16 -32406], [3 x i16] [i16 0, i16 32, i16 -32407], [3 x i16] [i16 0, i16 80, i16 -32425], [3 x i16] [i16 0, i16 48, i16 -32424], [3 x i16] [i16 0, i16 40, i16 -32423], [3 x i16] [i16 0, i16 10, i16 -32422], [3 x i16] [i16 0, i16 1, i16 -32254], [3 x i16] [i16 12, i16 4, i16 0], [3 x i16] zeroinitializer], [50 x i8] zeroinitializer }, align 32
@sd_start._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.4, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to enable drop packet\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.33 = internal global ptr @sd_start._entry.31, section ".printk_index", align 4
@sd_start._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.35 = internal global ptr @sd_start._entry.34, section ".printk_index", align 4
@sd_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.37 = internal global ptr @sd_start._entry.36, section ".printk_index", align 4
@sd_start._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.21, ptr @.str.4, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: spca500_full_reset failed\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.40 = internal global ptr @sd_start._entry.38, section ".printk_index", align 4
@sd_start._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.4, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.42 = internal global ptr @sd_start._entry.41, section ".printk_index", align 4
@sd_start._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.44 = internal global ptr @sd_start._entry.43, section ".printk_index", align 4
@sd_start._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.46 = internal global ptr @sd_start._entry.45, section ".printk_index", align 4
@sd_start._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.21, ptr @.str.4, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.48 = internal global ptr @sd_start._entry.47, section ".printk_index", align 4
@qtable_kodak_ez200 = internal constant { [2 x [64 x i8]], [32 x i8] } { [2 x [64 x i8]] [[64 x i8] c"\02\01\01\02\02\04\05\06\01\01\01\02\03\06\06\06\01\01\02\02\04\06\07\06\01\02\02\03\05\09\08\06\02\02\04\06\07\0B\0A\08\02\04\06\06\08\0A\0B\09\05\06\08\09\0A\0C\0C\0A\07\09\0A\0A\0B\0A\0A\0A", [64 x i8] c"\02\02\02\05\0A\0A\0A\0A\02\02\03\07\0A\0A\0A\0A\02\03\06\0A\0A\0A\0A\0A\05\07\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A"], [32 x i8] zeroinitializer }, align 32
@sd_start._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.50 = internal global ptr @sd_start._entry.49, section ".printk_index", align 4
@sd_start._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.4, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.52 = internal global ptr @sd_start._entry.51, section ".printk_index", align 4
@qtable_pocketdv = internal constant { [2 x [64 x i8]], [32 x i8] } { [2 x [64 x i8]] [[64 x i8] c"\06\04\04\06\0A\10\14\18\05\05\06\08\0A\17\18\16\06\05\06\0A\10\17\1C\16\06\07\09\0C\14# \19\07\09\0F\16\1B,)\1F\0A\0E\16\1A *-%\14\1A\1F#)00(\1D%&'-()(", [64 x i8] c"\07\07\0A\13((((\07\08\0A\1A((((\0A\0A\16(((((\13\1A(((((((((((((((((((((((((((((((((((((("], [32 x i8] zeroinitializer }, align 32
@sd_start._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.54 = internal global ptr @sd_start._entry.53, section ".printk_index", align 4
@sd_start._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.56 = internal global ptr @sd_start._entry.55, section ".printk_index", align 4
@Clicksmart510_defaults = internal constant { [126 x [3 x i16]], [172 x i8] } { [126 x [3 x i16]] [[3 x i16] [i16 0, i16 0, i16 -32239], [3 x i16] [i16 0, i16 1, i16 -32064], [3 x i16] [i16 0, i16 16, i16 -32053], [3 x i16] [i16 0, i16 15, i16 -32755], [3 x i16] [i16 0, i16 130, i16 -32219], [3 x i16] [i16 0, i16 33, i16 -32216], [3 x i16] [i16 0, i16 0, i16 -32253], [3 x i16] [i16 0, i16 0, i16 -32252], [3 x i16] [i16 0, i16 8, i16 -32251], [3 x i16] [i16 0, i16 248, i16 -32250], [3 x i16] [i16 0, i16 40, i16 -32249], [3 x i16] [i16 0, i16 160, i16 -32248], [3 x i16] [i16 0, i16 8, i16 -32182], [3 x i16] [i16 0, i16 8, i16 -32236], [3 x i16] [i16 0, i16 128, i16 -32063], [3 x i16] [i16 0, i16 0, i16 -32062], [3 x i16] [i16 0, i16 0, i16 -32054], [3 x i16] [i16 0, i16 128, i16 -32063], [3 x i16] [i16 0, i16 4, i16 -32062], [3 x i16] [i16 0, i16 0, i16 -32054], [3 x i16] [i16 0, i16 252, i16 -32512], [3 x i16] [i16 0, i16 252, i16 -32507], [3 x i16] [i16 0, i16 48, i16 -32511], [3 x i16] [i16 0, i16 0, i16 -32510], [3 x i16] [i16 0, i16 0, i16 -32509], [3 x i16] [i16 0, i16 102, i16 -32505], [3 x i16] [i16 0, i16 0, i16 -32405], [3 x i16] [i16 0, i16 0, i16 -32427], [3 x i16] [i16 0, i16 1, i16 -32426], [3 x i16] [i16 0, i16 96, i16 -32425], [3 x i16] [i16 0, i16 64, i16 -32424], [3 x i16] [i16 0, i16 10, i16 -32423], [3 x i16] [i16 0, i16 6, i16 -32422], [3 x i16] [i16 0, i16 0, i16 -32449], [3 x i16] [i16 0, i16 0, i16 -32256], [3 x i16] [i16 0, i16 25, i16 -32255], [3 x i16] [i16 0, i16 0, i16 -32063], [3 x i16] [i16 0, i16 160, i16 -32062], [3 x i16] [i16 0, i16 0, i16 -32054], [3 x i16] [i16 0, i16 0, i16 -32489], [3 x i16] [i16 0, i16 0, i16 -32488], [3 x i16] [i16 0, i16 101, i16 -32487], [3 x i16] [i16 0, i16 0, i16 -32486], [3 x i16] [i16 0, i16 0, i16 -32485], [3 x i16] [i16 0, i16 85, i16 -32484], [3 x i16] [i16 0, i16 101, i16 -32483], [3 x i16] [i16 0, i16 85, i16 -32482], [3 x i16] [i16 0, i16 22, i16 -32481], [3 x i16] [i16 0, i16 25, i16 -32480], [3 x i16] [i16 0, i16 128, i16 -32509], [3 x i16] [i16 0, i16 131, i16 -32405], [3 x i16] [i16 0, i16 37, i16 -32408], [3 x i16] [i16 0, i16 1, i16 -32241], [3 x i16] [i16 0, i16 255, i16 -32491], [3 x i16] [i16 0, i16 72, i16 -32490], [3 x i16] [i16 0, i16 80, i16 -32431], [3 x i16] [i16 0, i16 64, i16 -32430], [3 x i16] [i16 0, i16 120, i16 -32429], [3 x i16] [i16 0, i16 64, i16 -32428], [3 x i16] [i16 0, i16 0, i16 -32409], [3 x i16] [i16 0, i16 32, i16 -32408], [3 x i16] [i16 0, i16 0, i16 -32406], [3 x i16] [i16 0, i16 3, i16 -32405], [3 x i16] [i16 0, i16 32, i16 -32407], [3 x i16] [i16 0, i16 96, i16 -32425], [3 x i16] [i16 0, i16 0, i16 -32368], [3 x i16] [i16 0, i16 0, i16 -32351], [3 x i16] [i16 0, i16 0, i16 -32334], [3 x i16] [i16 0, i16 39, i16 -32367], [3 x i16] [i16 0, i16 39, i16 -32350], [3 x i16] [i16 0, i16 39, i16 -32333], [3 x i16] [i16 0, i16 75, i16 -32366], [3 x i16] [i16 0, i16 75, i16 -32349], [3 x i16] [i16 0, i16 75, i16 -32332], [3 x i16] [i16 0, i16 102, i16 -32365], [3 x i16] [i16 0, i16 102, i16 -32348], [3 x i16] [i16 0, i16 102, i16 -32331], [3 x i16] [i16 0, i16 121, i16 -32364], [3 x i16] [i16 0, i16 121, i16 -32347], [3 x i16] [i16 0, i16 121, i16 -32330], [3 x i16] [i16 0, i16 138, i16 -32363], [3 x i16] [i16 0, i16 138, i16 -32346], [3 x i16] [i16 0, i16 138, i16 -32329], [3 x i16] [i16 0, i16 155, i16 -32362], [3 x i16] [i16 0, i16 155, i16 -32345], [3 x i16] [i16 0, i16 155, i16 -32328], [3 x i16] [i16 0, i16 166, i16 -32361], [3 x i16] [i16 0, i16 166, i16 -32344], [3 x i16] [i16 0, i16 166, i16 -32327], [3 x i16] [i16 0, i16 178, i16 -32360], [3 x i16] [i16 0, i16 178, i16 -32343], [3 x i16] [i16 0, i16 178, i16 -32326], [3 x i16] [i16 0, i16 190, i16 -32359], [3 x i16] [i16 0, i16 190, i16 -32342], [3 x i16] [i16 0, i16 190, i16 -32325], [3 x i16] [i16 0, i16 200, i16 -32358], [3 x i16] [i16 0, i16 200, i16 -32341], [3 x i16] [i16 0, i16 200, i16 -32324], [3 x i16] [i16 0, i16 210, i16 -32357], [3 x i16] [i16 0, i16 210, i16 -32340], [3 x i16] [i16 0, i16 210, i16 -32323], [3 x i16] [i16 0, i16 219, i16 -32356], [3 x i16] [i16 0, i16 219, i16 -32339], [3 x i16] [i16 0, i16 219, i16 -32322], [3 x i16] [i16 0, i16 228, i16 -32355], [3 x i16] [i16 0, i16 228, i16 -32338], [3 x i16] [i16 0, i16 228, i16 -32321], [3 x i16] [i16 0, i16 237, i16 -32354], [3 x i16] [i16 0, i16 237, i16 -32337], [3 x i16] [i16 0, i16 237, i16 -32320], [3 x i16] [i16 0, i16 247, i16 -32353], [3 x i16] [i16 0, i16 247, i16 -32336], [3 x i16] [i16 0, i16 247, i16 -32319], [3 x i16] [i16 0, i16 255, i16 -32352], [3 x i16] [i16 0, i16 255, i16 -32335], [3 x i16] [i16 0, i16 255, i16 -32318], [3 x i16] [i16 0, i16 3, i16 -32426], [3 x i16] [i16 0, i16 0, i16 -32239], [3 x i16] [i16 0, i16 32, i16 -32408], [3 x i16] [i16 0, i16 1, i16 -32254], [3 x i16] [i16 0, i16 48, i16 -32511], [3 x i16] [i16 0, i16 0, i16 -32495], [3 x i16] [i16 0, i16 0, i16 -32494], [3 x i16] [i16 0, i16 0, i16 -32493], [3 x i16] [i16 0, i16 0, i16 -32492], [3 x i16] zeroinitializer], [172 x i8] zeroinitializer }, align 32
@jpeg_head = internal constant { [589 x i8], [147 x i8] } { [589 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\01\E0\02\80\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [147 x i8] zeroinitializer }, align 32
@reg_r_12._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013gspca_spca500: reg_r_12 err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_r_12\00", [23 x i8] zeroinitializer }, align 32
@reg_r_12._entry_ptr = internal global ptr @reg_r_12._entry, section ".printk_index", align 4
@spca500_synch310._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Set packet size: set interface error\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spca500_synch310\00", [47 x i8] zeroinitializer }, align 32
@spca500_synch310._entry_ptr = internal global ptr @spca500_synch310._entry, section ".printk_index", align 4
@spca500_synch310._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: ClickSmart310 sync alt: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@spca500_synch310._entry_ptr.63 = internal global ptr @spca500_synch310._entry.61, section ".printk_index", align 4
@spca500_synch310._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@spca500_synch310._entry_ptr.65 = internal global ptr @spca500_synch310._entry.64, section ".printk_index", align 4
@spca500_full_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.66, ptr @.str.4, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spca500_full_reset\00", [45 x i8] zeroinitializer }, align 32
@spca500_full_reset._entry_ptr = internal global ptr @spca500_full_reset._entry, section ".printk_index", align 4
@spca500_reinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: spca50x_setup_qtable failed on init\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spca500_reinit\00", [17 x i8] zeroinitializer }, align 32
@spca500_reinit._entry_ptr = internal global ptr @spca500_reinit._entry, section ".printk_index", align 4
@sd_pkt_scan.ffd9 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\D9", [30 x i8] zeroinitializer }, align 32
@sd_stopN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: stop SPCA500 done reg8000: 0x%2x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_stopN\00", [23 x i8] zeroinitializer }, align 32
@sd_stopN._entry_ptr = internal global ptr @sd_stopN._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963777, i64 9963778]
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 967, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 979, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 968, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 939, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 928, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 45, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 58, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 582, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 587, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 424, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 321, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 329, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 417, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 912, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 903, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 921, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 614, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 616, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"qtable_creative_pccam\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 239, i32 19 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 631, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 639, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"spca500_visual_defaults\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 86, i32 20 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 652, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 658, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 667, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 681, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 686, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 692, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 701, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 714, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"qtable_kodak_ez200\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 260, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 722, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 731, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"qtable_pocketdv\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 281, i32 19 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 757, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 787, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [23 x i8] c"Clicksmart510_defaults\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 110, i32 20 }
@___asan_gen_.246 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 19, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 351, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 495, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 503, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 510, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 479, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 535, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [5 x i8] c"ffd9\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 825, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [37 x i8] c"../drivers/media/usb/gspca/spca500.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 815, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca500__307_979_sd_driver_init6, ptr @reg_r_12._entry, ptr @reg_r_12._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry.12, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.14, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.5, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.7, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.22, ptr @sd_start._entry.25, ptr @sd_start._entry.28, ptr @sd_start._entry.31, ptr @sd_start._entry.34, ptr @sd_start._entry.36, ptr @sd_start._entry.38, ptr @sd_start._entry.41, ptr @sd_start._entry.43, ptr @sd_start._entry.45, ptr @sd_start._entry.47, ptr @sd_start._entry.49, ptr @sd_start._entry.51, ptr @sd_start._entry.53, ptr @sd_start._entry.55, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.24, ptr @sd_start._entry_ptr.27, ptr @sd_start._entry_ptr.30, ptr @sd_start._entry_ptr.33, ptr @sd_start._entry_ptr.35, ptr @sd_start._entry_ptr.37, ptr @sd_start._entry_ptr.40, ptr @sd_start._entry_ptr.42, ptr @sd_start._entry_ptr.44, ptr @sd_start._entry_ptr.46, ptr @sd_start._entry_ptr.48, ptr @sd_start._entry_ptr.50, ptr @sd_start._entry_ptr.52, ptr @sd_start._entry_ptr.54, ptr @sd_start._entry_ptr.56, ptr @sd_stopN._entry, ptr @sd_stopN._entry_ptr, ptr @spca500_clksmart310_init._entry, ptr @spca500_clksmart310_init._entry_ptr, ptr @spca500_full_reset._entry, ptr @spca500_full_reset._entry_ptr, ptr @spca500_ping310._entry, ptr @spca500_ping310._entry_ptr, ptr @spca500_reinit._entry, ptr @spca500_reinit._entry_ptr, ptr @spca500_synch310._entry, ptr @spca500_synch310._entry.61, ptr @spca500_synch310._entry.64, ptr @spca500_synch310._entry_ptr, ptr @spca500_synch310._entry_ptr.63, ptr @spca500_synch310._entry_ptr.65, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @sif_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @sd_init_controls._key, ptr @.str.17, ptr @sd_ctrl_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @qtable_creative_pccam, ptr @.str.26, ptr @.str.29, ptr @spca500_visual_defaults, ptr @.str.32, ptr @.str.39, ptr @qtable_kodak_ez200, ptr @qtable_pocketdv, ptr @Clicksmart510_defaults, ptr @jpeg_head, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @sd_pkt_scan.ffd9, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_clksmart310_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_ping310._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtable_creative_pccam to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_visual_defaults to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtable_kodak_ez200 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtable_pocketdv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Clicksmart510_defaults to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 589, i32 736, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r_12._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_synch310._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_synch310._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_synch310._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_full_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca500_reinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan.ffd9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_stopN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3200, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %1 to i8
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %subtype, align 8
  %conv3 = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv3)
  %cmp.not = icmp eq i32 %conv3, 8
  %spec.select = select i1 %cmp.not, ptr @sif_mode, ptr @vga_mode
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %3 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %cam1, align 4
  %4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %subtype, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp4 = icmp eq i8 %2, 8
  br i1 %cmp4, label %if.then6, label %do.end3.do.body8_crit_edge

do.end3.do.body8_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

if.then6:                                         ; preds = %do.end3
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %7 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or2.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3333, ptr noundef %8, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp sgt i32 %9, 2
  br i1 %cmp.i, label %do.end5.i, label %if.then6.do.end4.i.i_crit_edge

if.then6.do.end4.i.i_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i.i

do.end5.i:                                        ; preds = %if.then6
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i32
  %arrayidx3.i = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %15 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv4.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr.i = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr.i)
  %cmp.i.i = icmp sgt i32 %.pr.i, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end5.i.do.end4.i.i_crit_edge

do.end5.i.do.end4.i.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 33127, i32 noundef 90) #8
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %do.end5.i.do.end4.i.i_crit_edge, %if.then6.do.end4.i.i_crit_edge
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i39.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i39.i, -2147483648
  %call8.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 90, i16 noundef zeroext -32409, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %do.end14.i.i, label %do.end4.i.i.reg_w.exit.i_crit_edge

do.end4.i.i.reg_w.exit.i_crit_edge:               ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit.i

do.end14.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i.i) #8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end14.i.i, %do.end4.i.i.reg_w.exit.i_crit_edge
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i.i.i = shl i32 %23, 8
  %or2.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %24 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or2.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3332, ptr noundef %25, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i40.i = icmp sgt i32 %26, 2
  br i1 %cmp.i40.i, label %spca500_ping310.exit.i, label %reg_w.exit.i.do.end4.i53.i_crit_edge

reg_w.exit.i.do.end4.i53.i_crit_edge:             ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i53.i

spca500_ping310.exit.i:                           ; preds = %reg_w.exit.i
  %name.i41.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i.i = zext i8 %30 to i32
  %arrayidx3.i.i = getelementptr i8, ptr %28, i32 1
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %32 to i32
  %call.i42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i41.i, i32 noundef %conv.i.i, i32 noundef %conv4.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr214.i = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr214.i)
  %cmp.i44.i = icmp sgt i32 %.pr214.i, 6
  br i1 %cmp.i44.i, label %do.end.i47.i, label %spca500_ping310.exit.i.do.end4.i53.i_crit_edge

spca500_ping310.exit.i.do.end4.i53.i_crit_edge:   ; preds = %spca500_ping310.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i53.i

do.end.i47.i:                                     ; preds = %spca500_ping310.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i41.i, i32 noundef 33128, i32 noundef 34) #8
  br label %do.end4.i53.i

do.end4.i53.i:                                    ; preds = %do.end.i47.i, %spca500_ping310.exit.i.do.end4.i53.i_crit_edge, %reg_w.exit.i.do.end4.i53.i_crit_edge
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i49.i = shl i32 %36, 8
  %or.i50.i = or i32 %shl.i.i49.i, -2147483648
  %call8.i51.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i50.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 34, i16 noundef zeroext -32408, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i51.i)
  %cmp9.i52.i = icmp slt i32 %call8.i51.i, 0
  br i1 %cmp9.i52.i, label %do.end14.i55.i, label %do.end4.i53.i.reg_w.exit56.i_crit_edge

do.end4.i53.i.reg_w.exit56.i_crit_edge:           ; preds = %do.end4.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit56.i

do.end14.i55.i:                                   ; preds = %do.end4.i53.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i51.i) #8
  br label %reg_w.exit56.i

reg_w.exit56.i:                                   ; preds = %do.end14.i55.i, %do.end4.i53.i.reg_w.exit56.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp.i57.i = icmp sgt i32 %37, 6
  br i1 %cmp.i57.i, label %do.end.i60.i, label %reg_w.exit56.i.do.end4.i66.i_crit_edge

reg_w.exit56.i.do.end4.i66.i_crit_edge:           ; preds = %reg_w.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i66.i

do.end.i60.i:                                     ; preds = %reg_w.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i58.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i58.i, i32 noundef 33130, i32 noundef 192) #8
  br label %do.end4.i66.i

do.end4.i66.i:                                    ; preds = %do.end.i60.i, %reg_w.exit56.i.do.end4.i66.i_crit_edge
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i62.i = shl i32 %41, 8
  %or.i63.i = or i32 %shl.i.i62.i, -2147483648
  %call8.i64.i = tail call i32 @usb_control_msg(ptr noundef %39, i32 noundef %or.i63.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 192, i16 noundef zeroext -32406, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i64.i)
  %cmp9.i65.i = icmp slt i32 %call8.i64.i, 0
  br i1 %cmp9.i65.i, label %do.end14.i68.i, label %do.end4.i66.i.reg_w.exit69.i_crit_edge

do.end4.i66.i.reg_w.exit69.i_crit_edge:           ; preds = %do.end4.i66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit69.i

do.end14.i68.i:                                   ; preds = %do.end4.i66.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i64.i) #8
  br label %reg_w.exit69.i

reg_w.exit69.i:                                   ; preds = %do.end14.i68.i, %do.end4.i66.i.reg_w.exit69.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp.i70.i = icmp sgt i32 %42, 6
  br i1 %cmp.i70.i, label %do.end.i73.i, label %reg_w.exit69.i.do.end4.i79.i_crit_edge

reg_w.exit69.i.do.end4.i79.i_crit_edge:           ; preds = %reg_w.exit69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i79.i

do.end.i73.i:                                     ; preds = %reg_w.exit69.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i71.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i71.i, i32 noundef 33131, i32 noundef 11) #8
  br label %do.end4.i79.i

do.end4.i79.i:                                    ; preds = %do.end.i73.i, %reg_w.exit69.i.do.end4.i79.i_crit_edge
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i75.i = shl i32 %46, 8
  %or.i76.i = or i32 %shl.i.i75.i, -2147483648
  %call8.i77.i = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i76.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i77.i)
  %cmp9.i78.i = icmp slt i32 %call8.i77.i, 0
  br i1 %cmp9.i78.i, label %do.end14.i81.i, label %do.end4.i79.i.reg_w.exit82.i_crit_edge

do.end4.i79.i.reg_w.exit82.i_crit_edge:           ; preds = %do.end4.i79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit82.i

do.end14.i81.i:                                   ; preds = %do.end4.i79.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i77.i) #8
  br label %reg_w.exit82.i

reg_w.exit82.i:                                   ; preds = %do.end14.i81.i, %do.end4.i79.i.reg_w.exit82.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %47 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %cmp.i83.i = icmp sgt i32 %47, 6
  br i1 %cmp.i83.i, label %do.end.i86.i, label %reg_w.exit82.i.do.end4.i92.i_crit_edge

reg_w.exit82.i.do.end4.i92.i_crit_edge:           ; preds = %reg_w.exit82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i92.i

do.end.i86.i:                                     ; preds = %reg_w.exit82.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i84.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i85.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i84.i, i32 noundef 33129, i32 noundef 37) #8
  br label %do.end4.i92.i

do.end4.i92.i:                                    ; preds = %do.end.i86.i, %reg_w.exit82.i.do.end4.i92.i_crit_edge
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i.i88.i = shl i32 %51, 8
  %or.i89.i = or i32 %shl.i.i88.i, -2147483648
  %call8.i90.i = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i89.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 37, i16 noundef zeroext -32407, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i90.i)
  %cmp9.i91.i = icmp slt i32 %call8.i90.i, 0
  br i1 %cmp9.i91.i, label %do.end14.i94.i, label %do.end4.i92.i.reg_w.exit95.i_crit_edge

do.end4.i92.i.reg_w.exit95.i_crit_edge:           ; preds = %do.end4.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit95.i

do.end14.i94.i:                                   ; preds = %do.end4.i92.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i93.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i90.i) #8
  br label %reg_w.exit95.i

reg_w.exit95.i:                                   ; preds = %do.end14.i94.i, %do.end4.i92.i.reg_w.exit95.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %52 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %cmp.i96.i = icmp sgt i32 %52, 6
  br i1 %cmp.i96.i, label %do.end.i99.i, label %reg_w.exit95.i.do.end4.i105.i_crit_edge

reg_w.exit95.i.do.end4.i105.i_crit_edge:          ; preds = %reg_w.exit95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i105.i

do.end.i99.i:                                     ; preds = %reg_w.exit95.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i97.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i97.i, i32 noundef 33111, i32 noundef 91) #8
  br label %do.end4.i105.i

do.end4.i105.i:                                   ; preds = %do.end.i99.i, %reg_w.exit95.i.do.end4.i105.i_crit_edge
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i101.i = shl i32 %56, 8
  %or.i102.i = or i32 %shl.i.i101.i, -2147483648
  %call8.i103.i = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i102.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 91, i16 noundef zeroext -32425, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i103.i)
  %cmp9.i104.i = icmp slt i32 %call8.i103.i, 0
  br i1 %cmp9.i104.i, label %do.end14.i107.i, label %do.end4.i105.i.reg_w.exit108.i_crit_edge

do.end4.i105.i.reg_w.exit108.i_crit_edge:         ; preds = %do.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit108.i

do.end14.i107.i:                                  ; preds = %do.end4.i105.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i103.i) #8
  br label %reg_w.exit108.i

reg_w.exit108.i:                                  ; preds = %do.end14.i107.i, %do.end4.i105.i.reg_w.exit108.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %57 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %cmp.i109.i = icmp sgt i32 %57, 6
  br i1 %cmp.i109.i, label %do.end.i112.i, label %reg_w.exit108.i.do.end4.i118.i_crit_edge

reg_w.exit108.i.do.end4.i118.i_crit_edge:         ; preds = %reg_w.exit108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i118.i

do.end.i112.i:                                    ; preds = %reg_w.exit108.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i110.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i111.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i110.i, i32 noundef 33112, i32 noundef 91) #8
  br label %do.end4.i118.i

do.end4.i118.i:                                   ; preds = %do.end.i112.i, %reg_w.exit108.i.do.end4.i118.i_crit_edge
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i114.i = shl i32 %61, 8
  %or.i115.i = or i32 %shl.i.i114.i, -2147483648
  %call8.i116.i = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i115.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 91, i16 noundef zeroext -32424, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i116.i)
  %cmp9.i117.i = icmp slt i32 %call8.i116.i, 0
  br i1 %cmp9.i117.i, label %do.end14.i120.i, label %do.end4.i118.i.reg_w.exit121.i_crit_edge

do.end4.i118.i.reg_w.exit121.i_crit_edge:         ; preds = %do.end4.i118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit121.i

do.end14.i120.i:                                  ; preds = %do.end4.i118.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i116.i) #8
  br label %reg_w.exit121.i

reg_w.exit121.i:                                  ; preds = %do.end14.i120.i, %do.end4.i118.i.reg_w.exit121.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %62 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp.i122.i = icmp sgt i32 %62, 6
  br i1 %cmp.i122.i, label %do.end.i125.i, label %reg_w.exit121.i.do.end4.i131.i_crit_edge

reg_w.exit121.i.do.end4.i131.i_crit_edge:         ; preds = %reg_w.exit121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i131.i

do.end.i125.i:                                    ; preds = %reg_w.exit121.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i123.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i123.i, i32 noundef 33087, i32 noundef 3) #8
  br label %do.end4.i131.i

do.end4.i131.i:                                   ; preds = %do.end.i125.i, %reg_w.exit121.i.do.end4.i131.i_crit_edge
  %63 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i127.i = shl i32 %66, 8
  %or.i128.i = or i32 %shl.i.i127.i, -2147483648
  %call8.i129.i = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i128.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext -32449, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i129.i)
  %cmp9.i130.i = icmp slt i32 %call8.i129.i, 0
  br i1 %cmp9.i130.i, label %do.end14.i133.i, label %do.end4.i131.i.reg_w.exit134.i_crit_edge

do.end4.i131.i.reg_w.exit134.i_crit_edge:         ; preds = %do.end4.i131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit134.i

do.end14.i133.i:                                  ; preds = %do.end4.i131.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i129.i) #8
  br label %reg_w.exit134.i

reg_w.exit134.i:                                  ; preds = %do.end14.i133.i, %do.end4.i131.i.reg_w.exit134.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %67 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp.i135.i = icmp sgt i32 %67, 6
  br i1 %cmp.i135.i, label %do.end.i138.i, label %reg_w.exit134.i.do.end4.i144.i_crit_edge

reg_w.exit134.i.do.end4.i144.i_crit_edge:         ; preds = %reg_w.exit134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i144.i

do.end.i138.i:                                    ; preds = %reg_w.exit134.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i136.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i136.i, i32 noundef 33105, i32 noundef 74) #8
  br label %do.end4.i144.i

do.end4.i144.i:                                   ; preds = %do.end.i138.i, %reg_w.exit134.i.do.end4.i144.i_crit_edge
  %68 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i140.i = shl i32 %71, 8
  %or.i141.i = or i32 %shl.i.i140.i, -2147483648
  %call8.i142.i = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i141.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 74, i16 noundef zeroext -32431, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i142.i)
  %cmp9.i143.i = icmp slt i32 %call8.i142.i, 0
  br i1 %cmp9.i143.i, label %do.end14.i146.i, label %do.end4.i144.i.reg_w.exit147.i_crit_edge

do.end4.i144.i.reg_w.exit147.i_crit_edge:         ; preds = %do.end4.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit147.i

do.end14.i146.i:                                  ; preds = %do.end4.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i145.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i142.i) #8
  br label %reg_w.exit147.i

reg_w.exit147.i:                                  ; preds = %do.end14.i146.i, %do.end4.i144.i.reg_w.exit147.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %72 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %72)
  %cmp.i148.i = icmp sgt i32 %72, 6
  br i1 %cmp.i148.i, label %do.end.i151.i, label %reg_w.exit147.i.do.end4.i157.i_crit_edge

reg_w.exit147.i.do.end4.i157.i_crit_edge:         ; preds = %reg_w.exit147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i157.i

do.end.i151.i:                                    ; preds = %reg_w.exit147.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i149.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i149.i, i32 noundef 33107, i32 noundef 120) #8
  br label %do.end4.i157.i

do.end4.i157.i:                                   ; preds = %do.end.i151.i, %reg_w.exit147.i.do.end4.i157.i_crit_edge
  %73 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %shl.i.i153.i = shl i32 %76, 8
  %or.i154.i = or i32 %shl.i.i153.i, -2147483648
  %call8.i155.i = tail call i32 @usb_control_msg(ptr noundef %74, i32 noundef %or.i154.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 120, i16 noundef zeroext -32429, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i155.i)
  %cmp9.i156.i = icmp slt i32 %call8.i155.i, 0
  br i1 %cmp9.i156.i, label %do.end14.i159.i, label %do.end4.i157.i.reg_w.exit160.i_crit_edge

do.end4.i157.i.reg_w.exit160.i_crit_edge:         ; preds = %do.end4.i157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit160.i

do.end14.i159.i:                                  ; preds = %do.end4.i157.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i158.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i155.i) #8
  br label %reg_w.exit160.i

reg_w.exit160.i:                                  ; preds = %do.end14.i159.i, %do.end4.i157.i.reg_w.exit160.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %77)
  %cmp.i161.i = icmp sgt i32 %77, 6
  br i1 %cmp.i161.i, label %do.end.i164.i, label %reg_w.exit160.i.do.end4.i170.i_crit_edge

reg_w.exit160.i.do.end4.i170.i_crit_edge:         ; preds = %reg_w.exit160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i170.i

do.end.i164.i:                                    ; preds = %reg_w.exit160.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i162.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i163.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i162.i, i32 noundef 3329, i32 noundef 4) #8
  br label %do.end4.i170.i

do.end4.i170.i:                                   ; preds = %do.end.i164.i, %reg_w.exit160.i.do.end4.i170.i_crit_edge
  %78 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i.i166.i = shl i32 %81, 8
  %or.i167.i = or i32 %shl.i.i166.i, -2147483648
  %call8.i168.i = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i167.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 3329, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i168.i)
  %cmp9.i169.i = icmp slt i32 %call8.i168.i, 0
  br i1 %cmp9.i169.i, label %do.end14.i172.i, label %do.end4.i170.i.reg_w.exit173.i_crit_edge

do.end4.i170.i.reg_w.exit173.i_crit_edge:         ; preds = %do.end4.i170.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit173.i

do.end14.i172.i:                                  ; preds = %do.end4.i170.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i168.i) #8
  br label %reg_w.exit173.i

reg_w.exit173.i:                                  ; preds = %do.end14.i172.i, %do.end4.i170.i.reg_w.exit173.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %82 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %82)
  %cmp.i174.i = icmp sgt i32 %82, 6
  br i1 %cmp.i174.i, label %do.end.i177.i, label %reg_w.exit173.i.do.end4.i183.i_crit_edge

reg_w.exit173.i.do.end4.i183.i_crit_edge:         ; preds = %reg_w.exit173.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i183.i

do.end.i177.i:                                    ; preds = %reg_w.exit173.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i175.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i176.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i175.i, i32 noundef 3330, i32 noundef 1) #8
  br label %do.end4.i183.i

do.end4.i183.i:                                   ; preds = %do.end.i177.i, %reg_w.exit173.i.do.end4.i183.i_crit_edge
  %83 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %shl.i.i179.i = shl i32 %86, 8
  %or.i180.i = or i32 %shl.i.i179.i, -2147483648
  %call8.i181.i = tail call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or.i180.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 3330, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i181.i)
  %cmp9.i182.i = icmp slt i32 %call8.i181.i, 0
  br i1 %cmp9.i182.i, label %do.end14.i185.i, label %do.end4.i183.i.reg_w.exit186.i_crit_edge

do.end4.i183.i.reg_w.exit186.i_crit_edge:         ; preds = %do.end4.i183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit186.i

do.end14.i185.i:                                  ; preds = %do.end4.i183.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i184.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i181.i) #8
  br label %reg_w.exit186.i

reg_w.exit186.i:                                  ; preds = %do.end14.i185.i, %do.end4.i183.i.reg_w.exit186.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %87 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %87)
  %cmp.i187.i = icmp sgt i32 %87, 6
  br i1 %cmp.i187.i, label %do.end.i190.i, label %reg_w.exit186.i.do.end4.i196.i_crit_edge

reg_w.exit186.i.do.end4.i196.i_crit_edge:         ; preds = %reg_w.exit186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i196.i

do.end.i190.i:                                    ; preds = %reg_w.exit186.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i188.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i188.i, i32 noundef 33129, i32 noundef 37) #8
  br label %do.end4.i196.i

do.end4.i196.i:                                   ; preds = %do.end.i190.i, %reg_w.exit186.i.do.end4.i196.i_crit_edge
  %88 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %shl.i.i192.i = shl i32 %91, 8
  %or.i193.i = or i32 %shl.i.i192.i, -2147483648
  %call8.i194.i = tail call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or.i193.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 37, i16 noundef zeroext -32407, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i194.i)
  %cmp9.i195.i = icmp slt i32 %call8.i194.i, 0
  br i1 %cmp9.i195.i, label %do.end14.i198.i, label %do.end4.i196.i.reg_w.exit199.i_crit_edge

do.end4.i196.i.reg_w.exit199.i_crit_edge:         ; preds = %do.end4.i196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit199.i

do.end14.i198.i:                                  ; preds = %do.end4.i196.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i197.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i194.i) #8
  br label %reg_w.exit199.i

reg_w.exit199.i:                                  ; preds = %do.end14.i198.i, %do.end4.i196.i.reg_w.exit199.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %92 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %92)
  %cmp.i200.i = icmp sgt i32 %92, 6
  br i1 %cmp.i200.i, label %do.end.i203.i, label %reg_w.exit199.i.do.end4.i209.i_crit_edge

reg_w.exit199.i.do.end4.i209.i_crit_edge:         ; preds = %reg_w.exit199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i209.i

do.end.i203.i:                                    ; preds = %reg_w.exit199.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i201.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i202.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i201.i, i32 noundef 3329, i32 noundef 2) #8
  br label %do.end4.i209.i

do.end4.i209.i:                                   ; preds = %do.end.i203.i, %reg_w.exit199.i.do.end4.i209.i_crit_edge
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i205.i = shl i32 %96, 8
  %or.i206.i = or i32 %shl.i.i205.i, -2147483648
  %call8.i207.i = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i206.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 3329, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i207.i)
  %cmp9.i208.i = icmp slt i32 %call8.i207.i, 0
  br i1 %cmp9.i208.i, label %do.end14.i211.i, label %do.end4.i209.i.do.body8_crit_edge

do.end4.i209.i.do.body8_crit_edge:                ; preds = %do.end4.i209.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

do.end14.i211.i:                                  ; preds = %do.end4.i209.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i210.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i207.i) #8
  br label %do.body8

do.body8:                                         ; preds = %do.end14.i211.i, %do.end4.i209.i.do.body8_crit_edge, %do.end3.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %97 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp9 = icmp sgt i32 %97, 2
  br i1 %cmp9, label %do.end14, label %do.body8.do.end22_crit_edge

do.body8.do.end22_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %name17 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name17) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body8.do.end22_crit_edge
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.17) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 31) #5
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 31) #5
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
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
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
  %arrayidx.i398 = getelementptr [589 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %12 = ptrtoint ptr %arrayidx.i398 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i398, align 1
  %conv.i399 = zext i8 %13 to i16
  %mul6.i = mul nuw nsw i16 %conv.i399, 30
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
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %18 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %subtype, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp = icmp eq i8 %19, 8
  %. = select i1 %cmp, i8 18, i8 30
  %.397 = select i1 %cmp, i8 22, i8 40
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %23, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %24 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -30204, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp5 = icmp sgt i32 %26, 2
  br i1 %cmp5, label %do.body14, label %jpeg_set_qual.exit.do.end31_crit_edge

jpeg_set_qual.exit.do.end31_crit_edge:            ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

do.body14:                                        ; preds = %jpeg_set_qual.exit
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv10 = zext i8 %30 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %conv10) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp15 = icmp sgt i32 %.pr, 2
  br i1 %cmp15, label %do.end20, label %do.body14.do.end31_crit_edge

do.body14.do.end31_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %31 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %curr_mode, align 1
  %conv25 = zext i8 %32 to i32
  %conv26 = zext i8 %.397 to i32
  %conv27 = zext i8 %. to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %conv25, i32 noundef %conv26, i32 noundef %conv27) #8
  br label %do.end31

do.end31:                                         ; preds = %do.end20, %do.body14.do.end31_crit_edge, %jpeg_set_qual.exit.do.end31_crit_edge
  %33 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %subtype, align 8
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %34, label %do.end31.sw.epilog_crit_edge [
    i8 8, label %sw.bb
    i8 3, label %do.end31.sw.bb116_crit_edge
    i8 6, label %do.end31.sw.bb116_crit_edge1053
    i8 7, label %sw.bb176
    i8 2, label %do.end31.sw.bb224_crit_edge
    i8 4, label %do.end31.sw.bb224_crit_edge1054
    i8 1, label %do.end31.sw.bb224_crit_edge1055
    i8 5, label %do.end31.sw.bb224_crit_edge1056
    i8 11, label %do.end31.sw.bb224_crit_edge1057
    i8 13, label %do.end31.sw.bb224_crit_edge1058
    i8 12, label %do.end31.sw.bb224_crit_edge1059
    i8 14, label %do.end31.sw.bb224_crit_edge1060
    i8 0, label %do.end31.sw.bb224_crit_edge1061
    i8 10, label %do.end31.sw.bb250_crit_edge
    i8 9, label %do.end31.sw.bb250_crit_edge1062
  ]

do.end31.sw.bb250_crit_edge1062:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb250

do.end31.sw.bb250_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb250

do.end31.sw.bb224_crit_edge1061:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1060:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1059:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1058:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1057:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1056:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1055:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge1054:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb224_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb224

do.end31.sw.bb116_crit_edge1053:                  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb116

do.end31.sw.bb116_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb116

do.end31.sw.epilog_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end31
  tail call fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %.397, i8 noundef zeroext %.)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp.i = icmp sgt i32 %36, 6
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end4.i_crit_edge

sw.bb.do.end4.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %sw.bb.do.end4.i_crit_edge
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i401 = shl i32 %40, 8
  %or.i = or i32 %shl.i.i401, -2147483648
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end14.i, label %do.end4.i.reg_w.exit_crit_edge

do.end4.i.reg_w.exit_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end14.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end14.i, %do.end4.i.reg_w.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp.i402 = icmp sgt i32 %41, 6
  br i1 %cmp.i402, label %do.end.i405, label %reg_w.exit.do.end4.i411_crit_edge

reg_w.exit.do.end4.i411_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i411

do.end.i405:                                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i403 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i404 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i403, i32 noundef 34944, i32 noundef 3) #8
  br label %do.end4.i411

do.end4.i411:                                     ; preds = %do.end.i405, %reg_w.exit.do.end4.i411_crit_edge
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i407 = shl i32 %45, 8
  %or.i408 = or i32 %shl.i.i407, -2147483648
  %call8.i409 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i408, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i409)
  %cmp9.i410 = icmp slt i32 %call8.i409, 0
  br i1 %cmp9.i410, label %do.end14.i413, label %do.end4.i411.reg_w.exit414_crit_edge

do.end4.i411.reg_w.exit414_crit_edge:             ; preds = %do.end4.i411
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit414

do.end14.i413:                                    ; preds = %do.end4.i411
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i409) #8
  br label %reg_w.exit414

reg_w.exit414:                                    ; preds = %do.end14.i413, %do.end4.i411.reg_w.exit414_crit_edge
  %call36 = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_creative_pccam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.end42, label %reg_w.exit414.if.end48_crit_edge

reg_w.exit414.if.end48_crit_edge:                 ; preds = %reg_w.exit414
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.end42:                                         ; preds = %reg_w.exit414
  call void @__sanitizer_cov_trace_pc() #7
  %name45 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name45) #8
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %reg_w.exit414.if.end48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %46 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp.i415 = icmp sgt i32 %46, 6
  br i1 %cmp.i415, label %do.end.i418, label %if.end48.do.end4.i424_crit_edge

if.end48.do.end4.i424_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i424

do.end.i418:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %name.i416 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i416, i32 noundef 34570, i32 noundef 4) #8
  br label %do.end4.i424

do.end4.i424:                                     ; preds = %do.end.i418, %if.end48.do.end4.i424_crit_edge
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i.i420 = shl i32 %50, 8
  %or.i421 = or i32 %shl.i.i420, -2147483648
  %call8.i422 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i421, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -30966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i422)
  %cmp9.i423 = icmp slt i32 %call8.i422, 0
  br i1 %cmp9.i423, label %do.end14.i426, label %do.end4.i424.reg_w.exit427_crit_edge

do.end4.i424.reg_w.exit427_crit_edge:             ; preds = %do.end4.i424
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit427

do.end14.i426:                                    ; preds = %do.end4.i424
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i422) #8
  br label %reg_w.exit427

reg_w.exit427:                                    ; preds = %do.end14.i426, %do.end4.i424.reg_w.exit427_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp.i428 = icmp sgt i32 %51, 6
  br i1 %cmp.i428, label %do.end.i431, label %reg_w.exit427.do.end4.i437_crit_edge

reg_w.exit427.do.end4.i437_crit_edge:             ; preds = %reg_w.exit427
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i437

do.end.i431:                                      ; preds = %reg_w.exit427
  call void @__sanitizer_cov_trace_pc() #7
  %name.i429 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i430 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i429, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i437

do.end4.i437:                                     ; preds = %do.end.i431, %reg_w.exit427.do.end4.i437_crit_edge
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i433 = shl i32 %55, 8
  %or.i434 = or i32 %shl.i.i433, -2147483648
  %call8.i435 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i434, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i435)
  %cmp9.i436 = icmp slt i32 %call8.i435, 0
  br i1 %cmp9.i436, label %do.end14.i439, label %do.end4.i437.reg_w.exit440_crit_edge

do.end4.i437.reg_w.exit440_crit_edge:             ; preds = %do.end4.i437
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit440

do.end14.i439:                                    ; preds = %do.end4.i437
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i438 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i435) #8
  br label %reg_w.exit440

reg_w.exit440:                                    ; preds = %do.end14.i439, %do.end4.i437.reg_w.exit440_crit_edge
  tail call void @msleep(i32 noundef 500) #5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %reg_w.exit440
  %dec4.i = phi i32 [ 19, %reg_w.exit440 ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %56 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx.i.i, align 1
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i.i = shl i32 %62, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %63 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or2.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %63, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %reg_r_12.exit.i.thread, label %reg_r_12.exit.i

reg_r_12.exit.i.thread:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i) #8
  br label %if.end.i

reg_r_12.exit.i:                                  ; preds = %while.body.i
  %64 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %67 to i32
  %shl.i.i441 = shl nuw nsw i32 %conv9.i.i, 8
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %65, align 1
  %conv12.i.i = zext i8 %69 to i32
  %add.i.i = or i32 %shl.i.i441, %conv12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i)
  %cmp1.i = icmp eq i32 %add.i.i, 68
  br i1 %cmp1.i, label %reg_r_12.exit.i.if.end63_crit_edge, label %reg_r_12.exit.i.if.end.i_crit_edge

reg_r_12.exit.i.if.end.i_crit_edge:               ; preds = %reg_r_12.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

reg_r_12.exit.i.if.end63_crit_edge:               ; preds = %reg_r_12.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end.i:                                         ; preds = %reg_r_12.exit.i.if.end.i_crit_edge, %reg_r_12.exit.i.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.end57, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end57:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name60 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name60) #8
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %reg_r_12.exit.i.if.end63_crit_edge
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i443 = shl i32 %73, 8
  %or2.i444 = or i32 %shl.i.i443, -2147483520
  %74 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_buf.i, align 4
  %call3.i446 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or2.i444, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %75, i16 noundef zeroext 1, i32 noundef 500) #5
  %76 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %conv66 = zext i8 %79 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %80 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %80)
  %cmp.i447 = icmp sgt i32 %80, 6
  br i1 %cmp.i447, label %do.end.i450, label %if.end63.do.end4.i456_crit_edge

if.end63.do.end4.i456_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i456

do.end.i450:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %name.i448 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i = zext i8 %79 to i32
  %call.i449 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i448, i32 noundef 33131, i32 noundef %conv2.i) #8
  br label %do.end4.i456

do.end4.i456:                                     ; preds = %do.end.i450, %if.end63.do.end4.i456_crit_edge
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i452 = shl i32 %84, 8
  %or.i453 = or i32 %shl.i.i452, -2147483648
  %call8.i454 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i453, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv66, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i454)
  %cmp9.i455 = icmp slt i32 %call8.i454, 0
  br i1 %cmp9.i455, label %do.end14.i458, label %do.end4.i456.reg_w.exit459_crit_edge

do.end4.i456.reg_w.exit459_crit_edge:             ; preds = %do.end4.i456
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit459

do.end14.i458:                                    ; preds = %do.end4.i456
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i454) #8
  br label %reg_w.exit459

reg_w.exit459:                                    ; preds = %do.end14.i458, %do.end4.i456.reg_w.exit459_crit_edge
  %85 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i, align 4
  %iface.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %87 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %iface.i, align 1
  %conv.i461 = zext i8 %88 to i32
  %call.i462 = tail call i32 @usb_set_interface(ptr noundef %86, i32 noundef %conv.i461, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i462)
  %cmp.i463 = icmp slt i32 %call.i462, 0
  br i1 %cmp.i463, label %reg_w.exit459.return.sink.split.i_crit_edge, label %if.end.i465

reg_w.exit459.return.sink.split.i_crit_edge:      ; preds = %reg_w.exit459
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.end.i465:                                      ; preds = %reg_w.exit459
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i.i.i = shl i32 %92, 8
  %or2.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %93 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i.i = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or2.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3332, ptr noundef %94, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %95 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.i.i464 = icmp sgt i32 %95, 2
  br i1 %cmp.i.i464, label %do.end.i.i466, label %if.end.i465.spca500_ping310.exit.i_crit_edge

if.end.i465.spca500_ping310.exit.i_crit_edge:     ; preds = %if.end.i465
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca500_ping310.exit.i

do.end.i.i466:                                    ; preds = %if.end.i465
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %96 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %usb_buf.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 1
  %conv.i.i = zext i8 %99 to i32
  %arrayidx3.i.i = getelementptr i8, ptr %97, i32 1
  %100 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %101 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name.i.i, i32 noundef %conv.i.i, i32 noundef %conv4.i.i) #8
  br label %spca500_ping310.exit.i

spca500_ping310.exit.i:                           ; preds = %do.end.i.i466, %if.end.i465.spca500_ping310.exit.i_crit_edge
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %shl.i.i.i467 = shl i32 %105, 8
  %or2.i.i468 = or i32 %shl.i.i.i467, -2147483520
  %106 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or2.i.i468, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3328, ptr noundef %107, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %108 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %108)
  %cmp4.i = icmp sgt i32 %108, 4
  br i1 %cmp4.i, label %do.end8.i, label %spca500_ping310.exit.i.do.end16.i_crit_edge

spca500_ping310.exit.i.do.end16.i_crit_edge:      ; preds = %spca500_ping310.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16.i

do.end8.i:                                        ; preds = %spca500_ping310.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name11.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %alt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %109 = ptrtoint ptr %alt.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %alt.i, align 2
  %conv13.i = zext i8 %110 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name11.i, i32 noundef %conv13.i) #8
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end8.i, %spca500_ping310.exit.i.do.end16.i_crit_edge
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  %113 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %iface.i, align 1
  %conv19.i = zext i8 %114 to i32
  %alt20.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %115 = ptrtoint ptr %alt20.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %alt20.i, align 2
  %conv21.i = zext i8 %116 to i32
  %call22.i = tail call i32 @usb_set_interface(ptr noundef %112, i32 noundef %conv19.i, i32 noundef %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end16.i.return.sink.split.i_crit_edge, label %do.end16.i.spca500_synch310.exit_crit_edge

do.end16.i.spca500_synch310.exit_crit_edge:       ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca500_synch310.exit

do.end16.i.return.sink.split.i_crit_edge:         ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %do.end16.i.return.sink.split.i_crit_edge, %reg_w.exit459.return.sink.split.i_crit_edge
  %name.i469 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i469) #8
  br label %spca500_synch310.exit

spca500_synch310.exit:                            ; preds = %return.sink.split.i, %do.end16.i.spca500_synch310.exit_crit_edge
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @spca500_visual_defaults)
  tail call fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %.397, i8 noundef zeroext %.)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %117 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %117)
  %cmp.i470 = icmp sgt i32 %117, 6
  br i1 %cmp.i470, label %do.end.i473, label %spca500_synch310.exit.do.end4.i479_crit_edge

spca500_synch310.exit.do.end4.i479_crit_edge:     ; preds = %spca500_synch310.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i479

do.end.i473:                                      ; preds = %spca500_synch310.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i471 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i472 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i471, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i479

do.end4.i479:                                     ; preds = %do.end.i473, %spca500_synch310.exit.do.end4.i479_crit_edge
  %118 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i475 = shl i32 %121, 8
  %or.i476 = or i32 %shl.i.i475, -2147483648
  %call8.i477 = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or.i476, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i477)
  %cmp9.i478 = icmp slt i32 %call8.i477, 0
  br i1 %cmp9.i478, label %do.end76, label %do.end4.i479.if.end82_crit_edge

do.end4.i479.if.end82_crit_edge:                  ; preds = %do.end4.i479
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end76:                                         ; preds = %do.end4.i479
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i480 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i477) #8
  %name79 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name79) #8
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %do.end4.i479.if.end82_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %122 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %122)
  %cmp.i483 = icmp sgt i32 %122, 6
  br i1 %cmp.i483, label %do.end.i486, label %if.end82.do.end4.i492_crit_edge

if.end82.do.end4.i492_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i492

do.end.i486:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %name.i484 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i484, i32 noundef 34944, i32 noundef 3) #8
  br label %do.end4.i492

do.end4.i492:                                     ; preds = %do.end.i486, %if.end82.do.end4.i492_crit_edge
  %123 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i488 = shl i32 %126, 8
  %or.i489 = or i32 %shl.i.i488, -2147483648
  %call8.i490 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i489, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i490)
  %cmp9.i491 = icmp slt i32 %call8.i490, 0
  br i1 %cmp9.i491, label %do.end14.i494, label %do.end4.i492.reg_w.exit495_crit_edge

do.end4.i492.reg_w.exit495_crit_edge:             ; preds = %do.end4.i492
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit495

do.end14.i494:                                    ; preds = %do.end4.i492
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i493 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i490) #8
  br label %reg_w.exit495

reg_w.exit495:                                    ; preds = %do.end14.i494, %do.end4.i492.reg_w.exit495_crit_edge
  %call84 = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_creative_pccam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %reg_w.exit495.if.end96_crit_edge

reg_w.exit495.if.end96_crit_edge:                 ; preds = %reg_w.exit495
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.end90:                                         ; preds = %reg_w.exit495
  call void @__sanitizer_cov_trace_pc() #7
  %name93 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name93) #8
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %reg_w.exit495.if.end96_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %127 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %127)
  %cmp.i496 = icmp sgt i32 %127, 6
  br i1 %cmp.i496, label %do.end.i499, label %if.end96.do.end4.i505_crit_edge

if.end96.do.end4.i505_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i505

do.end.i499:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  %name.i497 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i498 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i497, i32 noundef 34570, i32 noundef 4) #8
  br label %do.end4.i505

do.end4.i505:                                     ; preds = %do.end.i499, %if.end96.do.end4.i505_crit_edge
  %128 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 8
  %shl.i.i501 = shl i32 %131, 8
  %or.i502 = or i32 %shl.i.i501, -2147483648
  %call8.i503 = tail call i32 @usb_control_msg(ptr noundef %129, i32 noundef %or.i502, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -30966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i503)
  %cmp9.i504 = icmp slt i32 %call8.i503, 0
  br i1 %cmp9.i504, label %do.end14.i507, label %do.end4.i505.reg_w.exit508_crit_edge

do.end4.i505.reg_w.exit508_crit_edge:             ; preds = %do.end4.i505
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit508

do.end14.i507:                                    ; preds = %do.end4.i505
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i506 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i503) #8
  br label %reg_w.exit508

reg_w.exit508:                                    ; preds = %do.end14.i507, %do.end4.i505.reg_w.exit508_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %132 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %132)
  %cmp.i509 = icmp sgt i32 %132, 6
  br i1 %cmp.i509, label %do.end.i512, label %reg_w.exit508.do.end4.i518_crit_edge

reg_w.exit508.do.end4.i518_crit_edge:             ; preds = %reg_w.exit508
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i518

do.end.i512:                                      ; preds = %reg_w.exit508
  call void @__sanitizer_cov_trace_pc() #7
  %name.i510 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i511 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i510, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i518

do.end4.i518:                                     ; preds = %do.end.i512, %reg_w.exit508.do.end4.i518_crit_edge
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 8
  %shl.i.i514 = shl i32 %136, 8
  %or.i515 = or i32 %shl.i.i514, -2147483648
  %call8.i516 = tail call i32 @usb_control_msg(ptr noundef %134, i32 noundef %or.i515, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i516)
  %cmp9.i517 = icmp slt i32 %call8.i516, 0
  br i1 %cmp9.i517, label %do.end14.i520, label %do.end4.i518.while.body.i530.preheader_crit_edge

do.end4.i518.while.body.i530.preheader_crit_edge: ; preds = %do.end4.i518
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i530.preheader

do.end14.i520:                                    ; preds = %do.end4.i518
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i519 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i516) #8
  br label %while.body.i530.preheader

while.body.i530.preheader:                        ; preds = %do.end14.i520, %do.end4.i518.while.body.i530.preheader_crit_edge
  br label %while.body.i530

while.body.i530:                                  ; preds = %if.end.i544.while.body.i530_crit_edge, %while.body.i530.preheader
  %dec4.i524 = phi i32 [ %dec.i542, %if.end.i544.while.body.i530_crit_edge ], [ 19, %while.body.i530.preheader ]
  %137 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i525 = getelementptr i8, ptr %138, i32 1
  %139 = ptrtoint ptr %arrayidx.i.i525 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %arrayidx.i.i525, align 1
  %140 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %shl.i.i.i526 = shl i32 %143, 8
  %or2.i.i527 = or i32 %shl.i.i.i526, -2147483520
  %144 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i528 = tail call i32 @usb_control_msg(ptr noundef %141, i32 noundef %or2.i.i527, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %144, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i528)
  %cmp.i.i529 = icmp slt i32 %call4.i.i528, 0
  br i1 %cmp.i.i529, label %reg_r_12.exit.i541.thread, label %reg_r_12.exit.i541

reg_r_12.exit.i541.thread:                        ; preds = %while.body.i530
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i528) #8
  br label %if.end.i544

reg_r_12.exit.i541:                               ; preds = %while.body.i530
  %145 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i533 = getelementptr i8, ptr %146, i32 1
  %147 = ptrtoint ptr %arrayidx8.i.i533 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx8.i.i533, align 1
  %conv9.i.i534 = zext i8 %148 to i32
  %shl.i.i535 = shl nuw nsw i32 %conv9.i.i534, 8
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %146, align 1
  %conv12.i.i536 = zext i8 %150 to i32
  %add.i.i537 = or i32 %shl.i.i535, %conv12.i.i536
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i537)
  %cmp1.i540 = icmp eq i32 %add.i.i537, 68
  br i1 %cmp1.i540, label %reg_r_12.exit.i541.if.end111_crit_edge, label %reg_r_12.exit.i541.if.end.i544_crit_edge

reg_r_12.exit.i541.if.end.i544_crit_edge:         ; preds = %reg_r_12.exit.i541
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i544

reg_r_12.exit.i541.if.end111_crit_edge:           ; preds = %reg_r_12.exit.i541
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.end.i544:                                      ; preds = %reg_r_12.exit.i541.if.end.i544_crit_edge, %reg_r_12.exit.i541.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i542 = add nsw i32 %dec4.i524, -1
  %cmp.not.i543 = icmp eq i32 %dec.i542, 0
  br i1 %cmp.not.i543, label %do.end105, label %if.end.i544.while.body.i530_crit_edge

if.end.i544.while.body.i530_crit_edge:            ; preds = %if.end.i544
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i530

do.end105:                                        ; preds = %if.end.i544
  call void @__sanitizer_cov_trace_pc() #7
  %name108 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name108) #8
  br label %if.end111

if.end111:                                        ; preds = %do.end105, %reg_r_12.exit.i541.if.end111_crit_edge
  %151 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i548 = shl i32 %154, 8
  %or2.i549 = or i32 %shl.i.i548, -2147483520
  %155 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %usb_buf.i, align 4
  %call3.i551 = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or2.i549, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %156, i16 noundef zeroext 1, i32 noundef 500) #5
  %157 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %usb_buf.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 1
  %conv114 = zext i8 %160 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %161 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %161)
  %cmp.i552 = icmp sgt i32 %161, 6
  br i1 %cmp.i552, label %do.end.i556, label %if.end111.do.end4.i562_crit_edge

if.end111.do.end4.i562_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i562

do.end.i556:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %name.i553 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i554 = zext i8 %160 to i32
  %call.i555 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i553, i32 noundef 33131, i32 noundef %conv2.i554) #8
  br label %do.end4.i562

do.end4.i562:                                     ; preds = %do.end.i556, %if.end111.do.end4.i562_crit_edge
  %162 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 8
  %shl.i.i558 = shl i32 %165, 8
  %or.i559 = or i32 %shl.i.i558, -2147483648
  %call8.i560 = tail call i32 @usb_control_msg(ptr noundef %163, i32 noundef %or.i559, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv114, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i560)
  %cmp9.i561 = icmp slt i32 %call8.i560, 0
  br i1 %cmp9.i561, label %do.end14.i564, label %do.end4.i562.sw.epilog_crit_edge

do.end4.i562.sw.epilog_crit_edge:                 ; preds = %do.end4.i562
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end14.i564:                                    ; preds = %do.end4.i562
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i560) #8
  br label %sw.epilog

sw.bb116:                                         ; preds = %do.end31.sw.bb116_crit_edge, %do.end31.sw.bb116_crit_edge1053
  %call117 = tail call fastcc i32 @spca500_full_reset(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.end123, label %sw.bb116.if.end129_crit_edge

sw.bb116.if.end129_crit_edge:                     ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

do.end123:                                        ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #7
  %name126 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name126) #8
  br label %if.end129

if.end129:                                        ; preds = %do.end123, %sw.bb116.if.end129_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %166 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %166)
  %cmp.i566 = icmp sgt i32 %166, 6
  br i1 %cmp.i566, label %do.end.i569, label %if.end129.do.end4.i575_crit_edge

if.end129.do.end4.i575_crit_edge:                 ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i575

do.end.i569:                                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  %name.i567 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i568 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i567, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i575

do.end4.i575:                                     ; preds = %do.end.i569, %if.end129.do.end4.i575_crit_edge
  %167 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %shl.i.i571 = shl i32 %170, 8
  %or.i572 = or i32 %shl.i.i571, -2147483648
  %call8.i573 = tail call i32 @usb_control_msg(ptr noundef %168, i32 noundef %or.i572, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i573)
  %cmp9.i574 = icmp slt i32 %call8.i573, 0
  br i1 %cmp9.i574, label %do.end136, label %do.end4.i575.if.end142_crit_edge

do.end4.i575.if.end142_crit_edge:                 ; preds = %do.end4.i575
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

do.end136:                                        ; preds = %do.end4.i575
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i576 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i573) #8
  %name139 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name139) #8
  br label %if.end142

if.end142:                                        ; preds = %do.end136, %do.end4.i575.if.end142_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %171 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %171)
  %cmp.i579 = icmp sgt i32 %171, 6
  br i1 %cmp.i579, label %do.end.i582, label %if.end142.do.end4.i588_crit_edge

if.end142.do.end4.i588_crit_edge:                 ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i588

do.end.i582:                                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %name.i580 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i581 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i580, i32 noundef 34944, i32 noundef 3) #8
  br label %do.end4.i588

do.end4.i588:                                     ; preds = %do.end.i582, %if.end142.do.end4.i588_crit_edge
  %172 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 8
  %shl.i.i584 = shl i32 %175, 8
  %or.i585 = or i32 %shl.i.i584, -2147483648
  %call8.i586 = tail call i32 @usb_control_msg(ptr noundef %173, i32 noundef %or.i585, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i586)
  %cmp9.i587 = icmp slt i32 %call8.i586, 0
  br i1 %cmp9.i587, label %do.end14.i590, label %do.end4.i588.reg_w.exit591_crit_edge

do.end4.i588.reg_w.exit591_crit_edge:             ; preds = %do.end4.i588
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit591

do.end14.i590:                                    ; preds = %do.end4.i588
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i589 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i586) #8
  br label %reg_w.exit591

reg_w.exit591:                                    ; preds = %do.end14.i590, %do.end4.i588.reg_w.exit591_crit_edge
  %call144 = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_creative_pccam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %do.end150, label %reg_w.exit591.if.end156_crit_edge

reg_w.exit591.if.end156_crit_edge:                ; preds = %reg_w.exit591
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.end150:                                        ; preds = %reg_w.exit591
  call void @__sanitizer_cov_trace_pc() #7
  %name153 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name153) #8
  br label %if.end156

if.end156:                                        ; preds = %do.end150, %reg_w.exit591.if.end156_crit_edge
  tail call fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %.397, i8 noundef zeroext %.)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %176 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %176)
  %cmp.i592 = icmp sgt i32 %176, 6
  br i1 %cmp.i592, label %do.end.i595, label %if.end156.do.end4.i601_crit_edge

if.end156.do.end4.i601_crit_edge:                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i601

do.end.i595:                                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  %name.i593 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i594 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i593, i32 noundef 1, i32 noundef 4) #8
  br label %do.end4.i601

do.end4.i601:                                     ; preds = %do.end.i595, %if.end156.do.end4.i601_crit_edge
  %177 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 8
  %shl.i.i597 = shl i32 %180, 8
  %or.i598 = or i32 %shl.i.i597, -2147483648
  %call8.i599 = tail call i32 @usb_control_msg(ptr noundef %178, i32 noundef %or.i598, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i599)
  %cmp9.i600 = icmp slt i32 %call8.i599, 0
  br i1 %cmp9.i600, label %do.end14.i603, label %do.end4.i601.reg_w.exit604_crit_edge

do.end4.i601.reg_w.exit604_crit_edge:             ; preds = %do.end4.i601
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit604

do.end14.i603:                                    ; preds = %do.end4.i601
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i602 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i599) #8
  br label %reg_w.exit604

reg_w.exit604:                                    ; preds = %do.end14.i603, %do.end4.i601.reg_w.exit604_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %181 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %181)
  %cmp.i605 = icmp sgt i32 %181, 6
  br i1 %cmp.i605, label %do.end.i608, label %reg_w.exit604.do.end4.i614_crit_edge

reg_w.exit604.do.end4.i614_crit_edge:             ; preds = %reg_w.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i614

do.end.i608:                                      ; preds = %reg_w.exit604
  call void @__sanitizer_cov_trace_pc() #7
  %name.i606 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i607 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i606, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i614

do.end4.i614:                                     ; preds = %do.end.i608, %reg_w.exit604.do.end4.i614_crit_edge
  %182 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 8
  %shl.i.i610 = shl i32 %185, 8
  %or.i611 = or i32 %shl.i.i610, -2147483648
  %call8.i612 = tail call i32 @usb_control_msg(ptr noundef %183, i32 noundef %or.i611, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i612)
  %cmp9.i613 = icmp slt i32 %call8.i612, 0
  br i1 %cmp9.i613, label %do.end14.i616, label %do.end4.i614.while.body.i626.preheader_crit_edge

do.end4.i614.while.body.i626.preheader_crit_edge: ; preds = %do.end4.i614
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i626.preheader

do.end14.i616:                                    ; preds = %do.end4.i614
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i615 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i612) #8
  br label %while.body.i626.preheader

while.body.i626.preheader:                        ; preds = %do.end14.i616, %do.end4.i614.while.body.i626.preheader_crit_edge
  br label %while.body.i626

while.body.i626:                                  ; preds = %if.end.i640.while.body.i626_crit_edge, %while.body.i626.preheader
  %dec4.i620 = phi i32 [ %dec.i638, %if.end.i640.while.body.i626_crit_edge ], [ 19, %while.body.i626.preheader ]
  %186 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i621 = getelementptr i8, ptr %187, i32 1
  %188 = ptrtoint ptr %arrayidx.i.i621 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %arrayidx.i.i621, align 1
  %189 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %190, align 8
  %shl.i.i.i622 = shl i32 %192, 8
  %or2.i.i623 = or i32 %shl.i.i.i622, -2147483520
  %193 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i624 = tail call i32 @usb_control_msg(ptr noundef %190, i32 noundef %or2.i.i623, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %193, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i624)
  %cmp.i.i625 = icmp slt i32 %call4.i.i624, 0
  br i1 %cmp.i.i625, label %reg_r_12.exit.i637.thread, label %reg_r_12.exit.i637

reg_r_12.exit.i637.thread:                        ; preds = %while.body.i626
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i627 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i624) #8
  br label %if.end.i640

reg_r_12.exit.i637:                               ; preds = %while.body.i626
  %194 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i629 = getelementptr i8, ptr %195, i32 1
  %196 = ptrtoint ptr %arrayidx8.i.i629 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx8.i.i629, align 1
  %conv9.i.i630 = zext i8 %197 to i32
  %shl.i.i631 = shl nuw nsw i32 %conv9.i.i630, 8
  %198 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %195, align 1
  %conv12.i.i632 = zext i8 %199 to i32
  %add.i.i633 = or i32 %shl.i.i631, %conv12.i.i632
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i633)
  %cmp1.i636 = icmp eq i32 %add.i.i633, 68
  br i1 %cmp1.i636, label %reg_r_12.exit.i637.if.end171_crit_edge, label %reg_r_12.exit.i637.if.end.i640_crit_edge

reg_r_12.exit.i637.if.end.i640_crit_edge:         ; preds = %reg_r_12.exit.i637
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i640

reg_r_12.exit.i637.if.end171_crit_edge:           ; preds = %reg_r_12.exit.i637
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

if.end.i640:                                      ; preds = %reg_r_12.exit.i637.if.end.i640_crit_edge, %reg_r_12.exit.i637.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i638 = add nsw i32 %dec4.i620, -1
  %cmp.not.i639 = icmp eq i32 %dec.i638, 0
  br i1 %cmp.not.i639, label %do.end165, label %if.end.i640.while.body.i626_crit_edge

if.end.i640.while.body.i626_crit_edge:            ; preds = %if.end.i640
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i626

do.end165:                                        ; preds = %if.end.i640
  call void @__sanitizer_cov_trace_pc() #7
  %name168 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name168) #8
  br label %if.end171

if.end171:                                        ; preds = %do.end165, %reg_r_12.exit.i637.if.end171_crit_edge
  %200 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 8
  %shl.i.i644 = shl i32 %203, 8
  %or2.i645 = or i32 %shl.i.i644, -2147483520
  %204 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %usb_buf.i, align 4
  %call3.i647 = tail call i32 @usb_control_msg(ptr noundef %201, i32 noundef %or2.i645, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %205, i16 noundef zeroext 1, i32 noundef 500) #5
  %206 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %usb_buf.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 1
  %conv174 = zext i8 %209 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %210 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %210)
  %cmp.i648 = icmp sgt i32 %210, 6
  br i1 %cmp.i648, label %do.end.i652, label %if.end171.do.end4.i658_crit_edge

if.end171.do.end4.i658_crit_edge:                 ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i658

do.end.i652:                                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  %name.i649 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i650 = zext i8 %209 to i32
  %call.i651 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i649, i32 noundef 33131, i32 noundef %conv2.i650) #8
  br label %do.end4.i658

do.end4.i658:                                     ; preds = %do.end.i652, %if.end171.do.end4.i658_crit_edge
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %212, align 8
  %shl.i.i654 = shl i32 %214, 8
  %or.i655 = or i32 %shl.i.i654, -2147483648
  %call8.i656 = tail call i32 @usb_control_msg(ptr noundef %212, i32 noundef %or.i655, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv174, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i656)
  %cmp9.i657 = icmp slt i32 %call8.i656, 0
  br i1 %cmp9.i657, label %do.end14.i660, label %do.end4.i658.sw.epilog_crit_edge

do.end4.i658.sw.epilog_crit_edge:                 ; preds = %do.end4.i658
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end14.i660:                                    ; preds = %do.end4.i658
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i659 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i656) #8
  br label %sw.epilog

sw.bb176:                                         ; preds = %do.end31
  %call177 = tail call fastcc i32 @spca500_full_reset(ptr noundef %gspca_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %do.end183, label %sw.bb176.if.end189_crit_edge

sw.bb176.if.end189_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end189

do.end183:                                        ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #7
  %name186 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name186) #8
  br label %if.end189

if.end189:                                        ; preds = %do.end183, %sw.bb176.if.end189_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %215 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %215)
  %cmp.i662 = icmp sgt i32 %215, 6
  br i1 %cmp.i662, label %do.end.i665, label %if.end189.do.end4.i671_crit_edge

if.end189.do.end4.i671_crit_edge:                 ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i671

do.end.i665:                                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  %name.i663 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i664 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i663, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i671

do.end4.i671:                                     ; preds = %do.end.i665, %if.end189.do.end4.i671_crit_edge
  %216 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 8
  %shl.i.i667 = shl i32 %219, 8
  %or.i668 = or i32 %shl.i.i667, -2147483648
  %call8.i669 = tail call i32 @usb_control_msg(ptr noundef %217, i32 noundef %or.i668, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i669)
  %cmp9.i670 = icmp slt i32 %call8.i669, 0
  br i1 %cmp9.i670, label %do.end14.i673, label %do.end4.i671.reg_w.exit674_crit_edge

do.end4.i671.reg_w.exit674_crit_edge:             ; preds = %do.end4.i671
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit674

do.end14.i673:                                    ; preds = %do.end4.i671
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i672 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i669) #8
  br label %reg_w.exit674

reg_w.exit674:                                    ; preds = %do.end14.i673, %do.end4.i671.reg_w.exit674_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %220 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %220)
  %cmp.i675 = icmp sgt i32 %220, 6
  br i1 %cmp.i675, label %do.end.i678, label %reg_w.exit674.do.end4.i684_crit_edge

reg_w.exit674.do.end4.i684_crit_edge:             ; preds = %reg_w.exit674
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i684

do.end.i678:                                      ; preds = %reg_w.exit674
  call void @__sanitizer_cov_trace_pc() #7
  %name.i676 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i677 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i676, i32 noundef 34944, i32 noundef 0) #8
  br label %do.end4.i684

do.end4.i684:                                     ; preds = %do.end.i678, %reg_w.exit674.do.end4.i684_crit_edge
  %221 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 8
  %shl.i.i680 = shl i32 %224, 8
  %or.i681 = or i32 %shl.i.i680, -2147483648
  %call8.i682 = tail call i32 @usb_control_msg(ptr noundef %222, i32 noundef %or.i681, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i682)
  %cmp9.i683 = icmp slt i32 %call8.i682, 0
  br i1 %cmp9.i683, label %do.end14.i686, label %do.end4.i684.reg_w.exit687_crit_edge

do.end4.i684.reg_w.exit687_crit_edge:             ; preds = %do.end4.i684
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit687

do.end14.i686:                                    ; preds = %do.end4.i684
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i685 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i682) #8
  br label %reg_w.exit687

reg_w.exit687:                                    ; preds = %do.end14.i686, %do.end4.i684.reg_w.exit687_crit_edge
  %call192 = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_kodak_ez200)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %do.end198, label %reg_w.exit687.if.end204_crit_edge

reg_w.exit687.if.end204_crit_edge:                ; preds = %reg_w.exit687
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

do.end198:                                        ; preds = %reg_w.exit687
  call void @__sanitizer_cov_trace_pc() #7
  %name201 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name201) #8
  br label %if.end204

if.end204:                                        ; preds = %do.end198, %reg_w.exit687.if.end204_crit_edge
  tail call fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %.397, i8 noundef zeroext %.)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %225 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %225)
  %cmp.i688 = icmp sgt i32 %225, 6
  br i1 %cmp.i688, label %do.end.i691, label %if.end204.do.end4.i697_crit_edge

if.end204.do.end4.i697_crit_edge:                 ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i697

do.end.i691:                                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  %name.i689 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i690 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i689, i32 noundef 1, i32 noundef 4) #8
  br label %do.end4.i697

do.end4.i697:                                     ; preds = %do.end.i691, %if.end204.do.end4.i697_crit_edge
  %226 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev.i, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 8
  %shl.i.i693 = shl i32 %229, 8
  %or.i694 = or i32 %shl.i.i693, -2147483648
  %call8.i695 = tail call i32 @usb_control_msg(ptr noundef %227, i32 noundef %or.i694, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i695)
  %cmp9.i696 = icmp slt i32 %call8.i695, 0
  br i1 %cmp9.i696, label %do.end14.i699, label %do.end4.i697.reg_w.exit700_crit_edge

do.end4.i697.reg_w.exit700_crit_edge:             ; preds = %do.end4.i697
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit700

do.end14.i699:                                    ; preds = %do.end4.i697
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i698 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i695) #8
  br label %reg_w.exit700

reg_w.exit700:                                    ; preds = %do.end14.i699, %do.end4.i697.reg_w.exit700_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %230 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %230)
  %cmp.i701 = icmp sgt i32 %230, 6
  br i1 %cmp.i701, label %do.end.i704, label %reg_w.exit700.do.end4.i710_crit_edge

reg_w.exit700.do.end4.i710_crit_edge:             ; preds = %reg_w.exit700
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i710

do.end.i704:                                      ; preds = %reg_w.exit700
  call void @__sanitizer_cov_trace_pc() #7
  %name.i702 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i703 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i702, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i710

do.end4.i710:                                     ; preds = %do.end.i704, %reg_w.exit700.do.end4.i710_crit_edge
  %231 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev.i, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 8
  %shl.i.i706 = shl i32 %234, 8
  %or.i707 = or i32 %shl.i.i706, -2147483648
  %call8.i708 = tail call i32 @usb_control_msg(ptr noundef %232, i32 noundef %or.i707, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i708)
  %cmp9.i709 = icmp slt i32 %call8.i708, 0
  br i1 %cmp9.i709, label %do.end14.i712, label %do.end4.i710.while.body.i722.preheader_crit_edge

do.end4.i710.while.body.i722.preheader_crit_edge: ; preds = %do.end4.i710
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i722.preheader

do.end14.i712:                                    ; preds = %do.end4.i710
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i711 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i708) #8
  br label %while.body.i722.preheader

while.body.i722.preheader:                        ; preds = %do.end14.i712, %do.end4.i710.while.body.i722.preheader_crit_edge
  br label %while.body.i722

while.body.i722:                                  ; preds = %if.end.i736.while.body.i722_crit_edge, %while.body.i722.preheader
  %dec4.i716 = phi i32 [ %dec.i734, %if.end.i736.while.body.i722_crit_edge ], [ 19, %while.body.i722.preheader ]
  %235 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i717 = getelementptr i8, ptr %236, i32 1
  %237 = ptrtoint ptr %arrayidx.i.i717 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %arrayidx.i.i717, align 1
  %238 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 8
  %shl.i.i.i718 = shl i32 %241, 8
  %or2.i.i719 = or i32 %shl.i.i.i718, -2147483520
  %242 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i720 = tail call i32 @usb_control_msg(ptr noundef %239, i32 noundef %or2.i.i719, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %242, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i720)
  %cmp.i.i721 = icmp slt i32 %call4.i.i720, 0
  br i1 %cmp.i.i721, label %reg_r_12.exit.i733.thread, label %reg_r_12.exit.i733

reg_r_12.exit.i733.thread:                        ; preds = %while.body.i722
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i723 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i720) #8
  br label %if.end.i736

reg_r_12.exit.i733:                               ; preds = %while.body.i722
  %243 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i725 = getelementptr i8, ptr %244, i32 1
  %245 = ptrtoint ptr %arrayidx8.i.i725 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx8.i.i725, align 1
  %conv9.i.i726 = zext i8 %246 to i32
  %shl.i.i727 = shl nuw nsw i32 %conv9.i.i726, 8
  %247 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %244, align 1
  %conv12.i.i728 = zext i8 %248 to i32
  %add.i.i729 = or i32 %shl.i.i727, %conv12.i.i728
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i729)
  %cmp1.i732 = icmp eq i32 %add.i.i729, 68
  br i1 %cmp1.i732, label %reg_r_12.exit.i733.if.end219_crit_edge, label %reg_r_12.exit.i733.if.end.i736_crit_edge

reg_r_12.exit.i733.if.end.i736_crit_edge:         ; preds = %reg_r_12.exit.i733
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i736

reg_r_12.exit.i733.if.end219_crit_edge:           ; preds = %reg_r_12.exit.i733
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end219

if.end.i736:                                      ; preds = %reg_r_12.exit.i733.if.end.i736_crit_edge, %reg_r_12.exit.i733.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i734 = add nsw i32 %dec4.i716, -1
  %cmp.not.i735 = icmp eq i32 %dec.i734, 0
  br i1 %cmp.not.i735, label %do.end213, label %if.end.i736.while.body.i722_crit_edge

if.end.i736.while.body.i722_crit_edge:            ; preds = %if.end.i736
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i722

do.end213:                                        ; preds = %if.end.i736
  call void @__sanitizer_cov_trace_pc() #7
  %name216 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name216) #8
  br label %if.end219

if.end219:                                        ; preds = %do.end213, %reg_r_12.exit.i733.if.end219_crit_edge
  %249 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 8
  %shl.i.i740 = shl i32 %252, 8
  %or2.i741 = or i32 %shl.i.i740, -2147483520
  %253 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %usb_buf.i, align 4
  %call3.i743 = tail call i32 @usb_control_msg(ptr noundef %250, i32 noundef %or2.i741, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %254, i16 noundef zeroext 1, i32 noundef 500) #5
  %255 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %usb_buf.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %256, align 1
  %conv222 = zext i8 %258 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %259 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %259)
  %cmp.i744 = icmp sgt i32 %259, 6
  br i1 %cmp.i744, label %do.end.i748, label %if.end219.do.end4.i754_crit_edge

if.end219.do.end4.i754_crit_edge:                 ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i754

do.end.i748:                                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #7
  %name.i745 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i746 = zext i8 %258 to i32
  %call.i747 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i745, i32 noundef 33131, i32 noundef %conv2.i746) #8
  br label %do.end4.i754

do.end4.i754:                                     ; preds = %do.end.i748, %if.end219.do.end4.i754_crit_edge
  %260 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev.i, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %261, align 8
  %shl.i.i750 = shl i32 %263, 8
  %or.i751 = or i32 %shl.i.i750, -2147483648
  %call8.i752 = tail call i32 @usb_control_msg(ptr noundef %261, i32 noundef %or.i751, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv222, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i752)
  %cmp9.i753 = icmp slt i32 %call8.i752, 0
  br i1 %cmp9.i753, label %do.end14.i756, label %do.end4.i754.sw.epilog_crit_edge

do.end4.i754.sw.epilog_crit_edge:                 ; preds = %do.end4.i754
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end14.i756:                                    ; preds = %do.end4.i754
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i755 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i752) #8
  br label %sw.epilog

sw.bb224:                                         ; preds = %do.end31.sw.bb224_crit_edge, %do.end31.sw.bb224_crit_edge1054, %do.end31.sw.bb224_crit_edge1055, %do.end31.sw.bb224_crit_edge1056, %do.end31.sw.bb224_crit_edge1057, %do.end31.sw.bb224_crit_edge1058, %do.end31.sw.bb224_crit_edge1059, %do.end31.sw.bb224_crit_edge1060, %do.end31.sw.bb224_crit_edge1061
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %264 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %264)
  %cmp.i.i758 = icmp sgt i32 %264, 6
  br i1 %cmp.i.i758, label %do.end.i.i761, label %sw.bb224.do.end4.i.i_crit_edge

sw.bb224.do.end4.i.i_crit_edge:                   ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i.i

do.end.i.i761:                                    ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i759 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i.i760 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i.i759, i32 noundef 3329, i32 noundef 1) #8
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i761, %sw.bb224.do.end4.i.i_crit_edge
  %265 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev.i, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %266, align 8
  %shl.i.i.i763 = shl i32 %268, 8
  %or.i.i = or i32 %shl.i.i.i763, -2147483648
  %call8.i.i = tail call i32 @usb_control_msg(ptr noundef %266, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 3329, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %do.end14.i.i, label %do.end4.i.i.reg_w.exit.i_crit_edge

do.end4.i.i.reg_w.exit.i_crit_edge:               ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit.i

do.end14.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i.i) #8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end14.i.i, %do.end4.i.i.reg_w.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %269 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %269)
  %cmp.i32.i = icmp sgt i32 %269, 6
  br i1 %cmp.i32.i, label %do.end.i35.i, label %reg_w.exit.i.do.end4.i41.i_crit_edge

reg_w.exit.i.do.end4.i41.i_crit_edge:             ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i41.i

do.end.i35.i:                                     ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i33.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i33.i, i32 noundef 3331, i32 noundef 0) #8
  br label %do.end4.i41.i

do.end4.i41.i:                                    ; preds = %do.end.i35.i, %reg_w.exit.i.do.end4.i41.i_crit_edge
  %270 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev.i, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %271, align 8
  %shl.i.i37.i = shl i32 %273, 8
  %or.i38.i = or i32 %shl.i.i37.i, -2147483648
  %call8.i39.i = tail call i32 @usb_control_msg(ptr noundef %271, i32 noundef %or.i38.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3331, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i39.i)
  %cmp9.i40.i = icmp slt i32 %call8.i39.i, 0
  br i1 %cmp9.i40.i, label %do.end14.i43.i, label %do.end4.i41.i.reg_w.exit44.i_crit_edge

do.end4.i41.i.reg_w.exit44.i_crit_edge:           ; preds = %do.end4.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit44.i

do.end14.i43.i:                                   ; preds = %do.end4.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i39.i) #8
  br label %reg_w.exit44.i

reg_w.exit44.i:                                   ; preds = %do.end14.i43.i, %do.end4.i41.i.reg_w.exit44.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %274 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %274)
  %cmp.i45.i = icmp sgt i32 %274, 6
  br i1 %cmp.i45.i, label %do.end.i48.i, label %reg_w.exit44.i.do.end4.i54.i_crit_edge

reg_w.exit44.i.do.end4.i54.i_crit_edge:           ; preds = %reg_w.exit44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i54.i

do.end.i48.i:                                     ; preds = %reg_w.exit44.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i46.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i46.i, i32 noundef 3330, i32 noundef 1) #8
  br label %do.end4.i54.i

do.end4.i54.i:                                    ; preds = %do.end.i48.i, %reg_w.exit44.i.do.end4.i54.i_crit_edge
  %275 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev.i, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %276, align 8
  %shl.i.i50.i = shl i32 %278, 8
  %or.i51.i = or i32 %shl.i.i50.i, -2147483648
  %call8.i52.i = tail call i32 @usb_control_msg(ptr noundef %276, i32 noundef %or.i51.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 3330, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i52.i)
  %cmp9.i53.i = icmp slt i32 %call8.i52.i, 0
  br i1 %cmp9.i53.i, label %do.end14.i56.i, label %do.end4.i54.i.reg_w.exit57.i_crit_edge

do.end4.i54.i.reg_w.exit57.i_crit_edge:           ; preds = %do.end4.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit57.i

do.end14.i56.i:                                   ; preds = %do.end4.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i52.i) #8
  br label %reg_w.exit57.i

reg_w.exit57.i:                                   ; preds = %do.end14.i56.i, %do.end4.i54.i.reg_w.exit57.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %279 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %279)
  %cmp.i58.i = icmp sgt i32 %279, 6
  br i1 %cmp.i58.i, label %do.end.i61.i, label %reg_w.exit57.i.do.end4.i67.i_crit_edge

reg_w.exit57.i.do.end4.i67.i_crit_edge:           ; preds = %reg_w.exit57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i67.i

do.end.i61.i:                                     ; preds = %reg_w.exit57.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i59.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i59.i, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i67.i

do.end4.i67.i:                                    ; preds = %do.end.i61.i, %reg_w.exit57.i.do.end4.i67.i_crit_edge
  %280 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev.i, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %281, align 8
  %shl.i.i63.i = shl i32 %283, 8
  %or.i64.i = or i32 %shl.i.i63.i, -2147483648
  %call8.i65.i = tail call i32 @usb_control_msg(ptr noundef %281, i32 noundef %or.i64.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i65.i)
  %cmp9.i66.i = icmp slt i32 %call8.i65.i, 0
  br i1 %cmp9.i66.i, label %do.end14.i69.i, label %do.end4.i67.i.reg_w.exit70.i_crit_edge

do.end4.i67.i.reg_w.exit70.i_crit_edge:           ; preds = %do.end4.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit70.i

do.end14.i69.i:                                   ; preds = %do.end4.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i65.i) #8
  br label %reg_w.exit70.i

reg_w.exit70.i:                                   ; preds = %do.end14.i69.i, %do.end4.i67.i.reg_w.exit70.i_crit_edge
  %call4.i = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_pocketdv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i764 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i764, label %do.end.i766, label %reg_w.exit70.i.if.end.i767_crit_edge

reg_w.exit70.i.if.end.i767_crit_edge:             ; preds = %reg_w.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i767

do.end.i766:                                      ; preds = %reg_w.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i765 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name.i765) #8
  br label %if.end.i767

if.end.i767:                                      ; preds = %do.end.i766, %reg_w.exit70.i.if.end.i767_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %284 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %284)
  %cmp.i71.i = icmp sgt i32 %284, 6
  br i1 %cmp.i71.i, label %do.end.i74.i, label %if.end.i767.do.end4.i80.i_crit_edge

if.end.i767.do.end4.i80.i_crit_edge:              ; preds = %if.end.i767
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i80.i

do.end.i74.i:                                     ; preds = %if.end.i767
  call void @__sanitizer_cov_trace_pc() #7
  %name.i72.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i72.i, i32 noundef 34944, i32 noundef 2) #8
  br label %do.end4.i80.i

do.end4.i80.i:                                    ; preds = %do.end.i74.i, %if.end.i767.do.end4.i80.i_crit_edge
  %285 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev.i, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %286, align 8
  %shl.i.i76.i = shl i32 %288, 8
  %or.i77.i = or i32 %shl.i.i76.i, -2147483648
  %call8.i78.i = tail call i32 @usb_control_msg(ptr noundef %286, i32 noundef %or.i77.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i78.i)
  %cmp9.i79.i = icmp slt i32 %call8.i78.i, 0
  br i1 %cmp9.i79.i, label %do.end14.i82.i, label %do.end4.i80.i.reg_w.exit83.i_crit_edge

do.end4.i80.i.reg_w.exit83.i_crit_edge:           ; preds = %do.end4.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit83.i

do.end14.i82.i:                                   ; preds = %do.end4.i80.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i78.i) #8
  br label %reg_w.exit83.i

reg_w.exit83.i:                                   ; preds = %do.end14.i82.i, %do.end4.i80.i.reg_w.exit83.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %289 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %289)
  %cmp.i84.i = icmp sgt i32 %289, 6
  br i1 %cmp.i84.i, label %do.end.i87.i, label %reg_w.exit83.i.do.end4.i93.i_crit_edge

reg_w.exit83.i.do.end4.i93.i_crit_edge:           ; preds = %reg_w.exit83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i93.i

do.end.i87.i:                                     ; preds = %reg_w.exit83.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i85.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i85.i, i32 noundef 32778, i32 noundef 0) #8
  br label %do.end4.i93.i

do.end4.i93.i:                                    ; preds = %do.end.i87.i, %reg_w.exit83.i.do.end4.i93.i_crit_edge
  %290 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev.i, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %291, align 8
  %shl.i.i89.i = shl i32 %293, 8
  %or.i90.i = or i32 %shl.i.i89.i, -2147483648
  %call8.i91.i = tail call i32 @usb_control_msg(ptr noundef %291, i32 noundef %or.i90.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32758, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i91.i)
  %cmp9.i92.i = icmp slt i32 %call8.i91.i, 0
  br i1 %cmp9.i92.i, label %do.end14.i95.i, label %do.end4.i93.i.reg_w.exit96.i_crit_edge

do.end4.i93.i.reg_w.exit96.i_crit_edge:           ; preds = %do.end4.i93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit96.i

do.end14.i95.i:                                   ; preds = %do.end4.i93.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i91.i) #8
  br label %reg_w.exit96.i

reg_w.exit96.i:                                   ; preds = %do.end14.i95.i, %do.end4.i93.i.reg_w.exit96.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %294 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %294)
  %cmp.i97.i = icmp sgt i32 %294, 6
  br i1 %cmp.i97.i, label %do.end.i100.i, label %reg_w.exit96.i.do.end4.i106.i_crit_edge

reg_w.exit96.i.do.end4.i106.i_crit_edge:          ; preds = %reg_w.exit96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i106.i

do.end.i100.i:                                    ; preds = %reg_w.exit96.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i98.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i98.i, i32 noundef 33295, i32 noundef 1) #8
  br label %do.end4.i106.i

do.end4.i106.i:                                   ; preds = %do.end.i100.i, %reg_w.exit96.i.do.end4.i106.i_crit_edge
  %295 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev.i, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %296, align 8
  %shl.i.i102.i = shl i32 %298, 8
  %or.i103.i = or i32 %shl.i.i102.i, -2147483648
  %call8.i104.i = tail call i32 @usb_control_msg(ptr noundef %296, i32 noundef %or.i103.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -32241, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i104.i)
  %cmp9.i105.i = icmp slt i32 %call8.i104.i, 0
  br i1 %cmp9.i105.i, label %do.end14.i108.i, label %do.end4.i106.i.reg_w.exit109.i_crit_edge

do.end4.i106.i.reg_w.exit109.i_crit_edge:         ; preds = %do.end4.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit109.i

do.end14.i108.i:                                  ; preds = %do.end4.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i104.i) #8
  br label %reg_w.exit109.i

reg_w.exit109.i:                                  ; preds = %do.end14.i108.i, %do.end4.i106.i.reg_w.exit109.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %299 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %299)
  %cmp.i110.i = icmp sgt i32 %299, 6
  br i1 %cmp.i110.i, label %do.end.i113.i, label %reg_w.exit109.i.do.end4.i119.i_crit_edge

reg_w.exit109.i.do.end4.i119.i_crit_edge:         ; preds = %reg_w.exit109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i119.i

do.end.i113.i:                                    ; preds = %reg_w.exit109.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i111.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i111.i, i32 noundef 34570, i32 noundef 4) #8
  br label %do.end4.i119.i

do.end4.i119.i:                                   ; preds = %do.end.i113.i, %reg_w.exit109.i.do.end4.i119.i_crit_edge
  %300 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev.i, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %301, align 8
  %shl.i.i115.i = shl i32 %303, 8
  %or.i116.i = or i32 %shl.i.i115.i, -2147483648
  %call8.i117.i = tail call i32 @usb_control_msg(ptr noundef %301, i32 noundef %or.i116.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -30966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i117.i)
  %cmp9.i118.i = icmp slt i32 %call8.i117.i, 0
  br i1 %cmp9.i118.i, label %do.end14.i121.i, label %do.end4.i119.i.reg_w.exit122.i_crit_edge

do.end4.i119.i.reg_w.exit122.i_crit_edge:         ; preds = %do.end4.i119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit122.i

do.end14.i121.i:                                  ; preds = %do.end4.i119.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i120.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i117.i) #8
  br label %reg_w.exit122.i

reg_w.exit122.i:                                  ; preds = %do.end14.i121.i, %do.end4.i119.i.reg_w.exit122.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %304 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %304)
  %cmp.i123.i = icmp sgt i32 %304, 6
  br i1 %cmp.i123.i, label %do.end.i126.i, label %reg_w.exit122.i.do.end4.i132.i_crit_edge

reg_w.exit122.i.do.end4.i132.i_crit_edge:         ; preds = %reg_w.exit122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i132.i

do.end.i126.i:                                    ; preds = %reg_w.exit122.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i124.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i124.i, i32 noundef 32771, i32 noundef 0) #8
  br label %do.end4.i132.i

do.end4.i132.i:                                   ; preds = %do.end.i126.i, %reg_w.exit122.i.do.end4.i132.i_crit_edge
  %305 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev.i, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %306, align 8
  %shl.i.i128.i = shl i32 %308, 8
  %or.i129.i = or i32 %shl.i.i128.i, -2147483648
  %call8.i130.i = tail call i32 @usb_control_msg(ptr noundef %306, i32 noundef %or.i129.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32765, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i130.i)
  %cmp9.i131.i = icmp slt i32 %call8.i130.i, 0
  br i1 %cmp9.i131.i, label %do.end14.i134.i, label %do.end4.i132.i.reg_w.exit135.i_crit_edge

do.end4.i132.i.reg_w.exit135.i_crit_edge:         ; preds = %do.end4.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit135.i

do.end14.i134.i:                                  ; preds = %do.end4.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i130.i) #8
  br label %reg_w.exit135.i

reg_w.exit135.i:                                  ; preds = %do.end14.i134.i, %do.end4.i132.i.reg_w.exit135.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %309 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %309)
  %cmp.i136.i = icmp sgt i32 %309, 6
  br i1 %cmp.i136.i, label %do.end.i139.i, label %reg_w.exit135.i.do.end4.i145.i_crit_edge

reg_w.exit135.i.do.end4.i145.i_crit_edge:         ; preds = %reg_w.exit135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i145.i

do.end.i139.i:                                    ; preds = %reg_w.exit135.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i137.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i137.i, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i145.i

do.end4.i145.i:                                   ; preds = %do.end.i139.i, %reg_w.exit135.i.do.end4.i145.i_crit_edge
  %310 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev.i, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %311, align 8
  %shl.i.i141.i = shl i32 %313, 8
  %or.i142.i = or i32 %shl.i.i141.i, -2147483648
  %call8.i143.i = tail call i32 @usb_control_msg(ptr noundef %311, i32 noundef %or.i142.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i143.i)
  %cmp9.i144.i = icmp slt i32 %call8.i143.i, 0
  br i1 %cmp9.i144.i, label %do.end14.i147.i, label %do.end4.i145.i.reg_w.exit148.i_crit_edge

do.end4.i145.i.reg_w.exit148.i_crit_edge:         ; preds = %do.end4.i145.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit148.i

do.end14.i147.i:                                  ; preds = %do.end4.i145.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i143.i) #8
  br label %reg_w.exit148.i

reg_w.exit148.i:                                  ; preds = %do.end14.i147.i, %do.end4.i145.i.reg_w.exit148.i_crit_edge
  tail call void @msleep(i32 noundef 2000) #5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i771.while.body.i.i_crit_edge, %reg_w.exit148.i
  %dec4.i.i = phi i32 [ 19, %reg_w.exit148.i ], [ %dec.i.i, %if.end.i.i771.while.body.i.i_crit_edge ]
  %314 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %315, i32 1
  %316 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  %317 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev.i, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %318, align 8
  %shl.i.i.i.i769 = shl i32 %320, 8
  %or2.i.i.i770 = or i32 %shl.i.i.i.i769, -2147483520
  %321 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i.i = tail call i32 @usb_control_msg(ptr noundef %318, i32 noundef %or2.i.i.i770, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %321, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i.i.i, label %reg_r_12.exit.i.thread.i, label %reg_r_12.exit.i.i

reg_r_12.exit.i.thread.i:                         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i.i) #8
  br label %if.end.i.i771

reg_r_12.exit.i.i:                                ; preds = %while.body.i.i
  %322 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i.i = getelementptr i8, ptr %323, i32 1
  %324 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx8.i.i.i, align 1
  %conv9.i.i.i = zext i8 %325 to i32
  %shl.i.i149.i = shl nuw nsw i32 %conv9.i.i.i, 8
  %326 = ptrtoint ptr %323 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %323, align 1
  %conv12.i.i.i = zext i8 %327 to i32
  %add.i.i.i = or i32 %shl.i.i149.i, %conv12.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i.i)
  %cmp1.i.i = icmp eq i32 %add.i.i.i, 68
  br i1 %cmp1.i.i, label %reg_r_12.exit.i.i.spca500_reinit.exit_crit_edge, label %reg_r_12.exit.i.i.if.end.i.i771_crit_edge

reg_r_12.exit.i.i.if.end.i.i771_crit_edge:        ; preds = %reg_r_12.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i771

reg_r_12.exit.i.i.spca500_reinit.exit_crit_edge:  ; preds = %reg_r_12.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca500_reinit.exit

if.end.i.i771:                                    ; preds = %reg_r_12.exit.i.i.if.end.i.i771_crit_edge, %reg_r_12.exit.i.thread.i
  tail call void @msleep(i32 noundef 50) #5
  %dec.i.i = add nsw i32 %dec4.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.then14.i, label %if.end.i.i771.while.body.i.i_crit_edge

if.end.i.i771.while.body.i.i_crit_edge:           ; preds = %if.end.i.i771
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.then14.i:                                      ; preds = %if.end.i.i771
  %328 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev.i, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %329, align 8
  %shl.i.i151.i = shl i32 %331, 8
  %or2.i.i772 = or i32 %shl.i.i151.i, -2147483520
  %332 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i773 = tail call i32 @usb_control_msg(ptr noundef %329, i32 noundef %or2.i.i772, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %333, i16 noundef zeroext 1, i32 noundef 500) #5
  %334 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %usb_buf.i, align 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %335, align 1
  %conv.i774 = zext i8 %337 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %338 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %338)
  %cmp.i152.i = icmp sgt i32 %338, 6
  br i1 %cmp.i152.i, label %do.end.i155.i, label %if.then14.i.do.end4.i161.i_crit_edge

if.then14.i.do.end4.i161.i_crit_edge:             ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i161.i

do.end.i155.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i153.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i.i = zext i8 %337 to i32
  %call.i154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i153.i, i32 noundef 33131, i32 noundef %conv2.i.i) #8
  br label %do.end4.i161.i

do.end4.i161.i:                                   ; preds = %do.end.i155.i, %if.then14.i.do.end4.i161.i_crit_edge
  %339 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev.i, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %340, align 8
  %shl.i.i157.i = shl i32 %342, 8
  %or.i158.i = or i32 %shl.i.i157.i, -2147483648
  %call8.i159.i = tail call i32 @usb_control_msg(ptr noundef %340, i32 noundef %or.i158.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i774, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i159.i)
  %cmp9.i160.i = icmp slt i32 %call8.i159.i, 0
  br i1 %cmp9.i160.i, label %do.end14.i163.i, label %do.end4.i161.i.spca500_reinit.exit_crit_edge

do.end4.i161.i.spca500_reinit.exit_crit_edge:     ; preds = %do.end4.i161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spca500_reinit.exit

do.end14.i163.i:                                  ; preds = %do.end4.i161.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i159.i) #8
  br label %spca500_reinit.exit

spca500_reinit.exit:                              ; preds = %do.end14.i163.i, %do.end4.i161.i.spca500_reinit.exit_crit_edge, %reg_r_12.exit.i.i.spca500_reinit.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %343 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %343)
  %cmp.i775 = icmp sgt i32 %343, 6
  br i1 %cmp.i775, label %do.end.i778, label %spca500_reinit.exit.do.end4.i784_crit_edge

spca500_reinit.exit.do.end4.i784_crit_edge:       ; preds = %spca500_reinit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i784

do.end.i778:                                      ; preds = %spca500_reinit.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i776 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i777 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i776, i32 noundef 3329, i32 noundef 1) #8
  br label %do.end4.i784

do.end4.i784:                                     ; preds = %do.end.i778, %spca500_reinit.exit.do.end4.i784_crit_edge
  %344 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %dev.i, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 8
  %shl.i.i780 = shl i32 %347, 8
  %or.i781 = or i32 %shl.i.i780, -2147483648
  %call8.i782 = tail call i32 @usb_control_msg(ptr noundef %345, i32 noundef %or.i781, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 3329, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i782)
  %cmp9.i783 = icmp slt i32 %call8.i782, 0
  br i1 %cmp9.i783, label %do.end14.i786, label %do.end4.i784.reg_w.exit787_crit_edge

do.end4.i784.reg_w.exit787_crit_edge:             ; preds = %do.end4.i784
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit787

do.end14.i786:                                    ; preds = %do.end4.i784
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i785 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i782) #8
  br label %reg_w.exit787

reg_w.exit787:                                    ; preds = %do.end14.i786, %do.end4.i784.reg_w.exit787_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %348 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %348)
  %cmp.i788 = icmp sgt i32 %348, 6
  br i1 %cmp.i788, label %do.end.i791, label %reg_w.exit787.do.end4.i797_crit_edge

reg_w.exit787.do.end4.i797_crit_edge:             ; preds = %reg_w.exit787
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i797

do.end.i791:                                      ; preds = %reg_w.exit787
  call void @__sanitizer_cov_trace_pc() #7
  %name.i789 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i790 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i789, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i797

do.end4.i797:                                     ; preds = %do.end.i791, %reg_w.exit787.do.end4.i797_crit_edge
  %349 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev.i, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %350, align 8
  %shl.i.i793 = shl i32 %352, 8
  %or.i794 = or i32 %shl.i.i793, -2147483648
  %call8.i795 = tail call i32 @usb_control_msg(ptr noundef %350, i32 noundef %or.i794, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i795)
  %cmp9.i796 = icmp slt i32 %call8.i795, 0
  br i1 %cmp9.i796, label %do.end14.i799, label %do.end4.i797.reg_w.exit800_crit_edge

do.end4.i797.reg_w.exit800_crit_edge:             ; preds = %do.end4.i797
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit800

do.end14.i799:                                    ; preds = %do.end4.i797
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i798 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i795) #8
  br label %reg_w.exit800

reg_w.exit800:                                    ; preds = %do.end14.i799, %do.end4.i797.reg_w.exit800_crit_edge
  %call227 = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_pocketdv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %cmp228 = icmp slt i32 %call227, 0
  br i1 %cmp228, label %do.end233, label %reg_w.exit800.if.end239_crit_edge

reg_w.exit800.if.end239_crit_edge:                ; preds = %reg_w.exit800
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end239

do.end233:                                        ; preds = %reg_w.exit800
  call void @__sanitizer_cov_trace_pc() #7
  %name236 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name236) #8
  br label %if.end239

if.end239:                                        ; preds = %do.end233, %reg_w.exit800.if.end239_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %353 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %353)
  %cmp.i801 = icmp sgt i32 %353, 6
  br i1 %cmp.i801, label %do.end.i804, label %if.end239.do.end4.i810_crit_edge

if.end239.do.end4.i810_crit_edge:                 ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i810

do.end.i804:                                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #7
  %name.i802 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i803 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i802, i32 noundef 34944, i32 noundef 2) #8
  br label %do.end4.i810

do.end4.i810:                                     ; preds = %do.end.i804, %if.end239.do.end4.i810_crit_edge
  %354 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %dev.i, align 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %355, align 8
  %shl.i.i806 = shl i32 %357, 8
  %or.i807 = or i32 %shl.i.i806, -2147483648
  %call8.i808 = tail call i32 @usb_control_msg(ptr noundef %355, i32 noundef %or.i807, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i808)
  %cmp9.i809 = icmp slt i32 %call8.i808, 0
  br i1 %cmp9.i809, label %do.end14.i812, label %do.end4.i810.reg_w.exit813_crit_edge

do.end4.i810.reg_w.exit813_crit_edge:             ; preds = %do.end4.i810
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit813

do.end14.i812:                                    ; preds = %do.end4.i810
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i811 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i808) #8
  br label %reg_w.exit813

reg_w.exit813:                                    ; preds = %do.end14.i812, %do.end4.i810.reg_w.exit813_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %358 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %358)
  %cmp.i814 = icmp sgt i32 %358, 6
  br i1 %cmp.i814, label %do.end.i817, label %reg_w.exit813.do.end4.i823_crit_edge

reg_w.exit813.do.end4.i823_crit_edge:             ; preds = %reg_w.exit813
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i823

do.end.i817:                                      ; preds = %reg_w.exit813
  call void @__sanitizer_cov_trace_pc() #7
  %name.i815 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i816 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i815, i32 noundef 32778, i32 noundef 0) #8
  br label %do.end4.i823

do.end4.i823:                                     ; preds = %do.end.i817, %reg_w.exit813.do.end4.i823_crit_edge
  %359 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dev.i, align 4
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %360, align 8
  %shl.i.i819 = shl i32 %362, 8
  %or.i820 = or i32 %shl.i.i819, -2147483648
  %call8.i821 = tail call i32 @usb_control_msg(ptr noundef %360, i32 noundef %or.i820, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32758, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i821)
  %cmp9.i822 = icmp slt i32 %call8.i821, 0
  br i1 %cmp9.i822, label %do.end14.i825, label %do.end4.i823.reg_w.exit826_crit_edge

do.end4.i823.reg_w.exit826_crit_edge:             ; preds = %do.end4.i823
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit826

do.end14.i825:                                    ; preds = %do.end4.i823
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i824 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i821) #8
  br label %reg_w.exit826

reg_w.exit826:                                    ; preds = %do.end14.i825, %do.end4.i823.reg_w.exit826_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %363 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %363)
  %cmp.i827 = icmp sgt i32 %363, 6
  br i1 %cmp.i827, label %do.end.i830, label %reg_w.exit826.do.end4.i836_crit_edge

reg_w.exit826.do.end4.i836_crit_edge:             ; preds = %reg_w.exit826
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i836

do.end.i830:                                      ; preds = %reg_w.exit826
  call void @__sanitizer_cov_trace_pc() #7
  %name.i828 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i829 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i828, i32 noundef 33295, i32 noundef 1) #8
  br label %do.end4.i836

do.end4.i836:                                     ; preds = %do.end.i830, %reg_w.exit826.do.end4.i836_crit_edge
  %364 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev.i, align 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %365, align 8
  %shl.i.i832 = shl i32 %367, 8
  %or.i833 = or i32 %shl.i.i832, -2147483648
  %call8.i834 = tail call i32 @usb_control_msg(ptr noundef %365, i32 noundef %or.i833, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -32241, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i834)
  %cmp9.i835 = icmp slt i32 %call8.i834, 0
  br i1 %cmp9.i835, label %do.end14.i838, label %do.end4.i836.reg_w.exit839_crit_edge

do.end4.i836.reg_w.exit839_crit_edge:             ; preds = %do.end4.i836
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit839

do.end14.i838:                                    ; preds = %do.end4.i836
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i837 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i834) #8
  br label %reg_w.exit839

reg_w.exit839:                                    ; preds = %do.end14.i838, %do.end4.i836.reg_w.exit839_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %368 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %368)
  %cmp.i840 = icmp sgt i32 %368, 6
  br i1 %cmp.i840, label %do.end.i843, label %reg_w.exit839.do.end4.i849_crit_edge

reg_w.exit839.do.end4.i849_crit_edge:             ; preds = %reg_w.exit839
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i849

do.end.i843:                                      ; preds = %reg_w.exit839
  call void @__sanitizer_cov_trace_pc() #7
  %name.i841 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i842 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i841, i32 noundef 34570, i32 noundef 4) #8
  br label %do.end4.i849

do.end4.i849:                                     ; preds = %do.end.i843, %reg_w.exit839.do.end4.i849_crit_edge
  %369 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev.i, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %370, align 8
  %shl.i.i845 = shl i32 %372, 8
  %or.i846 = or i32 %shl.i.i845, -2147483648
  %call8.i847 = tail call i32 @usb_control_msg(ptr noundef %370, i32 noundef %or.i846, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -30966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i847)
  %cmp9.i848 = icmp slt i32 %call8.i847, 0
  br i1 %cmp9.i848, label %do.end14.i851, label %do.end4.i849.reg_w.exit852_crit_edge

do.end4.i849.reg_w.exit852_crit_edge:             ; preds = %do.end4.i849
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit852

do.end14.i851:                                    ; preds = %do.end4.i849
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i850 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i847) #8
  br label %reg_w.exit852

reg_w.exit852:                                    ; preds = %do.end14.i851, %do.end4.i849.reg_w.exit852_crit_edge
  tail call fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %.397, i8 noundef zeroext %.)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %373 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %373)
  %cmp.i853 = icmp sgt i32 %373, 6
  br i1 %cmp.i853, label %do.end.i856, label %reg_w.exit852.do.end4.i862_crit_edge

reg_w.exit852.do.end4.i862_crit_edge:             ; preds = %reg_w.exit852
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i862

do.end.i856:                                      ; preds = %reg_w.exit852
  call void @__sanitizer_cov_trace_pc() #7
  %name.i854 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i855 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i854, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i862

do.end4.i862:                                     ; preds = %do.end.i856, %reg_w.exit852.do.end4.i862_crit_edge
  %374 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev.i, align 4
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %375, align 8
  %shl.i.i858 = shl i32 %377, 8
  %or.i859 = or i32 %shl.i.i858, -2147483648
  %call8.i860 = tail call i32 @usb_control_msg(ptr noundef %375, i32 noundef %or.i859, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i860)
  %cmp9.i861 = icmp slt i32 %call8.i860, 0
  br i1 %cmp9.i861, label %do.end14.i864, label %do.end4.i862.while.body.i874.preheader_crit_edge

do.end4.i862.while.body.i874.preheader_crit_edge: ; preds = %do.end4.i862
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i874.preheader

do.end14.i864:                                    ; preds = %do.end4.i862
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i863 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i860) #8
  br label %while.body.i874.preheader

while.body.i874.preheader:                        ; preds = %do.end14.i864, %do.end4.i862.while.body.i874.preheader_crit_edge
  br label %while.body.i874

while.body.i874:                                  ; preds = %if.end.i888.while.body.i874_crit_edge, %while.body.i874.preheader
  %dec4.i868 = phi i32 [ %dec.i886, %if.end.i888.while.body.i874_crit_edge ], [ 19, %while.body.i874.preheader ]
  %378 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i869 = getelementptr i8, ptr %379, i32 1
  %380 = ptrtoint ptr %arrayidx.i.i869 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %arrayidx.i.i869, align 1
  %381 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %dev.i, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %382, align 8
  %shl.i.i.i870 = shl i32 %384, 8
  %or2.i.i871 = or i32 %shl.i.i.i870, -2147483520
  %385 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i872 = tail call i32 @usb_control_msg(ptr noundef %382, i32 noundef %or2.i.i871, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %385, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i872)
  %cmp.i.i873 = icmp slt i32 %call4.i.i872, 0
  br i1 %cmp.i.i873, label %reg_r_12.exit.i885.thread, label %reg_r_12.exit.i885

reg_r_12.exit.i885.thread:                        ; preds = %while.body.i874
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i875 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i872) #8
  br label %if.end.i888

reg_r_12.exit.i885:                               ; preds = %while.body.i874
  %386 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i877 = getelementptr i8, ptr %387, i32 1
  %388 = ptrtoint ptr %arrayidx8.i.i877 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx8.i.i877, align 1
  %conv9.i.i878 = zext i8 %389 to i32
  %shl.i.i879 = shl nuw nsw i32 %conv9.i.i878, 8
  %390 = ptrtoint ptr %387 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %387, align 1
  %conv12.i.i880 = zext i8 %391 to i32
  %add.i.i881 = or i32 %shl.i.i879, %conv12.i.i880
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i881)
  %cmp1.i884 = icmp eq i32 %add.i.i881, 68
  br i1 %cmp1.i884, label %reg_r_12.exit.i885.reg_r_wait.exit890_crit_edge, label %reg_r_12.exit.i885.if.end.i888_crit_edge

reg_r_12.exit.i885.if.end.i888_crit_edge:         ; preds = %reg_r_12.exit.i885
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i888

reg_r_12.exit.i885.reg_r_wait.exit890_crit_edge:  ; preds = %reg_r_12.exit.i885
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r_wait.exit890

if.end.i888:                                      ; preds = %reg_r_12.exit.i885.if.end.i888_crit_edge, %reg_r_12.exit.i885.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i886 = add nsw i32 %dec4.i868, -1
  %cmp.not.i887 = icmp eq i32 %dec.i886, 0
  br i1 %cmp.not.i887, label %if.end.i888.reg_r_wait.exit890_crit_edge, label %if.end.i888.while.body.i874_crit_edge

if.end.i888.while.body.i874_crit_edge:            ; preds = %if.end.i888
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i874

if.end.i888.reg_r_wait.exit890_crit_edge:         ; preds = %if.end.i888
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r_wait.exit890

reg_r_wait.exit890:                               ; preds = %if.end.i888.reg_r_wait.exit890_crit_edge, %reg_r_12.exit.i885.reg_r_wait.exit890_crit_edge
  %392 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dev.i, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %393, align 8
  %shl.i.i892 = shl i32 %395, 8
  %or2.i893 = or i32 %shl.i.i892, -2147483520
  %396 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %usb_buf.i, align 4
  %call3.i895 = tail call i32 @usb_control_msg(ptr noundef %393, i32 noundef %or2.i893, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %397, i16 noundef zeroext 1, i32 noundef 500) #5
  %398 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %usb_buf.i, align 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %399, align 1
  %conv248 = zext i8 %401 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %402 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %402)
  %cmp.i896 = icmp sgt i32 %402, 6
  br i1 %cmp.i896, label %do.end.i900, label %reg_r_wait.exit890.do.end4.i906_crit_edge

reg_r_wait.exit890.do.end4.i906_crit_edge:        ; preds = %reg_r_wait.exit890
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i906

do.end.i900:                                      ; preds = %reg_r_wait.exit890
  call void @__sanitizer_cov_trace_pc() #7
  %name.i897 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i898 = zext i8 %401 to i32
  %call.i899 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i897, i32 noundef 33131, i32 noundef %conv2.i898) #8
  br label %do.end4.i906

do.end4.i906:                                     ; preds = %do.end.i900, %reg_r_wait.exit890.do.end4.i906_crit_edge
  %403 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %dev.i, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %404, align 8
  %shl.i.i902 = shl i32 %406, 8
  %or.i903 = or i32 %shl.i.i902, -2147483648
  %call8.i904 = tail call i32 @usb_control_msg(ptr noundef %404, i32 noundef %or.i903, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv248, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i904)
  %cmp9.i905 = icmp slt i32 %call8.i904, 0
  br i1 %cmp9.i905, label %do.end14.i908, label %do.end4.i906.sw.epilog_crit_edge

do.end4.i906.sw.epilog_crit_edge:                 ; preds = %do.end4.i906
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end14.i908:                                    ; preds = %do.end4.i906
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i907 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i904) #8
  br label %sw.epilog

sw.bb250:                                         ; preds = %do.end31.sw.bb250_crit_edge, %do.end31.sw.bb250_crit_edge1062
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %407 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %407)
  %cmp.i910 = icmp sgt i32 %407, 6
  br i1 %cmp.i910, label %do.end.i913, label %sw.bb250.do.end4.i919_crit_edge

sw.bb250.do.end4.i919_crit_edge:                  ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i919

do.end.i913:                                      ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #7
  %name.i911 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i912 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i911, i32 noundef 0, i32 noundef 0) #8
  br label %do.end4.i919

do.end4.i919:                                     ; preds = %do.end.i913, %sw.bb250.do.end4.i919_crit_edge
  %408 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dev.i, align 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %409, align 8
  %shl.i.i915 = shl i32 %411, 8
  %or.i916 = or i32 %shl.i.i915, -2147483648
  %call8.i917 = tail call i32 @usb_control_msg(ptr noundef %409, i32 noundef %or.i916, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i917)
  %cmp9.i918 = icmp slt i32 %call8.i917, 0
  br i1 %cmp9.i918, label %do.end14.i921, label %do.end4.i919.reg_w.exit922_crit_edge

do.end4.i919.reg_w.exit922_crit_edge:             ; preds = %do.end4.i919
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit922

do.end14.i921:                                    ; preds = %do.end4.i919
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i920 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i917) #8
  br label %reg_w.exit922

reg_w.exit922:                                    ; preds = %do.end14.i921, %do.end4.i919.reg_w.exit922_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %412 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %412)
  %cmp.i923 = icmp sgt i32 %412, 6
  br i1 %cmp.i923, label %do.end.i926, label %reg_w.exit922.do.end4.i932_crit_edge

reg_w.exit922.do.end4.i932_crit_edge:             ; preds = %reg_w.exit922
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i932

do.end.i926:                                      ; preds = %reg_w.exit922
  call void @__sanitizer_cov_trace_pc() #7
  %name.i924 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i925 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i924, i32 noundef 34058, i32 noundef 1) #8
  br label %do.end4.i932

do.end4.i932:                                     ; preds = %do.end.i926, %reg_w.exit922.do.end4.i932_crit_edge
  %413 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev.i, align 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %414, align 8
  %shl.i.i928 = shl i32 %416, 8
  %or.i929 = or i32 %shl.i.i928, -2147483648
  %call8.i930 = tail call i32 @usb_control_msg(ptr noundef %414, i32 noundef %or.i929, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext -31478, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i930)
  %cmp9.i931 = icmp slt i32 %call8.i930, 0
  br i1 %cmp9.i931, label %do.end14.i934, label %do.end4.i932.reg_w.exit935_crit_edge

do.end4.i932.reg_w.exit935_crit_edge:             ; preds = %do.end4.i932
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit935

do.end14.i934:                                    ; preds = %do.end4.i932
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i933 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i930) #8
  br label %reg_w.exit935

reg_w.exit935:                                    ; preds = %do.end14.i934, %do.end4.i932.reg_w.exit935_crit_edge
  %call253 = tail call fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr noundef nonnull @qtable_creative_pccam)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %do.end259, label %reg_w.exit935.if.end265_crit_edge

reg_w.exit935.if.end265_crit_edge:                ; preds = %reg_w.exit935
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end265

do.end259:                                        ; preds = %reg_w.exit935
  call void @__sanitizer_cov_trace_pc() #7
  %name262 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name262) #8
  br label %if.end265

if.end265:                                        ; preds = %do.end259, %reg_w.exit935.if.end265_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %417 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %417)
  %cmp.i936 = icmp sgt i32 %417, 6
  br i1 %cmp.i936, label %do.end.i939, label %if.end265.do.end4.i945_crit_edge

if.end265.do.end4.i945_crit_edge:                 ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i945

do.end.i939:                                      ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #7
  %name.i937 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i938 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i937, i32 noundef 34944, i32 noundef 3) #8
  br label %do.end4.i945

do.end4.i945:                                     ; preds = %do.end.i939, %if.end265.do.end4.i945_crit_edge
  %418 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev.i, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %419, align 8
  %shl.i.i941 = shl i32 %421, 8
  %or.i942 = or i32 %shl.i.i941, -2147483648
  %call8.i943 = tail call i32 @usb_control_msg(ptr noundef %419, i32 noundef %or.i942, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 3, i16 noundef zeroext -30592, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i943)
  %cmp9.i944 = icmp slt i32 %call8.i943, 0
  br i1 %cmp9.i944, label %do.end14.i947, label %do.end4.i945.reg_w.exit948_crit_edge

do.end4.i945.reg_w.exit948_crit_edge:             ; preds = %do.end4.i945
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit948

do.end14.i947:                                    ; preds = %do.end4.i945
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i946 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i943) #8
  br label %reg_w.exit948

reg_w.exit948:                                    ; preds = %do.end14.i947, %do.end4.i945.reg_w.exit948_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %422 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %422)
  %cmp.i949 = icmp sgt i32 %422, 6
  br i1 %cmp.i949, label %do.end.i952, label %reg_w.exit948.do.end4.i958_crit_edge

reg_w.exit948.do.end4.i958_crit_edge:             ; preds = %reg_w.exit948
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i958

do.end.i952:                                      ; preds = %reg_w.exit948
  call void @__sanitizer_cov_trace_pc() #7
  %name.i950 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i951 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i950, i32 noundef 32778, i32 noundef 0) #8
  br label %do.end4.i958

do.end4.i958:                                     ; preds = %do.end.i952, %reg_w.exit948.do.end4.i958_crit_edge
  %423 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %dev.i, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %424, align 8
  %shl.i.i954 = shl i32 %426, 8
  %or.i955 = or i32 %shl.i.i954, -2147483648
  %call8.i956 = tail call i32 @usb_control_msg(ptr noundef %424, i32 noundef %or.i955, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32758, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i956)
  %cmp9.i957 = icmp slt i32 %call8.i956, 0
  br i1 %cmp9.i957, label %do.end14.i960, label %do.end4.i958.reg_w.exit961_crit_edge

do.end4.i958.reg_w.exit961_crit_edge:             ; preds = %do.end4.i958
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit961

do.end14.i960:                                    ; preds = %do.end4.i958
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i959 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i956) #8
  br label %reg_w.exit961

reg_w.exit961:                                    ; preds = %do.end14.i960, %do.end4.i958.reg_w.exit961_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %427 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %427)
  %cmp.i962 = icmp sgt i32 %427, 6
  br i1 %cmp.i962, label %do.end.i965, label %reg_w.exit961.do.end4.i971_crit_edge

reg_w.exit961.do.end4.i971_crit_edge:             ; preds = %reg_w.exit961
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i971

do.end.i965:                                      ; preds = %reg_w.exit961
  call void @__sanitizer_cov_trace_pc() #7
  %name.i963 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i964 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i963, i32 noundef 34570, i32 noundef 4) #8
  br label %do.end4.i971

do.end4.i971:                                     ; preds = %do.end.i965, %reg_w.exit961.do.end4.i971_crit_edge
  %428 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev.i, align 4
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 8
  %shl.i.i967 = shl i32 %431, 8
  %or.i968 = or i32 %shl.i.i967, -2147483648
  %call8.i969 = tail call i32 @usb_control_msg(ptr noundef %429, i32 noundef %or.i968, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -30966, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i969)
  %cmp9.i970 = icmp slt i32 %call8.i969, 0
  br i1 %cmp9.i970, label %do.end14.i973, label %do.end4.i971.reg_w.exit974_crit_edge

do.end4.i971.reg_w.exit974_crit_edge:             ; preds = %do.end4.i971
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit974

do.end14.i973:                                    ; preds = %do.end4.i971
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i972 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i969) #8
  br label %reg_w.exit974

reg_w.exit974:                                    ; preds = %do.end14.i973, %do.end4.i971.reg_w.exit974_crit_edge
  tail call fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %.397, i8 noundef zeroext %.)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %432 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %432)
  %cmp.i975 = icmp sgt i32 %432, 6
  br i1 %cmp.i975, label %do.end.i978, label %reg_w.exit974.do.end4.i984_crit_edge

reg_w.exit974.do.end4.i984_crit_edge:             ; preds = %reg_w.exit974
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i984

do.end.i978:                                      ; preds = %reg_w.exit974
  call void @__sanitizer_cov_trace_pc() #7
  %name.i976 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i977 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i976, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i984

do.end4.i984:                                     ; preds = %do.end.i978, %reg_w.exit974.do.end4.i984_crit_edge
  %433 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev.i, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %434, align 8
  %shl.i.i980 = shl i32 %436, 8
  %or.i981 = or i32 %shl.i.i980, -2147483648
  %call8.i982 = tail call i32 @usb_control_msg(ptr noundef %434, i32 noundef %or.i981, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i982)
  %cmp9.i983 = icmp slt i32 %call8.i982, 0
  br i1 %cmp9.i983, label %do.end14.i986, label %do.end4.i984.while.body.i996.preheader_crit_edge

do.end4.i984.while.body.i996.preheader_crit_edge: ; preds = %do.end4.i984
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i996.preheader

do.end14.i986:                                    ; preds = %do.end4.i984
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i985 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i982) #8
  br label %while.body.i996.preheader

while.body.i996.preheader:                        ; preds = %do.end14.i986, %do.end4.i984.while.body.i996.preheader_crit_edge
  br label %while.body.i996

while.body.i996:                                  ; preds = %if.end.i1010.while.body.i996_crit_edge, %while.body.i996.preheader
  %dec4.i990 = phi i32 [ %dec.i1008, %if.end.i1010.while.body.i996_crit_edge ], [ 19, %while.body.i996.preheader ]
  %437 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i.i991 = getelementptr i8, ptr %438, i32 1
  %439 = ptrtoint ptr %arrayidx.i.i991 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %arrayidx.i.i991, align 1
  %440 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %dev.i, align 4
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %441, align 8
  %shl.i.i.i992 = shl i32 %443, 8
  %or2.i.i993 = or i32 %shl.i.i.i992, -2147483520
  %444 = load ptr, ptr %usb_buf.i, align 4
  %call4.i.i994 = tail call i32 @usb_control_msg(ptr noundef %441, i32 noundef %or2.i.i993, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %444, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i994)
  %cmp.i.i995 = icmp slt i32 %call4.i.i994, 0
  br i1 %cmp.i.i995, label %reg_r_12.exit.i1007.thread, label %reg_r_12.exit.i1007

reg_r_12.exit.i1007.thread:                       ; preds = %while.body.i996
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i997 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i994) #8
  br label %if.end.i1010

reg_r_12.exit.i1007:                              ; preds = %while.body.i996
  %445 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx8.i.i999 = getelementptr i8, ptr %446, i32 1
  %447 = ptrtoint ptr %arrayidx8.i.i999 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %arrayidx8.i.i999, align 1
  %conv9.i.i1000 = zext i8 %448 to i32
  %shl.i.i1001 = shl nuw nsw i32 %conv9.i.i1000, 8
  %449 = ptrtoint ptr %446 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %446, align 1
  %conv12.i.i1002 = zext i8 %450 to i32
  %add.i.i1003 = or i32 %shl.i.i1001, %conv12.i.i1002
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %add.i.i1003)
  %cmp1.i1006 = icmp eq i32 %add.i.i1003, 68
  br i1 %cmp1.i1006, label %reg_r_12.exit.i1007.reg_r_wait.exit1012_crit_edge, label %reg_r_12.exit.i1007.if.end.i1010_crit_edge

reg_r_12.exit.i1007.if.end.i1010_crit_edge:       ; preds = %reg_r_12.exit.i1007
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i1010

reg_r_12.exit.i1007.reg_r_wait.exit1012_crit_edge: ; preds = %reg_r_12.exit.i1007
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r_wait.exit1012

if.end.i1010:                                     ; preds = %reg_r_12.exit.i1007.if.end.i1010_crit_edge, %reg_r_12.exit.i1007.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i1008 = add nsw i32 %dec4.i990, -1
  %cmp.not.i1009 = icmp eq i32 %dec.i1008, 0
  br i1 %cmp.not.i1009, label %if.end.i1010.reg_r_wait.exit1012_crit_edge, label %if.end.i1010.while.body.i996_crit_edge

if.end.i1010.while.body.i996_crit_edge:           ; preds = %if.end.i1010
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i996

if.end.i1010.reg_r_wait.exit1012_crit_edge:       ; preds = %if.end.i1010
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r_wait.exit1012

reg_r_wait.exit1012:                              ; preds = %if.end.i1010.reg_r_wait.exit1012_crit_edge, %reg_r_12.exit.i1007.reg_r_wait.exit1012_crit_edge
  %451 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %dev.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %452, align 8
  %shl.i.i1014 = shl i32 %454, 8
  %or2.i1015 = or i32 %shl.i.i1014, -2147483520
  %455 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %usb_buf.i, align 4
  %call3.i1017 = tail call i32 @usb_control_msg(ptr noundef %452, i32 noundef %or2.i1015, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32405, ptr noundef %456, i16 noundef zeroext 1, i32 noundef 500) #5
  %457 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %usb_buf.i, align 4
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %458, align 1
  %conv273 = zext i8 %460 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %461 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %461)
  %cmp.i1018 = icmp sgt i32 %461, 6
  br i1 %cmp.i1018, label %do.end.i1022, label %reg_r_wait.exit1012.do.end4.i1028_crit_edge

reg_r_wait.exit1012.do.end4.i1028_crit_edge:      ; preds = %reg_r_wait.exit1012
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i1028

do.end.i1022:                                     ; preds = %reg_r_wait.exit1012
  call void @__sanitizer_cov_trace_pc() #7
  %name.i1019 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i1020 = zext i8 %460 to i32
  %call.i1021 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i1019, i32 noundef 33131, i32 noundef %conv2.i1020) #8
  br label %do.end4.i1028

do.end4.i1028:                                    ; preds = %do.end.i1022, %reg_r_wait.exit1012.do.end4.i1028_crit_edge
  %462 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dev.i, align 4
  %464 = ptrtoint ptr %463 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %463, align 8
  %shl.i.i1024 = shl i32 %465, 8
  %or.i1025 = or i32 %shl.i.i1024, -2147483648
  %call8.i1026 = tail call i32 @usb_control_msg(ptr noundef %463, i32 noundef %or.i1025, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv273, i16 noundef zeroext -32405, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i1026)
  %cmp9.i1027 = icmp slt i32 %call8.i1026, 0
  br i1 %cmp9.i1027, label %do.end14.i1030, label %do.end4.i1028.reg_w.exit1031_crit_edge

do.end4.i1028.reg_w.exit1031_crit_edge:           ; preds = %do.end4.i1028
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit1031

do.end14.i1030:                                   ; preds = %do.end4.i1028
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i1029 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i1026) #8
  br label %reg_w.exit1031

reg_w.exit1031:                                   ; preds = %do.end14.i1030, %do.end4.i1028.reg_w.exit1031_crit_edge
  tail call fastcc void @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull @Clicksmart510_defaults)
  br label %sw.epilog

sw.epilog:                                        ; preds = %reg_w.exit1031, %do.end14.i908, %do.end4.i906.sw.epilog_crit_edge, %do.end14.i756, %do.end4.i754.sw.epilog_crit_edge, %do.end14.i660, %do.end4.i658.sw.epilog_crit_edge, %do.end14.i564, %do.end4.i562.sw.epilog_crit_edge, %do.end31.sw.epilog_crit_edge
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp4.not = icmp eq i8 %3, 1
  br i1 %cmp4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef nonnull @sd_pkt_scan.ffd9, i32 noundef 2) #5
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 589) #5
  %add.ptr = getelementptr i8, ptr %data, i32 16
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %.sink = phi i32 [ -16, %if.end ], [ -1, %entry.if.end9_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr, %if.end ], [ %arrayidx2, %entry.if.end9_crit_edge ]
  %sub8 = add i32 %.sink, %len
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %if.end9
  %data.addr.1 = phi ptr [ %data.addr.0, %if.end9 ], [ %data.addr.2, %if.end17.do.body_crit_edge ]
  %len.addr.1 = phi i32 [ %sub8, %if.end9 ], [ %len.addr.2, %if.end17.do.body_crit_edge ]
  %i.0 = phi i32 [ 0, %if.end9 ], [ %inc, %if.end17.do.body_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %data.addr.1, i32 %i.0
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp12 = icmp eq i8 %5, -1
  br i1 %cmp12, label %if.then14, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nsw i32 %i.0, 1
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.1, i32 noundef %add) #5
  %sub15 = sub i32 %len.addr.1, %i.0
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx10, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %do.body.if.end17_crit_edge
  %data.addr.2 = phi ptr [ %arrayidx10, %if.then14 ], [ %data.addr.1, %do.body.if.end17_crit_edge ]
  %len.addr.2 = phi i32 [ %sub15, %if.then14 ], [ %len.addr.1, %do.body.if.end17_crit_edge ]
  %i.1 = phi i32 [ 0, %if.then14 ], [ %i.0, %do.body.if.end17_crit_edge ]
  %inc = add i32 %i.1, 1
  %cmp18 = icmp slt i32 %inc, %len.addr.2
  br i1 %cmp18, label %if.end17.do.body_crit_edge, label %do.end

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.2, i32 noundef %len.addr.2) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp.i = icmp sgt i32 %0, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end4.i_crit_edge

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 32771, i32 noundef 0) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32765, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end14.i, label %do.end4.i.reg_w.exit_crit_edge

do.end4.i.reg_w.exit_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end14.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end14.i, %do.end4.i.reg_w.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i9 = icmp sgt i32 %5, 6
  br i1 %cmp.i9, label %do.end.i12, label %reg_w.exit.do.end4.i18_crit_edge

reg_w.exit.do.end4.i18_crit_edge:                 ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i18

do.end.i12:                                       ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i10, i32 noundef 32768, i32 noundef 4) #8
  br label %do.end4.i18

do.end4.i18:                                      ; preds = %do.end.i12, %reg_w.exit.do.end4.i18_crit_edge
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i14 = shl i32 %9, 8
  %or.i15 = or i32 %shl.i.i14, -2147483648
  %call8.i16 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i15, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext -32768, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i16)
  %cmp9.i17 = icmp slt i32 %call8.i16, 0
  br i1 %cmp9.i17, label %do.end14.i20, label %do.end4.i18.reg_w.exit21_crit_edge

do.end4.i18.reg_w.exit21_crit_edge:               ; preds = %do.end4.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit21

do.end14.i20:                                     ; preds = %do.end4.i18
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i16) #8
  br label %reg_w.exit21

reg_w.exit21:                                     ; preds = %do.end14.i20, %do.end4.i18.reg_w.exit21_crit_edge
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i23 = shl i32 %13, 8
  %or2.i = or i32 %shl.i.i23, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext -32768, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp sgt i32 %16, 2
  br i1 %cmp, label %do.end, label %reg_w.exit21.do.end4_crit_edge

reg_w.exit21.do.end4_crit_edge:                   ; preds = %reg_w.exit21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %reg_w.exit21
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv = zext i8 %20 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %conv) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %reg_w.exit21.do.end4_crit_edge
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
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !171
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = trunc i32 %9 to i8
  %conv.i = xor i8 %10, -128
  %conv1.i = zext i8 %conv.i to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i.i = icmp sgt i32 %11, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.do.end4.i.i_crit_edge

sw.bb.do.end4.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv2.i.i = zext i8 %conv.i to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i.i, i32 noundef 33127, i32 noundef %conv2.i.i) #8
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %sw.bb.do.end4.i.i_crit_edge
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i = shl i32 %15, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call8.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv1.i, i16 noundef zeroext -32409, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %do.end4.i.i.sw.epilog.sink.split_crit_edge, label %do.end4.i.i.sw.epilog_crit_edge

do.end4.i.i.sw.epilog_crit_edge:                  ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end4.i.i.sw.epilog.sink.split_crit_edge:       ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val2, align 4
  %conv.i15 = trunc i32 %17 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp.i.i16 = icmp sgt i32 %18, 6
  br i1 %cmp.i.i16, label %do.end.i.i20, label %sw.bb1.do.end4.i.i26_crit_edge

sw.bb1.do.end4.i.i26_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i.i26

do.end.i.i20:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i17 = getelementptr i8, ptr %1, i32 -168
  %conv2.i.i18 = and i32 %17, 65535
  %call.i.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i.i17, i32 noundef 33128, i32 noundef %conv2.i.i18) #8
  br label %do.end4.i.i26

do.end4.i.i26:                                    ; preds = %do.end.i.i20, %sw.bb1.do.end4.i.i26_crit_edge
  %dev.i.i21 = getelementptr i8, ptr %1, i32 -100
  %19 = ptrtoint ptr %dev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i21, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i22 = shl i32 %22, 8
  %or.i.i23 = or i32 %shl.i.i.i22, -2147483648
  %call8.i.i24 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i.i23, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i15, i16 noundef zeroext -32408, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i24)
  %cmp9.i.i25 = icmp slt i32 %call8.i.i24, 0
  br i1 %cmp9.i.i25, label %do.end4.i.i26.sw.epilog.sink.split_crit_edge, label %do.end4.i.i26.sw.epilog_crit_edge

do.end4.i.i26.sw.epilog_crit_edge:                ; preds = %do.end4.i.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end4.i.i26.sw.epilog.sink.split_crit_edge:     ; preds = %do.end4.i.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val4, align 4
  %conv.i29 = trunc i32 %24 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i.i30 = icmp sgt i32 %25, 6
  br i1 %cmp.i.i30, label %do.end.i.i34, label %sw.bb3.do.end4.i.i40_crit_edge

sw.bb3.do.end4.i.i40_crit_edge:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i.i40

do.end.i.i34:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i31 = getelementptr i8, ptr %1, i32 -168
  %conv2.i.i32 = and i32 %24, 65535
  %call.i.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i.i31, i32 noundef 33129, i32 noundef %conv2.i.i32) #8
  br label %do.end4.i.i40

do.end4.i.i40:                                    ; preds = %do.end.i.i34, %sw.bb3.do.end4.i.i40_crit_edge
  %dev.i.i35 = getelementptr i8, ptr %1, i32 -100
  %26 = ptrtoint ptr %dev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i35, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i.i36 = shl i32 %29, 8
  %or.i.i37 = or i32 %shl.i.i.i36, -2147483648
  %call8.i.i38 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i.i37, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv.i29, i16 noundef zeroext -32407, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i38)
  %cmp9.i.i39 = icmp slt i32 %call8.i.i38, 0
  br i1 %cmp9.i.i39, label %do.end4.i.i40.sw.epilog.sink.split_crit_edge, label %do.end4.i.i40.sw.epilog_crit_edge

do.end4.i.i40.sw.epilog_crit_edge:                ; preds = %do.end4.i.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end4.i.i40.sw.epilog.sink.split_crit_edge:     ; preds = %do.end4.i.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end4.i.i40.sw.epilog.sink.split_crit_edge, %do.end4.i.i26.sw.epilog.sink.split_crit_edge, %do.end4.i.i.sw.epilog.sink.split_crit_edge
  %call8.i.i38.sink = phi i32 [ %call8.i.i, %do.end4.i.i.sw.epilog.sink.split_crit_edge ], [ %call8.i.i24, %do.end4.i.i26.sw.epilog.sink.split_crit_edge ], [ %call8.i.i38, %do.end4.i.i40.sw.epilog.sink.split_crit_edge ]
  %call16.i.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i.i38.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end4.i.i40.sw.epilog_crit_edge, %do.end4.i.i26.sw.epilog_crit_edge, %do.end4.i.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %30 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spca500_setmode(ptr noundef %gspca_dev, i8 noundef zeroext %xmult, i8 noundef zeroext %ymult) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %xmult to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp.i = icmp sgt i32 %0, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end4.i_crit_edge

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i = zext i8 %xmult to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 32769, i32 noundef %conv2.i) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext -32767, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end14.i, label %do.end4.i.reg_w.exit_crit_edge

do.end4.i.reg_w.exit_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end14.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end14.i, %do.end4.i.reg_w.exit_crit_edge
  %conv1 = zext i8 %ymult to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %5 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.i10 = icmp sgt i32 %5, 6
  br i1 %cmp.i10, label %do.end.i14, label %reg_w.exit.do.end4.i20_crit_edge

reg_w.exit.do.end4.i20_crit_edge:                 ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i20

do.end.i14:                                       ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i11 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i12 = zext i8 %ymult to i32
  %call.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i11, i32 noundef 32770, i32 noundef %conv2.i12) #8
  br label %do.end4.i20

do.end4.i20:                                      ; preds = %do.end.i14, %reg_w.exit.do.end4.i20_crit_edge
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i16 = shl i32 %9, 8
  %or.i17 = or i32 %shl.i.i16, -2147483648
  %call8.i18 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or.i17, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv1, i16 noundef zeroext -32766, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i18)
  %cmp9.i19 = icmp slt i32 %call8.i18, 0
  br i1 %cmp9.i19, label %do.end14.i22, label %do.end4.i20.reg_w.exit23_crit_edge

do.end4.i20.reg_w.exit23_crit_edge:               ; preds = %do.end4.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit23

do.end14.i22:                                     ; preds = %do.end4.i20
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i18) #8
  br label %reg_w.exit23

reg_w.exit23:                                     ; preds = %do.end14.i22, %do.end4.i20.reg_w.exit23_crit_edge
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %10 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %12 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %curr_mode, align 1
  %conv3 = zext i8 %13 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %11, i32 %conv3, i32 7
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %priv, align 4
  %.tr = trunc i32 %15 to i16
  %conv4 = shl i16 %.tr, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.i24 = icmp sgt i32 %16, 6
  br i1 %cmp.i24, label %do.end.i28, label %reg_w.exit23.do.end4.i34_crit_edge

reg_w.exit23.do.end4.i34_crit_edge:               ; preds = %reg_w.exit23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i34

do.end.i28:                                       ; preds = %reg_w.exit23
  call void @__sanitizer_cov_trace_pc() #7
  %name.i25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv2.i26 = zext i16 %conv4 to i32
  %call.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i25, i32 noundef 32771, i32 noundef %conv2.i26) #8
  br label %do.end4.i34

do.end4.i34:                                      ; preds = %do.end.i28, %reg_w.exit23.do.end4.i34_crit_edge
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i30 = shl i32 %20, 8
  %or.i31 = or i32 %shl.i.i30, -2147483648
  %call8.i32 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i31, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv4, i16 noundef zeroext -32765, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i32)
  %cmp9.i33 = icmp slt i32 %call8.i32, 0
  br i1 %cmp9.i33, label %do.end14.i36, label %do.end4.i34.reg_w.exit37_crit_edge

do.end4.i34.reg_w.exit37_crit_edge:               ; preds = %do.end4.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit37

do.end14.i36:                                     ; preds = %do.end4.i34
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i32) #8
  br label %reg_w.exit37

reg_w.exit37:                                     ; preds = %do.end14.i36, %do.end4.i34.reg_w.exit37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spca50x_setup_qtable(ptr noundef %gspca_dev, ptr nocapture noundef readonly %qtable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %do.end4.i
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond.for.body9_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.body9_crit_edge:                     ; preds = %for.cond
  br label %for.body9

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %0 = trunc i32 %i.016 to i16
  %conv1 = add i16 %0, -30720
  %arrayidx2 = getelementptr [64 x i8], ptr %qtable, i32 0, i32 %i.016
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %2 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i = icmp sgt i32 %3, 6
  br i1 %cmp.i, label %do.end.i, label %for.body.do.end4.i_crit_edge

for.body.do.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %conv1 to i32
  %conv2.i = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv2.i) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %for.body.do.end4.i_crit_edge
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv3, i16 noundef zeroext %conv1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end4.i.cleanup.sink.split_crit_edge, label %for.cond

do.end4.i.cleanup.sink.split_crit_edge:           ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond6:                                        ; preds = %do.end4.i12
  %inc22 = add nuw nsw i32 %i.117, 1
  %exitcond20.not = icmp eq i32 %inc22, 64
  br i1 %exitcond20.not, label %for.cond6.cleanup_crit_edge, label %for.cond6.for.body9_crit_edge

for.cond6.for.body9_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

for.cond6.cleanup_crit_edge:                      ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body9:                                        ; preds = %for.cond6.for.body9_crit_edge, %for.cond.for.body9_crit_edge
  %i.117 = phi i32 [ %inc22, %for.cond6.for.body9_crit_edge ], [ 0, %for.cond.for.body9_crit_edge ]
  %8 = trunc i32 %i.117 to i16
  %conv12 = add i16 %8, -30656
  %arrayidx14 = getelementptr [64 x i8], ptr %qtable, i32 1, i32 %i.117
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %10 to i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i1 = icmp sgt i32 %11, 6
  br i1 %cmp.i1, label %do.end.i6, label %for.body9.do.end4.i12_crit_edge

for.body9.do.end4.i12_crit_edge:                  ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i12

do.end.i6:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i3 = zext i16 %conv12 to i32
  %conv2.i4 = zext i8 %10 to i32
  %call.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %conv.i3, i32 noundef %conv2.i4) #8
  br label %do.end4.i12

do.end4.i12:                                      ; preds = %do.end.i6, %for.body9.do.end4.i12_crit_edge
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i8 = shl i32 %15, 8
  %or.i9 = or i32 %shl.i.i8, -2147483648
  %call8.i10 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i9, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext %conv15, i16 noundef zeroext %conv12, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i10)
  %cmp9.i11 = icmp slt i32 %call8.i10, 0
  br i1 %cmp9.i11, label %do.end4.i12.cleanup.sink.split_crit_edge, label %for.cond6

do.end4.i12.cleanup.sink.split_crit_edge:         ; preds = %do.end4.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end4.i12.cleanup.sink.split_crit_edge, %do.end4.i.cleanup.sink.split_crit_edge
  %call8.i10.lcssa.sink = phi i32 [ %call8.i10, %do.end4.i12.cleanup.sink.split_crit_edge ], [ %call8.i, %do.end4.i.cleanup.sink.split_crit_edge ]
  %call16.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i10.lcssa.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.i10.lcssa.sink, %cleanup.sink.split ], [ 0, %for.cond6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_vector(ptr noundef %gspca_dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %do.end4.i.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.end4.i.while.cond_crit_edge ]
  %arrayidx = getelementptr [3 x i16], ptr %data, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.lhs.false:                                    ; preds = %while.cond
  %arrayidx4 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp6.not = icmp eq i16 %3, 0
  br i1 %cmp6.not, label %lor.rhs, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx9 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp11.not = icmp eq i16 %5, 0
  br i1 %cmp11.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge, %while.cond.while.body_crit_edge
  %arrayidx16 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 2
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx16, align 2
  %arrayidx18 = getelementptr [3 x i16], ptr %data, i32 %i.0, i32 1
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx18, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp.i = icmp sgt i32 %10, 6
  br i1 %cmp.i, label %do.end.i, label %while.body.do.end4.i_crit_edge

while.body.do.end4.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %7 to i32
  %conv2.i = zext i16 %9 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef %conv2.i) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %while.body.do.end4.i_crit_edge
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv7.i = trunc i16 %1 to i8
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext %conv7.i, i8 noundef zeroext 64, i16 noundef zeroext %9, i16 noundef zeroext %7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  %cmp9.i = icmp slt i32 %call8.i, 0
  %inc = add i32 %i.0, 1
  br i1 %cmp9.i, label %reg_w.exit.thread, label %do.end4.i.while.cond_crit_edge

do.end4.i.while.cond_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

reg_w.exit.thread:                                ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i) #8
  br label %cleanup

cleanup:                                          ; preds = %reg_w.exit.thread, %lor.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spca500_full_reset(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %cmp.i = icmp sgt i32 %0, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end4.i_crit_edge

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i, i32 noundef 1, i32 noundef 0) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or.i, i8 noundef zeroext -32, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %reg_w.exit.thread, label %if.end

reg_w.exit.thread:                                ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.end4.i
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end
  %dec4.i = phi i32 [ 19, %if.end ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i.i, align 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %12 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or2.i.i, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %reg_r_12.exit.i.thread, label %reg_r_12.exit.i

reg_r_12.exit.i.thread:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i) #8
  br label %if.end.i

reg_r_12.exit.i:                                  ; preds = %while.body.i
  %13 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %16 to i32
  %shl.i.i25 = shl nuw nsw i32 %conv9.i.i, 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %conv12.i.i = zext i8 %18 to i32
  %add.i.i = or i32 %shl.i.i25, %conv12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp1.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp1.i, label %if.end4, label %reg_r_12.exit.i.if.end.i_crit_edge

reg_r_12.exit.i.if.end.i_crit_edge:               ; preds = %reg_r_12.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %reg_r_12.exit.i.if.end.i_crit_edge, %reg_r_12.exit.i.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i = add nsw i32 %dec4.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %reg_r_12.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp.i26 = icmp sgt i32 %19, 6
  br i1 %cmp.i26, label %do.end.i29, label %if.end4.do.end4.i35_crit_edge

if.end4.do.end4.i35_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i35

do.end.i29:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %name.i27 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i27, i32 noundef 0, i32 noundef 0) #8
  br label %do.end4.i35

do.end4.i35:                                      ; preds = %do.end.i29, %if.end4.do.end4.i35_crit_edge
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i.i31 = shl i32 %23, 8
  %or.i32 = or i32 %shl.i.i31, -2147483648
  %call8.i33 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %or.i32, i8 noundef zeroext -32, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i33)
  %cmp9.i34 = icmp slt i32 %call8.i33, 0
  br i1 %cmp9.i34, label %reg_w.exit38.thread, label %do.end4.i35.while.body.i47_crit_edge

do.end4.i35.while.body.i47_crit_edge:             ; preds = %do.end4.i35
  br label %while.body.i47

reg_w.exit38.thread:                              ; preds = %do.end4.i35
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call8.i33) #8
  br label %cleanup

while.body.i47:                                   ; preds = %if.end.i61.while.body.i47_crit_edge, %do.end4.i35.while.body.i47_crit_edge
  %dec4.i41 = phi i32 [ %dec.i59, %if.end.i61.while.body.i47_crit_edge ], [ 19, %do.end4.i35.while.body.i47_crit_edge ]
  %24 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx.i.i42 = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.i.i42, align 1
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i.i43 = shl i32 %30, 8
  %or2.i.i44 = or i32 %shl.i.i.i43, -2147483520
  %31 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.i45 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or2.i.i44, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i45)
  %cmp.i.i46 = icmp slt i32 %call4.i.i45, 0
  br i1 %cmp.i.i46, label %reg_r_12.exit.i58.thread, label %reg_r_12.exit.i58

reg_r_12.exit.i58.thread:                         ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %call4.i.i45) #8
  br label %if.end.i61

reg_r_12.exit.i58:                                ; preds = %while.body.i47
  %32 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx8.i.i50 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx8.i.i50 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx8.i.i50, align 1
  %conv9.i.i51 = zext i8 %35 to i32
  %shl.i.i52 = shl nuw nsw i32 %conv9.i.i51, 8
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %33, align 1
  %conv12.i.i53 = zext i8 %37 to i32
  %add.i.i54 = or i32 %shl.i.i52, %conv12.i.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i54)
  %cmp1.i57 = icmp eq i32 %add.i.i54, 0
  br i1 %cmp1.i57, label %reg_r_12.exit.i58.cleanup_crit_edge, label %reg_r_12.exit.i58.if.end.i61_crit_edge

reg_r_12.exit.i58.if.end.i61_crit_edge:           ; preds = %reg_r_12.exit.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i61

reg_r_12.exit.i58.cleanup_crit_edge:              ; preds = %reg_r_12.exit.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i61:                                       ; preds = %reg_r_12.exit.i58.if.end.i61_crit_edge, %reg_r_12.exit.i58.thread
  tail call void @msleep(i32 noundef 50) #5
  %dec.i59 = add nsw i32 %dec4.i41, -1
  %cmp.not.i60 = icmp eq i32 %dec.i59, 0
  br i1 %cmp.not.i60, label %do.end, label %if.end.i61.while.body.i47_crit_edge

if.end.i61.while.body.i47_crit_edge:              ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i47

do.end:                                           ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %reg_r_12.exit.i58.cleanup_crit_edge, %reg_w.exit38.thread, %if.end.i.cleanup_crit_edge, %reg_w.exit.thread
  %retval.0 = phi i32 [ -5, %do.end ], [ %call8.i, %reg_w.exit.thread ], [ %call8.i33, %reg_w.exit38.thread ], [ 0, %reg_r_12.exit.i58.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !153, !155, !157, !158, !159, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca500.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca500.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca500.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca500__307_979_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca500__307_979_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca500.c", i32 979, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca500.c", i32 968, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca500.c", i32 967, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca500.c", i32 928, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca500.c", i32 45, i32 37}
!19 = !{ptr @sif_mode, !20, !"sif_mode", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca500.c", i32 58, i32 37}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/spca500.c", i32 582, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sd_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/spca500.c", i32 587, i32 2}
!29 = !{ptr @sd_init._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_init._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/spca500.c", i32 424, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @spca500_clksmart310_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @spca500_clksmart310_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/spca500.c", i32 321, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @reg_w._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @reg_w._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/spca500.c", i32 329, i32 3}
!43 = !{ptr @reg_w._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @reg_w._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/spca500.c", i32 417, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @spca500_ping310._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @spca500_ping310._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sd_init_controls._key, !51, !"_key", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/spca500.c", i32 912, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/spca500.c", i32 921, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sd_init_controls._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sd_init_controls._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @sd_ctrl_ops, !59, !"sd_ctrl_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/spca500.c", i32 903, i32 35}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/spca500.c", i32 614, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sd_start._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @sd_start._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/spca500.c", i32 616, i32 2}
!67 = !{ptr @sd_start._entry.22, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sd_start._entry_ptr.24, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/spca500.c", i32 631, i32 4}
!71 = !{ptr @sd_start._entry.25, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sd_start._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/spca500.c", i32 639, i32 4}
!75 = !{ptr @sd_start._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_start._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/spca500.c", i32 652, i32 4}
!79 = !{ptr @sd_start._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sd_start._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @sd_start._entry.34, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/spca500.c", i32 658, i32 4}
!83 = !{ptr @sd_start._entry_ptr.35, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @sd_start._entry.36, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/spca500.c", i32 667, i32 4}
!86 = !{ptr @sd_start._entry_ptr.37, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/spca500.c", i32 681, i32 4}
!89 = !{ptr @sd_start._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sd_start._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sd_start._entry.41, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/spca500.c", i32 686, i32 4}
!93 = !{ptr @sd_start._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @sd_start._entry.43, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/spca500.c", i32 692, i32 4}
!96 = !{ptr @sd_start._entry_ptr.44, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sd_start._entry.45, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/spca500.c", i32 701, i32 4}
!99 = !{ptr @sd_start._entry_ptr.46, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @sd_start._entry.47, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/gspca/spca500.c", i32 714, i32 4}
!102 = !{ptr @sd_start._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @sd_start._entry.49, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/spca500.c", i32 722, i32 4}
!105 = !{ptr @sd_start._entry_ptr.50, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @sd_start._entry.51, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/gspca/spca500.c", i32 731, i32 4}
!108 = !{ptr @sd_start._entry_ptr.52, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @sd_start._entry.53, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/spca500.c", i32 757, i32 4}
!111 = !{ptr @sd_start._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @sd_start._entry.55, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/gspca/spca500.c", i32 787, i32 4}
!114 = !{ptr @sd_start._entry_ptr.56, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @jpeg_head, !116, !"jpeg_head", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!117 = !{ptr @qtable_creative_pccam, !118, !"qtable_creative_pccam", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/spca500.c", i32 239, i32 19}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/gspca/spca500.c", i32 351, i32 3}
!121 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @reg_r_12._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @reg_r_12._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/spca500.c", i32 495, i32 3}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @spca500_synch310._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @spca500_synch310._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/gspca/spca500.c", i32 503, i32 2}
!131 = !{ptr @spca500_synch310._entry.61, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @spca500_synch310._entry_ptr.63, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @spca500_synch310._entry.64, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/gspca/spca500.c", i32 510, i32 3}
!135 = !{ptr @spca500_synch310._entry_ptr.65, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @spca500_visual_defaults, !137, !"spca500_visual_defaults", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/gspca/spca500.c", i32 86, i32 20}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/spca500.c", i32 479, i32 3}
!140 = !{ptr @spca500_full_reset._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @spca500_full_reset._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @qtable_kodak_ez200, !143, !"qtable_kodak_ez200", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/spca500.c", i32 260, i32 19}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/gspca/spca500.c", i32 535, i32 3}
!146 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @spca500_reinit._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @spca500_reinit._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @qtable_pocketdv, !150, !"qtable_pocketdv", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/gspca/spca500.c", i32 281, i32 19}
!151 = !{ptr @Clicksmart510_defaults, !152, !"Clicksmart510_defaults", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/gspca/spca500.c", i32 110, i32 20}
!153 = !{ptr @sd_pkt_scan.ffd9, !154, !"ffd9", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/gspca/spca500.c", i32 825, i32 14}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/gspca/spca500.c", i32 815, i32 2}
!157 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sd_stopN._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @sd_stopN._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @device_table, !161, !"device_table", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/gspca/spca500.c", i32 939, i32 35}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i8 0, i8 2}
