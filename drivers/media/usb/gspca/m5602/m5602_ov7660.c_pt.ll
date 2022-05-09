; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_ov7660.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_ov7660.c"
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
@ov7660_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016gspca_m5602: Forcing an %s sensor\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ov7660_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/gspca/m5602/m5602_ov7660.c\00", [51 x i8] zeroinitializer }, align 32
@ov7660_probe._entry_ptr = internal global ptr @ov7660_probe._entry, section ".printk_index", align 4
@ov7660 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"ov7660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 66, i8 1, ptr @ov7660_probe, ptr @ov7660_init, ptr @ov7660_init_controls, ptr @ov7660_start, ptr @ov7660_stop, ptr @ov7660_disconnect }, [36 x i8] zeroinitializer }, align 32
@preinit_ov7660 = internal constant { [29 x [4 x i8]], [44 x i8] } { [29 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0D\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00w\03\00", [4 x i8] c"\00w\03\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0C\00", [4 x i8] c"\019\0C\00", [4 x i8] c"\01\09\11\00", [4 x i8] c"\01\12\05\00", [4 x i8] c"\00w\01\00", [4 x i8] c"\00v\04\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00\15\08\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0C\00", [4 x i8] c"\00w\05\00", [4 x i8] c"\00v\00\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00u\00\00"], [44 x i8] zeroinitializer }, align 32
@ov7660_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016gspca_m5602: Sensor reported 0x%x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@ov7660_probe._entry_ptr.5 = internal global ptr @ov7660_probe._entry.3, section ".printk_index", align 4
@ov7660_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_m5602: Detected a ov7660 sensor\0A\00", [55 x i8] zeroinitializer }, align 32
@ov7660_probe._entry_ptr.8 = internal global ptr @ov7660_probe._entry.6, section ".printk_index", align 4
@ov7660_modes = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 640, i32 480, i32 825770306, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@init_ov7660 = internal constant { [114 x [4 x i8]], [120 x i8] } { [114 x [4 x i8]] [[4 x i8] c"\00\13\02\00", [4 x i8] c"\00\12\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0D\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00w\01\00", [4 x i8] c"\00w\01\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0C\00", [4 x i8] c"\00w\05\00", [4 x i8] c"\00v\00\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\01\12\80\00", [4 x i8] c"\01\11\80\00", [4 x i8] c"\01\14L\00", [4 x i8] c"\019C\00", [4 x i8] c"\01<(\00", [4 x i8] c"\01\13\00\00", [4 x i8] c"\01\15@\00", [4 x i8] c"\01\17\0C\00", [4 x i8] c"\01\18a\00", [4 x i8] c"\012\A4\00", [4 x i8] c"\01\1B\0B\00", [4 x i8] c"\01\19\01\00", [4 x i8] c"\01\1Az\00", [4 x i8] c"\01\1A\00\00", [4 x i8] c"\01\12\05\00", [4 x i8] c"\01\0FB\00", [4 x i8] c"\01'\94\00", [4 x i8] c"\01(\94\00", [4 x i8] c"\01)\94\00", [4 x i8] c"\01,\94\00", [4 x i8] c"\01\04\00\00", [4 x i8] c"\01\10\00\00", [4 x i8] c"\01\07\00\00", [4 x i8] c"\017\05\00", [4 x i8] c"\01=\00\00", [4 x i8] c"\01\A1#\00", [4 x i8] c"\01:\0D\00", [4 x i8] c"\01i\80\00", [4 x i8] c"\01b\00\00", [4 x i8] c"\01c\00\00", [4 x i8] c"\01d\10\00", [4 x i8] c"\01e@\00", [4 x i8] c"\01f\01\00", [4 x i8] c"\01\10 \00", [4 x i8] c"\01\04\00\00", [4 x i8] c"\019\0C\00", [4 x i8] c"\01\09\11\00", [4 x i8] c"\01\12\05\00", [4 x i8] c"\00w\01\00", [4 x i8] c"\00v\04\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00\15\08\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0C\00", [4 x i8] c"\00w\05\00", [4 x i8] c"\00v\00\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\01\10_\00", [4 x i8] c"\01\04\03\00", [4 x i8] c"\019\0C\00", [4 x i8] c"\01\09\11\00", [4 x i8] c"\01\12\05\00", [4 x i8] c"\00w\01\00", [4 x i8] c"\00v\04\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00r\06\00", [4 x i8] c"\00p\00\00", [4 x i8] c"\00\15\08\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0C\00", [4 x i8] c"\00w\05\00", [4 x i8] c"\00v\00\00", [4 x i8] c"\00t\06\00", [4 x i8] c"\00u\00\00", [4 x i8] c"\00\15\06\00", [4 x i8] c"\00\14\B0\00", [4 x i8] c"\00`\C0\00", [4 x i8] c"\00\00\0C\00", [4 x i8] c"\00\02\81\00", [4 x i8] c"\00\04\82\00", [4 x i8] c"\00\0A\01\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\08\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\01\00", [4 x i8] c"\00\06\EC\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\06\00\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\0A\02\00", [4 x i8] c"\00\07\00\00", [4 x i8] c"\00\07'\00", [4 x i8] c"\00\07\02\00", [4 x i8] c"\00\07\A7\00", [4 x i8] c"\00\0A\00\00", [4 x i8] c"\00\15\00\00", [4 x i8] c"\00\14\B0\00"], [120 x i8] zeroinitializer }, align 32
@dump_sensor = external dso_local local_unnamed_addr global i8, align 1
@ov7660_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"m5602_ov7660:278:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@ov7660_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ov7660_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ov7660_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_m5602: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov7660_init_controls\00", [43 x i8] zeroinitializer }, align 32
@ov7660_init_controls._entry_ptr = internal global ptr @ov7660_init_controls._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@ov7660_set_auto_white_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Set auto white balance to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ov7660_set_auto_white_balance\00", [34 x i8] zeroinitializer }, align 32
@ov7660_set_auto_white_balance._entry_ptr = internal global ptr @ov7660_set_auto_white_balance._entry, section ".printk_index", align 4
@ov7660_set_auto_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Set auto exposure control to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ov7660_set_auto_exposure\00", [39 x i8] zeroinitializer }, align 32
@ov7660_set_auto_exposure._entry_ptr = internal global ptr @ov7660_set_auto_exposure._entry, section ".printk_index", align 4
@ov7660_set_auto_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Set auto gain control to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ov7660_set_auto_gain\00", [43 x i8] zeroinitializer }, align 32
@ov7660_set_auto_gain._entry_ptr = internal global ptr @ov7660_set_auto_gain._entry, section ".printk_index", align 4
@ov7660_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Setting gain to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ov7660_set_gain\00", [16 x i8] zeroinitializer }, align 32
@ov7660_set_gain._entry_ptr = internal global ptr @ov7660_set_gain._entry, section ".printk_index", align 4
@ov7660_set_hvflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Set hvflip to %d, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ov7660_set_hvflip\00", [46 x i8] zeroinitializer }, align 32
@ov7660_set_hvflip._entry_ptr = internal global ptr @ov7660_set_hvflip._entry, section ".printk_index", align 4
@ov7660_dump_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016gspca_m5602: Dumping the ov7660 register state\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ov7660_dump_registers\00", [42 x i8] zeroinitializer }, align 32
@ov7660_dump_registers._entry_ptr = internal global ptr @ov7660_dump_registers._entry, section ".printk_index", align 4
@ov7660_dump_registers._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_m5602: register 0x%x contains 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@ov7660_dump_registers._entry_ptr.26 = internal global ptr @ov7660_dump_registers._entry.24, section ".printk_index", align 4
@ov7660_dump_registers._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gspca_m5602: ov7660 register state dump complete\0A\00", [44 x i8] zeroinitializer }, align 32
@ov7660_dump_registers._entry_ptr.29 = internal global ptr @ov7660_dump_registers._entry.27, section ".printk_index", align 4
@ov7660_dump_registers._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016gspca_m5602: Probing for which registers that are read/write\0A\00", [32 x i8] zeroinitializer }, align 32
@ov7660_dump_registers._entry_ptr.32 = internal global ptr @ov7660_dump_registers._entry.30, section ".printk_index", align 4
@ov7660_dump_registers._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is writeable\0A\00", [53 x i8] zeroinitializer }, align 32
@ov7660_dump_registers._entry_ptr.35 = internal global ptr @ov7660_dump_registers._entry.33, section ".printk_index", align 4
@ov7660_dump_registers._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016gspca_m5602: register 0x%x is read only\0A\00", [53 x i8] zeroinitializer }, align 32
@ov7660_dump_registers._entry_ptr.38 = internal global ptr @ov7660_dump_registers._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 9963788, i64 9963794, i64 9963796, i64 10094849]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 200, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"ov7660\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_ov7660.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 94, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"preinit_ov7660\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 22, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 231, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 234, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"ov7660_modes\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 175, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"init_ov7660\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 56, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 278, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"ov7660_ctrl_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 189, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 296, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 342, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 378, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 360, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 329, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 396, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 442, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 446, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 449, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 451, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 461, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_ov7660.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 463, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @ov7660_dump_registers._entry, ptr @ov7660_dump_registers._entry.24, ptr @ov7660_dump_registers._entry.27, ptr @ov7660_dump_registers._entry.30, ptr @ov7660_dump_registers._entry.33, ptr @ov7660_dump_registers._entry.36, ptr @ov7660_dump_registers._entry_ptr, ptr @ov7660_dump_registers._entry_ptr.26, ptr @ov7660_dump_registers._entry_ptr.29, ptr @ov7660_dump_registers._entry_ptr.32, ptr @ov7660_dump_registers._entry_ptr.35, ptr @ov7660_dump_registers._entry_ptr.38, ptr @ov7660_init_controls._entry, ptr @ov7660_init_controls._entry_ptr, ptr @ov7660_probe._entry, ptr @ov7660_probe._entry.3, ptr @ov7660_probe._entry.6, ptr @ov7660_probe._entry_ptr, ptr @ov7660_probe._entry_ptr.5, ptr @ov7660_probe._entry_ptr.8, ptr @ov7660_set_auto_exposure._entry, ptr @ov7660_set_auto_exposure._entry_ptr, ptr @ov7660_set_auto_gain._entry, ptr @ov7660_set_auto_gain._entry_ptr, ptr @ov7660_set_auto_white_balance._entry, ptr @ov7660_set_auto_white_balance._entry_ptr, ptr @ov7660_set_gain._entry, ptr @ov7660_set_gain._entry_ptr, ptr @ov7660_set_hvflip._entry, ptr @ov7660_set_hvflip._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ov7660, ptr @preinit_ov7660, ptr @.str.4, ptr @.str.7, ptr @ov7660_modes, ptr @init_ov7660, ptr @ov7660_init_controls._key, ptr @.str.9, ptr @ov7660_ctrl_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preinit_ov7660 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ov7660 to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_set_auto_white_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_set_auto_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_set_auto_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_set_hvflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_dump_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_dump_registers._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_dump_registers._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_dump_registers._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_dump_registers._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660_dump_registers._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov7660_probe(ptr noundef %sd) #0 align 64 {
entry:
  %prod_id = alloca i8, align 1
  %ver_id = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prod_id) #6
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %prod_id, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver_id) #6
  %1 = ptrtoint ptr %ver_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ver_id, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @force_sensor to i32))
  %2 = load i32, ptr @force_sensor, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %for.cond.preheader
    i32 6, label %do.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @ov7660) #9
  br label %sensor_found

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.cond.preheader
  %i.071 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end20.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data, align 1, !annotation !91
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %4, align 1, !annotation !91
  %arrayidx = getelementptr [29 x [4 x i8]], ptr @preinit_ov7660, i32 0, i32 %i.071
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp6 = icmp eq i8 %8, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10 = getelementptr [29 x [4 x i8]], ptr @preinit_ov7660, i32 0, i32 %i.071, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr [29 x [4 x i8]], ptr @preinit_ov7660, i32 0, i32 %i.071, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %call13 = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %10, i8 noundef zeroext %12) #6
  br label %if.end20

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx15 = getelementptr [29 x [4 x i8]], ptr @preinit_ov7660, i32 0, i32 %i.071, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %data, align 1
  %arrayidx18 = getelementptr [29 x [4 x i8]], ptr @preinit_ov7660, i32 0, i32 %i.071, i32 1
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18, align 1
  %call19 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %17, ptr noundef nonnull %data, i8 noundef zeroext 1) #6
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then8
  %err.1 = phi i32 [ %call13, %if.then8 ], [ %call19, %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  %inc = add nuw nsw i32 %i.071, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %i.071)
  %cmp3 = icmp ult i32 %i.071, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool4.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %cmp3, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end20.for.body_crit_edge, label %for.end

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp21 = icmp slt i32 %err.1, 0
  br i1 %cmp21, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %call25 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 10, ptr noundef nonnull %prod_id, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext 11, ptr noundef nonnull %ver_id, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end35, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end35:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %prod_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prod_id, align 1
  %conv37 = zext i8 %19 to i32
  %20 = ptrtoint ptr %ver_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ver_id, align 1
  %conv38 = zext i8 %21 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv37, i32 noundef %conv38) #9
  %22 = ptrtoint ptr %prod_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prod_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %23)
  %cmp41 = icmp eq i8 %23, 118
  br i1 %cmp41, label %land.lhs.true, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end35
  %24 = ptrtoint ptr %ver_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ver_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %25)
  %cmp44 = icmp eq i8 %25, 96
  br i1 %cmp44, label %do.end49, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %sensor_found

sensor_found:                                     ; preds = %do.end49, %do.end
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %26 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ov7660_modes, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %sensor_found, %land.lhs.true.cleanup_crit_edge, %do.end35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sensor_found ], [ -19, %entry.cleanup_crit_edge ], [ %err.1, %for.end.cleanup_crit_edge ], [ -19, %if.end24.cleanup_crit_edge ], [ -19, %if.end28.cleanup_crit_edge ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %do.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver_id) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prod_id) #6
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m5602_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov7660_init(ptr noundef %sd) #0 align 64 {
entry:
  %value.i = alloca i8, align 1
  %old_value.i = alloca i8, align 1
  %ctrl_value.i = alloca i8, align 1
  %test_value.i = alloca [2 x i8], align 2
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 114
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #6
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %data, align 1, !annotation !91
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %0, align 1, !annotation !91
  %arrayidx = getelementptr [114 x [4 x i8]], ptr @init_ov7660, i32 0, i32 %i.032
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp2 = icmp eq i8 %4, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5 = getelementptr [114 x [4 x i8]], ptr @init_ov7660, i32 0, i32 %i.032, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr [114 x [4 x i8]], ptr @init_ov7660, i32 0, i32 %i.032, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 1
  %call = call i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %6, i8 noundef zeroext %8) #6
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr [114 x [4 x i8]], ptr @init_ov7660, i32 0, i32 %i.032, i32 2
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %data, align 1
  %arrayidx12 = getelementptr [114 x [4 x i8]], ptr @init_ov7660, i32 0, i32 %i.032, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %call13 = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %13, ptr noundef nonnull %data, i8 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp14 = icmp slt i32 %err.0, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #6
  br i1 %cmp14, label %if.end.cleanup20_crit_edge, label %for.cond

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

for.end:                                          ; preds = %for.cond
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dump_sensor to i32))
  %14 = load i8, ptr @dump_sensor, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %for.end.cleanup20_crit_edge, label %if.then18

for.end.cleanup20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.then18:                                        ; preds = %for.end
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then18
  %address.062.i = phi i32 [ 0, %if.then18 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %value.i, align 1, !annotation !91
  %conv.i = trunc i32 %address.062.i to i8
  %call1.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv.i, ptr noundef nonnull %value.i, i8 noundef zeroext 1) #6
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %value.i, align 1
  %conv6.i = zext i8 %17 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %address.062.i, i32 noundef %conv6.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %inc.i = add nuw nsw i32 %address.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 169
  br i1 %exitcond.not.i, label %do.end10.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end10.i:                                       ; preds = %for.body.i
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %do.end10.i
  %address.163.i = phi i32 [ 0, %do.end10.i ], [ %inc45.i, %for.body21.i.for.body21.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_value.i) #6
  %18 = ptrtoint ptr %old_value.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %old_value.i, align 1, !annotation !91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_value.i) #6
  %19 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %ctrl_value.i, align 1, !annotation !91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %test_value.i) #6
  %20 = ptrtoint ptr %test_value.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %test_value.i, align 2
  %conv22.i = trunc i32 %address.163.i to i8
  %call23.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #6
  %call25.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %test_value.i, i8 noundef zeroext 1) #6
  %call27.i = call i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %ctrl_value.i, i8 noundef zeroext 1) #6
  %21 = ptrtoint ptr %ctrl_value.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl_value.i, align 1
  %23 = ptrtoint ptr %test_value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %test_value.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp30.i = icmp eq i8 %22, %24
  %.str.34..str.37.i = select i1 %cmp30.i, ptr @.str.34, ptr @.str.37
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34..str.37.i, i32 noundef %address.163.i) #9
  %call43.i = call i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv22.i, ptr noundef nonnull %old_value.i, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %test_value.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_value.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_value.i) #6
  %inc45.i = add nuw nsw i32 %address.163.i, 1
  %exitcond65.not.i = icmp eq i32 %inc45.i, 255
  br i1 %exitcond65.not.i, label %for.body21.i.cleanup20_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i

for.body21.i.cleanup20_crit_edge:                 ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

cleanup20:                                        ; preds = %for.body21.i.cleanup20_crit_edge, %for.end.cleanup20_crit_edge, %if.end.cleanup20_crit_edge
  %retval.2 = phi i32 [ 0, %for.end.cleanup20_crit_edge ], [ 0, %for.body21.i.cleanup20_crit_edge ], [ %err.0, %if.end.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ov7660_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %ctrl_handler2 = getelementptr inbounds %struct.video_device, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler2, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @ov7660_init_controls._key, ptr noundef nonnull @.str.9) #6
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7660_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call4 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7660_ctrl_ops, i32 noundef 10094849, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #6
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7660_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %1 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %1, align 8
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7660_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 14) #6
  %gain = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %gain, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7660_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %4 = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %4, align 8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ov7660_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %vflip = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %vflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext false) #6
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ 0, %if.end ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ov7660_start(ptr nocapture readnone %sd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ov7660_stop(ptr nocapture readnone %sd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ov7660_disconnect(ptr nocapture noundef writeonly %sd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sensor, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ov7660_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %i2c_data.i54 = alloca i8, align 1
  %i2c_data.i41 = alloca i8, align 1
  %i2c_data.i31 = alloca i8, align 1
  %i2c_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %streaming = getelementptr i8, ptr %1, i32 238
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %streaming, align 2, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 9963788, label %sw.bb
    i32 10094849, label %sw.bb1
    i32 9963794, label %sw.bb4
    i32 9963796, label %sw.bb14
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i) #6
  %9 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %i2c_data.i, align 1, !annotation !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp sgt i32 %10, 1
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.end3.i_crit_edge

sw.bb.do.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i, i32 noundef %8) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb.do.end3.i_crit_edge
  %call4.i = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end3.i.ov7660_set_auto_white_balance.exit_crit_edge, label %if.end7.i

do.end3.i.ov7660_set_auto_white_balance.exit_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov7660_set_auto_white_balance.exit

if.end7.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_data.i, align 1
  %13 = and i8 %12, -3
  %val.tr.i = trunc i32 %8 to i8
  %14 = shl i8 %val.tr.i, 1
  %15 = and i8 %14, 2
  %conv9.i = or i8 %13, %15
  store i8 %conv9.i, ptr %i2c_data.i, align 1
  %call10.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i, i8 noundef zeroext 1) #6
  br label %ov7660_set_auto_white_balance.exit

ov7660_set_auto_white_balance.exit:               ; preds = %if.end7.i, %do.end3.i.ov7660_set_auto_white_balance.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end7.i ], [ %call4.i, %do.end3.i.ov7660_set_auto_white_balance.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i) #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i31) #6
  %18 = ptrtoint ptr %i2c_data.i31 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %i2c_data.i31, align 1, !annotation !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i32 = icmp sgt i32 %19, 1
  br i1 %cmp.i32, label %do.end.i35, label %sw.bb1.do.end3.i38_crit_edge

sw.bb1.do.end3.i38_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i38

do.end.i35:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %name.i33 = getelementptr i8, ptr %1, i32 -168
  %call.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i33, i32 noundef %17) #9
  br label %do.end3.i38

do.end3.i38:                                      ; preds = %do.end.i35, %sw.bb1.do.end3.i38_crit_edge
  %call4.i36 = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i31, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i36)
  %cmp5.i37 = icmp slt i32 %call4.i36, 0
  br i1 %cmp5.i37, label %do.end3.i38.ov7660_set_auto_exposure.exit_crit_edge, label %if.end7.i39

do.end3.i38.ov7660_set_auto_exposure.exit_crit_edge: ; preds = %do.end3.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov7660_set_auto_exposure.exit

if.end7.i39:                                      ; preds = %do.end3.i38
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.i = icmp eq i32 %17, 0
  %conv.i = zext i1 %cmp8.i to i8
  %20 = ptrtoint ptr %i2c_data.i31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_data.i31, align 1
  %22 = and i8 %21, -2
  %or.i = or i8 %22, %conv.i
  store i8 %or.i, ptr %i2c_data.i31, align 1
  %call12.i = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i31, i8 noundef zeroext 1) #6
  br label %ov7660_set_auto_exposure.exit

ov7660_set_auto_exposure.exit:                    ; preds = %if.end7.i39, %do.end3.i38.ov7660_set_auto_exposure.exit_crit_edge
  %retval.0.i40 = phi i32 [ %call12.i, %if.end7.i39 ], [ %call4.i36, %do.end3.i38.ov7660_set_auto_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i31) #6
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i41) #6
  %25 = ptrtoint ptr %i2c_data.i41 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %i2c_data.i41, align 1, !annotation !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i42 = icmp sgt i32 %26, 1
  br i1 %cmp.i42, label %do.end.i45, label %sw.bb4.do.end3.i48_crit_edge

sw.bb4.do.end3.i48_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i48

do.end.i45:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %name.i43 = getelementptr i8, ptr %1, i32 -168
  %call.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i43, i32 noundef %24) #9
  br label %do.end3.i48

do.end3.i48:                                      ; preds = %do.end.i45, %sw.bb4.do.end3.i48_crit_edge
  %call4.i46 = call i32 @m5602_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i41, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i46)
  %cmp5.i47 = icmp slt i32 %call4.i46, 0
  br i1 %cmp5.i47, label %ov7660_set_auto_gain.exit.thread, label %ov7660_set_auto_gain.exit

ov7660_set_auto_gain.exit.thread:                 ; preds = %do.end3.i48
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i41) #6
  br label %cleanup

ov7660_set_auto_gain.exit:                        ; preds = %do.end3.i48
  %27 = ptrtoint ptr %i2c_data.i41 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %i2c_data.i41, align 1
  %29 = and i8 %28, -5
  %val.tr.i49 = trunc i32 %24 to i8
  %30 = shl i8 %val.tr.i49, 2
  %31 = and i8 %30, 4
  %conv9.i50 = or i8 %29, %31
  store i8 %conv9.i50, ptr %i2c_data.i41, align 1
  %call10.i51 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 19, ptr noundef nonnull %i2c_data.i41, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i51)
  %tobool7.not = icmp eq i32 %call10.i51, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %ov7660_set_auto_gain.exit.cleanup_crit_edge

ov7660_set_auto_gain.exit.cleanup_crit_edge:      ; preds = %ov7660_set_auto_gain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %ov7660_set_auto_gain.exit
  %32 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not = icmp eq i32 %33, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %gain = getelementptr i8, ptr %1, i32 1068
  %34 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gain, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val12, align 4
  %call13 = call fastcc i32 @ov7660_set_gain(ptr noundef %add.ptr, i32 noundef %37)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data.i54) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i55 = icmp sgt i32 %38, 1
  br i1 %cmp.i55, label %do.end.i58, label %sw.bb14.ov7660_set_hvflip.exit_crit_edge

sw.bb14.ov7660_set_hvflip.exit_crit_edge:         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %ov7660_set_hvflip.exit

do.end.i58:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %name.i56 = getelementptr i8, ptr %1, i32 -168
  %39 = getelementptr i8, ptr %1, i32 1072
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  %vflip.i = getelementptr i8, ptr %1, i32 1076
  %44 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vflip.i, align 4
  %val2.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val2.i, align 4
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name.i56, i32 noundef %43, i32 noundef %47) #9
  br label %ov7660_set_hvflip.exit

ov7660_set_hvflip.exit:                           ; preds = %do.end.i58, %sw.bb14.ov7660_set_hvflip.exit_crit_edge
  %48 = getelementptr i8, ptr %1, i32 1072
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %val6.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %50, i32 0, i32 22
  %51 = ptrtoint ptr %val6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val6.i, align 4
  %shl.i = shl i32 %52, 5
  %vflip7.i = getelementptr i8, ptr %1, i32 1076
  %53 = ptrtoint ptr %vflip7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vflip7.i, align 4
  %val8.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 22
  %55 = ptrtoint ptr %val8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val8.i, align 4
  %shl9.i = shl i32 %56, 4
  %or.i59 = or i32 %shl9.i, %shl.i
  %conv.i60 = trunc i32 %or.i59 to i8
  %57 = ptrtoint ptr %i2c_data.i54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i60, ptr %i2c_data.i54, align 1
  %call10.i61 = call i32 @m5602_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 30, ptr noundef nonnull %i2c_data.i54, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data.i54) #6
  br label %cleanup

cleanup:                                          ; preds = %ov7660_set_hvflip.exit, %if.end11, %lor.lhs.false.cleanup_crit_edge, %ov7660_set_auto_gain.exit.cleanup_crit_edge, %ov7660_set_auto_gain.exit.thread, %ov7660_set_auto_exposure.exit, %ov7660_set_auto_white_balance.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call10.i51, %ov7660_set_auto_gain.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call10.i61, %ov7660_set_hvflip.exit ], [ %call13, %if.end11 ], [ %retval.0.i40, %ov7660_set_auto_exposure.exit ], [ %retval.0.i, %ov7660_set_auto_white_balance.exit ], [ %call4.i46, %ov7660_set_auto_gain.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ov7660_set_gain(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %i2c_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i2c_data) #6
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %i2c_data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %val) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = call i32 @m5602_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 0, ptr noundef nonnull %i2c_data, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i2c_data) #6
  ret i32 %call5
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 200, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ov7660_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ov7660_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 231, i32 2}
!8 = !{ptr @ov7660_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ov7660_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 234, i32 3}
!12 = !{ptr @ov7660_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ov7660_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ov7660_init_controls._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 278, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 296, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ov7660_init_controls._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ov7660_init_controls._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ov7660, !23, !"ov7660", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.h", i32 94, i32 34}
!24 = !{ptr @preinit_ov7660, !25, !"preinit_ov7660", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 22, i32 28}
!26 = !{ptr @ov7660_modes, !27, !"ov7660_modes", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 175, i32 31}
!28 = !{ptr @init_ov7660, !29, !"init_ov7660", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 56, i32 28}
!30 = !{ptr @ov7660_ctrl_ops, !31, !"ov7660_ctrl_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 189, i32 35}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 342, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ov7660_set_auto_white_balance._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ov7660_set_auto_white_balance._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 378, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ov7660_set_auto_exposure._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ov7660_set_auto_exposure._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 360, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ov7660_set_auto_gain._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ov7660_set_auto_gain._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 329, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ov7660_set_gain._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ov7660_set_gain._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 396, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ov7660_set_hvflip._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ov7660_set_hvflip._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 442, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ov7660_dump_registers._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ov7660_dump_registers._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 446, i32 3}
!64 = !{ptr @ov7660_dump_registers._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ov7660_dump_registers._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 449, i32 2}
!68 = !{ptr @ov7660_dump_registers._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ov7660_dump_registers._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 451, i32 2}
!72 = !{ptr @ov7660_dump_registers._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ov7660_dump_registers._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 461, i32 4}
!76 = !{ptr @ov7660_dump_registers._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ov7660_dump_registers._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.c", i32 463, i32 4}
!80 = !{ptr @ov7660_dump_registers._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ov7660_dump_registers._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i8 0, i8 2}
