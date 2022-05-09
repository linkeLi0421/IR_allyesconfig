; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_po1030.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_po1030.c"
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
@po1030_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gspca_m5602: Forcing a %s sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"po1030_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/gspca/m5602/m5602_po1030.c\00", [51 x i8] zeroinitializer }, align 32
@po1030_probe._entry_ptr = internal global ptr @po1030_probe._entry, section ".printk_index", align 4
@po1030 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"PO1030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -36, i8 1, ptr @po1030_probe, ptr @po1030_init, ptr @po1030_init_controls, ptr @po1030_start, ptr null, ptr @po1030_disconnect }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@po1030_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Probing for a po1030 sensor\0A\00", [61 x i8] zeroinitializer }, align 32
@po1030_probe._entry_ptr.5 = internal global ptr @po1030_probe._entry.3, section ".printk_index", align 4
@preinit_po1030 = internal constant { [21 x [3 x i8]], [33 x i8] } { [21 x [3 x i8]] [[3 x i8] c"\00\13\02", [3 x i8] c"\00\12\B0", [3 x i8] c"\00\15\00", [3 x i8] c"\00\14\B0", [3 x i8] c"\00`\C0", [3 x i8] c"\00\01\00", [3 x i8] c"\00\00\0C", [3 x i8] c"\00`\C0", [3 x i8] c"\00w\05", [3 x i8] c"\00v\04", [3 x i8] c"\00t\06", [3 x i8] c"\00r\06", [3 x i8] c"\00p\02", [3 x i8] c"\01?$", [3 x i8] c"\00\15\04", [3 x i8] c"\00\14\B0", [3 x i8] c"\00\15\00", [3 x i8] c"\00\14\B0", [3 x i8] c"\00\00\0C", [3 x i8] c"\00w\05", [3 x i8] c"\00v\00"], [33 x i8] zeroinitializer }, align 32
@po1030_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_m5602: Detected a po1030 sensor\0A\00", [55 x i8] zeroinitializer }, align 32
@po1030_probe._entry_ptr.8 = internal global ptr @po1030_probe._entry.6, section ".printk_index", align 4
@po1030_modes = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 2, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@init_po1030 = internal constant { [56 x [3 x i8]], [56 x i8] } { [56 x [3 x i8]] [[3 x i8] c"\00\13\02", [3 x i8] c"\00\12\B0", [3 x i8] c"\00\15\00", [3 x i8] c"\00\14\B0", [3 x i8] c"\00`\C0", [3 x i8] c"\00\01\00", [3 x i8] c"\00\00\0C", [3 x i8] c"\01?$", [3 x i8] c"\00w\05", [3 x i8] c"\00v\04", [3 x i8] c"\00t\06", [3 x i8] c"\00u\00", [3 x i8] c"\00r\06", [3 x i8] c"\00p\02", [3 x i8] c"\00\15\04", [3 x i8] c"\00\14\B0", [3 x i8] c"\00w\05", [3 x i8] c"\00v\00", [3 x i8] c"\01?\04", [3 x i8] c"\01[\04", [3 x i8] c"\01>\08", [3 x i8] c"\01\1E\03", [3 x i8] c"\01!\90", [3 x i8] c"\01@`", [3 x i8] c"\01Y\13", [3 x i8] c"\01Z@", [3 x i8] c"\01_\00", [3 x i8] c"\01`\80", [3 x i8] c"\01x\14", [3 x i8] c"\01o\01", [3 x i8] c"\01B\14", [3 x i8] c"\01c8", [3 x i8] c"\01d8", [3 x i8] c"\01\1DX", [3 x i8] c"\01-\10", [3 x i8] c"\01. ", [3 x i8] c"\01/@", [3 x i8] c"\010`", [3 x i8] c"\011\80", [3 x i8] c"\012\A0", [3 x i8] c"\013\C0", [3 x i8] c"\014\FF", [3 x i8] c"\01\04\02", [3 x i8] c"\01\05\EF", [3 x i8] c"\01\06\02", [3 x i8] c"\01\07\1C", [3 x i8] c"\01\08\00", [3 x i8] c"\01\09\01", [3 x i8] c"\01\0A\00", [3 x i8] c"\01\0B\01", [3 x i8] c"\00\15\00", [3 x i8] c"\00\14\B0", [3 x i8] c"\00w\05", [3 x i8] c"\00v\00", [3 x i8] c"\00t\06", [3 x i8] c"\00u\00"], [56 x i8] zeroinitializer }, align 32
@po1030_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: Invalid stream command, exiting init\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"po1030_init\00", [20 x i8] zeroinitializer }, align 32
@po1030_init._entry_ptr = internal global ptr @po1030_init._entry, section ".printk_index", align 4
@dump_sensor = external dso_local local_unnamed_addr global i8, align 1
@po1030_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m5602_po1030:242:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@po1030_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @po1030_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@po1030_greenbal_cfg = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @po1030_ctrl_ops, ptr null, i32 134217728, ptr @.str.36, i32 1, i64 0, i64 255, i64 1, i64 64, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 32, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@po1030_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_m5602: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"po1030_init_controls\00", [43 x i8] zeroinitializer }, align 32
@po1030_init_controls._entry_ptr = internal global ptr @po1030_init_controls._entry, section ".printk_index", align 4
@po1030_set_auto_white_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Set auto white balance to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"po1030_set_auto_white_balance\00", [34 x i8] zeroinitializer }, align 32
@po1030_set_auto_white_balance._entry_ptr = internal global ptr @po1030_set_auto_white_balance._entry, section ".printk_index", align 4
@po1030_set_green_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Set green gain to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"po1030_set_green_balance\00", [39 x i8] zeroinitializer }, align 32
@po1030_set_green_balance._entry_ptr = internal global ptr @po1030_set_green_balance._entry, section ".printk_index", align 4
@po1030_set_red_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set red gain to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"po1030_set_red_balance\00", [41 x i8] zeroinitializer }, align 32
@po1030_set_red_balance._entry_ptr = internal global ptr @po1030_set_red_balance._entry, section ".printk_index", align 4
@po1030_set_blue_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Set blue gain to %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"po1030_set_blue_balance\00", [40 x i8] zeroinitializer }, align 32
@po1030_set_blue_balance._entry_ptr = internal global ptr @po1030_set_blue_balance._entry, section ".printk_index", align 4
@po1030_set_auto_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Set auto exposure to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"po1030_set_auto_exposure\00", [39 x i8] zeroinitializer }, align 32
@po1030_set_auto_exposure._entry_ptr = internal global ptr @po1030_set_auto_exposure._entry, section ".printk_index", align 4
@po1030_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set exposure to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"po1030_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@po1030_set_exposure._entry_ptr = internal global ptr @po1030_set_exposure._entry, section ".printk_index", align 4
@po1030_set_exposure._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Set exposure to high byte to 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@po1030_set_exposure._entry_ptr.28 = internal global ptr @po1030_set_exposure._entry.26, section ".printk_index", align 4
@po1030_set_exposure._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Set exposure to low byte to 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@po1030_set_exposure._entry_ptr.31 = internal global ptr @po1030_set_exposure._entry.29, section ".printk_index", align 4
@po1030_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Set global gain to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"po1030_set_gain\00", [16 x i8] zeroinitializer }, align 32
@po1030_set_gain._entry_ptr = internal global ptr @po1030_set_gain._entry, section ".printk_index", align 4
@po1030_set_hvflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Set hvflip %d %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"po1030_set_hvflip\00", [46 x i8] zeroinitializer }, align 32
@po1030_set_hvflip._entry_ptr = internal global ptr @po1030_set_hvflip._entry, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Green Balance\00", [18 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016gspca_m5602: Dumping the po1030 sensor core registers\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"po1030_dump_registers\00", [42 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry_ptr = internal global ptr @po1030_dump_registers._entry, section ".printk_index", align 4
@po1030_dump_registers._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_m5602: register 0x%x contains 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry_ptr.41 = internal global ptr @po1030_dump_registers._entry.39, section ".printk_index", align 4
@po1030_dump_registers._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gspca_m5602: po1030 register state dump complete\0A\00", [44 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry_ptr.44 = internal global ptr @po1030_dump_registers._entry.42, section ".printk_index", align 4
@po1030_dump_registers._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016gspca_m5602: Probing for which registers that are read/write\0A\00", [32 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry_ptr.47 = internal global ptr @po1030_dump_registers._entry.45, section ".printk_index", align 4
@po1030_dump_registers._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is writeable\0A\00", [53 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry_ptr.50 = internal global ptr @po1030_dump_registers._entry.48, section ".printk_index", align 4
@po1030_dump_registers._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is read only\0A\00", [53 x i8] zeroinitializer }, align 32
@po1030_dump_registers._entry_ptr.53 = internal global ptr @po1030_dump_registers._entry.51, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 320, i64 640]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 9963788, i64 9963795, i64 9963796, i64 10094849]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 163, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"po1030\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_po1030.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 154, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 171, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"preinit_po1030\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 22, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 190, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"po1030_modes\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 126, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"init_po1030\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 48, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 224, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 242, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"po1030_ctrl_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 139, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"po1030_greenbal_cfg\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 143, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 269, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 523, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 501, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 474, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 487, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 540, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 413, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 416, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 425, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 440, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 452, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 146, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 598, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 601, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 604, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 606, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 616, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_po1030.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 618, i32 4 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @po1030_dump_registers._entry, ptr @po1030_dump_registers._entry.39, ptr @po1030_dump_registers._entry.42, ptr @po1030_dump_registers._entry.45, ptr @po1030_dump_registers._entry.48, ptr @po1030_dump_registers._entry.51, ptr @po1030_dump_registers._entry_ptr, ptr @po1030_dump_registers._entry_ptr.41, ptr @po1030_dump_registers._entry_ptr.44, ptr @po1030_dump_registers._entry_ptr.47, ptr @po1030_dump_registers._entry_ptr.50, ptr @po1030_dump_registers._entry_ptr.53, ptr @po1030_init._entry, ptr @po1030_init._entry_ptr, ptr @po1030_init_controls._entry, ptr @po1030_init_controls._entry_ptr, ptr @po1030_probe._entry, ptr @po1030_probe._entry.3, ptr @po1030_probe._entry.6, ptr @po1030_probe._entry_ptr, ptr @po1030_probe._entry_ptr.5, ptr @po1030_probe._entry_ptr.8, ptr @po1030_set_auto_exposure._entry, ptr @po1030_set_auto_exposure._entry_ptr, ptr @po1030_set_auto_white_balance._entry, ptr @po1030_set_auto_white_balance._entry_ptr, ptr @po1030_set_blue_balance._entry, ptr @po1030_set_blue_balance._entry_ptr, ptr @po1030_set_exposure._entry, ptr @po1030_set_exposure._entry.26, ptr @po1030_set_exposure._entry.29, ptr @po1030_set_exposure._entry_ptr, ptr @po1030_set_exposure._entry_ptr.28, ptr @po1030_set_exposure._entry_ptr.31, ptr @po1030_set_gain._entry, ptr @po1030_set_gain._entry_ptr, ptr @po1030_set_green_balance._entry, ptr @po1030_set_green_balance._entry_ptr, ptr @po1030_set_hvflip._entry, ptr @po1030_set_hvflip._entry_ptr, ptr @po1030_set_red_balance._entry, ptr @po1030_set_red_balance._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @po1030, ptr @.str.4, ptr @preinit_po1030, ptr @.str.7, ptr @po1030_modes, ptr @init_po1030, ptr @.str.9, ptr @.str.10, ptr @po1030_init_controls._key, ptr @.str.11, ptr @po1030_ctrl_ops, ptr @po1030_greenbal_cfg, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preinit_po1030 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_po1030 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_greenbal_cfg to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_auto_white_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_green_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_red_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_blue_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_auto_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_exposure._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_exposure._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_set_hvflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_dump_registers._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_dump_registers._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_dump_registers._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_dump_registers._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030_dump_registers._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @po1030_probe(ptr noundef %sd) #0 align 64 {
entry:
  %dev_id_h = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dev_id_h) #5
  %0 = ptrtoint ptr %dev_id_h to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dev_id_h, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_sensor to i32))
  %1 = load i32, ptr @force_sensor, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup54_crit_edge [
    i32 0, label %do.body3
    i32 5, label %do.end
  ]

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @po1030) #8
  br label %sensor_found

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %do.end8, label %do.body3.for.body.preheader_crit_edge

do.body3.for.body.preheader_crit_edge:            ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end8, %do.body3.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %if.end32
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 21
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %arrayidx = getelementptr [21 x [3 x i8]], ptr @preinit_po1030, i32 0, i32 %indvars.iv
  %arrayidx16 = getelementptr [21 x [3 x i8]], ptr @preinit_po1030, i32 0, i32 %indvars.iv, i32 2
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx16, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %data, align 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp21 = icmp eq i8 %8, 1
  %arrayidx26 = getelementptr [21 x [3 x i8]], ptr @preinit_po1030, i32 0, i32 %indvars.iv, i32 1
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx26, align 1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %10, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  br label %if.end32

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %10, i8 noundef zeroext %5) #5
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then23
  %err.0 = phi i32 [ %call27, %if.then23 ], [ %call31, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp33 = icmp slt i32 %err.0, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  br i1 %cmp33, label %if.end32.cleanup54_crit_edge, label %for.cond

if.end32.cleanup54_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

for.end:                                          ; preds = %for.cond
  %call37 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %dev_id_h, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %for.end.cleanup54_crit_edge

for.end.cleanup54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end40:                                         ; preds = %for.end
  %11 = ptrtoint ptr %dev_id_h to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dev_id_h, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %12)
  %cmp42 = icmp eq i8 %12, 48
  br i1 %cmp42, label %do.end47, label %if.end40.cleanup54_crit_edge

if.end40.cleanup54_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %sensor_found

sensor_found:                                     ; preds = %do.end47, %do.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %13 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @po1030_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %nmodes, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %sensor_found, %if.end40.cleanup54_crit_edge, %for.end.cleanup54_crit_edge, %if.end32.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.2 = phi i32 [ 0, %sensor_found ], [ -19, %entry.cleanup54_crit_edge ], [ -19, %for.end.cleanup54_crit_edge ], [ -19, %if.end40.cleanup54_crit_edge ], [ %err.0, %if.end32.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dev_id_h) #5
  ret i32 %retval.2
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
define dso_local i32 @po1030_init(ptr noundef %sd) #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  %old_value.i = alloca i8, align 1
  %ctrl_value.i = alloca i8, align 1
  %test_value.i = alloca [2 x i8], align 2
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.035 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data, align 2
  %arrayidx = getelementptr [56 x [3 x i8]], ptr @init_po1030, i32 0, i32 %i.035
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %2, label %cleanup [
    i8 0, label %sw.bb
    i8 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr [56 x [3 x i8]], ptr @init_po1030, i32 0, i32 %i.035, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr [56 x [3 x i8]], ptr @init_po1030, i32 0, i32 %i.035, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %call = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %5, i8 noundef zeroext %7) #5
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr [56 x [3 x i8]], ptr @init_po1030, i32 0, i32 %i.035, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data, align 2
  %arrayidx11 = getelementptr [56 x [3 x i8]], ptr @init_po1030, i32 0, i32 %i.035, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %call12 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %12, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  br label %cleanup19

for.inc:                                          ; preds = %sw.bb6, %sw.bb
  %err.2.ph = phi i32 [ %call, %sw.bb ], [ %call12, %sw.bb6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  %inc = add nuw nsw i32 %i.035, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %i.035)
  %cmp = icmp ult i32 %i.035, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %tobool.not = icmp eq i32 %err.2.ph, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %cmp14 = icmp slt i32 %err.2.ph, 0
  br i1 %cmp14, label %for.end.cleanup19_crit_edge, label %if.end

for.end.cleanup19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup19

if.end:                                           ; preds = %for.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dump_sensor to i32))
  %13 = load i8, ptr @dump_sensor, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %if.end.cleanup19_crit_edge, label %if.then17

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup19

if.then17:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #5
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %value.i, align 1
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then17
  %address.062.i = phi i32 [ 0, %if.then17 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %address.062.i to i8
  %call1.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv.i, ptr noundef nonnull %value.i, i8 noundef zeroext 1) #5
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %value.i, align 1
  %conv6.i = zext i8 %16 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %address.062.i, i32 noundef %conv6.i) #8
  %inc.i = add nuw nsw i32 %address.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 127
  br i1 %exitcond.not.i, label %do.end10.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end10.i:                                       ; preds = %for.body.i
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #8
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #8
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %do.end10.i
  %address.163.i = phi i32 [ 0, %do.end10.i ], [ %inc45.i, %for.body21.i.for.body21.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_value.i) #5
  %17 = ptrtoint ptr %old_value.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %old_value.i, align 1, !annotation !124
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_value.i) #5
  %18 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %ctrl_value.i, align 1, !annotation !124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %test_value.i) #5
  %19 = ptrtoint ptr %test_value.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %test_value.i, align 2
  %conv22.i = trunc i32 %address.163.i to i8
  %call23.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #5
  %call25.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %test_value.i, i8 noundef zeroext 1) #5
  %call27.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %ctrl_value.i, i8 noundef zeroext 1) #5
  %20 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl_value.i, align 1
  %22 = ptrtoint ptr %test_value.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %test_value.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp30.i = icmp eq i8 %21, %23
  %.str.49..str.52.i = select i1 %cmp30.i, ptr @.str.49, ptr @.str.52
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.49..str.52.i, i32 noundef %address.163.i) #8
  %call43.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %test_value.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_value.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_value.i) #5
  %inc45.i = add nuw nsw i32 %address.163.i, 1
  %exitcond65.not.i = icmp eq i32 %inc45.i, 255
  br i1 %exitcond65.not.i, label %po1030_dump_registers.exit, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21.i

po1030_dump_registers.exit:                       ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #5
  br label %cleanup19

cleanup19:                                        ; preds = %po1030_dump_registers.exit, %if.end.cleanup19_crit_edge, %for.end.cleanup19_crit_edge, %cleanup
  %retval.2 = phi i32 [ -22, %cleanup ], [ %err.2.ph, %for.end.cleanup19_crit_edge ], [ 0, %po1030_dump_registers.exit ], [ 0, %if.end.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @po1030_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 9, ptr noundef nonnull @po1030_init_controls._key, ptr noundef nonnull @.str.11) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %1, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_greenbal_cfg, ptr noundef null) #5
  %green_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %green_bal to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %green_bal, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963790, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 54) #5
  %red_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %red_bal to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %red_bal, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963791, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 54) #5
  %blue_bal = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %blue_bal to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %blue_bal, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #5
  %6 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 6
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %6, align 8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 767, i64 noundef 1, i64 noundef 133) #5
  %expo = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %expo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %expo, align 4
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 79, i64 noundef 1, i64 noundef 18) #5
  %gain = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %gain, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %10 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %10, align 8
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @po1030_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #5
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %vflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 4, ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %6, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @po1030_start(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam1, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %height9 = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height9, align 4
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %data, align 1, !annotation !124
  %11 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 320, label %sw.bb
    i32 640, label %sw.bb42
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %data, align 1
  %call = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 31, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %data, align 1
  %call15 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 12, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 67, ptr %data, align 1
  %call23 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 13, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.cleanup_crit_edge, label %if.end27

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %add28 = add i32 %7, 1
  %15 = lshr i32 %add28, 8
  %conv31 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv31, ptr %data, align 1
  %call32 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 14, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end27.cleanup_crit_edge, label %if.end27.sw.epilog.sink.split_crit_edge

if.end27.sw.epilog.sink.split_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %data, align 1
  %call43 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 31, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %sw.bb42.cleanup_crit_edge, label %if.end47

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %sw.bb42
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %data, align 1
  %call52 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 12, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end47.cleanup_crit_edge, label %if.end56

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -121, ptr %data, align 1
  %call60 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 13, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end56.cleanup_crit_edge, label %if.end64

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %if.end56
  %add65 = add i32 %7, 3
  %20 = lshr i32 %add65, 8
  %conv68 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv68, ptr %data, align 1
  %call69 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 14, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end64.cleanup_crit_edge, label %if.end64.sw.epilog.sink.split_crit_edge

if.end64.sw.epilog.sink.split_crit_edge:          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end64.sw.epilog.sink.split_crit_edge, %if.end27.sw.epilog.sink.split_crit_edge
  %storemerge.in = phi i32 [ %add28, %if.end27.sw.epilog.sink.split_crit_edge ], [ %add65, %if.end64.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 6, %if.end27.sw.epilog.sink.split_crit_edge ], [ 12, %if.end64.sw.epilog.sink.split_crit_edge ]
  %width.0.ph = phi i32 [ 319, %if.end27.sw.epilog.sink.split_crit_edge ], [ 638, %if.end64.sw.epilog.sink.split_crit_edge ]
  %storemerge = trunc i32 %storemerge.in to i8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %data, align 1
  %call77 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext 15, ptr noundef nonnull %data, i8 noundef zeroext 1) #5
  %add78 = add i32 %7, %.sink
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %width.0 = phi i32 [ %5, %entry.sw.epilog_crit_edge ], [ %width.0.ph, %sw.epilog.sink.split ]
  %height.0 = phi i32 [ %7, %entry.sw.epilog_crit_edge ], [ %add78, %sw.epilog.sink.split ]
  %call80 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 0, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %sw.epilog.cleanup_crit_edge, label %if.end84

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end84:                                         ; preds = %sw.epilog
  %call85 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 2, i8 noundef zeroext -127) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end84.cleanup_crit_edge, label %if.end89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %call90 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 4, i8 noundef zeroext -126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.cleanup_crit_edge, label %if.end94

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end94:                                         ; preds = %if.end89
  %call95 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end94.cleanup_crit_edge, label %if.end99

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end99:                                         ; preds = %if.end94
  %23 = lshr i32 %9, 8
  %conv102 = trunc i32 %23 to i8
  %call103 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv102) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.end99.cleanup_crit_edge, label %if.end107

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end107:                                        ; preds = %if.end99
  %conv109 = trunc i32 %9 to i8
  %call110 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end107.cleanup_crit_edge, label %for.cond.preheader

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool.not299 = icmp eq i32 %call110, 0
  br i1 %tobool.not299, label %for.body, label %for.cond.preheader.if.end121_crit_edge

for.cond.preheader.if.end121_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

for.body:                                         ; preds = %for.cond.preheader
  %call117 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool.not = icmp eq i32 %call117, 0
  br i1 %tobool.not, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call117.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge
  %call117.lcssa = phi i32 [ %call117, %for.body.for.end_crit_edge ], [ %call117.1, %for.body.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.lcssa)
  %cmp118 = icmp slt i32 %call117.lcssa, 0
  br i1 %cmp118, label %for.end.cleanup_crit_edge, label %for.end.if.end121_crit_edge

for.end.if.end121_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end121:                                        ; preds = %for.end.if.end121_crit_edge, %for.cond.preheader.if.end121_crit_edge
  %24 = lshr i32 %height.0, 8
  %conv124 = trunc i32 %24 to i8
  %call125 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv124) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.end121.cleanup_crit_edge, label %if.end129

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end129:                                        ; preds = %if.end121
  %conv131 = trunc i32 %height.0 to i8
  %call132 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext %conv131) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end129.cleanup_crit_edge, label %for.cond137.preheader

if.end129.cleanup_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond137.preheader:                            ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool141.not301 = icmp eq i32 %call132, 0
  br i1 %tobool141.not301, label %for.body144, label %for.cond137.preheader.if.end176_crit_edge

for.cond137.preheader.if.end176_crit_edge:        ; preds = %for.cond137.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

for.cond149.preheader:                            ; preds = %for.body144.1, %for.body144.for.cond149.preheader_crit_edge
  %call145.lcssa = phi i32 [ %call145, %for.body144.for.cond149.preheader_crit_edge ], [ %call145.1, %for.body144.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.lcssa)
  %tobool153.not304 = icmp eq i32 %call145.lcssa, 0
  br i1 %tobool153.not304, label %for.body156, label %for.cond149.preheader.for.end172_crit_edge

for.cond149.preheader.for.end172_crit_edge:       ; preds = %for.cond149.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end172

for.body144:                                      ; preds = %for.cond137.preheader
  %call145 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool141.not = icmp eq i32 %call145, 0
  br i1 %tobool141.not, label %for.body144.1, label %for.body144.for.cond149.preheader_crit_edge

for.body144.for.cond149.preheader_crit_edge:      ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond149.preheader

for.body144.1:                                    ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #7
  %call145.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  br label %for.cond149.preheader

for.cond161.preheader:                            ; preds = %for.body156.1, %for.body156.for.cond161.preheader_crit_edge
  %call157.lcssa = phi i32 [ %call157, %for.body156.for.cond161.preheader_crit_edge ], [ %call157.1, %for.body156.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.lcssa)
  %tobool165.not307 = icmp eq i32 %call157.lcssa, 0
  br i1 %tobool165.not307, label %for.body168, label %for.cond161.preheader.for.end172_crit_edge

for.cond161.preheader.for.end172_crit_edge:       ; preds = %for.cond161.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end172

for.body156:                                      ; preds = %for.cond149.preheader
  %call157 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool153.not = icmp eq i32 %call157, 0
  br i1 %tobool153.not, label %for.body156.1, label %for.body156.for.cond161.preheader_crit_edge

for.body156.for.cond161.preheader_crit_edge:      ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond161.preheader

for.body156.1:                                    ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #7
  %call157.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  br label %for.cond161.preheader

for.body168:                                      ; preds = %for.cond161.preheader
  %call169 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool165.not = icmp eq i32 %call169, 0
  br i1 %tobool165.not, label %for.body168.1, label %for.body168.for.end172_crit_edge

for.body168.for.end172_crit_edge:                 ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end172

for.body168.1:                                    ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #7
  %call169.1 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  br label %for.end172

for.end172:                                       ; preds = %for.body168.1, %for.body168.for.end172_crit_edge, %for.cond161.preheader.for.end172_crit_edge, %for.cond149.preheader.for.end172_crit_edge
  %err.3.lcssa = phi i32 [ %call157.lcssa, %for.cond161.preheader.for.end172_crit_edge ], [ %call145.lcssa, %for.cond149.preheader.for.end172_crit_edge ], [ %call169, %for.body168.for.end172_crit_edge ], [ %call169.1, %for.body168.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3.lcssa)
  %cmp173 = icmp slt i32 %err.3.lcssa, 0
  br i1 %cmp173, label %for.end172.cleanup_crit_edge, label %for.end172.if.end176_crit_edge

for.end172.if.end176_crit_edge:                   ; preds = %for.end172
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

for.end172.cleanup_crit_edge:                     ; preds = %for.end172
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end176:                                        ; preds = %for.end172.if.end176_crit_edge, %for.cond137.preheader.if.end176_crit_edge
  %25 = lshr i32 %width.0, 8
  %conv179 = trunc i32 %25 to i8
  %call180 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv179) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.end176.cleanup_crit_edge, label %if.end184

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end184:                                        ; preds = %if.end176
  %conv186 = trunc i32 %width.0 to i8
  %call187 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 7, i8 noundef zeroext %conv186) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.end184.cleanup_crit_edge, label %if.end191

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end191:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #7
  %call192 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext 10, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %if.end184.cleanup_crit_edge, %if.end176.cleanup_crit_edge, %for.end172.cleanup_crit_edge, %if.end129.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call192, %if.end191 ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ], [ %call23, %if.end19.cleanup_crit_edge ], [ %call32, %if.end27.cleanup_crit_edge ], [ %call43, %sw.bb42.cleanup_crit_edge ], [ %call52, %if.end47.cleanup_crit_edge ], [ %call60, %if.end56.cleanup_crit_edge ], [ %call69, %if.end64.cleanup_crit_edge ], [ %call80, %sw.epilog.cleanup_crit_edge ], [ %call85, %if.end84.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ], [ %call95, %if.end94.cleanup_crit_edge ], [ %call103, %if.end99.cleanup_crit_edge ], [ %call110, %if.end107.cleanup_crit_edge ], [ %call117.lcssa, %for.end.cleanup_crit_edge ], [ %call125, %if.end121.cleanup_crit_edge ], [ %call132, %if.end129.cleanup_crit_edge ], [ %err.3.lcssa, %for.end172.cleanup_crit_edge ], [ %call180, %if.end176.cleanup_crit_edge ], [ %call187, %if.end184.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @po1030_disconnect(ptr nocapture noundef writeonly %sd) #4 align 64 {
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
define internal i32 @po1030_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %i2c_data.i82 = alloca i8, align 1
  %i2c_data.i76 = alloca i8, align 1
  %i2c_data.i71 = alloca i8, align 1
  %i2c_data.i61 = alloca i8, align 1
  %i2c_data.i = alloca i8, align 1
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
  %3 = load i8, ptr %streaming, align 2, !range !123
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963788, label %sw.bb
    i32 10094849, label %sw.bb18
    i32 9963795, label %sw.bb28
    i32 9963796, label %sw.bb31
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i) #5
  %9 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %i2c_data.i, align 1, !annotation !124
  %call.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 62, ptr noundef nonnull %i2c_data.i, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %po1030_set_auto_white_balance.exit.thread, label %do.body.i

po1030_set_auto_white_balance.exit.thread:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i) #5
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp1.i = icmp sgt i32 %10, 1
  br i1 %cmp1.i, label %do.end.i, label %do.body.i.po1030_set_auto_white_balance.exit_crit_edge

do.body.i.po1030_set_auto_white_balance.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %po1030_set_auto_white_balance.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %8) #8
  br label %po1030_set_auto_white_balance.exit

po1030_set_auto_white_balance.exit:               ; preds = %do.end.i, %do.body.i.po1030_set_auto_white_balance.exit_crit_edge
  %11 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_data.i, align 1
  %13 = and i8 %12, -2
  %14 = trunc i32 %8 to i8
  %15 = and i8 %14, 1
  %conv9.i = or i8 %13, %15
  store i8 %conv9.i, ptr %i2c_data.i, align 1
  %call10.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 62, ptr noundef nonnull %i2c_data.i, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool1.not = icmp eq i32 %call10.i, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %po1030_set_auto_white_balance.exit.cleanup_crit_edge

po1030_set_auto_white_balance.exit.cleanup_crit_edge: ; preds = %po1030_set_auto_white_balance.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %po1030_set_auto_white_balance.exit
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %green_bal = getelementptr i8, ptr %1, i32 1052
  %18 = ptrtoint ptr %green_bal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %green_bal, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val6, align 4
  %call7 = call fastcc i32 @po1030_set_green_balance(ptr noundef %add.ptr, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %red_bal = getelementptr i8, ptr %1, i32 1044
  %22 = ptrtoint ptr %red_bal to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %red_bal, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val11, align 4
  %call12 = call fastcc i32 @po1030_set_red_balance(ptr noundef %add.ptr, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %blue_bal = getelementptr i8, ptr %1, i32 1048
  %26 = ptrtoint ptr %blue_bal to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blue_bal, align 8
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val16, align 4
  %call17 = call fastcc i32 @po1030_set_blue_balance(ptr noundef %add.ptr, i32 noundef %29)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %30 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val19, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i61) #5
  %32 = ptrtoint ptr %i2c_data.i61 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %i2c_data.i61, align 1, !annotation !124
  %call.i62 = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 62, ptr noundef nonnull %i2c_data.i61, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %po1030_set_auto_exposure.exit.thread, label %do.body.i65

po1030_set_auto_exposure.exit.thread:             ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i61) #5
  br label %cleanup

do.body.i65:                                      ; preds = %sw.bb18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %33 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp1.i64 = icmp sgt i32 %33, 1
  br i1 %cmp1.i64, label %do.end.i68, label %do.body.i65.po1030_set_auto_exposure.exit_crit_edge

do.body.i65.po1030_set_auto_exposure.exit_crit_edge: ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %po1030_set_auto_exposure.exit

do.end.i68:                                       ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #7
  %name.i66 = getelementptr i8, ptr %1, i32 -168
  %call4.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name.i66, i32 noundef %31) #8
  br label %po1030_set_auto_exposure.exit

po1030_set_auto_exposure.exit:                    ; preds = %do.end.i68, %do.body.i65.po1030_set_auto_exposure.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp8.i = icmp eq i32 %31, 0
  %34 = ptrtoint ptr %i2c_data.i61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i2c_data.i61, align 1
  %36 = and i8 %35, -3
  %shl.i = select i1 %cmp8.i, i8 2, i8 0
  %or.i = or i8 %36, %shl.i
  store i8 %or.i, ptr %i2c_data.i61, align 1
  %call12.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 62, ptr noundef nonnull %i2c_data.i61, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool21.not = icmp eq i32 %call12.i, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %po1030_set_auto_exposure.exit.cleanup_crit_edge

po1030_set_auto_exposure.exit.cleanup_crit_edge:  ; preds = %po1030_set_auto_exposure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false22:                                  ; preds = %po1030_set_auto_exposure.exit
  %37 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %lor.lhs.false22.cleanup_crit_edge, label %if.end25

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false22
  %expo = getelementptr i8, ptr %1, i32 1060
  %39 = ptrtoint ptr %expo to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %expo, align 4
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val26, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i71) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %43 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.i72 = icmp sgt i32 %43, 1
  br i1 %cmp.i72, label %do.end3.i, label %do.end3.thread.i

do.end3.thread.i:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %and455.i = lshr i32 %42, 8
  %conv56.i = trunc i32 %and455.i to i8
  %44 = ptrtoint ptr %i2c_data.i71 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv56.i, ptr %i2c_data.i71, align 1
  br label %do.end20.i

do.end3.i:                                        ; preds = %if.end25
  %name.i73 = getelementptr i8, ptr %1, i32 -168
  %and.i = and i32 %42, 65535
  %call.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name.i73, i32 noundef %and.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr.i = load i32, ptr @gspca_debug, align 4
  %and4.i = lshr i32 %42, 8
  %conv.i = trunc i32 %and4.i to i8
  %45 = ptrtoint ptr %i2c_data.i71 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %i2c_data.i71, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp6.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp6.i, label %do.end11.i, label %do.end3.i.do.end20.i_crit_edge

do.end3.i.do.end20.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20.i

do.end11.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.i = and i32 %and4.i, 255
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name.i73, i32 noundef %conv16.i) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end11.i, %do.end3.i.do.end20.i_crit_edge, %do.end3.thread.i
  %call21.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 26, ptr noundef nonnull %i2c_data.i71, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %do.end20.i.po1030_set_exposure.exit_crit_edge, label %if.end25.i

do.end20.i.po1030_set_exposure.exit_crit_edge:    ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %po1030_set_exposure.exit

if.end25.i:                                       ; preds = %do.end20.i
  %conv27.i = trunc i32 %42 to i8
  %46 = ptrtoint ptr %i2c_data.i71 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv27.i, ptr %i2c_data.i71, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %47 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp29.i = icmp sgt i32 %47, 1
  br i1 %cmp29.i, label %do.end34.i, label %if.end25.i.do.end43.i_crit_edge

if.end25.i.do.end43.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.i

do.end34.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %name37.i = getelementptr i8, ptr %1, i32 -168
  %conv39.i = and i32 %42, 255
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name37.i, i32 noundef %conv39.i) #8
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end34.i, %if.end25.i.do.end43.i_crit_edge
  %call44.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 27, ptr noundef nonnull %i2c_data.i71, i8 noundef zeroext 1) #5
  br label %po1030_set_exposure.exit

po1030_set_exposure.exit:                         ; preds = %do.end43.i, %do.end20.i.po1030_set_exposure.exit_crit_edge
  %retval.0.i75 = phi i32 [ %call44.i, %do.end43.i ], [ %call21.i, %do.end20.i.po1030_set_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i71) #5
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val29, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i76) #5
  %conv.i77 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %i2c_data.i76 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i77, ptr %i2c_data.i76, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i78 = icmp sgt i32 %51, 1
  br i1 %cmp.i78, label %do.end.i81, label %sw.bb28.po1030_set_gain.exit_crit_edge

sw.bb28.po1030_set_gain.exit_crit_edge:           ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  br label %po1030_set_gain.exit

do.end.i81:                                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %name.i79 = getelementptr i8, ptr %1, i32 -168
  %conv3.i = and i32 %49, 255
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name.i79, i32 noundef %conv3.i) #8
  br label %po1030_set_gain.exit

po1030_set_gain.exit:                             ; preds = %do.end.i81, %sw.bb28.po1030_set_gain.exit_crit_edge
  %call6.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 21, ptr noundef nonnull %i2c_data.i76, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i76) #5
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i82) #5
  %52 = ptrtoint ptr %i2c_data.i82 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %i2c_data.i82, align 1, !annotation !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %53 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i83 = icmp sgt i32 %53, 1
  br i1 %cmp.i83, label %do.end.i86, label %sw.bb31.do.end4.i_crit_edge

sw.bb31.do.end4.i_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i86:                                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  %name.i84 = getelementptr i8, ptr %1, i32 -168
  %54 = getelementptr i8, ptr %1, i32 1072
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val.i, align 4
  %vflip.i = getelementptr i8, ptr %1, i32 1076
  %59 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vflip.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 22
  %61 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val2.i, align 4
  %call.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i84, i32 noundef %58, i32 noundef %62) #8
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i86, %sw.bb31.do.end4.i_crit_edge
  %call5.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 30, ptr noundef nonnull %i2c_data.i82, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i87 = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i87, label %do.end4.i.po1030_set_hvflip.exit_crit_edge, label %if.end8.i

do.end4.i.po1030_set_hvflip.exit_crit_edge:       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %po1030_set_hvflip.exit

if.end8.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %i2c_data.i82 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %i2c_data.i82, align 1
  %65 = and i8 %64, 63
  %and.i88 = zext i8 %65 to i32
  %66 = getelementptr i8, ptr %1, i32 1072
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %val10.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 22
  %69 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val10.i, align 4
  %shl.i89 = shl i32 %70, 7
  %or.i90 = or i32 %shl.i89, %and.i88
  %vflip11.i = getelementptr i8, ptr %1, i32 1076
  %71 = ptrtoint ptr %vflip11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vflip11.i, align 4
  %val12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %72, i32 0, i32 22
  %73 = ptrtoint ptr %val12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val12.i, align 4
  %shl13.i = shl i32 %74, 6
  %or14.i = or i32 %shl13.i, %or.i90
  %conv15.i = trunc i32 %or14.i to i8
  store i8 %conv15.i, ptr %i2c_data.i82, align 1
  %call16.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 30, ptr noundef nonnull %i2c_data.i82, i8 noundef zeroext 1) #5
  br label %po1030_set_hvflip.exit

po1030_set_hvflip.exit:                           ; preds = %if.end8.i, %do.end4.i.po1030_set_hvflip.exit_crit_edge
  %retval.0.i91 = phi i32 [ %call16.i, %if.end8.i ], [ %call5.i, %do.end4.i.po1030_set_hvflip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i82) #5
  br label %cleanup

cleanup:                                          ; preds = %po1030_set_hvflip.exit, %po1030_set_gain.exit, %po1030_set_exposure.exit, %lor.lhs.false22.cleanup_crit_edge, %po1030_set_auto_exposure.exit.cleanup_crit_edge, %po1030_set_auto_exposure.exit.thread, %if.end15, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %po1030_set_auto_white_balance.exit.cleanup_crit_edge, %po1030_set_auto_white_balance.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call10.i, %po1030_set_auto_white_balance.exit.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ 0, %lor.lhs.false22.cleanup_crit_edge ], [ %call12.i, %po1030_set_auto_exposure.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i91, %po1030_set_hvflip.exit ], [ %call6.i, %po1030_set_gain.exit ], [ %retval.0.i75, %po1030_set_exposure.exit ], [ %call17, %if.end15 ], [ %call.i, %po1030_set_auto_white_balance.exit.thread ], [ %call.i62, %po1030_set_auto_exposure.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @po1030_set_green_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #5
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %i2c_data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv3 = and i32 %val, 255
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %conv3) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 23, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end5.cleanup_crit_edge, label %if.end10

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 25, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call6, %do.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @po1030_set_red_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #5
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %i2c_data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv3 = and i32 %val, 255
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %conv3) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 22, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #5
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @po1030_set_blue_balance(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #5
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %i2c_data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv3 = and i32 %val, 255
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %conv3) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 24, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #5
  ret i32 %call6
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 163, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @po1030_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @po1030_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 171, i32 2}
!8 = !{ptr @po1030_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @po1030_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 190, i32 3}
!12 = !{ptr @po1030_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @po1030_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 224, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @po1030_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @po1030_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @po1030_init_controls._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 242, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 269, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @po1030_init_controls._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @po1030_init_controls._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @po1030, !28, !"po1030", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.h", i32 154, i32 34}
!29 = !{ptr @preinit_po1030, !30, !"preinit_po1030", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 22, i32 28}
!31 = !{ptr @po1030_modes, !32, !"po1030_modes", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 126, i32 31}
!33 = !{ptr @init_po1030, !34, !"init_po1030", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 48, i32 28}
!35 = !{ptr @po1030_ctrl_ops, !36, !"po1030_ctrl_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 139, i32 35}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 523, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @po1030_set_auto_white_balance._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @po1030_set_auto_white_balance._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 501, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @po1030_set_green_balance._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @po1030_set_green_balance._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 474, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @po1030_set_red_balance._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @po1030_set_red_balance._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 487, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @po1030_set_blue_balance._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @po1030_set_blue_balance._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 540, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @po1030_set_auto_exposure._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @po1030_set_auto_exposure._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 413, i32 2}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @po1030_set_exposure._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @po1030_set_exposure._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 416, i32 2}
!69 = !{ptr @po1030_set_exposure._entry.26, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @po1030_set_exposure._entry_ptr.28, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 425, i32 2}
!73 = !{ptr @po1030_set_exposure._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @po1030_set_exposure._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 440, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @po1030_set_gain._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @po1030_set_gain._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 452, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @po1030_set_hvflip._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @po1030_set_hvflip._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 146, i32 10}
!87 = !{ptr @po1030_greenbal_cfg, !88, !"po1030_greenbal_cfg", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 143, i32 38}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 598, i32 2}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @po1030_dump_registers._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @po1030_dump_registers._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 601, i32 3}
!96 = !{ptr @po1030_dump_registers._entry.39, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @po1030_dump_registers._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 604, i32 2}
!100 = !{ptr @po1030_dump_registers._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @po1030_dump_registers._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 606, i32 2}
!104 = !{ptr @po1030_dump_registers._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @po1030_dump_registers._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 616, i32 4}
!108 = !{ptr @po1030_dump_registers._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @po1030_dump_registers._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.c", i32 618, i32 4}
!112 = !{ptr @po1030_dump_registers._entry.51, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @po1030_dump_registers._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i8 0, i8 2}
!124 = !{!"auto-init"}
