; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_ov9650.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_ov9650.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m5602_sensor = type { [32 x i8], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, ptr, i8, i32, ptr, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.anon.101 = type { ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@force_sensor = external dso_local local_unnamed_addr global i32, align 4
@ov9650_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016gspca_m5602: Forcing an %s sensor\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov9650_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/gspca/m5602/m5602_ov9650.c\00", [51 x i8] zeroinitializer }, align 32
@ov9650_probe._entry_ptr = internal global ptr @ov9650_probe._entry, section ".printk_index", align 4
@ov9650 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"OV9650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 96, i8 1, ptr @ov9650_probe, ptr @ov9650_init, ptr @ov9650_init_controls, ptr @ov9650_start, ptr @ov9650_stop, ptr @ov9650_disconnect }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@ov9650_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Probing for an ov9650 sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@ov9650_probe._entry_ptr.5 = internal global ptr @ov9650_probe._entry.3, section ".printk_index", align 4
@preinit_ov9650 = internal constant { [17 x [3 x i8]], [45 x i8] } { [17 x [3 x i8]] [[3 x i8] c"\00\13\02", [3 x i8] c"\00\12\B0", [3 x i8] c"\00\15\00", [3 x i8] c"\00\14\B0", [3 x i8] c"\00`\C0", [3 x i8] c"\00\01\00", [3 x i8] c"\00\00\08", [3 x i8] c"\00w\05", [3 x i8] c"\00v\04", [3 x i8] c"\00t\06", [3 x i8] c"\00r\06", [3 x i8] c"\00p\00", [3 x i8] c"\00v\00", [3 x i8] c"\00i\0A", [3 x i8] c"\01\12\80", [3 x i8] c"\01\11\80", [3 x i8] c"\019@"], [45 x i8] zeroinitializer }, align 32
@ov9650_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_m5602: Detected an ov9650 sensor\0A\00", [54 x i8] zeroinitializer }, align 32
@ov9650_probe._entry_ptr.8 = internal global ptr @ov9650_probe._entry.6, section ".printk_index", align 4
@ov9650_modes = internal global { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 825770306, i32 1, i32 176, i32 25344, i32 8, i32 9, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 825770306, i32 1, i32 320, i32 76800, i32 8, i32 8, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 825770306, i32 1, i32 352, i32 101376, i32 8, i32 9, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 9, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@dump_sensor = external dso_local local_unnamed_addr global i8, align 1
@init_ov9650 = internal constant { [60 x [3 x i8]], [44 x i8] } { [60 x [3 x i8]] [[3 x i8] c"\00\13\02", [3 x i8] c"\00\12\B0", [3 x i8] c"\00\15\00", [3 x i8] c"\00\14\B0", [3 x i8] c"\00`\C0", [3 x i8] c"\00\01\00", [3 x i8] c"\00\00\08", [3 x i8] c"\00w\05", [3 x i8] c"\00v\04", [3 x i8] c"\00t\06", [3 x i8] c"\00r\06", [3 x i8] c"\00p\00", [3 x i8] c"\00v\00", [3 x i8] c"\00i\0A", [3 x i8] c"\01\12\80", [3 x i8] c"\01\12\80", [3 x i8] c"\01\11\80", [3 x i8] c"\019@", [3 x i8] c"\01\13\C0", [3 x i8] c"\013\10", [3 x i8] c"\014\BF", [3 x i8] c"\018\81", [3 x i8] c"\01A\00", [3 x i8] c"\01=\19", [3 x i8] c"\01:\0C", [3 x i8] c"\01\8E\00", [3 x i8] c"\01<s", [3 x i8] c"\01\8F\DF", [3 x i8] c"\01\8B\06", [3 x i8] c"\015\91", [3 x i8] c"\01\16\06", [3 x i8] c"\01\94\99", [3 x i8] c"\01\95\99", [3 x i8] c"\01\96\04", [3 x i8] c"\01@\00", [3 x i8] c"\01\0FK", [3 x i8] c"\01'\A0", [3 x i8] c"\01(\A0", [3 x i8] c"\01)\00", [3 x i8] c"\01,\A0", [3 x i8] c"\01,\00", [3 x i8] c"\01\A5\80", [3 x i8] c"\01\A9\98", [3 x i8] c"\01$h", [3 x i8] c"\01%\\", [3 x i8] c"\01&\C3", [3 x i8] c"\01\14n", [3 x i8] c"\01\15B", [3 x i8] c"\01\17\1A", [3 x i8] c"\01\18\BF", [3 x i8] c"\012\B2", [3 x i8] c"\01\19\02", [3 x i8] c"\01\1A~", [3 x i8] c"\01\03\10", [3 x i8] c"\017\04", [3 x i8] c"\01i@", [3 x i8] c"\01\8C#", [3 x i8] c"\01\0C\04", [3 x i8] c"\01\0D\80", [3 x i8] c"\01\09\11"], [44 x i8] zeroinitializer }, align 32
@ov9650_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m5602_ov9650:370:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@ov9650_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov9650_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov9650_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_m5602: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov9650_init_controls\00", [43 x i8] zeroinitializer }, align 32
@ov9650_init_controls._entry_ptr = internal global ptr @ov9650_init_controls._entry, section ".printk_index", align 4
@res_init_ov9650 = internal constant { [6 x [3 x i8]], [46 x i8] } { [6 x [3 x i8]] [[3 x i8] c"\01\09\01", [3 x i8] c"\00\02\82", [3 x i8] c"\00\03\00", [3 x i8] c"\00\04\82", [3 x i8] c"\00\05\00", [3 x i8] c"\00\0A\01"], [46 x i8] zeroinitializer }, align 32
@ov9650_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Configuring camera for VGA mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov9650_start\00", [19 x i8] zeroinitializer }, align 32
@ov9650_start._entry_ptr = internal global ptr @ov9650_start._entry, section ".printk_index", align 4
@ov9650_start._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Configuring camera for CIF mode\0A\00", [57 x i8] zeroinitializer }, align 32
@ov9650_start._entry_ptr.16 = internal global ptr @ov9650_start._entry.14, section ".printk_index", align 4
@ov9650_start._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Configuring camera for QVGA mode\0A\00", [56 x i8] zeroinitializer }, align 32
@ov9650_start._entry_ptr.19 = internal global ptr @ov9650_start._entry.17, section ".printk_index", align 4
@ov9650_start._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Configuring camera for QCIF mode\0A\00", [56 x i8] zeroinitializer }, align 32
@ov9650_start._entry_ptr.22 = internal global ptr @ov9650_start._entry.20, section ".printk_index", align 4
@ov9650_set_auto_white_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Set auto white balance to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ov9650_set_auto_white_balance\00", [34 x i8] zeroinitializer }, align 32
@ov9650_set_auto_white_balance._entry_ptr = internal global ptr @ov9650_set_auto_white_balance._entry, section ".printk_index", align 4
@ov9650_set_red_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set red gain to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ov9650_set_red_balance\00", [41 x i8] zeroinitializer }, align 32
@ov9650_set_red_balance._entry_ptr = internal global ptr @ov9650_set_red_balance._entry, section ".printk_index", align 4
@ov9650_set_blue_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Set blue gain to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ov9650_set_blue_balance\00", [40 x i8] zeroinitializer }, align 32
@ov9650_set_blue_balance._entry_ptr = internal global ptr @ov9650_set_blue_balance._entry, section ".printk_index", align 4
@ov9650_set_auto_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Set auto exposure control to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ov9650_set_auto_exposure\00", [39 x i8] zeroinitializer }, align 32
@ov9650_set_auto_exposure._entry_ptr = internal global ptr @ov9650_set_auto_exposure._entry, section ".printk_index", align 4
@ov9650_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set exposure to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov9650_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@ov9650_set_exposure._entry_ptr = internal global ptr @ov9650_set_exposure._entry, section ".printk_index", align 4
@ov9650_set_auto_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Set auto gain control to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov9650_set_auto_gain\00", [43 x i8] zeroinitializer }, align 32
@ov9650_set_auto_gain._entry_ptr = internal global ptr @ov9650_set_auto_gain._entry, section ".printk_index", align 4
@ov9650_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Setting gain to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov9650_set_gain\00", [16 x i8] zeroinitializer }, align 32
@ov9650_set_gain._entry_ptr = internal global ptr @ov9650_set_gain._entry, section ".printk_index", align 4
@ov9650_set_hvflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Set hvflip to %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ov9650_set_hvflip\00", [46 x i8] zeroinitializer }, align 32
@ov9650_set_hvflip._entry_ptr = internal global ptr @ov9650_set_hvflip._entry, section ".printk_index", align 4
@ov9650_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016gspca_m5602: Dumping the ov9650 register state\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov9650_dump_registers\00", [42 x i8] zeroinitializer }, align 32
@ov9650_dump_registers._entry_ptr = internal global ptr @ov9650_dump_registers._entry, section ".printk_index", align 4
@ov9650_dump_registers._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_m5602: register 0x%x contains 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@ov9650_dump_registers._entry_ptr.52 = internal global ptr @ov9650_dump_registers._entry.50, section ".printk_index", align 4
@ov9650_dump_registers._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gspca_m5602: ov9650 register state dump complete\0A\00", [44 x i8] zeroinitializer }, align 32
@ov9650_dump_registers._entry_ptr.55 = internal global ptr @ov9650_dump_registers._entry.53, section ".printk_index", align 4
@ov9650_dump_registers._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016gspca_m5602: Probing for which registers that are read/write\0A\00", [32 x i8] zeroinitializer }, align 32
@ov9650_dump_registers._entry_ptr.58 = internal global ptr @ov9650_dump_registers._entry.56, section ".printk_index", align 4
@ov9650_dump_registers._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is writeable\0A\00", [53 x i8] zeroinitializer }, align 32
@ov9650_dump_registers._entry_ptr.61 = internal global ptr @ov9650_dump_registers._entry.59, section ".printk_index", align 4
@ov9650_dump_registers._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is read only\0A\00", [53 x i8] zeroinitializer }, align 32
@ov9650_dump_registers._entry_ptr.64 = internal global ptr @ov9650_dump_registers._entry.62, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 176, i64 320, i64 352, i64 640]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 9963788, i64 9963794, i64 9963796, i64 10094849]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 302, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"ov9650\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_ov9650.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 143, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 310, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"preinit_ov9650\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 23, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 333, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"ov9650_modes\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 246, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"init_ov9650\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 48, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 370, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"ov9650_ctrl_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 290, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 398, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"res_init_ov9650\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 164, i32 28 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 504, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 512, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 520, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 528, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 684, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 613, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 626, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 665, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 557, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 702, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 585, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 641, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 758, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 762, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 765, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 767, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 777, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_ov9650.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 779, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @ov9650_dump_registers._entry, ptr @ov9650_dump_registers._entry.50, ptr @ov9650_dump_registers._entry.53, ptr @ov9650_dump_registers._entry.56, ptr @ov9650_dump_registers._entry.59, ptr @ov9650_dump_registers._entry.62, ptr @ov9650_dump_registers._entry_ptr, ptr @ov9650_dump_registers._entry_ptr.52, ptr @ov9650_dump_registers._entry_ptr.55, ptr @ov9650_dump_registers._entry_ptr.58, ptr @ov9650_dump_registers._entry_ptr.61, ptr @ov9650_dump_registers._entry_ptr.64, ptr @ov9650_init_controls._entry, ptr @ov9650_init_controls._entry_ptr, ptr @ov9650_probe._entry, ptr @ov9650_probe._entry.3, ptr @ov9650_probe._entry.6, ptr @ov9650_probe._entry_ptr, ptr @ov9650_probe._entry_ptr.5, ptr @ov9650_probe._entry_ptr.8, ptr @ov9650_set_auto_exposure._entry, ptr @ov9650_set_auto_exposure._entry_ptr, ptr @ov9650_set_auto_gain._entry, ptr @ov9650_set_auto_gain._entry_ptr, ptr @ov9650_set_auto_white_balance._entry, ptr @ov9650_set_auto_white_balance._entry_ptr, ptr @ov9650_set_blue_balance._entry, ptr @ov9650_set_blue_balance._entry_ptr, ptr @ov9650_set_exposure._entry, ptr @ov9650_set_exposure._entry_ptr, ptr @ov9650_set_gain._entry, ptr @ov9650_set_gain._entry_ptr, ptr @ov9650_set_hvflip._entry, ptr @ov9650_set_hvflip._entry_ptr, ptr @ov9650_set_red_balance._entry, ptr @ov9650_set_red_balance._entry_ptr, ptr @ov9650_start._entry, ptr @ov9650_start._entry.14, ptr @ov9650_start._entry.17, ptr @ov9650_start._entry.20, ptr @ov9650_start._entry_ptr, ptr @ov9650_start._entry_ptr.16, ptr @ov9650_start._entry_ptr.19, ptr @ov9650_start._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ov9650, ptr @.str.4, ptr @preinit_ov9650, ptr @.str.7, ptr @ov9650_modes, ptr @init_ov9650, ptr @ov9650_init_controls._key, ptr @.str.9, ptr @ov9650_ctrl_ops, ptr @.str.10, ptr @.str.11, ptr @res_init_ov9650, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preinit_ov9650 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_modes to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ov9650 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_init_ov9650 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_start._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_start._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_start._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_auto_white_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_red_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_blue_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_auto_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_auto_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_set_hvflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_dump_registers._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_dump_registers._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_dump_registers._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_dump_registers._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650_dump_registers._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov9650_probe(ptr noundef %sd) #0 align 64 {
entry:
  %prod_id = alloca i8, align 1
  %ver_id = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prod_id) #4
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %prod_id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver_id) #4
  %1 = ptrtoint ptr %ver_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ver_id, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_sensor to i32))
  %2 = load i32, ptr @force_sensor, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %do.body3
    i32 1, label %do.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @ov9650) #7
  br label %sensor_found

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %do.end8, label %do.body3.for.body.preheader_crit_edge

do.body3.for.body.preheader_crit_edge:            ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end8, %do.body3.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end33.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end33.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %arrayidx = getelementptr [17 x [3 x i8]], ptr @preinit_ov9650, i32 0, i32 %indvars.iv
  %arrayidx17 = getelementptr [17 x [3 x i8]], ptr @preinit_ov9650, i32 0, i32 %indvars.iv, i32 2
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx17, align 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %data, align 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp22 = icmp eq i8 %9, 1
  %arrayidx27 = getelementptr [17 x [3 x i8]], ptr @preinit_ov9650, i32 0, i32 %indvars.iv, i32 1
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx27, align 1
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %11, ptr noundef nonnull %data, i8 noundef zeroext 1) #4
  br label %if.end33

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %11, i8 noundef zeroext %6) #4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then24
  %err.1 = phi i32 [ %call28, %if.then24 ], [ %call32, %if.else ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %indvars.iv)
  %cmp14 = icmp ult i32 %indvars.iv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool16.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp14, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.end33.for.body_crit_edge, label %for.end

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp34 = icmp slt i32 %err.1, 0
  br i1 %cmp34, label %for.end.cleanup_crit_edge, label %if.end37

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %for.end
  %call38 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 10, ptr noundef nonnull %prod_id, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 11, ptr noundef nonnull %ver_id, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %12 = ptrtoint ptr %prod_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %prod_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %13)
  %cmp47 = icmp eq i8 %13, -106
  br i1 %cmp47, label %land.lhs.true, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end45
  %14 = ptrtoint ptr %ver_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ver_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %15)
  %cmp50 = icmp eq i8 %15, 82
  br i1 %cmp50, label %do.end55, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end55:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %sensor_found

sensor_found:                                     ; preds = %do.end55, %do.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %16 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ov9650_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %sensor_found, %land.lhs.true.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sensor_found ], [ -19, %entry.cleanup_crit_edge ], [ %err.1, %for.end.cleanup_crit_edge ], [ -19, %if.end37.cleanup_crit_edge ], [ -19, %if.end41.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver_id) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prod_id) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_bridge(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov9650_init(ptr noundef %sd) #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  %old_value.i = alloca i8, align 1
  %ctrl_value.i = alloca i8, align 1
  %test_value.i = alloca [2 x i8], align 2
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dump_sensor to i32))
  %0 = load i8, ptr @dump_sensor, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %address.062.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #4
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %value.i, align 1, !annotation !146
  %conv.i = trunc i32 %address.062.i to i8
  %call1.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv.i, ptr noundef nonnull %value.i, i8 noundef zeroext 1) #4
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value.i, align 1
  %conv6.i = zext i8 %3 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %address.062.i, i32 noundef %conv6.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #4
  %inc.i = add nuw nsw i32 %address.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 169
  br i1 %exitcond.not.i, label %do.end10.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end10.i:                                       ; preds = %for.body.i
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #7
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %do.end10.i
  %address.163.i = phi i32 [ 0, %do.end10.i ], [ %inc45.i, %for.body21.i.for.body21.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_value.i) #4
  %4 = ptrtoint ptr %old_value.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %old_value.i, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_value.i) #4
  %5 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ctrl_value.i, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %test_value.i) #4
  %6 = ptrtoint ptr %test_value.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %test_value.i, align 2
  %conv22.i = trunc i32 %address.163.i to i8
  %call23.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #4
  %call25.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %test_value.i, i8 noundef zeroext 1) #4
  %call27.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %ctrl_value.i, i8 noundef zeroext 1) #4
  %7 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_value.i, align 1
  %9 = ptrtoint ptr %test_value.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %test_value.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp30.i = icmp eq i8 %8, %10
  %.str.60..str.63.i = select i1 %cmp30.i, ptr @.str.60, ptr @.str.63
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.60..str.63.i, i32 noundef %address.163.i) #7
  %call43.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %test_value.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_value.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_value.i) #4
  %inc45.i = add nuw nsw i32 %address.163.i, 1
  %exitcond65.not.i = icmp eq i32 %inc45.i, 255
  br i1 %exitcond65.not.i, label %for.body21.i.for.body.preheader_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body21.i

for.body21.i.for.body.preheader_crit_edge:        ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.body21.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [60 x [3 x i8]], ptr @init_ov9650, i32 0, i32 %i.021
  %arrayidx2 = getelementptr [60 x [3 x i8]], ptr @init_ov9650, i32 0, i32 %i.021, i32 2
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2, align 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %data, align 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp5 = icmp eq i8 %15, 1
  %arrayidx9 = getelementptr [60 x [3 x i8]], ptr @init_ov9650, i32 0, i32 %i.021, i32 1
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx9, align 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %17, ptr noundef nonnull %data, i8 noundef zeroext 1) #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %17, i8 noundef zeroext %12) #4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then7
  %err.1 = phi i32 [ %call, %if.then7 ], [ %call12, %if.else ]
  %inc = add nuw nsw i32 %i.021, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %i.021)
  %cmp = icmp ult i32 %i.021, 59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool1.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov9650_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 9, ptr noundef nonnull @ov9650_init_controls._key, ptr noundef nonnull @.str.9) #4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #4
  %1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %1, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 112) #4
  %red_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %red_bal to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %red_bal, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 32) #4
  %blue_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %blue_bal to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %blue_bal, align 8
  %call6 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #4
  %5 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %5, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 511, i64 noundef 4, i64 noundef 511) #4
  %expo = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %expo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %expo, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #4
  %8 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %8, align 8
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 20) #4
  %gain = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %gain, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %11 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %11, align 8
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov9650_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #4
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %vflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %5, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %8, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %17, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov9650_start(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !146
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %1 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cam1, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %3 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr %struct.v4l2_pix_format, ptr %2, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %height9 = getelementptr %struct.v4l2_pix_format, ptr %2, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height9, align 4
  %priv = getelementptr %struct.v4l2_pix_format, ptr %2, i32 %idxprom, i32 7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priv, align 4
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vflip, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp ne i32 %14, 0
  %dec = sext i1 %tobool16.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 321, i32 %6)
  %cmp = icmp slt i32 %6, 321
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0298 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx27 = getelementptr [6 x [3 x i8]], ptr @res_init_ov9650, i32 0, i32 %i.0298
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %16, label %for.body.for.inc_crit_edge [
    i8 0, label %if.then31
    i8 1, label %if.then42
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx33 = getelementptr [6 x [3 x i8]], ptr @res_init_ov9650, i32 0, i32 %i.0298, i32 1
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx33, align 1
  %arrayidx35 = getelementptr [6 x [3 x i8]], ptr @res_init_ov9650, i32 0, i32 %i.0298, i32 2
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 1
  %call36 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %19, i8 noundef zeroext %21) #4
  br label %for.inc

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx44 = getelementptr [6 x [3 x i8]], ptr @res_init_ov9650, i32 0, i32 %i.0298, i32 2
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %data, align 1
  %arrayidx46 = getelementptr [6 x [3 x i8]], ptr @res_init_ov9650, i32 0, i32 %i.0298, i32 1
  %25 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx46, align 1
  %call47 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %26, ptr noundef nonnull %data, i8 noundef zeroext 1) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %if.then31, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %call36, %if.then31 ], [ %call47, %if.then42 ], [ 0, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0298, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0298)
  %cmp25 = icmp ult i32 %i.0298, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool26.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp25, i1 %tobool26.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %spec.select297 = add i32 %10, %dec
  %spec.select = select i1 %cmp, i32 49, i32 98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp50 = icmp slt i32 %err.1, 0
  br i1 %cmp50, label %for.end.cleanup_crit_edge, label %if.end53

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %for.end
  %27 = lshr i32 %spec.select297, 8
  %conv54 = trunc i32 %27 to i8
  %call55 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv54) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end53.cleanup_crit_edge, label %if.end59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %conv61 = trunc i32 %spec.select297 to i8
  %call62 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv61) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end59.cleanup_crit_edge, label %if.end66

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %call67 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %28 = lshr i32 %8, 8
  %conv74 = trunc i32 %28 to i8
  %call75 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv74) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end71.cleanup_crit_edge, label %if.end79

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  %conv81 = trunc i32 %8 to i8
  %call82 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv81) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end79.cleanup_crit_edge, label %for.cond87.preheader

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond87.preheader:                             ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool91.not300 = icmp eq i32 %call82, 0
  br i1 %tobool91.not300, label %for.body94, label %for.cond87.preheader.if.end102_crit_edge

for.cond87.preheader.if.end102_crit_edge:         ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

for.body94:                                       ; preds = %for.cond87.preheader
  %call95 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool91.not = icmp eq i32 %call95, 0
  br i1 %tobool91.not, label %for.body94.1, label %for.body94.for.end98_crit_edge

for.body94.for.end98_crit_edge:                   ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end98

for.body94.1:                                     ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #6
  %call95.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #4
  br label %for.end98

for.end98:                                        ; preds = %for.body94.1, %for.body94.for.end98_crit_edge
  %call95.lcssa = phi i32 [ %call95, %for.body94.for.end98_crit_edge ], [ %call95.1, %for.body94.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.lcssa)
  %cmp99 = icmp slt i32 %call95.lcssa, 0
  br i1 %cmp99, label %for.end98.cleanup_crit_edge, label %for.end98.if.end102_crit_edge

for.end98.if.end102_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

for.end98.cleanup_crit_edge:                      ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end102:                                        ; preds = %for.end98.if.end102_crit_edge, %for.cond87.preheader.if.end102_crit_edge
  %call103 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end102.cleanup_crit_edge, label %if.end107

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end107:                                        ; preds = %if.end102
  %call108 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.end107.cleanup_crit_edge, label %if.end112

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end112:                                        ; preds = %if.end107
  %call116 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.end112.cleanup_crit_edge, label %if.end120

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end120:                                        ; preds = %if.end112
  %conv122 = trunc i32 %spec.select to i8
  %call123 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv122) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end120.cleanup_crit_edge, label %if.end127

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end127:                                        ; preds = %if.end120
  %add = add i32 %spec.select, %6
  %29 = lshr i32 %add, 8
  %conv130 = trunc i32 %29 to i8
  %call131 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv130) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.end127.cleanup_crit_edge, label %if.end135

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end135:                                        ; preds = %if.end127
  %conv138 = trunc i32 %add to i8
  %call139 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv138) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.end135.cleanup_crit_edge, label %if.end143

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end143:                                        ; preds = %if.end135
  %call144 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.end143.cleanup_crit_edge, label %if.end148

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end148:                                        ; preds = %if.end143
  %30 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %6, label %if.end148.cleanup_crit_edge [
    i32 640, label %do.body
    i32 352, label %do.body159
    i32 320, label %do.body176
    i32 176, label %do.body193
  ]

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp149 = icmp sgt i32 %31, 1
  br i1 %cmp149, label %do.end, label %do.body.do.end156_crit_edge

do.body.do.end156_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end156

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #7
  br label %do.end156

do.end156:                                        ; preds = %do.end, %do.body.do.end156_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 69, ptr %data, align 1
  br label %cleanup.sink.split

do.body159:                                       ; preds = %if.end148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %33 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp160 = icmp sgt i32 %33, 1
  br i1 %cmp160, label %do.end165, label %do.body159.do.end173_crit_edge

do.body159.do.end173_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end173

do.end165:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #6
  %name168 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name168) #7
  br label %do.end173

do.end173:                                        ; preds = %do.end165, %do.body159.do.end173_crit_edge
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 37, ptr %data, align 1
  br label %cleanup.sink.split

do.body176:                                       ; preds = %if.end148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp177 = icmp sgt i32 %35, 1
  br i1 %cmp177, label %do.end182, label %do.body176.do.end190_crit_edge

do.body176.do.end190_crit_edge:                   ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end190

do.end182:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #6
  %name185 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name185) #7
  br label %do.end190

do.end190:                                        ; preds = %do.end182, %do.body176.do.end190_crit_edge
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 21, ptr %data, align 1
  br label %cleanup.sink.split

do.body193:                                       ; preds = %if.end148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp194 = icmp sgt i32 %37, 1
  br i1 %cmp194, label %do.end199, label %do.body193.do.end207_crit_edge

do.body193.do.end207_crit_edge:                   ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end207

do.end199:                                        ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  %name202 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name202) #7
  br label %do.end207

do.end207:                                        ; preds = %do.end199, %do.body193.do.end207_crit_edge
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 13, ptr %data, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end207, %do.end190, %do.end173, %do.end156
  %call157 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 18, ptr noundef nonnull %data, i8 noundef zeroext 1) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end148.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %for.end98.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %for.end.cleanup_crit_edge ], [ %call55, %if.end53.cleanup_crit_edge ], [ %call62, %if.end59.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call75, %if.end71.cleanup_crit_edge ], [ %call82, %if.end79.cleanup_crit_edge ], [ %call95.lcssa, %for.end98.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ %call108, %if.end107.cleanup_crit_edge ], [ %call116, %if.end112.cleanup_crit_edge ], [ %call123, %if.end120.cleanup_crit_edge ], [ %call131, %if.end127.cleanup_crit_edge ], [ %call139, %if.end135.cleanup_crit_edge ], [ %call144, %if.end143.cleanup_crit_edge ], [ %call144, %if.end148.cleanup_crit_edge ], [ %call157, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov9650_stop(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 17, ptr %data, align 1
  %call = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 9, ptr noundef nonnull %data, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ov9650_disconnect(ptr noundef %sd) #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 17, ptr %data.i, align 1
  %call.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 9, ptr noundef nonnull %data.i, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sensor, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov9650_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %i2c_data.i99 = alloca i8, align 1
  %i2c_data.i86 = alloca i8, align 1
  %i2c_data.i75 = alloca i8, align 1
  %i2c_data.i65 = alloca i8, align 1
  %i2c_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %streaming = getelementptr i8, ptr %1, i32 238
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963788, label %sw.bb
    i32 10094849, label %sw.bb13
    i32 9963794, label %sw.bb23
    i32 9963796, label %sw.bb34
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i) #4
  %9 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %i2c_data.i, align 1, !annotation !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp sgt i32 %10, 1
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end3.i_crit_edge

sw.bb.do.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i, i32 noundef %8) #7
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb.do.end3.i_crit_edge
  %call4.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %ov9650_set_auto_white_balance.exit.thread, label %ov9650_set_auto_white_balance.exit

ov9650_set_auto_white_balance.exit.thread:        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i) #4
  br label %cleanup

ov9650_set_auto_white_balance.exit:               ; preds = %do.end3.i
  %11 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_data.i, align 1
  %13 = and i8 %12, -3
  %val.tr.i = trunc i32 %8 to i8
  %14 = shl i8 %val.tr.i, 1
  %15 = and i8 %14, 2
  %conv9.i = or i8 %13, %15
  store i8 %conv9.i, ptr %i2c_data.i, align 1
  %call10.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool1.not = icmp eq i32 %call10.i, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %ov9650_set_auto_white_balance.exit.cleanup_crit_edge

ov9650_set_auto_white_balance.exit.cleanup_crit_edge: ; preds = %ov9650_set_auto_white_balance.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %ov9650_set_auto_white_balance.exit
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %red_bal = getelementptr i8, ptr %1, i32 1044
  %18 = ptrtoint ptr %red_bal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %red_bal, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val6, align 4
  %call7 = call fastcc i32 @ov9650_set_red_balance(ptr noundef %add.ptr, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %blue_bal = getelementptr i8, ptr %1, i32 1048
  %22 = ptrtoint ptr %blue_bal to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %blue_bal, align 8
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val11, align 4
  %call12 = call fastcc i32 @ov9650_set_blue_balance(ptr noundef %add.ptr, i32 noundef %25)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i65) #4
  %28 = ptrtoint ptr %i2c_data.i65 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %i2c_data.i65, align 1, !annotation !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i66 = icmp sgt i32 %29, 1
  br i1 %cmp.i66, label %do.end.i69, label %sw.bb13.do.end3.i72_crit_edge

sw.bb13.do.end3.i72_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3.i72

do.end.i69:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %name.i67 = getelementptr i8, ptr %1, i32 -168
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name.i67, i32 noundef %27) #7
  br label %do.end3.i72

do.end3.i72:                                      ; preds = %do.end.i69, %sw.bb13.do.end3.i72_crit_edge
  %call4.i70 = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i65, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i70)
  %cmp5.i71 = icmp slt i32 %call4.i70, 0
  br i1 %cmp5.i71, label %ov9650_set_auto_exposure.exit.thread, label %ov9650_set_auto_exposure.exit

ov9650_set_auto_exposure.exit.thread:             ; preds = %do.end3.i72
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i65) #4
  br label %cleanup

ov9650_set_auto_exposure.exit:                    ; preds = %do.end3.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp8.i = icmp eq i32 %27, 0
  %conv.i = zext i1 %cmp8.i to i8
  %30 = ptrtoint ptr %i2c_data.i65 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i2c_data.i65, align 1
  %32 = and i8 %31, -2
  %or.i = or i8 %32, %conv.i
  store i8 %or.i, ptr %i2c_data.i65, align 1
  %call12.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i65, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i65) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool16.not = icmp eq i32 %call12.i, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %ov9650_set_auto_exposure.exit.cleanup_crit_edge

ov9650_set_auto_exposure.exit.cleanup_crit_edge:  ; preds = %ov9650_set_auto_exposure.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false17:                                  ; preds = %ov9650_set_auto_exposure.exit
  %33 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %lor.lhs.false17.cleanup_crit_edge, label %if.end20

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false17
  %expo = getelementptr i8, ptr %1, i32 1060
  %35 = ptrtoint ptr %expo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %expo, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val21, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i75) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %39 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i76 = icmp sgt i32 %39, 1
  br i1 %cmp.i76, label %do.end.i79, label %if.end20.do.end3.i83_crit_edge

if.end20.do.end3.i83_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3.i83

do.end.i79:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %name.i77 = getelementptr i8, ptr %1, i32 -168
  %call.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name.i77, i32 noundef %38) #7
  br label %do.end3.i83

do.end3.i83:                                      ; preds = %do.end.i79, %if.end20.do.end3.i83_crit_edge
  %40 = lshr i32 %38, 10
  %41 = trunc i32 %40 to i8
  %conv.i80 = and i8 %41, 63
  %42 = ptrtoint ptr %i2c_data.i75 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i80, ptr %i2c_data.i75, align 1
  %call4.i81 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -95, ptr noundef nonnull %i2c_data.i75, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i81)
  %cmp5.i82 = icmp slt i32 %call4.i81, 0
  br i1 %cmp5.i82, label %do.end3.i83.ov9650_set_exposure.exit_crit_edge, label %if.end8.i

do.end3.i83.ov9650_set_exposure.exit_crit_edge:   ; preds = %do.end3.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %ov9650_set_exposure.exit

if.end8.i:                                        ; preds = %do.end3.i83
  %43 = lshr i32 %38, 2
  %conv11.i = trunc i32 %43 to i8
  %44 = ptrtoint ptr %i2c_data.i75 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv11.i, ptr %i2c_data.i75, align 1
  %call12.i84 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 16, ptr noundef nonnull %i2c_data.i75, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i84)
  %cmp13.i = icmp slt i32 %call12.i84, 0
  br i1 %cmp13.i, label %if.end8.i.ov9650_set_exposure.exit_crit_edge, label %if.end16.i

if.end8.i.ov9650_set_exposure.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ov9650_set_exposure.exit

if.end16.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = trunc i32 %38 to i8
  %conv18.i = and i8 %45, 3
  %46 = ptrtoint ptr %i2c_data.i75 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv18.i, ptr %i2c_data.i75, align 1
  %call19.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 4, ptr noundef nonnull %i2c_data.i75, i8 noundef zeroext 1) #4
  br label %ov9650_set_exposure.exit

ov9650_set_exposure.exit:                         ; preds = %if.end16.i, %if.end8.i.ov9650_set_exposure.exit_crit_edge, %do.end3.i83.ov9650_set_exposure.exit_crit_edge
  %retval.0.i85 = phi i32 [ %call19.i, %if.end16.i ], [ %call4.i81, %do.end3.i83.ov9650_set_exposure.exit_crit_edge ], [ %call12.i84, %if.end8.i.ov9650_set_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i75) #4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %val24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %47 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val24, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i86) #4
  %49 = ptrtoint ptr %i2c_data.i86 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %i2c_data.i86, align 1, !annotation !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.i87 = icmp sgt i32 %50, 1
  br i1 %cmp.i87, label %do.end.i90, label %sw.bb23.do.end3.i93_crit_edge

sw.bb23.do.end3.i93_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3.i93

do.end.i90:                                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  %name.i88 = getelementptr i8, ptr %1, i32 -168
  %call.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i88, i32 noundef %48) #7
  br label %do.end3.i93

do.end3.i93:                                      ; preds = %do.end.i90, %sw.bb23.do.end3.i93_crit_edge
  %call4.i91 = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i86, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i91)
  %cmp5.i92 = icmp slt i32 %call4.i91, 0
  br i1 %cmp5.i92, label %ov9650_set_auto_gain.exit.thread, label %ov9650_set_auto_gain.exit

ov9650_set_auto_gain.exit.thread:                 ; preds = %do.end3.i93
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i86) #4
  br label %cleanup

ov9650_set_auto_gain.exit:                        ; preds = %do.end3.i93
  %51 = ptrtoint ptr %i2c_data.i86 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i2c_data.i86, align 1
  %53 = and i8 %52, -5
  %val.tr.i94 = trunc i32 %48 to i8
  %54 = shl i8 %val.tr.i94, 2
  %55 = and i8 %54, 4
  %conv9.i95 = or i8 %53, %55
  store i8 %conv9.i95, ptr %i2c_data.i86, align 1
  %call10.i96 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i86, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i86) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i96)
  %tobool26.not = icmp eq i32 %call10.i96, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %ov9650_set_auto_gain.exit.cleanup_crit_edge

ov9650_set_auto_gain.exit.cleanup_crit_edge:      ; preds = %ov9650_set_auto_gain.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false27:                                  ; preds = %ov9650_set_auto_gain.exit
  %56 = ptrtoint ptr %val24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool29.not = icmp eq i32 %57, 0
  br i1 %tobool29.not, label %if.end31, label %lor.lhs.false27.cleanup_crit_edge

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #6
  %gain = getelementptr i8, ptr %1, i32 1068
  %58 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gain, align 4
  %val32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %59, i32 0, i32 22
  %60 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val32, align 4
  %call33 = call fastcc i32 @ov9650_set_gain(ptr noundef %add.ptr, i32 noundef %61)
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i99) #4
  %62 = getelementptr i8, ptr %1, i32 1072
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %64, i32 0, i32 22
  %65 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val.i, align 4
  %vflip2.i = getelementptr i8, ptr %1, i32 1076
  %67 = ptrtoint ptr %vflip2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vflip2.i, align 4
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 22
  %69 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %71 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp.i100 = icmp sgt i32 %71, 1
  br i1 %cmp.i100, label %do.end.i103, label %sw.bb34.do.end6.i_crit_edge

sw.bb34.do.end6.i_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end6.i

do.end.i103:                                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #6
  %name.i101 = getelementptr i8, ptr %1, i32 -168
  %call.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i101, i32 noundef %66, i32 noundef %70) #7
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i103, %sw.bb34.do.end6.i_crit_edge
  %shl.i = shl i32 %66, 5
  %shl11.i = shl i32 %70, 4
  %or.i104 = or i32 %shl11.i, %shl.i
  %conv.i105 = trunc i32 %or.i104 to i8
  %72 = ptrtoint ptr %i2c_data.i99 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv.i105, ptr %i2c_data.i99, align 1
  %call12.i106 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 30, ptr noundef nonnull %i2c_data.i99, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i106)
  %cmp13.i107 = icmp slt i32 %call12.i106, 0
  br i1 %cmp13.i107, label %do.end6.i.ov9650_set_hvflip.exit_crit_edge, label %if.end16.i108

do.end6.i.ov9650_set_hvflip.exit_crit_edge:       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ov9650_set_hvflip.exit

if.end16.i108:                                    ; preds = %do.end6.i
  %73 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %streaming, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool17.not.i = icmp eq i8 %74, 0
  br i1 %tobool17.not.i, label %if.end16.i108.ov9650_set_hvflip.exit_crit_edge, label %if.then18.i

if.end16.i108.ov9650_set_hvflip.exit_crit_edge:   ; preds = %if.end16.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %ov9650_set_hvflip.exit

if.then18.i:                                      ; preds = %if.end16.i108
  call void @__sanitizer_cov_trace_pc() #6
  %call19.i109 = call i32 @ov9650_start(ptr noundef %add.ptr) #4
  br label %ov9650_set_hvflip.exit

ov9650_set_hvflip.exit:                           ; preds = %if.then18.i, %if.end16.i108.ov9650_set_hvflip.exit_crit_edge, %do.end6.i.ov9650_set_hvflip.exit_crit_edge
  %retval.0.i110 = phi i32 [ %call12.i106, %do.end6.i.ov9650_set_hvflip.exit_crit_edge ], [ %call19.i109, %if.then18.i ], [ %call12.i106, %if.end16.i108.ov9650_set_hvflip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i99) #4
  br label %cleanup

cleanup:                                          ; preds = %ov9650_set_hvflip.exit, %if.end31, %lor.lhs.false27.cleanup_crit_edge, %ov9650_set_auto_gain.exit.cleanup_crit_edge, %ov9650_set_auto_gain.exit.thread, %ov9650_set_exposure.exit, %lor.lhs.false17.cleanup_crit_edge, %ov9650_set_auto_exposure.exit.cleanup_crit_edge, %ov9650_set_auto_exposure.exit.thread, %if.end10, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ov9650_set_auto_white_balance.exit.cleanup_crit_edge, %ov9650_set_auto_white_balance.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call10.i, %ov9650_set_auto_white_balance.exit.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %lor.lhs.false17.cleanup_crit_edge ], [ %call12.i, %ov9650_set_auto_exposure.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false27.cleanup_crit_edge ], [ %call10.i96, %ov9650_set_auto_gain.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i110, %ov9650_set_hvflip.exit ], [ %call33, %if.end31 ], [ %retval.0.i85, %ov9650_set_exposure.exit ], [ %call12, %if.end10 ], [ %call4.i, %ov9650_set_auto_white_balance.exit.thread ], [ %call4.i70, %ov9650_set_auto_exposure.exit.thread ], [ %call4.i91, %ov9650_set_auto_gain.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9650_set_red_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %val) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conv = trunc i32 %val to i8
  %1 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %i2c_data, align 1
  %call4 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 2, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #4
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9650_set_blue_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %val) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conv = trunc i32 %val to i8
  %1 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %i2c_data, align 1
  %call4 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 1, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #4
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov9650_set_gain(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #4
  %0 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %i2c_data, align 1, !annotation !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %val) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call i32 @m5602_read_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 3, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %and = lshr i32 %val, 2
  %2 = ptrtoint ptr %i2c_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_data, align 1
  %4 = and i8 %3, 63
  %5 = trunc i32 %and to i8
  %6 = and i8 %5, -64
  %conv9 = or i8 %4, %6
  store i8 %conv9, ptr %i2c_data, align 1
  %call10 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 3, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %conv16 = trunc i32 %val to i8
  %7 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv16, ptr %i2c_data, align 1
  %call17 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 0, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end14 ], [ %call4, %do.end3.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 302, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ov9650_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ov9650_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 310, i32 2}
!8 = !{ptr @ov9650_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ov9650_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 333, i32 3}
!12 = !{ptr @ov9650_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ov9650_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ov9650_init_controls._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 370, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 398, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov9650_init_controls._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov9650_init_controls._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 504, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ov9650_start._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ov9650_start._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 512, i32 3}
!29 = !{ptr @ov9650_start._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ov9650_start._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 520, i32 3}
!33 = !{ptr @ov9650_start._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ov9650_start._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 528, i32 3}
!37 = !{ptr @ov9650_start._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ov9650_start._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ov9650, !40, !"ov9650", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.h", i32 143, i32 34}
!41 = !{ptr @preinit_ov9650, !42, !"preinit_ov9650", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 23, i32 28}
!43 = !{ptr @ov9650_modes, !44, !"ov9650_modes", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 246, i32 31}
!45 = !{ptr @init_ov9650, !46, !"init_ov9650", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 48, i32 28}
!47 = !{ptr @ov9650_ctrl_ops, !48, !"ov9650_ctrl_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 290, i32 35}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 684, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ov9650_set_auto_white_balance._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ov9650_set_auto_white_balance._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 613, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ov9650_set_red_balance._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ov9650_set_red_balance._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 626, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ov9650_set_blue_balance._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @ov9650_set_blue_balance._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 665, i32 2}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ov9650_set_auto_exposure._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ov9650_set_auto_exposure._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 557, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ov9650_set_exposure._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ov9650_set_exposure._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 702, i32 2}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ov9650_set_auto_gain._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ov9650_set_auto_gain._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 585, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ov9650_set_gain._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ov9650_set_gain._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 641, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ov9650_set_hvflip._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ov9650_set_hvflip._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 180, i32 12}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 187, i32 12}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 194, i32 12}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 201, i32 12}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 208, i32 12}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 216, i32 12}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 223, i32 12}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 230, i32 12}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 237, i32 12}
!107 = distinct !{null, !108, !"ov9650_flip_dmi_table", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 178, i32 23}
!109 = !{ptr @res_init_ov9650, !110, !"res_init_ov9650", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 164, i32 28}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 758, i32 2}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ov9650_dump_registers._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ov9650_dump_registers._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 762, i32 3}
!118 = !{ptr @ov9650_dump_registers._entry.50, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ov9650_dump_registers._entry_ptr.52, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 765, i32 2}
!122 = !{ptr @ov9650_dump_registers._entry.53, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ov9650_dump_registers._entry_ptr.55, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 767, i32 2}
!126 = !{ptr @ov9650_dump_registers._entry.56, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ov9650_dump_registers._entry_ptr.58, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 777, i32 4}
!130 = !{ptr @ov9650_dump_registers._entry.59, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ov9650_dump_registers._entry_ptr.61, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.c", i32 779, i32 4}
!134 = !{ptr @ov9650_dump_registers._entry.62, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @ov9650_dump_registers._entry_ptr.64, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{!"auto-init"}
