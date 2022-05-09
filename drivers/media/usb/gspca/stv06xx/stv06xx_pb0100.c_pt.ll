; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stv06xx_sensor = type { [32 x i8], i8, i8, i8, [4 x i32], [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
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
%struct.anon.107 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pb0100_ctrls = type { %struct.anon.107, ptr }
%struct.sd = type { %struct.gspca_dev, ptr, ptr, i32, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }

@stv06xx_sensor_pb0100 = dso_local constant { %struct.stv06xx_sensor, [60 x i8] } { %struct.stv06xx_sensor { [32 x i8] c"PB-0100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -70, i8 1, i8 2, [4 x i32] [i32 635, i32 847, i32 0, i32 0], [4 x i32] [i32 847, i32 923, i32 0, i32 0], ptr @pb0100_probe, ptr @pb0100_init, ptr @pb0100_init_controls, ptr null, ptr null, ptr @pb0100_start, ptr @pb0100_stop, ptr @pb0100_dump }, [60 x i8] zeroinitializer }, align 32
@pb0100_init_controls.autogain_target = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pb0100_ctrl_ops, ptr null, i32 9965568, ptr @.str, i32 1, i64 0, i64 255, i64 1, i64 128, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@pb0100_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @pb0100_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Automatic Gain Target\00", [42 x i8] zeroinitializer }, align 32
@pb0100_init_controls.natural_light = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @pb0100_ctrl_ops, ptr null, i32 9965569, ptr @.str.1, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Natural Light Source\00", [43 x i8] zeroinitializer }, align 32
@pb0100_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stv06xx_pb0100:133:(hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@pb0100_set_autogain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Set autogain to %d (natural: %d), status: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pb0100_set_autogain\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c\00", [47 x i8] zeroinitializer }, align 32
@pb0100_set_autogain._entry_ptr = internal global ptr @pb0100_set_autogain._entry, section ".printk_index", align 4
@pb0100_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Set green gain to %d, status: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pb0100_set_gain\00", [16 x i8] zeroinitializer }, align 32
@pb0100_set_gain._entry_ptr = internal global ptr @pb0100_set_gain._entry, section ".printk_index", align 4
@pb0100_set_red_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Set red gain to %d, status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pb0100_set_red_balance\00", [41 x i8] zeroinitializer }, align 32
@pb0100_set_red_balance._entry_ptr = internal global ptr @pb0100_set_red_balance._entry, section ".printk_index", align 4
@pb0100_set_blue_balance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Set blue gain to %d, status: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pb0100_set_blue_balance\00", [40 x i8] zeroinitializer }, align 32
@pb0100_set_blue_balance._entry_ptr = internal global ptr @pb0100_set_blue_balance._entry, section ".printk_index", align 4
@pb0100_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Set exposure to %d, status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pb0100_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@pb0100_set_exposure._entry_ptr = internal global ptr @pb0100_set_exposure._entry, section ".printk_index", align 4
@pb0100_set_autogain_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: Set autogain target to %d, status: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pb0100_set_autogain_target\00", [37 x i8] zeroinitializer }, align 32
@pb0100_set_autogain_target._entry_ptr = internal global ptr @pb0100_set_autogain_target._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pb0100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016gspca_stv06xx: Photobit pb0100 sensor detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pb0100_probe\00", [19 x i8] zeroinitializer }, align 32
@pb0100_probe._entry_ptr = internal global ptr @pb0100_probe._entry, section ".printk_index", align 4
@pb0100_mode = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 1195528775, i32 1, i32 320, i32 76800, i32 8, i32 1, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195528775, i32 1, i32 352, i32 101376, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@pb0100_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Started stream, status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pb0100_start\00", [19 x i8] zeroinitializer }, align 32
@pb0100_start._entry_ptr = internal global ptr @pb0100_start._entry, section ".printk_index", align 4
@pb0100_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Halting stream\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pb0100_stop\00", [20 x i8] zeroinitializer }, align 32
@pb0100_stop._entry_ptr = internal global ptr @pb0100_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963794, i64 9965569]
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"stv06xx_sensor_pb0100\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [52 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 114, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"autogain_target\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 110, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"pb0100_ctrl_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 102, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 114, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"natural_light\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 119, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 123, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 133, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 406, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 330, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 354, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 373, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 385, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 428, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 167, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"pb0100_mode\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 50, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 227, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [52 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 245, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @pb0100_probe._entry, ptr @pb0100_probe._entry_ptr, ptr @pb0100_set_autogain._entry, ptr @pb0100_set_autogain._entry_ptr, ptr @pb0100_set_autogain_target._entry, ptr @pb0100_set_autogain_target._entry_ptr, ptr @pb0100_set_blue_balance._entry, ptr @pb0100_set_blue_balance._entry_ptr, ptr @pb0100_set_exposure._entry, ptr @pb0100_set_exposure._entry_ptr, ptr @pb0100_set_gain._entry, ptr @pb0100_set_gain._entry_ptr, ptr @pb0100_set_red_balance._entry, ptr @pb0100_set_red_balance._entry_ptr, ptr @pb0100_start._entry, ptr @pb0100_start._entry_ptr, ptr @pb0100_stop._entry, ptr @pb0100_stop._entry_ptr, ptr @stv06xx_sensor_pb0100, ptr @pb0100_init_controls.autogain_target, ptr @pb0100_ctrl_ops, ptr @.str, ptr @pb0100_init_controls.natural_light, ptr @.str.1, ptr @pb0100_init_controls._key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @pb0100_mode, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_sensor_pb0100 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_init_controls.autogain_target to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_init_controls.natural_light to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_set_autogain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_set_red_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_set_blue_balance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_set_autogain_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb0100_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pb0100_probe(ptr noundef %sd) #0 align 64 {
entry:
  %sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sensor) #7
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sensor, align 2, !annotation !72
  %call = call i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %sensor) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sensor, align 2
  %.mask = and i16 %2, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 25600, i16 %.mask)
  %cmp1.not = icmp eq i16 %.mask, 25600
  br i1 %cmp1.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %3 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pb0100_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sensor) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pb0100_init(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5376, i16 noundef zeroext 1) #7
  %call1 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5187, i16 noundef zeroext 0) #7
  %call2 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 13, i16 noundef zeroext 1) #7
  %call3 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 13, i16 noundef zeroext 0) #7
  %call4 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 7, i16 noundef zeroext 40) #7
  %call5 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 32, i16 noundef zeroext 5184) #7
  %call6 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 53, i16 noundef zeroext 12) #7
  %call7 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 28, i16 noundef zeroext 12) #7
  %call8 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 51, i16 noundef zeroext 180) #7
  %call9 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 52, i16 noundef zeroext 12) #7
  %call10 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 54, i16 noundef zeroext 3) #7
  %call11 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 55, i16 noundef zeroext 0) #7
  %call12 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 23, i16 noundef zeroext 1) #7
  %call13 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 15, i16 noundef zeroext 800) #7
  %call14 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 17, i16 noundef zeroext 10) #7
  %call15 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 14, i16 noundef zeroext 0) #7
  %call16 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 57, i16 noundef zeroext 0) #7
  %call17 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 59, i16 noundef zeroext 11) #7
  %call18 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 60, i16 noundef zeroext 0) #7
  %call19 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5376, i16 noundef zeroext 17) #7
  %call20 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5379, i16 noundef zeroext 69) #7
  %call21 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5380, i16 noundef zeroext 7) #7
  %call22 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 10, i16 noundef zeroext 26) #7
  %call23 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 5, i16 noundef zeroext 14) #7
  %call24 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 6, i16 noundef zeroext 0) #7
  %call25 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 8, i16 noundef zeroext 0) #7
  %call26 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 9, i16 noundef zeroext 123) #7
  %call27 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5377, i16 noundef zeroext 194) #7
  %call28 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5378, i16 noundef zeroext 176) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pb0100_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %call1 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 6, ptr noundef nonnull @pb0100_init_controls._key, ptr noundef nonnull @.str.2) #7
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call7.i.i, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 511, i64 noundef 1, i64 noundef 12) #7
  %exposure = getelementptr inbounds %struct.anon.107, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %exposure, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #7
  %gain = getelementptr inbounds %struct.anon.107, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %gain, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_ctrl_ops, i32 noundef 9963790, i64 noundef -255, i64 noundef 255, i64 noundef 1, i64 noundef 0) #7
  %red = getelementptr inbounds %struct.anon.107, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %red, align 4
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_ctrl_ops, i32 noundef 9963791, i64 noundef -255, i64 noundef 255, i64 noundef 1, i64 noundef 0) #7
  %blue = getelementptr inbounds %struct.anon.107, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %blue, align 8
  %call7 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_init_controls.natural_light, ptr noundef null) #7
  %natural = getelementptr inbounds %struct.anon.107, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %natural to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %natural, align 4
  %call8 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler, ptr noundef nonnull @pb0100_init_controls.autogain_target, ptr noundef null) #7
  %target = getelementptr inbounds %struct.pb0100_ctrls, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %target, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sensor_priv = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %12 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %sensor_priv, align 4
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 5, ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then10 ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pb0100_start(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cam2 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %cam2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam2, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 31
  %8 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iface, align 1
  %conv = zext i8 %9 to i32
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %7, i32 noundef %conv) #7
  %alt7 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 32
  %10 = ptrtoint ptr %alt7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %alt7, align 2
  %conv8 = zext i8 %11 to i32
  %call9 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %call, i32 noundef %conv8) #7
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call9, i32 0, i32 4
  %12 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %call9, i32 0, i32 3
  %14 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wMaxPacketSize, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv16 = zext i16 %18 to i32
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %19 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensor, align 8
  %21 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %curr_mode, align 1
  %idxprom20 = zext i8 %22 to i32
  %arrayidx21 = getelementptr %struct.stv06xx_sensor, ptr %20, i32 0, i32 5, i32 %idxprom20
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv16)
  %cmp22 = icmp sgt i32 %24, %conv16
  %. = select i1 %cmp22, i16 26, i16 42
  %call26 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 10, i16 noundef zeroext %.) #7
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.else34, label %if.end13.if.end39_crit_edge

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.else34:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %if.end13.if.end39_crit_edge
  %.sink101 = phi i16 [ 8, %if.else34 ], [ 30, %if.end13.if.end39_crit_edge ]
  %.sink100 = phi i16 [ 4, %if.else34 ], [ 20, %if.end13.if.end39_crit_edge ]
  %.sink99 = phi i16 [ 287, %if.else34 ], [ 239, %if.end13.if.end39_crit_edge ]
  %.sink98 = phi i16 [ 351, %if.else34 ], [ 319, %if.end13.if.end39_crit_edge ]
  %call35 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 1, i16 noundef zeroext %.sink101) #7
  %call36 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 2, i16 noundef zeroext %.sink100) #7
  %call37 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 3, i16 noundef zeroext %.sink99) #7
  %call38 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 4, i16 noundef zeroext %.sink98) #7
  %and40 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %.105 = select i1 %tobool41.not, i16 1, i16 2
  %.106 = select i1 %tobool41.not, i16 10, i16 6
  %.107 = select i1 %tobool41.not, i16 32, i16 16
  %call47 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5571, i16 noundef zeroext %.105) #7
  %call48 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5760, i16 noundef zeroext %.106) #7
  %call49 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5187, i16 noundef zeroext %.107) #7
  %call51 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 7, i16 noundef zeroext 42) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp52 = icmp sgt i32 %25, 2
  br i1 %cmp52, label %do.end, label %if.end39.do.end59_crit_edge

if.end39.do.end59_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %call51) #10
  br label %do.end59

do.end59:                                         ; preds = %do.end, %if.end39.do.end59_crit_edge
  %26 = tail call i32 @llvm.smin.i32(i32 %call51, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %do.end59 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pb0100_stop(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 11, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 7, i16 noundef zeroext 40) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp2 = icmp sgt i32 %0, 2
  br i1 %cmp2, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #10
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %do.end ], [ %call1, %if.end.out_crit_edge ]
  %1 = tail call i32 @llvm.smin.i32(i32 %err.0, i32 0)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pb0100_dump(ptr nocapture noundef readnone %sd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pb0100_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %sensor_priv = getelementptr i8, ptr %1, i32 1028
  %2 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor_priv, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 9963794, label %sw.bb
    i32 9965569, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %sw.bb.if.end5.i_crit_edge, label %if.then.i

sw.bb.if.end5.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %natural.i = getelementptr inbounds %struct.anon.107, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %natural.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %natural.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  %..i = select i1 %tobool2.not.i, i32 17, i32 81
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %sw.bb.if.end5.i_crit_edge
  %val.addr.0.i = phi i32 [ %..i, %if.then.i ], [ 0, %sw.bb.if.end5.i_crit_edge ]
  %conv.i = trunc i32 %val.addr.0.i to i16
  %call.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 14, i16 noundef zeroext %conv.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp sgt i32 %15, 1
  br i1 %cmp.i, label %do.end.i, label %if.end5.i.pb0100_set_autogain.exit_crit_edge

if.end5.i.pb0100_set_autogain.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pb0100_set_autogain.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr i8, ptr %1, i32 -168
  %natural9.i = getelementptr inbounds %struct.anon.107, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %natural9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %natural9.i, align 4
  %val10.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val10.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i, i32 noundef %val.addr.0.i, i32 noundef %19, i32 noundef %call.i) #10
  br label %pb0100_set_autogain.exit

pb0100_set_autogain.exit:                         ; preds = %do.end.i, %if.end5.i.pb0100_set_autogain.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %pb0100_set_autogain.exit.sw.epilog_crit_edge

pb0100_set_autogain.exit.sw.epilog_crit_edge:     ; preds = %pb0100_set_autogain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %pb0100_set_autogain.exit
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not = icmp eq i32 %21, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end4:                                          ; preds = %if.end
  %gain = getelementptr inbounds %struct.anon.107, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gain, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val5, align 4
  %26 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sensor_priv, align 4
  %conv.i27 = trunc i32 %25 to i16
  %call.i28 = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 43, i16 noundef zeroext %conv.i27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.then.i30, label %if.end4.do.body.i_crit_edge

if.end4.do.body.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then.i30:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 46, i16 noundef zeroext %conv.i27) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i30, %if.end4.do.body.i_crit_edge
  %err.0.i = phi i32 [ %call.i28, %if.end4.do.body.i_crit_edge ], [ %call2.i, %if.then.i30 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i31 = icmp sgt i32 %28, 1
  br i1 %cmp.i31, label %do.end.i33, label %do.body.i.do.end9.i_crit_edge

do.body.i.do.end9.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

do.end.i33:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i32 = getelementptr i8, ptr %1, i32 -168
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i32, i32 noundef %25, i32 noundef %err.0.i) #10
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i33, %do.body.i.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool10.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %do.end9.i.sw.epilog_crit_edge

do.end9.i.sw.epilog_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then11.i:                                      ; preds = %do.end9.i
  %red.i = getelementptr inbounds %struct.anon.107, ptr %27, i32 0, i32 3
  %29 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %red.i, align 4
  %val12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %val12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val12.i, align 4
  %33 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sensor_priv, align 4
  %gain.i.i = getelementptr inbounds %struct.anon.107, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gain.i.i, align 4
  %val1.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %val1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val1.i.i, align 4
  %add.i.i = add i32 %38, %32
  %39 = tail call i32 @llvm.smin.i32(i32 %add.i.i, i32 255) #7
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0) #7
  %conv.i.i = trunc i32 %40 to i16
  %call.i.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 45, i16 noundef zeroext %conv.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp5.i.i = icmp sgt i32 %41, 1
  br i1 %cmp5.i.i, label %do.end.i.i, label %if.then11.i.if.end14.i_crit_edge

if.then11.i.if.end14.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i.i, i32 noundef %40, i32 noundef %call.i.i) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i.i, %if.then11.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.sw.epilog_crit_edge

if.end14.i.sw.epilog_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then16.i:                                      ; preds = %if.end14.i
  %blue.i = getelementptr inbounds %struct.anon.107, ptr %27, i32 0, i32 4
  %42 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %blue.i, align 4
  %val17.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %val17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val17.i, align 4
  %46 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sensor_priv, align 4
  %gain.i33.i = getelementptr inbounds %struct.anon.107, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %gain.i33.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gain.i33.i, align 4
  %val1.i34.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %49, i32 0, i32 22
  %50 = ptrtoint ptr %val1.i34.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val1.i34.i, align 4
  %add.i35.i = add i32 %51, %45
  %52 = tail call i32 @llvm.smin.i32(i32 %add.i35.i, i32 255) #7
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0) #7
  %conv.i36.i = trunc i32 %53 to i16
  %call.i37.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 44, i16 noundef zeroext %conv.i36.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %54 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp5.i38.i = icmp sgt i32 %54, 1
  br i1 %cmp5.i38.i, label %do.end.i41.i, label %if.then16.i.pb0100_set_gain.exit_crit_edge

if.then16.i.pb0100_set_gain.exit_crit_edge:       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pb0100_set_gain.exit

do.end.i41.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i39.i = getelementptr i8, ptr %1, i32 -168
  %call9.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i39.i, i32 noundef %53, i32 noundef %call.i37.i) #10
  br label %pb0100_set_gain.exit

pb0100_set_gain.exit:                             ; preds = %do.end.i41.i, %if.then16.i.pb0100_set_gain.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool7.not = icmp eq i32 %call.i37.i, 0
  br i1 %tobool7.not, label %if.end9, label %pb0100_set_gain.exit.sw.epilog_crit_edge

pb0100_set_gain.exit.sw.epilog_crit_edge:         ; preds = %pb0100_set_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9:                                          ; preds = %pb0100_set_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  %exposure = getelementptr inbounds %struct.anon.107, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %exposure, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %56, i32 0, i32 22
  %57 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val10, align 4
  %call11 = tail call fastcc i32 @pb0100_set_exposure(ptr noundef %add.ptr, i32 noundef %58)
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %59 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val13, align 4
  %pixfmt.i = getelementptr i8, ptr %1, i32 240
  %61 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pixfmt.i, align 8
  %height.i = getelementptr i8, ptr %1, i32 244
  %63 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %64, %62
  %div.i = sdiv i32 %mul.i, 64
  %div2.i = sdiv i32 %mul.i, 4096
  %add.i = add nsw i32 %div.i, %div2.i
  %mul3.i = mul i32 %add.i, %60
  %shr.i = ashr i32 %mul3.i, 8
  %conv.i34 = trunc i32 %shr.i to i16
  %call.i35 = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 21, i16 noundef zeroext %conv.i34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.then.i37, label %sw.bb12.do.body.i40_crit_edge

sw.bb12.do.body.i40_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i40

if.then.i37:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 %add.i, %shr.i
  %conv4.i = trunc i32 %sub.i to i16
  %call5.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 22, i16 noundef zeroext %conv4.i) #7
  br label %do.body.i40

do.body.i40:                                      ; preds = %if.then.i37, %sw.bb12.do.body.i40_crit_edge
  %err.0.i38 = phi i32 [ %call.i35, %sw.bb12.do.body.i40_crit_edge ], [ %call5.i, %if.then.i37 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %65 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i39 = icmp sgt i32 %65, 1
  br i1 %cmp.i39, label %do.end.i42, label %do.body.i40.sw.epilog_crit_edge

do.body.i40.sw.epilog_crit_edge:                  ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i42:                                       ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  %name.i41 = getelementptr i8, ptr %1, i32 -168
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i41, i32 noundef %60, i32 noundef %err.0.i38) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i42, %do.body.i40.sw.epilog_crit_edge, %if.end9, %pb0100_set_gain.exit.sw.epilog_crit_edge, %if.end14.i.sw.epilog_crit_edge, %do.end9.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %pb0100_set_autogain.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i, %pb0100_set_autogain.exit.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge ], [ %call.i37.i, %pb0100_set_gain.exit.sw.epilog_crit_edge ], [ %call11, %if.end9 ], [ %err.0.i38, %do.body.i40.sw.epilog_crit_edge ], [ %err.0.i38, %do.end.i42 ], [ %err.0.i, %do.end9.i.sw.epilog_crit_edge ], [ %call.i.i, %if.end14.i.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pb0100_set_exposure(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  %call = tail call i32 @stv06xx_write_sensor(ptr noundef %gspca_dev, i8 noundef zeroext 9, i16 noundef zeroext %conv) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %val, i32 noundef %call) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_sensor(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_bridge(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @stv06xx_sensor_pb0100, !1, !"stv06xx_sensor_pb0100", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.h", i32 114, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 114, i32 11}
!4 = !{ptr @pb0100_init_controls.autogain_target, !5, !"autogain_target", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 110, i32 39}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 123, i32 11}
!8 = !{ptr @pb0100_init_controls.natural_light, !9, !"natural_light", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 119, i32 39}
!10 = !{ptr @pb0100_init_controls._key, !11, !"_key", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 133, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pb0100_ctrl_ops, !14, !"pb0100_ctrl_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 102, i32 35}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 406, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pb0100_set_autogain._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @pb0100_set_autogain._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 330, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pb0100_set_gain._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @pb0100_set_gain._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 354, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pb0100_set_red_balance._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pb0100_set_red_balance._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 373, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pb0100_set_blue_balance._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @pb0100_set_blue_balance._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 385, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pb0100_set_exposure._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pb0100_set_exposure._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 428, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pb0100_set_autogain_target._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pb0100_set_autogain_target._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 167, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pb0100_probe._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pb0100_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @pb0100_mode, !52, !"pb0100_mode", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 50, i32 31}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 227, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pb0100_start._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @pb0100_start._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_pb0100.c", i32 245, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pb0100_stop._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @pb0100_stop._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
