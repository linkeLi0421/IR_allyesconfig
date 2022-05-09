; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_mt9m111.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_mt9m111.c"
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
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
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

@force_sensor = external dso_local local_unnamed_addr global i32, align 4
@mt9m111_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gspca_m5602: Forcing a %s sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9m111_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/usb/gspca/m5602/m5602_mt9m111.c\00", [50 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry_ptr = internal global ptr @mt9m111_probe._entry, section ".printk_index", align 4
@mt9m111 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"MT9M111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -70, i8 2, ptr @mt9m111_probe, ptr @mt9m111_init, ptr @mt9m111_init_controls, ptr @mt9m111_start, ptr null, ptr @mt9m111_disconnect }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@mt9m111_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Probing for a mt9m111 sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry_ptr.5 = internal global ptr @mt9m111_probe._entry.3, section ".printk_index", align 4
@preinit_mt9m111 = internal constant { [25 x [4 x i8]], [60 x i8] } { [25 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00\00\0D\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\09\00", [4 x i8] c"\01\F0\00\00", [4 x i8] c"\01\0D\07\83", [4 x i8] c"\00w\05\00", [4 x i8] c"\00v\04\00", [4 x i8] c"\00t>\00", [4 x i8] c"\00r>\00", [4 x i8] c"\00p\02\00", [4 x i8] c"\00u\FF\00", [4 x i8] c"\00s\FF\00", [4 x i8] c"\00q\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00w\07\00", [4 x i8] c"\00v\0B\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00i\0A\00"], [60 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016gspca_m5602: Detected a mt9m111 sensor\0A\00", [54 x i8] zeroinitializer }, align 32
@mt9m111_probe._entry_ptr.8 = internal global ptr @mt9m111_probe._entry.6, section ".printk_index", align 4
@mt9m111_modes = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@init_mt9m111 = internal constant { [79 x [4 x i8]], [68 x i8] } { [79 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\09\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00v\04\00", [4 x i8] c"\00r>\00", [4 x i8] c"\00s\FF\00", [4 x i8] c"\00p\02\00", [4 x i8] c"\00q\00\00", [4 x i8] c"\00w\07\00", [4 x i8] c"\00v\0B\00", [4 x i8] c"\00i\0A\00", [4 x i8] c"\01\0D\00)", [4 x i8] c"\01\F0\00\00", [4 x i8] c"\01\0D\00\08", [4 x i8] c"\01\F0\00\01", [4 x i8] c"\01\06\00\06", [4 x i8] c"\01;\04*", [4 x i8] c"\01L\00\01", [4 x i8] c"\01M\00\01", [4 x i8] c"\014\00\00", [4 x i8] c"\015\FF\00", [4 x i8] c"\01:\14\00", [4 x i8] c"\01\9B\14\00", [4 x i8] c"\01\CD\00\0E", [4 x i8] c"\01\D0\00@", [4 x i8] c"\01\F0\00\02", [4 x i8] c"\01e\00\00", [4 x i8] c"\01(\EF\03", [4 x i8] c"\01\F0\00\00", [4 x i8] c"\013\03I", [4 x i8] c"\014\C0\19", [4 x i8] c"\01?  ", [4 x i8] c"\01@  ", [4 x i8] c"\01Z\C0\0A", [4 x i8] c"\01p{\0A", [4 x i8] c"\01q\FF\00", [4 x i8] c"\01r\19\0E", [4 x i8] c"\01s\18\0F", [4 x i8] c"\01tW2", [4 x i8] c"\01uV4", [4 x i8] c"\01vs5", [4 x i8] c"\01w0\12", [4 x i8] c"\01xy\02", [4 x i8] c"\01yu\06", [4 x i8] c"\01zw\0A", [4 x i8] c"\01{x\09", [4 x i8] c"\01|}\06", [4 x i8] c"\01}1\10", [4 x i8] c"\01~\00~", [4 x i8] c"\01\80Y\04", [4 x i8] c"\01\81Y\04", [4 x i8] c"\01\82W\0A", [4 x i8] c"\01\83X\0B", [4 x i8] c"\01\84G\0C", [4 x i8] c"\01\85H\0E", [4 x i8] c"\01\86[\02", [4 x i8] c"\01\87\00\\", [4 x i8] c"\01\C8\00\08", [4 x i8] c"\01`\00\80", [4 x i8] c"\01a\00\00", [4 x i8] c"\01b\00\00", [4 x i8] c"\01c\00\00", [4 x i8] c"\01d\00\00", [4 x i8] c"\01\01\00\0D", [4 x i8] c"\01\02\00\12", [4 x i8] c"\01\03\04\00", [4 x i8] c"\01\04\05\10", [4 x i8] c"\01\05\01`", [4 x i8] c"\01\06\00\11", [4 x i8] c"\01\07\01`", [4 x i8] c"\01\08\00\11", [4 x i8] c"\01!\01\0F", [4 x i8] c"\010\04\00", [4 x i8] c"\01\09\01\90"], [68 x i8] zeroinitializer }, align 32
@dump_sensor = external dso_local local_unnamed_addr global i8, align 1
@mt9m111_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"m5602_mt9m111:277:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@mt9m111_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @mt9m111_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@mt9m111_greenbal_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @mt9m111_ctrl_ops, ptr null, i32 134217728, ptr @.str.29, i32 1, i64 0, i64 2047, i64 1, i64 32, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mt9m111_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_m5602: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt9m111_init_controls\00", [42 x i8] zeroinitializer }, align 32
@mt9m111_init_controls._entry_ptr = internal global ptr @mt9m111_init_controls._entry, section ".printk_index", align 4
@start_mt9m111 = internal constant { [11 x [4 x i8]], [52 x i8] } { [11 x [4 x i8]] [[4 x i8] c"\00\15\06\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\09\00", [4 x i8] c"\00\02\81\00", [4 x i8] c"\00\04\82\00", [4 x i8] c"\00\0A\01\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00"], [52 x i8] zeroinitializer }, align 32
@mt9m111_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Configuring camera for VGA mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt9m111_start\00", [18 x i8] zeroinitializer }, align 32
@mt9m111_start._entry_ptr = internal global ptr @mt9m111_start._entry, section ".printk_index", align 4
@mt9m111_start._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Configuring camera for QVGA mode\0A\00", [56 x i8] zeroinitializer }, align 32
@mt9m111_start._entry_ptr.16 = internal global ptr @mt9m111_start._entry.14, section ".printk_index", align 4
@mt9m111_set_auto_white_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Set auto white balance %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mt9m111_set_auto_white_balance\00", [33 x i8] zeroinitializer }, align 32
@mt9m111_set_auto_white_balance._entry_ptr = internal global ptr @mt9m111_set_auto_white_balance._entry, section ".printk_index", align 4
@mt9m111_set_green_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Set green balance %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt9m111_set_green_balance\00", [38 x i8] zeroinitializer }, align 32
@mt9m111_set_green_balance._entry_ptr = internal global ptr @mt9m111_set_green_balance._entry, section ".printk_index", align 4
@mt9m111_set_red_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set red balance %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt9m111_set_red_balance\00", [40 x i8] zeroinitializer }, align 32
@mt9m111_set_red_balance._entry_ptr = internal global ptr @mt9m111_set_red_balance._entry, section ".printk_index", align 4
@mt9m111_set_blue_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Set blue balance %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt9m111_set_blue_balance\00", [39 x i8] zeroinitializer }, align 32
@mt9m111_set_blue_balance._entry_ptr = internal global ptr @mt9m111_set_blue_balance._entry, section ".printk_index", align 4
@mt9m111_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: tmp=%d, data[1]=%d, data[0]=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt9m111_set_gain\00", [47 x i8] zeroinitializer }, align 32
@mt9m111_set_gain._entry_ptr = internal global ptr @mt9m111_set_gain._entry, section ".printk_index", align 4
@mt9m111_set_hvflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Set hvflip to %d %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt9m111_set_hvflip\00", [45 x i8] zeroinitializer }, align 32
@mt9m111_set_hvflip._entry_ptr = internal global ptr @mt9m111_set_hvflip._entry, section ".printk_index", align 4
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Green Balance\00", [18 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016gspca_m5602: Dumping the mt9m111 register state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt9m111_dump_registers\00", [41 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr = internal global ptr @mt9m111_dump_registers._entry, section ".printk_index", align 4
@mt9m111_dump_registers._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016gspca_m5602: Dumping the mt9m111 sensor core registers\0A\00", [38 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.34 = internal global ptr @mt9m111_dump_registers._entry.32, section ".printk_index", align 4
@mt9m111_dump_registers._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016gspca_m5602: register 0x%x contains 0x%x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.37 = internal global ptr @mt9m111_dump_registers._entry.35, section ".printk_index", align 4
@mt9m111_dump_registers._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016gspca_m5602: Dumping the mt9m111 color pipeline registers\0A\00", [35 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.40 = internal global ptr @mt9m111_dump_registers._entry.38, section ".printk_index", align 4
@mt9m111_dump_registers._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.42 = internal global ptr @mt9m111_dump_registers._entry.41, section ".printk_index", align 4
@mt9m111_dump_registers._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016gspca_m5602: Dumping the mt9m111 camera control registers\0A\00", [35 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.45 = internal global ptr @mt9m111_dump_registers._entry.43, section ".printk_index", align 4
@mt9m111_dump_registers._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.47 = internal global ptr @mt9m111_dump_registers._entry.46, section ".printk_index", align 4
@mt9m111_dump_registers._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.31, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: mt9m111 register state dump complete\0A\00", [43 x i8] zeroinitializer }, align 32
@mt9m111_dump_registers._entry_ptr.50 = internal global ptr @mt9m111_dump_registers._entry.48, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 321, i64 641]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 9963788, i64 9963795, i64 9963796]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 203, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"mt9m111\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [49 x i8] c"../drivers/media/usb/gspca/m5602/m5602_mt9m111.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 113, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 211, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"preinit_mt9m111\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 22, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 233, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"mt9m111_modes\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 166, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"init_mt9m111\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 61, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 277, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"mt9m111_ctrl_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 179, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [21 x i8] c"mt9m111_greenbal_cfg\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 183, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 300, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"start_mt9m111\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 152, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 376, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 380, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 441, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 492, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 524, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 510, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 474, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 399, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 186, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 570, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 572, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 577, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 581, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 586, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 590, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 595, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [49 x i8] c"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 599, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @mt9m111_dump_registers._entry, ptr @mt9m111_dump_registers._entry.32, ptr @mt9m111_dump_registers._entry.35, ptr @mt9m111_dump_registers._entry.38, ptr @mt9m111_dump_registers._entry.41, ptr @mt9m111_dump_registers._entry.43, ptr @mt9m111_dump_registers._entry.46, ptr @mt9m111_dump_registers._entry.48, ptr @mt9m111_dump_registers._entry_ptr, ptr @mt9m111_dump_registers._entry_ptr.34, ptr @mt9m111_dump_registers._entry_ptr.37, ptr @mt9m111_dump_registers._entry_ptr.40, ptr @mt9m111_dump_registers._entry_ptr.42, ptr @mt9m111_dump_registers._entry_ptr.45, ptr @mt9m111_dump_registers._entry_ptr.47, ptr @mt9m111_dump_registers._entry_ptr.50, ptr @mt9m111_init_controls._entry, ptr @mt9m111_init_controls._entry_ptr, ptr @mt9m111_probe._entry, ptr @mt9m111_probe._entry.3, ptr @mt9m111_probe._entry.6, ptr @mt9m111_probe._entry_ptr, ptr @mt9m111_probe._entry_ptr.5, ptr @mt9m111_probe._entry_ptr.8, ptr @mt9m111_set_auto_white_balance._entry, ptr @mt9m111_set_auto_white_balance._entry_ptr, ptr @mt9m111_set_blue_balance._entry, ptr @mt9m111_set_blue_balance._entry_ptr, ptr @mt9m111_set_gain._entry, ptr @mt9m111_set_gain._entry_ptr, ptr @mt9m111_set_green_balance._entry, ptr @mt9m111_set_green_balance._entry_ptr, ptr @mt9m111_set_hvflip._entry, ptr @mt9m111_set_hvflip._entry_ptr, ptr @mt9m111_set_red_balance._entry, ptr @mt9m111_set_red_balance._entry_ptr, ptr @mt9m111_start._entry, ptr @mt9m111_start._entry.14, ptr @mt9m111_start._entry_ptr, ptr @mt9m111_start._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt9m111, ptr @.str.4, ptr @preinit_mt9m111, ptr @.str.7, ptr @mt9m111_modes, ptr @init_mt9m111, ptr @mt9m111_init_controls._key, ptr @.str.9, ptr @mt9m111_ctrl_ops, ptr @mt9m111_greenbal_cfg, ptr @.str.10, ptr @.str.11, ptr @start_mt9m111, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.44, ptr @.str.49], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preinit_mt9m111 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_mt9m111 to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_greenbal_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_mt9m111 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_start._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_auto_white_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_green_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_red_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_blue_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_set_hvflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111_dump_registers._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt9m111_probe(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_sensor to i32))
  %1 = load i32, ptr @force_sensor, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %do.body3
    i32 4, label %do.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @mt9m111) #8
  br label %sensor_found

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %do.end8, label %do.body3.do.end13_crit_edge

do.body3.do.end13_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #8
  br label %do.end13

do.end13:                                         ; preds = %do.end8, %do.body3.do.end13_crit_edge
  %arrayidx29 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end34
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end13
  %i.078 = phi i32 [ 0, %do.end13 ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x [4 x i8]], ptr @preinit_mt9m111, i32 0, i32 %i.078
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp16 = icmp eq i8 %5, 0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr [25 x [4 x i8]], ptr @preinit_mt9m111, i32 0, i32 %i.078, i32 1
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr [25 x [4 x i8]], ptr @preinit_mt9m111, i32 0, i32 %i.078, i32 2
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx22, align 1
  %call23 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %7, i8 noundef zeroext %9) #5
  br label %if.end34

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25 = getelementptr [25 x [4 x i8]], ptr @preinit_mt9m111, i32 0, i32 %i.078, i32 2
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx25, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %data, align 2
  %arrayidx28 = getelementptr [25 x [4 x i8]], ptr @preinit_mt9m111, i32 0, i32 %i.078, i32 3
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx28, align 1
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx29, align 1
  %arrayidx31 = getelementptr [25 x [4 x i8]], ptr @preinit_mt9m111, i32 0, i32 %i.078, i32 1
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx31, align 1
  %call33 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %17, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then18
  %err.0 = phi i32 [ %call23, %if.then18 ], [ %call33, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp35 = icmp slt i32 %err.0, 0
  br i1 %cmp35, label %if.end34.cleanup_crit_edge, label %for.cond

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call40 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %for.end
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %19)
  %cmp46 = icmp eq i8 %19, 20
  br i1 %cmp46, label %land.lhs.true, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end43
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %21)
  %cmp50 = icmp eq i8 %21, 58
  br i1 %cmp50, label %do.end55, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end55:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %sensor_found

sensor_found:                                     ; preds = %do.end55, %do.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %22 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mt9m111_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %sensor_found, %land.lhs.true.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sensor_found ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.end.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end43.cleanup_crit_edge ], [ %err.0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_bridge(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt9m111_init(ptr noundef %sd) #0 align 64 {
entry:
  %value.i = alloca [2 x i8], align 2
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.029 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %data, align 1, !annotation !117
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %0, align 1, !annotation !117
  %arrayidx = getelementptr [79 x [4 x i8]], ptr @init_mt9m111, i32 0, i32 %i.029
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2 = icmp eq i8 %4, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5 = getelementptr [79 x [4 x i8]], ptr @init_mt9m111, i32 0, i32 %i.029, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr [79 x [4 x i8]], ptr @init_mt9m111, i32 0, i32 %i.029, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %call = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %6, i8 noundef zeroext %8) #5
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9 = getelementptr [79 x [4 x i8]], ptr @init_mt9m111, i32 0, i32 %i.029, i32 2
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %data, align 1
  %arrayidx12 = getelementptr [79 x [4 x i8]], ptr @init_mt9m111, i32 0, i32 %i.029, i32 3
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %0, align 1
  %arrayidx15 = getelementptr [79 x [4 x i8]], ptr @init_mt9m111, i32 0, i32 %i.029, i32 1
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %call16 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %16, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.1 = phi i32 [ %call, %if.then ], [ %call16, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  %inc = add nuw nsw i32 %i.029, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %i.029)
  %cmp = icmp ult i32 %i.029, 78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dump_sensor to i32))
  %17 = load i8, ptr @dump_sensor, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not = icmp eq i8 %17, 0
  br i1 %tobool17.not, label %for.end.if.end19_crit_edge, label %if.then18

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then18:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #5
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %value.i, align 2
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #8
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %value.i, i32 0, i32 1
  %call6.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -16, ptr noundef nonnull %value.i, i8 noundef zeroext 2) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then18
  %indvars.iv.i = phi i32 [ 0, %if.then18 ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %19 = trunc i32 %indvars.iv.i to i8
  %call9.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %19, ptr noundef nonnull %value.i, i8 noundef zeroext 2) #5
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %value.i, align 2
  %conv16.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv18.i = zext i8 %23 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %indvars.iv.i, i32 noundef %conv16.i, i32 noundef %conv18.i) #8
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %cmp.not.i = icmp eq i32 %indvars.iv.next.i, 255
  br i1 %cmp.not.i, label %do.end22.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end22.i:                                       ; preds = %for.body.i
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx.i, align 1
  %call27.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -16, ptr noundef nonnull %value.i, i8 noundef zeroext 2) #5
  br label %for.body32.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %do.end22.i
  %indvars.iv100.i = phi i32 [ 0, %do.end22.i ], [ %indvars.iv.next101.i, %for.body32.i.for.body32.i_crit_edge ]
  %25 = trunc i32 %indvars.iv100.i to i8
  %call34.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %25, ptr noundef nonnull %value.i, i8 noundef zeroext 2) #5
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %value.i, align 2
  %conv41.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %conv43.i = zext i8 %29 to i32
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %indvars.iv100.i, i32 noundef %conv41.i, i32 noundef %conv43.i) #8
  %indvars.iv.next101.i = add nuw nsw i32 %indvars.iv100.i, 1
  %cmp30.not.i = icmp eq i32 %indvars.iv.next101.i, 255
  br i1 %cmp30.not.i, label %do.end50.i, label %for.body32.i.for.body32.i_crit_edge

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32.i

do.end50.i:                                       ; preds = %for.body32.i
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #8
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %arrayidx.i, align 1
  %call55.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -16, ptr noundef nonnull %value.i, i8 noundef zeroext 2) #5
  br label %for.body60.i

for.body60.i:                                     ; preds = %for.body60.i.for.body60.i_crit_edge, %do.end50.i
  %indvars.iv102.i = phi i32 [ 0, %do.end50.i ], [ %indvars.iv.next103.i, %for.body60.i.for.body60.i_crit_edge ]
  %31 = trunc i32 %indvars.iv102.i to i8
  %call62.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %31, ptr noundef nonnull %value.i, i8 noundef zeroext 2) #5
  %32 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %value.i, align 2
  %conv69.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv71.i = zext i8 %35 to i32
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %indvars.iv102.i, i32 noundef %conv69.i, i32 noundef %conv71.i) #8
  %indvars.iv.next103.i = add nuw nsw i32 %indvars.iv102.i, 1
  %cmp58.not.i = icmp eq i32 %indvars.iv.next103.i, 255
  br i1 %cmp58.not.i, label %mt9m111_dump_registers.exit, label %for.body60.i.for.body60.i_crit_edge

for.body60.i.for.body60.i_crit_edge:              ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body60.i

mt9m111_dump_registers.exit:                      ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #7
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #5
  br label %if.end19

if.end19:                                         ; preds = %mt9m111_dump_registers.exit, %for.end.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt9m111_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 7, ptr noundef nonnull @mt9m111_init_controls._key, ptr noundef nonnull @.str.9) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %1, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_greenbal_cfg, ptr noundef null) #5
  %green_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %green_bal to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %green_bal, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 32) #5
  %red_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %red_bal to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %red_bal, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 32) #5
  %blue_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %blue_bal to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %blue_bal, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 504, i64 noundef 1, i64 noundef 283) #5
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %6 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %6, align 8
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @mt9m111_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %vflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 4, ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt9m111_start(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !117
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !117
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %3 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cam1, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %5 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.v4l2_pix_format, ptr %4, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %height10 = getelementptr %struct.v4l2_pix_format, ptr %4, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height10, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0193 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx11 = getelementptr [11 x [4 x i8]], ptr @start_mt9m111, i32 0, i32 %i.0193
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp13 = icmp eq i8 %12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16 = getelementptr [11 x [4 x i8]], ptr @start_mt9m111, i32 0, i32 %i.0193, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr [11 x [4 x i8]], ptr @start_mt9m111, i32 0, i32 %i.0193, i32 2
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  %call = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %14, i8 noundef zeroext %16) #5
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr [11 x [4 x i8]], ptr @start_mt9m111, i32 0, i32 %i.0193, i32 2
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %data, align 1
  %arrayidx23 = getelementptr [11 x [4 x i8]], ptr @start_mt9m111, i32 0, i32 %i.0193, i32 3
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %1, align 1
  %arrayidx26 = getelementptr [11 x [4 x i8]], ptr @start_mt9m111, i32 0, i32 %i.0193, i32 1
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26, align 1
  %call27 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %24, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %err.1 = phi i32 [ %call, %if.then ], [ %call27, %if.else ]
  %inc = add nuw nsw i32 %i.0193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0193)
  %cmp = icmp ult i32 %i.0193, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %sub = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp28 = icmp slt i32 %err.1, 0
  br i1 %cmp28, label %for.end.cleanup_crit_edge, label %if.end31

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %for.end
  %25 = lshr i32 %10, 8
  %conv32 = trunc i32 %25 to i8
  %call33 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %conv39 = trunc i32 %10 to i8
  %call40 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end37.cleanup_crit_edge, label %for.cond45.preheader

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond45.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool49.not195 = icmp eq i32 %call40, 0
  br i1 %tobool49.not195, label %for.body52, label %for.cond45.preheader.if.end60_crit_edge

for.cond45.preheader.if.end60_crit_edge:          ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

for.body52:                                       ; preds = %for.cond45.preheader
  %call53 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool49.not = icmp eq i32 %call53, 0
  br i1 %tobool49.not, label %for.body52.1, label %for.body52.for.end56_crit_edge

for.body52.for.end56_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.body52.1:                                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  %call53.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  br label %for.end56

for.end56:                                        ; preds = %for.body52.1, %for.body52.for.end56_crit_edge
  %call53.lcssa = phi i32 [ %call53, %for.body52.for.end56_crit_edge ], [ %call53.1, %for.body52.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.lcssa)
  %cmp57 = icmp slt i32 %call53.lcssa, 0
  br i1 %cmp57, label %for.end56.cleanup_crit_edge, label %for.end56.if.end60_crit_edge

for.end56.if.end60_crit_edge:                     ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

for.end56.cleanup_crit_edge:                      ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %for.end56.if.end60_crit_edge, %for.cond45.preheader.if.end60_crit_edge
  %call61 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.cleanup_crit_edge, label %if.end65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %call66 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %for.cond71.preheader

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond71.preheader:                             ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool75.not197 = icmp eq i32 %call66, 0
  br i1 %tobool75.not197, label %for.body78, label %for.cond71.preheader.if.end86_crit_edge

for.cond71.preheader.if.end86_crit_edge:          ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

for.body78:                                       ; preds = %for.cond71.preheader
  %call79 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool75.not = icmp eq i32 %call79, 0
  br i1 %tobool75.not, label %for.body78.1, label %for.body78.for.end82_crit_edge

for.body78.for.end82_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.body78.1:                                     ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  %call79.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  br label %for.end82

for.end82:                                        ; preds = %for.body78.1, %for.body78.for.end82_crit_edge
  %call79.lcssa = phi i32 [ %call79, %for.body78.for.end82_crit_edge ], [ %call79.1, %for.body78.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.lcssa)
  %cmp83 = icmp slt i32 %call79.lcssa, 0
  br i1 %cmp83, label %for.end82.cleanup_crit_edge, label %for.end82.if.end86_crit_edge

for.end82.if.end86_crit_edge:                     ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

for.end82.cleanup_crit_edge:                      ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end86:                                         ; preds = %for.end82.if.end86_crit_edge, %for.cond71.preheader.if.end86_crit_edge
  %26 = lshr i32 %sub, 8
  %conv89 = trunc i32 %26 to i8
  %call90 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end86.cleanup_crit_edge, label %if.end94

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  %conv96 = trunc i32 %sub to i8
  %call97 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end94.cleanup_crit_edge, label %if.end101

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %call102 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.end101.cleanup_crit_edge, label %if.end106

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end106:                                        ; preds = %if.end101
  %27 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %8, label %if.end106.cleanup_crit_edge [
    i32 641, label %do.body
    i32 321, label %do.body117
  ]

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp107 = icmp sgt i32 %28, 1
  br i1 %cmp107, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.body117:                                       ; preds = %if.end106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp118 = icmp sgt i32 %29, 1
  br i1 %cmp118, label %do.body117.cleanup.sink.split_crit_edge, label %do.body117.cleanup_crit_edge

do.body117.cleanup_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body117.cleanup.sink.split_crit_edge:          ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body117.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %do.body.cleanup.sink.split_crit_edge ], [ @.str.15, %do.body117.cleanup.sink.split_crit_edge ]
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body117.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %for.end82.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %for.end56.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %for.end.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call40, %if.end37.cleanup_crit_edge ], [ %call53.lcssa, %for.end56.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call79.lcssa, %for.end82.cleanup_crit_edge ], [ %call90, %if.end86.cleanup_crit_edge ], [ %call97, %if.end94.cleanup_crit_edge ], [ %call102, %if.end101.cleanup_crit_edge ], [ %call102, %do.body117.cleanup_crit_edge ], [ %call102, %do.body.cleanup_crit_edge ], [ %call102, %if.end106.cleanup_crit_edge ], [ %call102, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mt9m111_disconnect(ptr nocapture noundef writeonly %sd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sensor, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt9m111_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %data.i59 = alloca [2 x i8], align 2
  %data.i51 = alloca [2 x i8], align 2
  %data.i44 = alloca [2 x i8], align 1
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %streaming = getelementptr i8, ptr %1, i32 238
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963788, label %sw.bb
    i32 9963795, label %sw.bb18
    i32 9963796, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data.i, align 1, !annotation !117
  %10 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !117
  %call.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 6, ptr noundef nonnull %data.i, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mt9m111_set_auto_white_balance.exit.thread, label %if.end.i

mt9m111_set_auto_white_balance.exit.thread:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %10, align 1
  %14 = and i8 %13, -3
  %val.tr.i = trunc i32 %8 to i8
  %15 = shl i8 %val.tr.i, 1
  %16 = and i8 %15, 2
  %conv2.i = or i8 %14, %16
  store i8 %conv2.i, ptr %10, align 1
  %call5.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 6, ptr noundef nonnull %data.i, i8 noundef zeroext 2) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp6.i = icmp sgt i32 %17, 1
  br i1 %cmp6.i, label %do.end.i, label %if.end.i.mt9m111_set_auto_white_balance.exit_crit_edge

if.end.i.mt9m111_set_auto_white_balance.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt9m111_set_auto_white_balance.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name.i, i32 noundef %8) #8
  br label %mt9m111_set_auto_white_balance.exit

mt9m111_set_auto_white_balance.exit:              ; preds = %do.end.i, %if.end.i.mt9m111_set_auto_white_balance.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool1.not = icmp eq i32 %call5.i, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %mt9m111_set_auto_white_balance.exit.cleanup_crit_edge

mt9m111_set_auto_white_balance.exit.cleanup_crit_edge: ; preds = %mt9m111_set_auto_white_balance.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %mt9m111_set_auto_white_balance.exit
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not = icmp eq i32 %19, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %green_bal = getelementptr i8, ptr %1, i32 1052
  %20 = ptrtoint ptr %green_bal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %green_bal, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i44) #5
  %24 = getelementptr inbounds [2 x i8], ptr %data.i44, i32 0, i32 1
  %conv.i = trunc i32 %23 to i8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %24, align 1
  %and1.i = lshr i32 %23, 8
  %conv2.i45 = trunc i32 %and1.i to i8
  %26 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2.i45, ptr %data.i44, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i46 = icmp sgt i32 %27, 1
  br i1 %cmp.i46, label %do.end.i49, label %if.end5.do.end7.i_crit_edge

if.end5.do.end7.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

do.end.i49:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %name.i47 = getelementptr i8, ptr %1, i32 -168
  %call.i48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i47, i32 noundef %23) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i49, %if.end5.do.end7.i_crit_edge
  %call9.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 43, ptr noundef nonnull %data.i44, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %mt9m111_set_green_balance.exit.thread, label %mt9m111_set_green_balance.exit

mt9m111_set_green_balance.exit.thread:            ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i44) #5
  br label %cleanup

mt9m111_set_green_balance.exit:                   ; preds = %do.end7.i
  %call15.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 46, ptr noundef nonnull %data.i44, i8 noundef zeroext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool8.not = icmp eq i32 %call15.i, 0
  br i1 %tobool8.not, label %if.end10, label %mt9m111_set_green_balance.exit.cleanup_crit_edge

mt9m111_set_green_balance.exit.cleanup_crit_edge: ; preds = %mt9m111_set_green_balance.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %mt9m111_set_green_balance.exit
  %red_bal = getelementptr i8, ptr %1, i32 1044
  %28 = ptrtoint ptr %red_bal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %red_bal, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val11, align 4
  %call12 = call fastcc i32 @mt9m111_set_red_balance(ptr noundef %add.ptr, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %blue_bal = getelementptr i8, ptr %1, i32 1048
  %32 = ptrtoint ptr %blue_bal to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %blue_bal, align 8
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val16, align 4
  %call17 = call fastcc i32 @mt9m111_set_blue_balance(ptr noundef %add.ptr, i32 noundef %35)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val19, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i51) #5
  %38 = ptrtoint ptr %data.i51 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %data.i51, align 2
  %call.i52 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -16, ptr noundef nonnull %data.i51, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %sw.bb18.mt9m111_set_gain.exit_crit_edge, label %if.end.i54

sw.bb18.mt9m111_set_gain.exit_crit_edge:          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt9m111_set_gain.exit

if.end.i54:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %37)
  %cmp1.i = icmp sgt i32 %37, 511
  br i1 %cmp1.i, label %if.end.i54.mt9m111_set_gain.exit_crit_edge, label %if.end3.i

if.end.i54.mt9m111_set_gain.exit_crit_edge:       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt9m111_set_gain.exit

if.end3.i:                                        ; preds = %if.end.i54
  %39 = add i32 %37, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %39)
  %40 = icmp ult i32 %39, 248
  br i1 %40, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw nsw i32 %37, 9
  %shl7.i = shl nuw nsw i32 %37, 8
  %div697077.i = lshr i32 %37, 3
  %div69.zext.i = and i32 %div697077.i, 7167
  %or.i = or i32 %shl.i, %shl7.i
  %or8.i = or i32 %or.i, %div69.zext.i
  %or9.i = or i32 %or8.i, 1024
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end3.i
  %41 = and i32 %37, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %41)
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %if.then13.i, label %if.else16.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %div14717276.i = lshr i32 %37, 2
  %or15.i = or i32 %div14717276.i, 768
  br label %if.end26.i

if.else16.i:                                      ; preds = %if.else.i
  %43 = and i32 %37, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %43)
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %if.then20.i, label %if.else16.i.if.end26.i_crit_edge

if.else16.i.if.end26.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #7
  %div21737475.i = lshr i32 %37, 1
  %or22.i = or i32 %div21737475.i, 256
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.else16.i.if.end26.i_crit_edge, %if.then13.i, %if.then6.i
  %tmp.0.i = phi i32 [ %or9.i, %if.then6.i ], [ %or15.i, %if.then13.i ], [ %or22.i, %if.then20.i ], [ %37, %if.else16.i.if.end26.i_crit_edge ]
  %conv.i55 = trunc i32 %tmp.0.i to i8
  %arrayidx.i = getelementptr inbounds [2 x i8], ptr %data.i51, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i55, ptr %arrayidx.i, align 1
  %and27.i = lshr i32 %tmp.0.i, 8
  %conv28.i = trunc i32 %and27.i to i8
  %46 = ptrtoint ptr %data.i51 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv28.i, ptr %data.i51, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %47 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp30.i = icmp sgt i32 %47, 1
  br i1 %cmp30.i, label %do.end.i57, label %if.end26.i.do.end43.i_crit_edge

if.end26.i.do.end43.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.i

do.end.i57:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i56 = getelementptr i8, ptr %1, i32 -168
  %conv37.i = and i32 %tmp.0.i, 255
  %conv39.i = and i32 %and27.i, 255
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i56, i32 noundef %tmp.0.i, i32 noundef %conv37.i, i32 noundef %conv39.i) #8
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end.i57, %if.end26.i.do.end43.i_crit_edge
  %call45.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 47, ptr noundef nonnull %data.i51, i8 noundef zeroext 2) #5
  br label %mt9m111_set_gain.exit

mt9m111_set_gain.exit:                            ; preds = %do.end43.i, %if.end.i54.mt9m111_set_gain.exit_crit_edge, %sw.bb18.mt9m111_set_gain.exit_crit_edge
  %retval.0.i58 = phi i32 [ %call45.i, %do.end43.i ], [ %call.i52, %sw.bb18.mt9m111_set_gain.exit_crit_edge ], [ -22, %if.end.i54.mt9m111_set_gain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i51) #5
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i59) #5
  %48 = ptrtoint ptr %data.i59 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %data.i59, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %49 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i60 = icmp sgt i32 %49, 1
  br i1 %cmp.i60, label %do.end.i63, label %sw.bb21.do.end6.i_crit_edge

sw.bb21.do.end6.i_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i63:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  %name.i61 = getelementptr i8, ptr %1, i32 -168
  %50 = getelementptr i8, ptr %1, i32 1072
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i, align 4
  %vflip3.i = getelementptr i8, ptr %1, i32 1076
  %55 = ptrtoint ptr %vflip3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vflip3.i, align 4
  %val4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val4.i, align 4
  %call.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name.i61, i32 noundef %54, i32 noundef %58) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i63, %sw.bb21.do.end6.i_crit_edge
  %59 = getelementptr i8, ptr %1, i32 1072
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %val8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 22
  %62 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val8.i, align 4
  %vflip9.i = getelementptr i8, ptr %1, i32 1076
  %64 = ptrtoint ptr %vflip9.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vflip9.i, align 4
  %val10.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 22
  %66 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val10.i, align 4
  %call15.i64 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -16, ptr noundef nonnull %data.i59, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i64)
  %cmp16.i = icmp slt i32 %call15.i64, 0
  br i1 %cmp16.i, label %do.end6.i.mt9m111_set_hvflip.exit_crit_edge, label %if.end18.i

do.end6.i.mt9m111_set_hvflip.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt9m111_set_hvflip.exit

if.end18.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool11.not.i = icmp eq i32 %67, 0
  %lnot.ext13.i = zext i1 %tobool11.not.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  %68 = ptrtoint ptr %data.i59 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %data.i59, align 2
  %pixfmt.i = getelementptr i8, ptr %1, i32 240
  %69 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pixfmt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %70)
  %cmp19.i = icmp eq i32 %70, 640
  %or.i65 = select i1 %tobool.not.i, i8 14, i8 12
  %or24.i = select i1 %tobool.not.i, i8 50, i8 48
  %or.pn.i = select i1 %cmp19.i, i8 %or.i65, i8 %or24.i
  %conv26.sink.in.i = or i8 %or.pn.i, %lnot.ext13.i
  %71 = getelementptr inbounds [2 x i8], ptr %data.i59, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv26.sink.in.i, ptr %71, align 1
  %call30.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 32, ptr noundef nonnull %data.i59, i8 noundef zeroext 2) #5
  br label %mt9m111_set_hvflip.exit

mt9m111_set_hvflip.exit:                          ; preds = %if.end18.i, %do.end6.i.mt9m111_set_hvflip.exit_crit_edge
  %retval.0.i66 = phi i32 [ %call30.i, %if.end18.i ], [ %call15.i64, %do.end6.i.mt9m111_set_hvflip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i59) #5
  br label %cleanup

cleanup:                                          ; preds = %mt9m111_set_hvflip.exit, %mt9m111_set_gain.exit, %if.end15, %if.end10.cleanup_crit_edge, %mt9m111_set_green_balance.exit.cleanup_crit_edge, %mt9m111_set_green_balance.exit.thread, %lor.lhs.false.cleanup_crit_edge, %mt9m111_set_auto_white_balance.exit.cleanup_crit_edge, %mt9m111_set_auto_white_balance.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call5.i, %mt9m111_set_auto_white_balance.exit.cleanup_crit_edge ], [ %call15.i, %mt9m111_set_green_balance.exit.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i66, %mt9m111_set_hvflip.exit ], [ %retval.0.i58, %mt9m111_set_gain.exit ], [ %call17, %if.end15 ], [ %call.i, %mt9m111_set_auto_white_balance.exit.thread ], [ %call9.i, %mt9m111_set_green_balance.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_set_red_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %conv = trunc i32 %val to i8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %0, align 1
  %and1 = lshr i32 %val, 8
  %conv2 = trunc i32 %and1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %val) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call9 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 45, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt9m111_set_blue_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %conv = trunc i32 %val to i8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %0, align 1
  %and1 = lshr i32 %val, 8
  %conv2 = trunc i32 %and1 to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %val) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %call9 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 44, ptr noundef nonnull %data, i8 noundef zeroext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %call9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 203, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mt9m111_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mt9m111_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 211, i32 2}
!8 = !{ptr @mt9m111_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mt9m111_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 233, i32 3}
!12 = !{ptr @mt9m111_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mt9m111_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @mt9m111_init_controls._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 277, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 300, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt9m111_init_controls._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt9m111_init_controls._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 376, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt9m111_start._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt9m111_start._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 380, i32 3}
!29 = !{ptr @mt9m111_start._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mt9m111_start._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mt9m111, !32, !"mt9m111", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.h", i32 113, i32 34}
!33 = !{ptr @preinit_mt9m111, !34, !"preinit_mt9m111", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 22, i32 28}
!35 = !{ptr @mt9m111_modes, !36, !"mt9m111_modes", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 166, i32 31}
!37 = !{ptr @init_mt9m111, !38, !"init_mt9m111", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 61, i32 28}
!39 = !{ptr @mt9m111_ctrl_ops, !40, !"mt9m111_ctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 179, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 441, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mt9m111_set_auto_white_balance._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt9m111_set_auto_white_balance._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 492, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mt9m111_set_green_balance._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mt9m111_set_green_balance._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 524, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mt9m111_set_red_balance._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt9m111_set_red_balance._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 510, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mt9m111_set_blue_balance._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt9m111_set_blue_balance._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 474, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mt9m111_set_gain._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mt9m111_set_gain._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 399, i32 2}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mt9m111_set_hvflip._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mt9m111_set_hvflip._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 186, i32 10}
!73 = !{ptr @mt9m111_greenbal_cfg, !74, !"mt9m111_greenbal_cfg", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 183, i32 38}
!75 = !{ptr @start_mt9m111, !76, !"start_mt9m111", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 152, i32 28}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 570, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mt9m111_dump_registers._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @mt9m111_dump_registers._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 572, i32 2}
!84 = !{ptr @mt9m111_dump_registers._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mt9m111_dump_registers._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 577, i32 3}
!88 = !{ptr @mt9m111_dump_registers._entry.35, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mt9m111_dump_registers._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 581, i32 2}
!92 = !{ptr @mt9m111_dump_registers._entry.38, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mt9m111_dump_registers._entry_ptr.40, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @mt9m111_dump_registers._entry.41, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 586, i32 3}
!96 = !{ptr @mt9m111_dump_registers._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 590, i32 2}
!99 = !{ptr @mt9m111_dump_registers._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mt9m111_dump_registers._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @mt9m111_dump_registers._entry.46, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 595, i32 3}
!103 = !{ptr @mt9m111_dump_registers._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.c", i32 599, i32 2}
!106 = !{ptr @mt9m111_dump_registers._entry.48, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mt9m111_dump_registers._entry_ptr.50, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i8 0, i8 2}
