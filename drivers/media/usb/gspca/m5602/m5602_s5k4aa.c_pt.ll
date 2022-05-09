; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_s5k4aa.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c"
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

@__const.s5k4aa_probe.expected_prod_id = private unnamed_addr constant [6 x i8] c"\00\10\00K3u", align 1
@force_sensor = external dso_local local_unnamed_addr global i32, align 4
@s5k4aa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gspca_m5602: Forcing a %s sensor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5k4aa_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/gspca/m5602/m5602_s5k4aa.c\00", [51 x i8] zeroinitializer }, align 32
@s5k4aa_probe._entry_ptr = internal global ptr @s5k4aa_probe._entry, section ".printk_index", align 4
@s5k4aa = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"S5K4AA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 90, i8 2, ptr @s5k4aa_probe, ptr @s5k4aa_init, ptr @s5k4aa_init_controls, ptr @s5k4aa_start, ptr null, ptr @s5k4aa_disconnect }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@s5k4aa_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Probing for a s5k4aa sensor\0A\00", [61 x i8] zeroinitializer }, align 32
@s5k4aa_probe._entry_ptr.5 = internal global ptr @s5k4aa_probe._entry.3, section ".printk_index", align 4
@preinit_s5k4aa = internal constant { [37 x [4 x i8]], [44 x i8] } { [37 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0D\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\08\00", [4 x i8] c"\00\15\B0\00", [4 x i8] c"\00\14\80\00", [4 x i8] c"\00t?\00", [4 x i8] c"\00r?\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\00\00", [4 x i8] c"\00u\FF\00", [4 x i8] c"\00s\FF\00", [4 x i8] c"\00q\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\08\00", [4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\14\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\F0\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\1C\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00i \00", [4 x i8] c"\01\EC\00\00"], [44 x i8] zeroinitializer }, align 32
@s5k4aa_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: Invalid stream command, exiting init\0A\00", [43 x i8] zeroinitializer }, align 32
@s5k4aa_probe._entry_ptr.8 = internal global ptr @s5k4aa_probe._entry.6, section ".printk_index", align 4
@s5k4aa_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_m5602: Detected a s5k4aa sensor\0A\00", [55 x i8] zeroinitializer }, align 32
@s5k4aa_probe._entry_ptr.11 = internal global ptr @s5k4aa_probe._entry.9, section ".printk_index", align 4
@s5k4aa_modes = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 1280, i32 1024, i32 825770306, i32 1, i32 1280, i32 1310720, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Configuring camera for SXGA mode\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5k4aa_start\00", [19 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry_ptr = internal global ptr @s5k4aa_start._entry, section ".printk_index", align 4
@SXGA_s5k4aa = internal constant { [43 x [4 x i8]], [52 x i8] } { [43 x [4 x i8]] [[4 x i8] c"\00\15\06\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\08\00", [4 x i8] c"\00\02\81\00", [4 x i8] c"\00\04\82\00", [4 x i8] c"\00\0A\01\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\04\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\0A\02\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07\05\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\A0\00", [4 x i8] c"\01\EC\02\00", [4 x i8] c"\01\03@\00", [4 x i8] c"\017\01\00", [4 x i8] c"\01\04\00\00", [4 x i8] c"\01\05\09\00", [4 x i8] c"\01\06\00\00", [4 x i8] c"\01\07\0A\00", [4 x i8] c"\01\08\04\00", [4 x i8] c"\01\09\00\00", [4 x i8] c"\01\0A\05\00", [4 x i8] c"\01\0B\00\00", [4 x i8] c"\01\1D\01\00", [4 x i8] c"\01\1E\A8\00", [4 x i8] c"\01\17\01\00", [4 x i8] c"\01\18\00\00", [4 x i8] c"\01\11\04\00", [4 x i8] c"\01\12\C3\00", [4 x i8] c"\01\EC\02\00", [4 x i8] c"\01\02\0E\00"], [52 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gspca_m5602: Invalid stream command, exiting init\0A\00", [43 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry_ptr.16 = internal global ptr @s5k4aa_start._entry.14, section ".printk_index", align 4
@s5k4aa_start._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Configuring camera for VGA mode\0A\00", [57 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry_ptr.19 = internal global ptr @s5k4aa_start._entry.17, section ".printk_index", align 4
@VGA_s5k4aa = internal constant { [43 x [4 x i8]], [52 x i8] } { [43 x [4 x i8]] [[4 x i8] c"\00\15\06\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\08\00", [4 x i8] c"\00\02\81\00", [4 x i8] c"\00\04\82\00", [4 x i8] c"\00\0A\01\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\01\00", [4 x i8] c"\00\06\E0\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\0A\02\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07\02\00", [4 x i8] c"\00\07\80\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\A0\00", [4 x i8] c"\01\EC\02\00", [4 x i8] c"\01\03E\00", [4 x i8] c"\017\01\00", [4 x i8] c"\01\04\00\00", [4 x i8] c"\01\05)\00", [4 x i8] c"\01\06\00\00", [4 x i8] c"\01\07\0C\00", [4 x i8] c"\01\08\03\00", [4 x i8] c"\01\09\C0\00", [4 x i8] c"\01\0A\05\00", [4 x i8] c"\01\0B\00\00", [4 x i8] c"\01\1D\00\00", [4 x i8] c"\01\1E\A8\00", [4 x i8] c"\01\17\01\00", [4 x i8] c"\01\18\00\00", [4 x i8] c"\01\11\04\00", [4 x i8] c"\01\12\C3\00", [4 x i8] c"\01\EC\02\00", [4 x i8] c"\01\02\0E\00"], [52 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5k4aa_start._entry_ptr.21 = internal global ptr @s5k4aa_start._entry.20, section ".printk_index", align 4
@init_s5k4aa = internal constant { [45 x [4 x i8]], [44 x i8] } { [45 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0D\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\08\00", [4 x i8] c"\00\15\B0\00", [4 x i8] c"\00\14\80\00", [4 x i8] c"\00t?\00", [4 x i8] c"\00r?\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\00\00", [4 x i8] c"\00u\FF\00", [4 x i8] c"\00s\FF\00", [4 x i8] c"\00q\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\08\00", [4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\14\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\F0\00", [4 x i8] c"\00w\1D\00", [4 x i8] c"\00v\1C\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00i \00", [4 x i8] c"\01\EC\07\00", [4 x i8] c"\016\01\00", [4 x i8] c"\01\EC\00\00", [4 x i8] c"\01{\FF\00", [4 x i8] c"\01\EC\02\00", [4 x i8] c"\01\0C\05\00", [4 x i8] c"\01\02\0E\00", [4 x i8] c"\01\03\A0\00", [4 x i8] c"\017\00\00"], [44 x i8] zeroinitializer }, align 32
@s5k4aa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.22, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5k4aa_init\00", [20 x i8] zeroinitializer }, align 32
@s5k4aa_init._entry_ptr = internal global ptr @s5k4aa_init._entry, section ".printk_index", align 4
@dump_sensor = external dso_local local_unnamed_addr global i8, align 1
@s5k4aa_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m5602_s5k4aa:532:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@s5k4aa_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s5k4aa_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@s5k4aa_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_m5602: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5k4aa_init_controls\00", [43 x i8] zeroinitializer }, align 32
@s5k4aa_init_controls._entry_ptr = internal global ptr @s5k4aa_init_controls._entry, section ".printk_index", align 4
@s5k4aa_set_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Set brightness to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5k4aa_set_brightness\00", [42 x i8] zeroinitializer }, align 32
@s5k4aa_set_brightness._entry_ptr = internal global ptr @s5k4aa_set_brightness._entry, section ".printk_index", align 4
@s5k4aa_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Set exposure to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5k4aa_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@s5k4aa_set_exposure._entry_ptr = internal global ptr @s5k4aa_set_exposure._entry, section ".printk_index", align 4
@s5k4aa_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Set gain to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5k4aa_set_gain\00", [16 x i8] zeroinitializer }, align 32
@s5k4aa_set_gain._entry_ptr = internal global ptr @s5k4aa_set_gain._entry, section ".printk_index", align 4
@s5k4aa_set_noise._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Set noise to %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5k4aa_set_noise\00", [47 x i8] zeroinitializer }, align 32
@s5k4aa_set_noise._entry_ptr = internal global ptr @s5k4aa_set_noise._entry, section ".printk_index", align 4
@s5k4aa_set_hvflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Set hvflip %d %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5k4aa_set_hvflip\00", [46 x i8] zeroinitializer }, align 32
@s5k4aa_set_hvflip._entry_ptr = internal global ptr @s5k4aa_set_hvflip._entry, section ".printk_index", align 4
@s5k4aa_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016gspca_m5602: Dumping the s5k4aa register state for page 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5k4aa_dump_registers\00", [42 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr = internal global ptr @s5k4aa_dump_registers._entry, section ".printk_index", align 4
@s5k4aa_dump_registers._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_m5602: register 0x%x contains 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr.51 = internal global ptr @s5k4aa_dump_registers._entry.49, section ".printk_index", align 4
@s5k4aa_dump_registers._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gspca_m5602: s5k4aa register state dump complete\0A\00", [44 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr.54 = internal global ptr @s5k4aa_dump_registers._entry.52, section ".printk_index", align 4
@s5k4aa_dump_registers._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016gspca_m5602: Probing for which registers that are read/write for page 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr.57 = internal global ptr @s5k4aa_dump_registers._entry.55, section ".printk_index", align 4
@s5k4aa_dump_registers._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.2, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is writeable\0A\00", [53 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr.60 = internal global ptr @s5k4aa_dump_registers._entry.58, section ".printk_index", align 4
@s5k4aa_dump_registers._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.2, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is read only\0A\00", [53 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr.63 = internal global ptr @s5k4aa_dump_registers._entry.61, section ".printk_index", align 4
@s5k4aa_dump_registers._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.48, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: Read/write register probing complete\0A\00", [43 x i8] zeroinitializer }, align 32
@s5k4aa_dump_registers._entry_ptr.66 = internal global ptr @s5k4aa_dump_registers._entry.64, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 640, i64 1280]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963793, i64 9963795, i64 9963796, i64 9963803]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 348, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"s5k4aa\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 72, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 356, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"preinit_s5k4aa\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 19, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 384, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 400, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"s5k4aa_modes\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 314, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 418, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"SXGA_s5k4aa\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 168, i32 28 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 444, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 451, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"VGA_s5k4aa\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 113, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 477, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"init_s5k4aa\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 62, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 516, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 532, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"s5k4aa_ctrl_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 221, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 552, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 656, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 567, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 639, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 671, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 589, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 724, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 729, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 733, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 737, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 747, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 750, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 757, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @s5k4aa_dump_registers._entry, ptr @s5k4aa_dump_registers._entry.49, ptr @s5k4aa_dump_registers._entry.52, ptr @s5k4aa_dump_registers._entry.55, ptr @s5k4aa_dump_registers._entry.58, ptr @s5k4aa_dump_registers._entry.61, ptr @s5k4aa_dump_registers._entry.64, ptr @s5k4aa_dump_registers._entry_ptr, ptr @s5k4aa_dump_registers._entry_ptr.51, ptr @s5k4aa_dump_registers._entry_ptr.54, ptr @s5k4aa_dump_registers._entry_ptr.57, ptr @s5k4aa_dump_registers._entry_ptr.60, ptr @s5k4aa_dump_registers._entry_ptr.63, ptr @s5k4aa_dump_registers._entry_ptr.66, ptr @s5k4aa_init._entry, ptr @s5k4aa_init._entry_ptr, ptr @s5k4aa_init_controls._entry, ptr @s5k4aa_init_controls._entry_ptr, ptr @s5k4aa_probe._entry, ptr @s5k4aa_probe._entry.3, ptr @s5k4aa_probe._entry.6, ptr @s5k4aa_probe._entry.9, ptr @s5k4aa_probe._entry_ptr, ptr @s5k4aa_probe._entry_ptr.11, ptr @s5k4aa_probe._entry_ptr.5, ptr @s5k4aa_probe._entry_ptr.8, ptr @s5k4aa_set_brightness._entry, ptr @s5k4aa_set_brightness._entry_ptr, ptr @s5k4aa_set_exposure._entry, ptr @s5k4aa_set_exposure._entry_ptr, ptr @s5k4aa_set_gain._entry, ptr @s5k4aa_set_gain._entry_ptr, ptr @s5k4aa_set_hvflip._entry, ptr @s5k4aa_set_hvflip._entry_ptr, ptr @s5k4aa_set_noise._entry, ptr @s5k4aa_set_noise._entry_ptr, ptr @s5k4aa_start._entry, ptr @s5k4aa_start._entry.14, ptr @s5k4aa_start._entry.17, ptr @s5k4aa_start._entry.20, ptr @s5k4aa_start._entry_ptr, ptr @s5k4aa_start._entry_ptr.16, ptr @s5k4aa_start._entry_ptr.19, ptr @s5k4aa_start._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @s5k4aa, ptr @.str.4, ptr @preinit_s5k4aa, ptr @.str.7, ptr @.str.10, ptr @s5k4aa_modes, ptr @.str.12, ptr @.str.13, ptr @SXGA_s5k4aa, ptr @.str.15, ptr @.str.18, ptr @VGA_s5k4aa, ptr @init_s5k4aa, ptr @.str.22, ptr @s5k4aa_init_controls._key, ptr @.str.23, ptr @s5k4aa_ctrl_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preinit_s5k4aa to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_modes to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SXGA_s5k4aa to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_start._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_start._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VGA_s5k4aa to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_start._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_s5k4aa to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_set_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_set_noise._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_set_hvflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa_dump_registers._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k4aa_probe(ptr noundef %sd) #0 align 64 {
entry:
  %prod_id = alloca [6 x i8], align 1
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %prod_id) #7
  %0 = call ptr @memset(ptr %prod_id, i32 0, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_sensor to i32))
  %1 = load i32, ptr @force_sensor, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup76_crit_edge [
    i32 0, label %do.body3
    i32 3, label %do.end
  ]

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @s5k4aa) #10
  br label %sensor_found

do.body3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %do.end8, label %do.body3.do.end13_crit_edge

do.body3.do.end13_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end8, %do.body3.do.end13_crit_edge
  %arrayidx36 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end13
  %i.0101 = phi i32 [ 0, %do.end13 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %data, align 2
  %arrayidx = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %6, label %cleanup [
    i8 0, label %sw.bb
    i8 1, label %sw.bb22
    i8 2, label %sw.bb30
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 1
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 2
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %call21 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %9, i8 noundef zeroext %11) #7
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx24 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 2
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24, align 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %data, align 2
  %arrayidx27 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 1
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx27, align 1
  %call29 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %16, ptr noundef nonnull %data, i8 noundef zeroext 1) #7
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx32 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 2
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %data, align 2
  %arrayidx35 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 3
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx35, align 1
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx36, align 1
  %arrayidx38 = getelementptr [37 x [4 x i8]], ptr @preinit_s5k4aa, i32 0, i32 %i.0101, i32 1
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx38, align 1
  %call40 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %24, ptr noundef nonnull %data, i8 noundef zeroext 2) #7
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  br label %cleanup76

for.inc:                                          ; preds = %sw.bb30, %sw.bb22, %sw.bb
  %err.2.ph = phi i32 [ %call21, %sw.bb ], [ %call29, %sw.bb22 ], [ %call40, %sw.bb30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  %inc = add nuw nsw i32 %i.0101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %i.0101)
  %cmp14 = icmp ult i32 %i.0101, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %tobool15.not = icmp eq i32 %err.2.ph, 0
  %or.cond = select i1 %cmp14, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call47 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %prod_id, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %for.end.cleanup76_crit_edge

for.end.cleanup76_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.end50:                                         ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, ptr %prod_id, i32 2
  %call52 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 2, ptr noundef %add.ptr, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup76_crit_edge

if.end50.cleanup76_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.end55:                                         ; preds = %if.end50
  %add.ptr57 = getelementptr inbounds i8, ptr %prod_id, i32 4
  %call58 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 4, ptr noundef %add.ptr57, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end55.cleanup76_crit_edge

if.end55.cleanup76_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

if.end61:                                         ; preds = %if.end55
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %prod_id, ptr noundef nonnull dereferenceable(6) @__const.s5k4aa_probe.expected_prod_id, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool65.not = icmp eq i32 %bcmp, 0
  br i1 %tobool65.not, label %do.end69, label %if.end61.cleanup76_crit_edge

if.end61.cleanup76_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup76

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %sensor_found

sensor_found:                                     ; preds = %do.end69, %do.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %25 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @s5k4aa_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %nmodes, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %sensor_found, %if.end61.cleanup76_crit_edge, %if.end55.cleanup76_crit_edge, %if.end50.cleanup76_crit_edge, %for.end.cleanup76_crit_edge, %cleanup, %entry.cleanup76_crit_edge
  %retval.2 = phi i32 [ 0, %sensor_found ], [ -22, %cleanup ], [ -19, %entry.cleanup76_crit_edge ], [ -19, %for.end.cleanup76_crit_edge ], [ -19, %if.end50.cleanup76_crit_edge ], [ -19, %if.end55.cleanup76_crit_edge ], [ -19, %if.end61.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %prod_id) #7
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_bridge(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_write_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k4aa_start(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !147
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !147
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
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 1280, label %do.body
    i32 640, label %do.body41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %do.end, label %do.body.for.body.preheader_crit_edge

do.body.for.body.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %do.body.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0143 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx8 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %12, label %do.end37 [
    i8 0, label %sw.bb10
    i8 1, label %sw.bb16
    i8 2, label %sw.bb24
  ]

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 2
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 1
  %call15 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %15, i8 noundef zeroext %17) #7
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 2
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %data, align 1
  %arrayidx21 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 1
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21, align 1
  %call23 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %22, ptr noundef nonnull %data, i8 noundef zeroext 1) #7
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx26 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 2
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26, align 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %data, align 1
  %arrayidx29 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 3
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %1, align 1
  %arrayidx32 = getelementptr [43 x [4 x i8]], ptr @SXGA_s5k4aa, i32 0, i32 %i.0143, i32 1
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx32, align 1
  %call34 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %30, ptr noundef nonnull %data, i8 noundef zeroext 2) #7
  br label %for.inc

do.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

for.inc:                                          ; preds = %sw.bb24, %sw.bb16, %sw.bb10
  %err.1 = phi i32 [ %call34, %sw.bb24 ], [ %call23, %sw.bb16 ], [ %call15, %sw.bb10 ]
  %inc = add nuw nsw i32 %i.0143, 1
  %exitcond146.not = icmp eq i32 %inc, 43
  br i1 %exitcond146.not, label %for.inc.sw.epilog98_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.sw.epilog98_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog98

do.body41:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp42 = icmp sgt i32 %31, 1
  br i1 %cmp42, label %do.end47, label %do.body41.for.body59.preheader_crit_edge

do.body41.for.body59.preheader_crit_edge:         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59.preheader

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %name50 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name50) #10
  br label %for.body59.preheader

for.body59.preheader:                             ; preds = %do.end47, %do.body41.for.body59.preheader_crit_edge
  br label %for.body59

for.body59:                                       ; preds = %for.inc95.for.body59_crit_edge, %for.body59.preheader
  %i.1141 = phi i32 [ %inc96, %for.inc95.for.body59_crit_edge ], [ 0, %for.body59.preheader ]
  %arrayidx60 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141
  %32 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx60, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %33, label %do.end91 [
    i8 0, label %sw.bb63
    i8 1, label %sw.bb69
    i8 2, label %sw.bb77
  ]

sw.bb63:                                          ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx65 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 1
  %35 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx65, align 1
  %arrayidx67 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 2
  %37 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx67, align 1
  %call68 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %36, i8 noundef zeroext %38) #7
  br label %for.inc95

sw.bb69:                                          ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx71 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 2
  %39 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx71, align 1
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %data, align 1
  %arrayidx74 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 1
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx74, align 1
  %call76 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %43, ptr noundef nonnull %data, i8 noundef zeroext 1) #7
  br label %for.inc95

sw.bb77:                                          ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx79 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 2
  %44 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx79, align 1
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %data, align 1
  %arrayidx82 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 3
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx82, align 1
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %1, align 1
  %arrayidx85 = getelementptr [43 x [4 x i8]], ptr @VGA_s5k4aa, i32 0, i32 %i.1141, i32 1
  %50 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx85, align 1
  %call87 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %51, ptr noundef nonnull %data, i8 noundef zeroext 2) #7
  br label %for.inc95

do.end91:                                         ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

for.inc95:                                        ; preds = %sw.bb77, %sw.bb69, %sw.bb63
  %err.3 = phi i32 [ %call87, %sw.bb77 ], [ %call76, %sw.bb69 ], [ %call68, %sw.bb63 ]
  %inc96 = add nuw nsw i32 %i.1141, 1
  %exitcond.not = icmp eq i32 %inc96, 43
  br i1 %exitcond.not, label %for.inc95.sw.epilog98_crit_edge, label %for.inc95.for.body59_crit_edge

for.inc95.for.body59_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

for.inc95.sw.epilog98_crit_edge:                  ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog98

sw.epilog98:                                      ; preds = %for.inc95.sw.epilog98_crit_edge, %for.inc.sw.epilog98_crit_edge
  %err.4 = phi i32 [ %err.1, %for.inc.sw.epilog98_crit_edge ], [ %err.3, %for.inc95.sw.epilog98_crit_edge ]
  %52 = call i32 @llvm.smin.i32(i32 %err.4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog98, %do.end91, %do.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end91 ], [ -22, %do.end37 ], [ 0, %entry.cleanup_crit_edge ], [ %52, %sw.epilog98 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k4aa_init(ptr noundef %sd) #0 align 64 {
entry:
  %page.i = alloca i8, align 1
  %old_page.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  %old_value.i = alloca i8, align 1
  %ctrl_value.i = alloca i8, align 1
  %test_value.i = alloca i8, align 1
  %data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx19 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data, align 2
  %arrayidx = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %2, label %cleanup [
    i8 0, label %sw.bb
    i8 1, label %sw.bb6
    i8 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %call = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %5, i8 noundef zeroext %7) #7
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %data, align 2
  %arrayidx11 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 1
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %call12 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %12, ptr noundef nonnull %data, i8 noundef zeroext 1) #7
  br label %for.inc

sw.bb13:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %data, align 2
  %arrayidx18 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr [45 x [4 x i8]], ptr @init_s5k4aa, i32 0, i32 %i.045, i32 1
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %call23 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %20, ptr noundef nonnull %data, i8 noundef zeroext 2) #7
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  br label %cleanup26

for.inc:                                          ; preds = %sw.bb13, %sw.bb6, %sw.bb
  %err.2.ph = phi i32 [ %call, %sw.bb ], [ %call12, %sw.bb6 ], [ %call23, %sw.bb13 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  %inc = add nuw nsw i32 %i.045, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %i.045)
  %cmp = icmp ult i32 %i.045, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %tobool.not = icmp eq i32 %err.2.ph, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dump_sensor to i32))
  %21 = load i8, ptr @dump_sensor, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool25.not = icmp eq i8 %21, 0
  br i1 %tobool25.not, label %for.end.cleanup26_crit_edge, label %if.then

for.end.cleanup26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_page.i) #7
  %22 = ptrtoint ptr %old_page.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %old_page.i, align 1, !annotation !147
  %call.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %old_page.i, i8 noundef zeroext 1) #7
  %23 = ptrtoint ptr %page.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %page.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc17.i.for.body.i_crit_edge, %if.then
  %call2.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %page.i, i8 noundef zeroext 1) #7
  %24 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %page.i, align 1
  %conv3.i = zext i8 %25 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv3.i) #10
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body.i
  %address.095.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body8.i.for.body8.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %26 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %value.i, align 1
  %conv9.i = trunc i32 %address.095.i to i8
  %call10.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv9.i, ptr noundef nonnull %value.i, i8 noundef zeroext 1) #7
  %27 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %value.i, align 1
  %conv15.i = zext i8 %28 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %address.095.i, i32 noundef %conv15.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  %inc.i = add nuw nsw i32 %address.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i

for.inc17.i:                                      ; preds = %for.body8.i
  %29 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %page.i, align 1
  %inc18.i = add i8 %30, 1
  store i8 %inc18.i, ptr %page.i, align 1
  %cmp.i = icmp ult i8 %inc18.i, 16
  br i1 %cmp.i, label %for.inc17.i.for.body.i_crit_edge, label %do.end22.i

for.inc17.i.for.body.i_crit_edge:                 ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end22.i:                                       ; preds = %for.inc17.i
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #10
  %31 = ptrtoint ptr %page.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %page.i, align 1
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc66.i.for.body29.i_crit_edge, %do.end22.i
  %call30.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %page.i, i8 noundef zeroext 1) #7
  %32 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %page.i, align 1
  %conv35.i = zext i8 %33 to i32
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv35.i) #10
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.body40.i.for.body40.i_crit_edge, %for.body29.i
  %address.196.i = phi i32 [ 0, %for.body29.i ], [ %inc64.i, %for.body40.i.for.body40.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_value.i) #7
  %34 = ptrtoint ptr %old_value.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %old_value.i, align 1, !annotation !147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_value.i) #7
  %35 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %ctrl_value.i, align 1, !annotation !147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %test_value.i) #7
  %36 = ptrtoint ptr %test_value.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %test_value.i, align 1
  %conv41.i = trunc i32 %address.196.i to i8
  %call42.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #7
  %call44.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %test_value.i, i8 noundef zeroext 1) #7
  %call46.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %ctrl_value.i, i8 noundef zeroext 1) #7
  %37 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ctrl_value.i, align 1
  %39 = ptrtoint ptr %test_value.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %test_value.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp49.i = icmp eq i8 %38, %40
  %.str.59..str.62.i = select i1 %cmp49.i, ptr @.str.59, ptr @.str.62
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.59..str.62.i, i32 noundef %address.196.i) #10
  %call62.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv41.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test_value.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_value.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_value.i) #7
  %inc64.i = add nuw nsw i32 %address.196.i, 1
  %exitcond98.not.i = icmp eq i32 %inc64.i, 256
  br i1 %exitcond98.not.i, label %for.inc66.i, label %for.body40.i.for.body40.i_crit_edge

for.body40.i.for.body40.i_crit_edge:              ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body40.i

for.inc66.i:                                      ; preds = %for.body40.i
  %41 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %page.i, align 1
  %inc67.i = add i8 %42, 1
  store i8 %inc67.i, ptr %page.i, align 1
  %cmp27.i = icmp ult i8 %inc67.i, 16
  br i1 %cmp27.i, label %for.inc66.i.for.body29.i_crit_edge, label %s5k4aa_dump_registers.exit

for.inc66.i.for.body29.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i

s5k4aa_dump_registers.exit:                       ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #9
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #10
  %call74.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext -20, ptr noundef nonnull %old_page.i, i8 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_page.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page.i) #7
  br label %cleanup26

cleanup26:                                        ; preds = %s5k4aa_dump_registers.exit, %for.end.cleanup26_crit_edge, %cleanup
  %retval.2 = phi i32 [ -22, %cleanup ], [ %err.2.ph, %s5k4aa_dump_registers.exit ], [ %err.2.ph, %for.end.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5k4aa_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @s5k4aa_init_controls._key, ptr noundef nonnull @.str.23) #7
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k4aa_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 16) #7
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k4aa_ctrl_ops, i32 noundef 9963793, i64 noundef 13, i64 noundef 4095, i64 noundef 1, i64 noundef 256) #7
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k4aa_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 95) #7
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k4aa_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k4aa_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %1, align 8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5k4aa_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %vflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @s5k4aa_disconnect(ptr nocapture noundef writeonly %sd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sensor, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5k4aa_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %data.i59 = alloca i8, align 1
  %data.i47 = alloca i8, align 1
  %data.i35 = alloca i8, align 1
  %data.i23 = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %streaming = getelementptr i8, ptr %1, i32 238
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963793, label %sw.bb1
    i32 9963795, label %sw.bb4
    i32 9963803, label %sw.bb7
    i32 9963796, label %sw.bb10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %data.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp sgt i32 %10, 1
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end3.i_crit_edge

sw.bb.do.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %8) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb.do.end3.i_crit_edge
  %call4.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -20, ptr noundef nonnull %data.i, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end3.i.s5k4aa_set_brightness.exit_crit_edge, label %if.end7.i

do.end3.i.s5k4aa_set_brightness.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_brightness.exit

if.end7.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = trunc i32 %8 to i8
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %data.i, align 1
  %call8.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 31, ptr noundef nonnull %data.i, i8 noundef zeroext 1) #7
  br label %s5k4aa_set_brightness.exit

s5k4aa_set_brightness.exit:                       ; preds = %if.end7.i, %do.end3.i.s5k4aa_set_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.end7.i ], [ %call4.i, %do.end3.i.s5k4aa_set_brightness.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i23) #7
  %14 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %data.i23, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i24 = icmp sgt i32 %15, 1
  br i1 %cmp.i24, label %do.end.i27, label %sw.bb1.do.end3.i30_crit_edge

sw.bb1.do.end3.i30_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i30

do.end.i27:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %name.i25 = getelementptr i8, ptr %1, i32 -168
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i25, i32 noundef %13) #10
  br label %do.end3.i30

do.end3.i30:                                      ; preds = %do.end.i27, %sw.bb1.do.end3.i30_crit_edge
  %call4.i28 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -20, ptr noundef nonnull %data.i23, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i28)
  %cmp5.i29 = icmp slt i32 %call4.i28, 0
  br i1 %cmp5.i29, label %do.end3.i30.s5k4aa_set_exposure.exit_crit_edge, label %if.end7.i33

do.end3.i30.s5k4aa_set_exposure.exit_crit_edge:   ; preds = %do.end3.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_exposure.exit

if.end7.i33:                                      ; preds = %do.end3.i30
  %16 = lshr i32 %13, 8
  %conv.i31 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i31, ptr %data.i23, align 1
  %call8.i32 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 23, ptr noundef nonnull %data.i23, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i32)
  %cmp9.i = icmp slt i32 %call8.i32, 0
  br i1 %cmp9.i, label %if.end7.i33.s5k4aa_set_exposure.exit_crit_edge, label %if.end12.i

if.end7.i33.s5k4aa_set_exposure.exit_crit_edge:   ; preds = %if.end7.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_exposure.exit

if.end12.i:                                       ; preds = %if.end7.i33
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i = trunc i32 %13 to i8
  %18 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14.i, ptr %data.i23, align 1
  %call15.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 24, ptr noundef nonnull %data.i23, i8 noundef zeroext 1) #7
  br label %s5k4aa_set_exposure.exit

s5k4aa_set_exposure.exit:                         ; preds = %if.end12.i, %if.end7.i33.s5k4aa_set_exposure.exit_crit_edge, %do.end3.i30.s5k4aa_set_exposure.exit_crit_edge
  %retval.0.i34 = phi i32 [ %call15.i, %if.end12.i ], [ %call4.i28, %do.end3.i30.s5k4aa_set_exposure.exit_crit_edge ], [ %call8.i32, %if.end7.i33.s5k4aa_set_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i23) #7
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i35) #7
  %21 = ptrtoint ptr %data.i35 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %data.i35, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i36 = icmp sgt i32 %22, 1
  br i1 %cmp.i36, label %do.end.i39, label %sw.bb4.do.end3.i42_crit_edge

sw.bb4.do.end3.i42_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i42

do.end.i39:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %name.i37 = getelementptr i8, ptr %1, i32 -168
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name.i37, i32 noundef %20) #10
  br label %do.end3.i42

do.end3.i42:                                      ; preds = %do.end.i39, %sw.bb4.do.end3.i42_crit_edge
  %call4.i40 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -20, ptr noundef nonnull %data.i35, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i40)
  %cmp5.i41 = icmp slt i32 %call4.i40, 0
  br i1 %cmp5.i41, label %do.end3.i42.s5k4aa_set_gain.exit_crit_edge, label %if.end7.i45

do.end3.i42.s5k4aa_set_gain.exit_crit_edge:       ; preds = %do.end3.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_gain.exit

if.end7.i45:                                      ; preds = %do.end3.i42
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i43 = trunc i32 %20 to i8
  %23 = ptrtoint ptr %data.i35 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i43, ptr %data.i35, align 1
  %call8.i44 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 32, ptr noundef nonnull %data.i35, i8 noundef zeroext 1) #7
  br label %s5k4aa_set_gain.exit

s5k4aa_set_gain.exit:                             ; preds = %if.end7.i45, %do.end3.i42.s5k4aa_set_gain.exit_crit_edge
  %retval.0.i46 = phi i32 [ %call8.i44, %if.end7.i45 ], [ %call4.i40, %do.end3.i42.s5k4aa_set_gain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i35) #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i47) #7
  %26 = ptrtoint ptr %data.i47 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %data.i47, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i48 = icmp sgt i32 %27, 1
  br i1 %cmp.i48, label %do.end.i51, label %sw.bb7.do.end3.i54_crit_edge

sw.bb7.do.end3.i54_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i54

do.end.i51:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  %name.i49 = getelementptr i8, ptr %1, i32 -168
  %call.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name.i49, i32 noundef %25) #10
  br label %do.end3.i54

do.end3.i54:                                      ; preds = %do.end.i51, %sw.bb7.do.end3.i54_crit_edge
  %call4.i52 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -20, ptr noundef nonnull %data.i47, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i52)
  %cmp5.i53 = icmp slt i32 %call4.i52, 0
  br i1 %cmp5.i53, label %do.end3.i54.s5k4aa_set_noise.exit_crit_edge, label %if.end7.i57

do.end3.i54.s5k4aa_set_noise.exit_crit_edge:      ; preds = %do.end3.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_noise.exit

if.end7.i57:                                      ; preds = %do.end3.i54
  call void @__sanitizer_cov_trace_pc() #9
  %28 = trunc i32 %25 to i8
  %conv.i55 = and i8 %28, 1
  %29 = ptrtoint ptr %data.i47 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i55, ptr %data.i47, align 1
  %call8.i56 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 55, ptr noundef nonnull %data.i47, i8 noundef zeroext 1) #7
  br label %s5k4aa_set_noise.exit

s5k4aa_set_noise.exit:                            ; preds = %if.end7.i57, %do.end3.i54.s5k4aa_set_noise.exit_crit_edge
  %retval.0.i58 = phi i32 [ %call8.i56, %if.end7.i57 ], [ %call4.i52, %do.end3.i54.s5k4aa_set_noise.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i47) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i59) #7
  %30 = ptrtoint ptr %data.i59 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %data.i59, align 1
  %31 = getelementptr i8, ptr %1, i32 1072
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %vflip2.i = getelementptr i8, ptr %1, i32 1076
  %36 = ptrtoint ptr %vflip2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vflip2.i, align 4
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %37, i32 0, i32 22
  %38 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %40 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i60 = icmp sgt i32 %40, 1
  br i1 %cmp.i60, label %do.end.i63, label %sw.bb10.do.end6.i_crit_edge

sw.bb10.do.end6.i_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i63:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %name.i61 = getelementptr i8, ptr %1, i32 -168
  %call.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i61, i32 noundef %35, i32 noundef %39) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i63, %sw.bb10.do.end6.i_crit_edge
  %call7.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext -20, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.end6.i.s5k4aa_set_hvflip.exit_crit_edge, label %if.end10.i

do.end6.i.s5k4aa_set_hvflip.exit_crit_edge:       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_hvflip.exit

if.end10.i:                                       ; preds = %do.end6.i
  %call11.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 3, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.s5k4aa_set_hvflip.exit_crit_edge, label %if.end14.i

if.end10.i.s5k4aa_set_hvflip.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_hvflip.exit

if.end14.i:                                       ; preds = %if.end10.i
  %41 = ptrtoint ptr %data.i59 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.i59, align 1
  %43 = and i8 %42, 127
  %and.i = zext i8 %43 to i32
  %shl.i = shl i32 %39, 7
  %or.i = or i32 %shl.i, %and.i
  %shl22.i = shl i32 %35, 6
  %or23.i = or i32 %or.i, %shl22.i
  %conv24.i = trunc i32 %or23.i to i8
  store i8 %conv24.i, ptr %data.i59, align 1
  %call25.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 3, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end14.i.s5k4aa_set_hvflip.exit_crit_edge, label %if.end29.i

if.end14.i.s5k4aa_set_hvflip.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_hvflip.exit

if.end29.i:                                       ; preds = %if.end14.i
  %call30.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 7, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end29.i.s5k4aa_set_hvflip.exit_crit_edge, label %if.end34.i

if.end29.i.s5k4aa_set_hvflip.exit_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_hvflip.exit

if.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool35.not.i = icmp eq i32 %35, 0
  %44 = ptrtoint ptr %data.i59 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.i59, align 1
  %46 = and i8 %45, -2
  %masksel.i = zext i1 %tobool35.not.i to i8
  %storemerge.i = or i8 %46, %masksel.i
  store i8 %storemerge.i, ptr %data.i59, align 1
  %call44.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 7, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end34.i.s5k4aa_set_hvflip.exit_crit_edge, label %if.end48.i

if.end34.i.s5k4aa_set_hvflip.exit_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_hvflip.exit

if.end48.i:                                       ; preds = %if.end34.i
  %call49.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 5, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %if.end48.i.s5k4aa_set_hvflip.exit_crit_edge, label %if.end53.i

if.end48.i.s5k4aa_set_hvflip.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5k4aa_set_hvflip.exit

if.end53.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool54.not.i = icmp eq i32 %39, 0
  %47 = ptrtoint ptr %data.i59 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.i59, align 1
  %49 = and i8 %48, -2
  %masksel102.i = zext i1 %tobool54.not.i to i8
  %storemerge101.i = or i8 %49, %masksel102.i
  store i8 %storemerge101.i, ptr %data.i59, align 1
  %call64.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 5, ptr noundef nonnull %data.i59, i8 noundef zeroext 1) #7
  %50 = call i32 @llvm.smin.i32(i32 %call64.i, i32 0) #7
  br label %s5k4aa_set_hvflip.exit

s5k4aa_set_hvflip.exit:                           ; preds = %if.end53.i, %if.end48.i.s5k4aa_set_hvflip.exit_crit_edge, %if.end34.i.s5k4aa_set_hvflip.exit_crit_edge, %if.end29.i.s5k4aa_set_hvflip.exit_crit_edge, %if.end14.i.s5k4aa_set_hvflip.exit_crit_edge, %if.end10.i.s5k4aa_set_hvflip.exit_crit_edge, %do.end6.i.s5k4aa_set_hvflip.exit_crit_edge
  %retval.0.i64 = phi i32 [ %call7.i, %do.end6.i.s5k4aa_set_hvflip.exit_crit_edge ], [ %call11.i, %if.end10.i.s5k4aa_set_hvflip.exit_crit_edge ], [ %call25.i, %if.end14.i.s5k4aa_set_hvflip.exit_crit_edge ], [ %call30.i, %if.end29.i.s5k4aa_set_hvflip.exit_crit_edge ], [ %call44.i, %if.end34.i.s5k4aa_set_hvflip.exit_crit_edge ], [ %call49.i, %if.end48.i.s5k4aa_set_hvflip.exit_crit_edge ], [ %50, %if.end53.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i59) #7
  br label %cleanup

cleanup:                                          ; preds = %s5k4aa_set_hvflip.exit, %s5k4aa_set_noise.exit, %s5k4aa_set_gain.exit, %s5k4aa_set_exposure.exit, %s5k4aa_set_brightness.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i64, %s5k4aa_set_hvflip.exit ], [ %retval.0.i58, %s5k4aa_set_noise.exit ], [ %retval.0.i46, %s5k4aa_set_gain.exit ], [ %retval.0.i34, %s5k4aa_set_exposure.exit ], [ %retval.0.i, %s5k4aa_set_brightness.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 348, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s5k4aa_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s5k4aa_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 356, i32 2}
!8 = !{ptr @s5k4aa_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @s5k4aa_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 384, i32 4}
!12 = !{ptr @s5k4aa_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @s5k4aa_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 400, i32 3}
!16 = !{ptr @s5k4aa_probe._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @s5k4aa_probe._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 418, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @s5k4aa_start._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @s5k4aa_start._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 444, i32 5}
!25 = !{ptr @s5k4aa_start._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @s5k4aa_start._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 451, i32 3}
!29 = !{ptr @s5k4aa_start._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @s5k4aa_start._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @s5k4aa_start._entry.20, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 477, i32 5}
!33 = !{ptr @s5k4aa_start._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 516, i32 4}
!36 = !{ptr @s5k4aa_init._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s5k4aa_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @s5k4aa_init_controls._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 532, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 552, i32 3}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @s5k4aa_init_controls._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @s5k4aa_init_controls._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @s5k4aa, !47, !"s5k4aa", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.h", i32 72, i32 34}
!48 = !{ptr @preinit_s5k4aa, !49, !"preinit_s5k4aa", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 19, i32 28}
!50 = !{ptr @s5k4aa_modes, !51, !"s5k4aa_modes", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 314, i32 31}
!52 = !{ptr @SXGA_s5k4aa, !53, !"SXGA_s5k4aa", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 168, i32 28}
!54 = !{ptr @VGA_s5k4aa, !55, !"VGA_s5k4aa", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 113, i32 28}
!56 = !{ptr @init_s5k4aa, !57, !"init_s5k4aa", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 62, i32 28}
!58 = !{ptr @s5k4aa_ctrl_ops, !59, !"s5k4aa_ctrl_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 221, i32 35}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 656, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @s5k4aa_set_brightness._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @s5k4aa_set_brightness._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 567, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @s5k4aa_set_exposure._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @s5k4aa_set_exposure._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 639, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @s5k4aa_set_gain._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @s5k4aa_set_gain._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 671, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @s5k4aa_set_noise._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @s5k4aa_set_noise._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 589, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @s5k4aa_set_hvflip._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @s5k4aa_set_hvflip._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 229, i32 12}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 236, i32 12}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 242, i32 12}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 248, i32 12}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 254, i32 12}
!95 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 260, i32 12}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 266, i32 12}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 272, i32 12}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 293, i32 12}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 299, i32 12}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 305, i32 12}
!107 = distinct !{null, !108, !"s5k4aa_vflip_dmi_table", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 227, i32 23}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 724, i32 3}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @s5k4aa_dump_registers._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @s5k4aa_dump_registers._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 729, i32 4}
!116 = !{ptr @s5k4aa_dump_registers._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @s5k4aa_dump_registers._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 733, i32 2}
!120 = !{ptr @s5k4aa_dump_registers._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @s5k4aa_dump_registers._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 737, i32 3}
!124 = !{ptr @s5k4aa_dump_registers._entry.55, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @s5k4aa_dump_registers._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 747, i32 5}
!128 = !{ptr @s5k4aa_dump_registers._entry.58, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @s5k4aa_dump_registers._entry_ptr.60, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 750, i32 5}
!132 = !{ptr @s5k4aa_dump_registers._entry.61, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @s5k4aa_dump_registers._entry_ptr.63, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.c", i32 757, i32 2}
!136 = !{ptr @s5k4aa_dump_registers._entry.64, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @s5k4aa_dump_registers._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i8 0, i8 2}
