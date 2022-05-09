; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stv06xx_sensor = type { [32 x i8], i8, i8, i8, [4 x i32], [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.hdcs = type { i32, i32, i32, %struct.anon.107, %struct.anon.108, i32 }
%struct.anon.107 = type { i32, i32, i32, i32, i32 }
%struct.anon.108 = type { i8, i8, i16, i16 }
%struct.sd = type { %struct.gspca_dev, ptr, ptr, i32, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@stv06xx_sensor_hdcs1x00 = dso_local constant { %struct.stv06xx_sensor, [60 x i8] } { %struct.stv06xx_sensor { [32 x i8] c"HP HDCS-1000/1100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -86, i8 0, i8 1, [4 x i32] [i32 847, i32 0, i32 0, i32 0], [4 x i32] [i32 847, i32 0, i32 0, i32 0], ptr @hdcs_probe_1x00, ptr @hdcs_init, ptr @hdcs_init_controls, ptr null, ptr null, ptr @hdcs_start, ptr @hdcs_stop, ptr @hdcs_dump }, [60 x i8] zeroinitializer }, align 32
@stv06xx_sensor_hdcs1020 = dso_local constant { %struct.stv06xx_sensor, [60 x i8] } { %struct.stv06xx_sensor { [32 x i8] c"HDCS-1020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -86, i8 0, i8 1, [4 x i32] [i32 847, i32 0, i32 0, i32 0], [4 x i32] [i32 847, i32 0, i32 0, i32 0], ptr @hdcs_probe_1020, ptr @hdcs_init, ptr @hdcs_init_controls, ptr null, ptr null, ptr @hdcs_start, ptr @hdcs_stop, ptr @hdcs_dump }, [60 x i8] zeroinitializer }, align 32
@hdcs_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stv06xx_hdcs:348:(hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@hdcs_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hdcs_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@hdcs_set_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Writing gain %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdcs_set_gain\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c\00", [49 x i8] zeroinitializer }, align 32
@hdcs_set_gain._entry_ptr = internal global ptr @hdcs_set_gain._entry, section ".printk_index", align 4
@hdcs_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: Writing exposure %d, rowexp %d, srowexp %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdcs_set_exposure\00", [46 x i8] zeroinitializer }, align 32
@hdcs_set_exposure._entry_ptr = internal global ptr @hdcs_set_exposure._entry, section ".printk_index", align 4
@hdcs_probe_1x00._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016gspca_stv06xx: HDCS-1000/1100 sensor detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdcs_probe_1x00\00", [16 x i8] zeroinitializer }, align 32
@hdcs_probe_1x00._entry_ptr = internal global ptr @hdcs_probe_1x00._entry, section ".printk_index", align 4
@hdcs1x00_mode = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 360, i32 296, i32 1195528775, i32 1, i32 360, i32 106560, i32 8, i32 1, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hdcs_probe_1020._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_stv06xx: HDCS-1020 sensor detected\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdcs_probe_1020\00", [16 x i8] zeroinitializer }, align 32
@hdcs_probe_1020._entry_ptr = internal global ptr @hdcs_probe_1020._entry, section ".printk_index", align 4
@hdcs1020_mode = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 352, i32 292, i32 1195528775, i32 1, i32 352, i32 102784, i32 8, i32 1, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@hdcs_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Starting stream\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdcs_start\00", [21 x i8] zeroinitializer }, align 32
@hdcs_start._entry_ptr = internal global ptr @hdcs_start._entry, section ".printk_index", align 4
@hdcs_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Halting stream\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdcs_stop\00", [22 x i8] zeroinitializer }, align 32
@hdcs_stop._entry_ptr = internal global ptr @hdcs_stop._entry, section ".printk_index", align 4
@stv_bridge_init = internal constant { [10 x [2 x i16]], [56 x i8] } { [10 x [2 x i16]] [[2 x i16] [i16 5184, i16 0], [2 x i16] [i16 1059, i16 0], [2 x i16] [i16 5376, i16 29], [2 x i16] [i16 5377, i16 181], [2 x i16] [i16 5378, i16 168], [2 x i16] [i16 5379, i16 149], [2 x i16] [i16 5380, i16 7], [2 x i16] [i16 5187, i16 32], [2 x i16] [i16 5571, i16 1], [2 x i16] [i16 5760, i16 10]], [56 x i8] zeroinitializer }, align 32
@stv_sensor_init = internal constant { [7 x [2 x i8]], [18 x i8] } { [7 x [2 x i8]] [[2 x i8] c"\02~", [2 x i8] c"\04\00", [2 x i8] c"\06c", [2 x i8] c"\08\00", [2 x i8] c"\0A ", [2 x i8] c"\0C\12", [2 x i8] c"\12\0A"], [18 x i8] zeroinitializer }, align 32
@hdcs_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016gspca_stv06xx: Dumping sensor registers:\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hdcs_dump\00", [22 x i8] zeroinitializer }, align 32
@hdcs_dump._entry_ptr = internal global ptr @hdcs_dump._entry, section ".printk_index", align 4
@hdcs_dump._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016gspca_stv06xx: reg 0x%02x = 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@hdcs_dump._entry_ptr.18 = internal global ptr @hdcs_dump._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 9963793, i64 9963795]
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"stv06xx_sensor_hdcs1x00\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 128, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"stv06xx_sensor_hdcs1020\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 147, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 348, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"hdcs_ctrl_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 340, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 270, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 245, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 366, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"hdcs1x00_mode\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 22, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 423, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"hdcs1020_mode\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 36, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 459, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 468, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"stv_bridge_init\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 166, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"stv_sensor_init\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [50 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 180, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 524, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [50 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 528, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @hdcs_dump._entry, ptr @hdcs_dump._entry.16, ptr @hdcs_dump._entry_ptr, ptr @hdcs_dump._entry_ptr.18, ptr @hdcs_probe_1020._entry, ptr @hdcs_probe_1020._entry_ptr, ptr @hdcs_probe_1x00._entry, ptr @hdcs_probe_1x00._entry_ptr, ptr @hdcs_set_exposure._entry, ptr @hdcs_set_exposure._entry_ptr, ptr @hdcs_set_gain._entry, ptr @hdcs_set_gain._entry_ptr, ptr @hdcs_start._entry, ptr @hdcs_start._entry_ptr, ptr @hdcs_stop._entry, ptr @hdcs_stop._entry_ptr, ptr @stv06xx_sensor_hdcs1x00, ptr @stv06xx_sensor_hdcs1020, ptr @hdcs_init_controls._key, ptr @.str, ptr @hdcs_ctrl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hdcs1x00_mode, ptr @.str.8, ptr @.str.9, ptr @hdcs1020_mode, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @stv_bridge_init, ptr @stv_sensor_init, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_sensor_hdcs1x00 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_sensor_hdcs1020 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_set_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_probe_1x00._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs1x00_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_probe_1020._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs1020_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv_bridge_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv_sensor_init to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcs_dump._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_probe_1x00(ptr noundef %sd) #0 align 64 {
entry:
  %sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sensor) #6
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sensor, align 2, !annotation !66
  %call = call i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %sensor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %2)
  %cmp1.not = icmp eq i16 %2, 8
  br i1 %cmp1.not, label %do.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %3 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hdcs1x00_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %nmodes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %array = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %array, align 4
  %top = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %top, align 8
  %width = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 360, ptr %width, align 4
  %height = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 296, ptr %height, align 8
  %border = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %border to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %border, align 4
  %exp = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %exp, align 8
  %cpo = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %cpo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %cpo, align 1
  %rs = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %rs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 186, ptr %rs, align 2
  %er = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %er to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 100, ptr %er, align 4
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %15 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bridge, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp17 = icmp eq i8 %16, 1
  %cond = select i1 %cmp17, i32 20, i32 5
  %psmp = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 5
  %17 = ptrtoint ptr %psmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %psmp, align 8
  %sensor_priv = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %18 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %sensor_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sensor) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_init(ptr noundef %sd) #0 align 64 {
entry:
  %regs.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_priv = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor_priv, align 4
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bridge, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5190, i16 noundef zeroext 1) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.095 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [10 x [2 x i16]], ptr @stv_bridge_init, i32 0, i32 %i.095
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %arrayidx6 = getelementptr [10 x [2 x i16]], ptr @stv_bridge_init, i32 0, i32 %i.095, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx6, align 2
  %call7 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext %5, i16 noundef zeroext %7) #6
  %inc = add nuw nsw i32 %i.095, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.095)
  %cmp2 = icmp ult i32 %i.095, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %or.cond = select i1 %cmp2, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.end.cleanup_crit_edge, label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %8 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor_priv, align 4
  %sensor.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %10 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensor.i, align 8
  %cmp.i = icmp eq ptr %11, @stv06xx_sensor_hdcs1020
  %conv.i = select i1 %cmp.i, i8 56, i8 48
  %call.i = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv.i, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end11.hdcs_reset.exit_crit_edge, label %if.end.i

if.end11.hdcs_reset.exit_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_reset.exit

if.end.i:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sensor.i, align 8
  %cmp4.i = icmp eq ptr %13, @stv06xx_sensor_hdcs1020
  %conv7.i = select i1 %cmp4.i, i8 56, i8 48
  %call8.i = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv7.i, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i.hdcs_reset.exit_crit_edge

if.end.i.hdcs_reset.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_reset.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %9, align 4
  br label %hdcs_reset.exit

hdcs_reset.exit:                                  ; preds = %if.then11.i, %if.end.i.hdcs_reset.exit_crit_edge, %if.end11.hdcs_reset.exit_crit_edge
  br i1 %tobool.not, label %for.body20, label %hdcs_reset.exit.if.end33_crit_edge

hdcs_reset.exit.if.end33_crit_edge:               ; preds = %hdcs_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

for.body20:                                       ; preds = %hdcs_reset.exit
  %call26 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 2, i16 noundef zeroext 126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool17.not = icmp eq i32 %call26, 0
  br i1 %tobool17.not, label %for.body20.1, label %for.body20.for.end29_crit_edge

for.body20.for.end29_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body20.1:                                     ; preds = %for.body20
  %call26.1 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %tobool17.not.1 = icmp eq i32 %call26.1, 0
  br i1 %tobool17.not.1, label %for.body20.2, label %for.body20.1.for.end29_crit_edge

for.body20.1.for.end29_crit_edge:                 ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body20.2:                                     ; preds = %for.body20.1
  %call26.2 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 6, i16 noundef zeroext 99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %tobool17.not.2 = icmp eq i32 %call26.2, 0
  br i1 %tobool17.not.2, label %for.body20.3, label %for.body20.2.for.end29_crit_edge

for.body20.2.for.end29_crit_edge:                 ; preds = %for.body20.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body20.3:                                     ; preds = %for.body20.2
  %call26.3 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3)
  %tobool17.not.3 = icmp eq i32 %call26.3, 0
  br i1 %tobool17.not.3, label %for.body20.4, label %for.body20.3.for.end29_crit_edge

for.body20.3.for.end29_crit_edge:                 ; preds = %for.body20.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body20.4:                                     ; preds = %for.body20.3
  %call26.4 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 10, i16 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.4)
  %tobool17.not.4 = icmp eq i32 %call26.4, 0
  br i1 %tobool17.not.4, label %for.body20.5, label %for.body20.4.for.end29_crit_edge

for.body20.4.for.end29_crit_edge:                 ; preds = %for.body20.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body20.5:                                     ; preds = %for.body20.4
  %call26.5 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 12, i16 noundef zeroext 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.5)
  %tobool17.not.5 = icmp eq i32 %call26.5, 0
  br i1 %tobool17.not.5, label %for.body20.6, label %for.body20.5.for.end29_crit_edge

for.body20.5.for.end29_crit_edge:                 ; preds = %for.body20.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body20.6:                                     ; preds = %for.body20.5
  call void @__sanitizer_cov_trace_pc() #8
  %call26.6 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 18, i16 noundef zeroext 10) #6
  br label %for.end29

for.end29:                                        ; preds = %for.body20.6, %for.body20.5.for.end29_crit_edge, %for.body20.4.for.end29_crit_edge, %for.body20.3.for.end29_crit_edge, %for.body20.2.for.end29_crit_edge, %for.body20.1.for.end29_crit_edge, %for.body20.for.end29_crit_edge
  %call26.lcssa = phi i32 [ %call26, %for.body20.for.end29_crit_edge ], [ %call26.1, %for.body20.1.for.end29_crit_edge ], [ %call26.2, %for.body20.2.for.end29_crit_edge ], [ %call26.3, %for.body20.3.for.end29_crit_edge ], [ %call26.4, %for.body20.4.for.end29_crit_edge ], [ %call26.5, %for.body20.5.for.end29_crit_edge ], [ %call26.6, %for.body20.6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.lcssa)
  %cmp30 = icmp slt i32 %call26.lcssa, 0
  br i1 %cmp30, label %for.end29.cleanup_crit_edge, label %for.end29.if.end33_crit_edge

for.end29.if.end33_crit_edge:                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

for.end29.cleanup_crit_edge:                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %for.end29.if.end33_crit_edge, %hdcs_reset.exit.if.end33_crit_edge
  %15 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sensor.i, align 8
  %cmp34 = icmp eq ptr %16, @stv06xx_sensor_hdcs1020
  %conv36 = select i1 %cmp34, i8 54, i8 46
  %call37 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv36, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end33.cleanup_crit_edge, label %if.end41

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %17 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor.i, align 8
  %cmp43 = icmp eq ptr %18, @stv06xx_sensor_hdcs1020
  %psmp = getelementptr inbounds %struct.hdcs, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %psmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %psmp, align 4
  %21 = trunc i32 %20 to i16
  %. = select i1 %cmp43, i16 192, i16 96
  %conv50 = or i16 %., %21
  %call51 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 28, i16 noundef zeroext %conv50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp53 = icmp slt i32 %call51, 0
  br i1 %cmp53, label %if.end41.cleanup_crit_edge, label %if.end56

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end41
  %width = getelementptr inbounds %struct.hdcs, ptr %1, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.hdcs, ptr %1, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %26 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sensor_priv, align 4
  %add.i = add i32 %23, 3
  %and.i = and i32 %add.i, -4
  %add1.i = add i32 %25, 3
  %and2.i = and i32 %add1.i, -4
  %array.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3
  %width3.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %width3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width3.i, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 %29) #6
  %31 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sensor.i, align 8
  %cmp6.i = icmp eq ptr %32, @stv06xx_sensor_hdcs1020
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %border.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3, i32 4
  %33 = ptrtoint ptr %border.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %border.i, align 4
  %mul.i = shl i32 %34, 1
  %add9.i = add i32 %and2.i, 4
  %add10.i = add i32 %add9.i, %mul.i
  %height12.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %height12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %36)
  %cmp13.i = icmp ugt i32 %add10.i, %36
  %sub.i = sub i32 -4, %mul.i
  %sub20.i = add i32 %sub.i, %36
  %height.addr.0.i = select i1 %cmp13.i, i32 %sub20.i, i32 %and2.i
  %sub24.i = add i32 %36, -4
  %sub25.i = sub i32 %sub24.i, %height.addr.0.i
  %div110.i = lshr i32 %sub25.i, 1
  %top.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %top.i, align 4
  %add27.i = add i32 %div110.i, %38
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %height29.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %height29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height29.i, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %and2.i, i32 %40) #6
  %top36.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %top36.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %top36.i, align 4
  %sub39.i = sub i32 %40, %41
  %div40104.i = lshr i32 %sub39.i, 1
  %add41.i = add i32 %div40104.i, %43
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then7.i
  %height.addr.2.i = phi i32 [ %height.addr.0.i, %if.then7.i ], [ %41, %if.else.i ]
  %y.0.i = phi i32 [ %add27.i, %if.then7.i ], [ %add41.i, %if.else.i ]
  %44 = ptrtoint ptr %array.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %array.i, align 4
  %sub46.i = sub i32 %29, %30
  %div47105.i = lshr i32 %sub46.i, 1
  %add48.i = add i32 %45, %div47105.i
  %div49106.i = lshr i32 %y.0.i, 2
  %conv.i94 = trunc i32 %div49106.i to i8
  %div50107.i = lshr i32 %add48.i, 2
  %conv51.i = trunc i32 %div50107.i to i8
  %add53.i = add i32 %y.0.i, %height.addr.2.i
  %div54108.i = lshr i32 %add53.i, 2
  %46 = trunc i32 %div54108.i to i8
  %conv56.i = add i8 %46, -1
  %add58.i = add i32 %add48.i, %30
  %div59109.i = lshr i32 %add58.i, 2
  %47 = trunc i32 %div59109.i to i8
  %conv61.i = add i8 %47, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %regs.i.i) #6
  %48 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 1
  %49 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 2
  %50 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 3
  %51 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 4
  %52 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 5
  %53 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 6
  %54 = getelementptr inbounds [32 x i8], ptr %regs.i.i, i32 0, i32 7
  %55 = getelementptr inbounds i8, ptr %regs.i.i, i32 8
  %56 = call ptr @memset(ptr %55, i32 255, i32 24)
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 20, ptr %regs.i.i, align 1
  %58 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i94, ptr %48, align 1
  %59 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 22, ptr %49, align 1
  %60 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv51.i, ptr %50, align 1
  %61 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 24, ptr %51, align 1
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv56.i, ptr %52, align 1
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 26, ptr %53, align 1
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv61.i, ptr %54, align 1
  %call.i.i = call i32 @stv06xx_write_sensor_bytes(ptr noundef %sd, ptr noundef nonnull %regs.i.i, i8 noundef zeroext 4) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regs.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp63.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp63.i, label %if.end42.i.cleanup_crit_edge, label %if.end66.i

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %w.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 1
  %65 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %30, ptr %w.i, align 4
  %h.i = getelementptr inbounds %struct.hdcs, ptr %27, i32 0, i32 2
  %66 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %height.addr.2.i, ptr %h.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66.i, %if.end42.i.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %for.end29.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %for.end.cleanup_crit_edge ], [ %call26.lcssa, %for.end29.cleanup_crit_edge ], [ %call37, %if.end33.cleanup_crit_edge ], [ %call51, %if.end41.cleanup_crit_edge ], [ %call.i.i, %if.end42.i.cleanup_crit_edge ], [ %call.i.i, %if.end66.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @hdcs_init_controls._key, ptr noundef nonnull @.str) #6
  %call1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hdcs_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 48) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hdcs_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 50) #6
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_start(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sensor_priv.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %sensor_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor_priv.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.then4.i [
    i32 2, label %do.end3.hdcs_set_state.exit_crit_edge
    i32 1, label %do.end3.if.end8.i_crit_edge
  ]

do.end3.if.end8.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.end3.hdcs_set_state.exit_crit_edge:            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_state.exit

if.then4.i:                                       ; preds = %do.end3
  %sensor.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %6 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor.i, align 8
  %cmp5.i = icmp eq ptr %7, @stv06xx_sensor_hdcs1020
  %conv.i = select i1 %cmp5.i, i8 56, i8 48
  %call.i = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv.i, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then4.i.if.end8.i_crit_edge, label %if.then4.i.hdcs_set_state.exit_crit_edge

if.then4.i.hdcs_set_state.exit_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_state.exit

if.then4.i.if.end8.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i.if.end8.i_crit_edge, %do.end3.if.end8.i_crit_edge
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %2, align 4
  %sensor15.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %9 = ptrtoint ptr %sensor15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor15.i, align 8
  %cmp16.i = icmp eq ptr %10, @stv06xx_sensor_hdcs1020
  %conv19.i = select i1 %cmp16.i, i8 56, i8 48
  %call21.i = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv19.i, i16 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end8.i.hdcs_set_state.exit_crit_edge

if.end8.i.hdcs_set_state.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_state.exit

if.then23.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %2, align 4
  br label %hdcs_set_state.exit

hdcs_set_state.exit:                              ; preds = %if.then23.i, %if.end8.i.hdcs_set_state.exit_crit_edge, %if.then4.i.hdcs_set_state.exit_crit_edge, %do.end3.hdcs_set_state.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end3.hdcs_set_state.exit_crit_edge ], [ %call.i, %if.then4.i.hdcs_set_state.exit_crit_edge ], [ 0, %if.then23.i ], [ %call21.i, %if.end8.i.hdcs_set_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_stop(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sensor_priv.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %sensor_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor_priv.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %4, label %if.then4.i [
    i32 0, label %do.end3.hdcs_set_state.exit_crit_edge
    i32 1, label %do.end3.if.end8.i_crit_edge
  ]

do.end3.if.end8.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.end3.hdcs_set_state.exit_crit_edge:            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_state.exit

if.then4.i:                                       ; preds = %do.end3
  %sensor.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %6 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor.i, align 8
  %cmp5.i = icmp eq ptr %7, @stv06xx_sensor_hdcs1020
  %conv.i = select i1 %cmp5.i, i8 56, i8 48
  %call.i = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv.i, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then4.i.if.end8.i_crit_edge, label %if.then4.i.hdcs_set_state.exit_crit_edge

if.then4.i.hdcs_set_state.exit_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_state.exit

if.then4.i.if.end8.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i.if.end8.i_crit_edge, %do.end3.if.end8.i_crit_edge
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %2, align 4
  %sensor15.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %9 = ptrtoint ptr %sensor15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor15.i, align 8
  %cmp16.i = icmp eq ptr %10, @stv06xx_sensor_hdcs1020
  %conv19.i = select i1 %cmp16.i, i8 56, i8 48
  %call21.i = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %conv19.i, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end8.i.hdcs_set_state.exit_crit_edge

if.end8.i.hdcs_set_state.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_state.exit

if.then23.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  br label %hdcs_set_state.exit

hdcs_set_state.exit:                              ; preds = %if.then23.i, %if.end8.i.hdcs_set_state.exit_crit_edge, %if.then4.i.hdcs_set_state.exit_crit_edge, %do.end3.hdcs_set_state.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %do.end3.hdcs_set_state.exit_crit_edge ], [ %call.i, %if.then4.i.hdcs_set_state.exit_crit_edge ], [ 0, %if.then23.i ], [ %call21.i, %if.end8.i.hdcs_set_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_dump(ptr noundef %sd) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !66
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %reg.014 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %conv2 = trunc i16 %reg.014 to i8
  %call3 = call i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext %conv2, ptr noundef nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %conv9 = zext i16 %2 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %indvars.iv, i32 noundef %conv9) #9
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i16 %reg.014, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 41
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_probe_1020(ptr noundef %sd) #0 align 64 {
entry:
  %sensor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sensor) #6
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %sensor, align 2, !annotation !66
  %call = call i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %sensor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sensor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %2)
  %cmp1.not = icmp eq i16 %2, 16
  br i1 %cmp1.not, label %do.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %3 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hdcs1020_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %nmodes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %array = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %array, align 4
  %top = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %top, align 8
  %width = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 352, ptr %width, align 4
  %height = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 304, ptr %height, align 8
  %border = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %border to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %border, align 4
  %psmp = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %psmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %psmp, align 8
  %exp = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %exp to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %exp, align 8
  %cpo = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %cpo to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %cpo, align 1
  %rs = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %rs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 155, ptr %rs, align 2
  %er = getelementptr inbounds %struct.hdcs, ptr %call7.i, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %er to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 96, ptr %er, align 4
  %sensor_priv = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 2
  %16 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %sensor_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sensor) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdcs_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %exp.i = alloca [14 x i8], align 1
  %regs.i.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963795, label %sw.bb
    i32 9963793, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp sgt i32 %7, 1
  br i1 %cmp.i, label %do.end.i, label %sw.bb.hdcs_set_gain.exit_crit_edge

sw.bb.hdcs_set_gain.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_gain.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name.i, i32 noundef %6) #9
  br label %hdcs_set_gain.exit

hdcs_set_gain.exit:                               ; preds = %do.end.i, %sw.bb.hdcs_set_gain.exit_crit_edge
  %conv.i = trunc i32 %6 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp.i.i = icmp slt i8 %conv.i, 0
  %8 = lshr i8 %conv.i, 1
  %9 = or i8 %8, -128
  %g.addr.0.i.i = select i1 %cmp.i.i, i8 %9, i8 %conv.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %regs.i.i.i) #6
  %10 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 1
  %11 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 2
  %12 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 3
  %13 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 4
  %14 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 5
  %15 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 6
  %16 = getelementptr inbounds [32 x i8], ptr %regs.i.i.i, i32 0, i32 7
  %17 = getelementptr inbounds i8, ptr %regs.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 255, i32 24)
  %19 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 30, ptr %regs.i.i.i, align 1
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %g.addr.0.i.i, ptr %10, align 1
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %11, align 1
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %g.addr.0.i.i, ptr %12, align 1
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 34, ptr %13, align 1
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %g.addr.0.i.i, ptr %14, align 1
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 36, ptr %15, align 1
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %g.addr.0.i.i, ptr %16, align 1
  %call.i.i.i = call i32 @stv06xx_write_sensor_bytes(ptr noundef %add.ptr, ptr noundef nonnull %regs.i.i.i, i8 noundef zeroext 4) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %regs.i.i.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val2, align 4
  %sensor_priv.i = getelementptr i8, ptr %1, i32 1028
  %29 = ptrtoint ptr %sensor_priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sensor_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %exp.i) #6
  %31 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 1
  %32 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 2
  %33 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 3
  %34 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 4
  %35 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 5
  %36 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 6
  %37 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 7
  %38 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 8
  %39 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 9
  %40 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 10
  %41 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 11
  %mul1.i = mul i32 %28, 6425
  %exp2.i = getelementptr inbounds %struct.hdcs, ptr %30, i32 0, i32 4
  %42 = call ptr @memset(ptr %exp.i, i32 255, i32 14)
  %43 = ptrtoint ptr %exp2.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %exp2.i, align 4
  %conv.i8 = zext i8 %44 to i32
  %psmp.i = getelementptr inbounds %struct.hdcs, ptr %30, i32 0, i32 5
  %45 = ptrtoint ptr %psmp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %psmp.i, align 4
  %add.i = add nuw nsw i32 %conv.i8, 5
  %add3.i = add i32 %add.i, %46
  %w.i = getelementptr inbounds %struct.hdcs, ptr %30, i32 0, i32 1
  %47 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %w.i, align 4
  %mul7.i = mul i32 %add3.i, %48
  %div.i = sdiv i32 %mul7.i, 2
  %add8.i = add nsw i32 %div.i, %conv.i8
  %rs.i = getelementptr inbounds %struct.hdcs, ptr %30, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %rs.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rs.i, align 2
  %conv10.i = zext i16 %50 to i32
  %add11.i = add nsw i32 %add8.i, %conv10.i
  %div12.i = sdiv i32 %mul1.i, %add11.i
  %mul13.i = mul i32 %add11.i, %div12.i
  %sub.i = sub i32 %mul1.i, %mul13.i
  %sensor.i = getelementptr i8, ptr %1, i32 1024
  %51 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sensor.i, align 8
  %cmp.i9 = icmp eq ptr %52, @stv06xx_sensor_hdcs1020
  %er.i = getelementptr inbounds %struct.hdcs, ptr %30, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %er.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %er.i, align 4
  %conv17.i = zext i16 %54 to i32
  br i1 %cmp.i9, label %if.then59.i, label %if.else76.i

if.then59.i:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %add18.i = add i32 %sub.i, %conv17.i
  %add19.i = add i32 %add18.i, 13
  %div20.i = sdiv i32 %add19.i, %add3.i
  %sub21.i = sub i32 %48, %div20.i
  %add26.i = add i32 %add3.i, %conv17.i
  %sub27.i = add i32 %add26.i, 11
  %div28.i = sdiv i32 %sub27.i, %add3.i
  %sub30.i = sub i32 %48, %div28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21.i)
  %cmp47170.i = icmp slt i32 %sub21.i, 0
  %55 = tail call i32 @llvm.smin.i32(i32 %sub21.i, i32 %sub30.i) #6
  %srowexp.1173.i = select i1 %cmp47170.i, i32 0, i32 %55
  %56 = ptrtoint ptr %exp.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 56, ptr %exp.i, align 1
  %57 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %31, align 1
  %58 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 38, ptr %32, align 1
  %conv62.i = trunc i32 %div12.i to i8
  %59 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv62.i, ptr %33, align 1
  %60 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 40, ptr %34, align 1
  %61 = lshr i32 %div12.i, 8
  %conv65.i = trunc i32 %61 to i8
  %62 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv65.i, ptr %35, align 1
  %63 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 42, ptr %36, align 1
  %64 = lshr i32 %srowexp.1173.i, 2
  %conv70.i = trunc i32 %64 to i8
  %65 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv70.i, ptr %37, align 1
  %66 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 44, ptr %38, align 1
  %67 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 16, ptr %39, align 1
  %68 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 56, ptr %40, align 1
  %69 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %41, align 1
  %call.i10 = call i32 @stv06xx_write_sensor_bytes(ptr noundef %add.ptr, ptr noundef nonnull %exp.i, i8 noundef zeroext 6) #6
  br label %do.body.i

if.else76.i:                                      ; preds = %sw.bb1
  %70 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 13
  %71 = getelementptr inbounds [14 x i8], ptr %exp.i, i32 0, i32 12
  %.neg = add nsw i32 %add8.i, -6
  %72 = add i32 %sub.i, %conv17.i
  %sub36.i = sub i32 %.neg, %72
  %add41.i = add i32 %add3.i, %conv17.i
  %sub42.i = add i32 %add41.i, 4
  %73 = srem i32 %sub42.i, %add3.i
  %mul44.neg.i = sub i32 -5, %add41.i
  %sub45.i = add i32 %mul44.neg.i, %add8.i
  %sub46.i = add i32 %sub45.i, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36.i)
  %cmp47.i = icmp slt i32 %sub36.i, 0
  %74 = tail call i32 @llvm.smin.i32(i32 %sub36.i, i32 %sub46.i) #6
  %srowexp.1.i = select i1 %cmp47.i, i32 0, i32 %74
  %75 = ptrtoint ptr %exp.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 48, ptr %exp.i, align 1
  %76 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %31, align 1
  %77 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 38, ptr %32, align 1
  %conv81.i = trunc i32 %div12.i to i8
  %78 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv81.i, ptr %33, align 1
  %79 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 40, ptr %34, align 1
  %80 = lshr i32 %div12.i, 8
  %conv85.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv85.i, ptr %35, align 1
  %82 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 42, ptr %36, align 1
  %conv89.i = trunc i32 %srowexp.1.i to i8
  %83 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv89.i, ptr %37, align 1
  %84 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 44, ptr %38, align 1
  %85 = lshr i32 %srowexp.1.i, 8
  %conv93.i = trunc i32 %85 to i8
  %86 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv93.i, ptr %39, align 1
  %87 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %40, align 1
  %88 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 16, ptr %41, align 1
  %89 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 48, ptr %71, align 1
  %90 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %70, align 1
  %call100.i = call i32 @stv06xx_write_sensor_bytes(ptr noundef %add.ptr, ptr noundef nonnull %exp.i, i8 noundef zeroext 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %cmp101.i = icmp slt i32 %call100.i, 0
  br i1 %cmp101.i, label %if.else76.i.hdcs_set_exposure.exit_crit_edge, label %if.else76.i.do.body.i_crit_edge

if.else76.i.do.body.i_crit_edge:                  ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else76.i.hdcs_set_exposure.exit_crit_edge:     ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_exposure.exit

do.body.i:                                        ; preds = %if.else76.i.do.body.i_crit_edge, %if.then59.i
  %srowexp.1175.i = phi i32 [ %srowexp.1173.i, %if.then59.i ], [ %srowexp.1.i, %if.else76.i.do.body.i_crit_edge ]
  %err.0.i = phi i32 [ %call.i10, %if.then59.i ], [ %call100.i, %if.else76.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %91 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp106.i = icmp sgt i32 %91, 1
  br i1 %cmp106.i, label %do.end.i12, label %do.body.i.hdcs_set_exposure.exit_crit_edge

do.body.i.hdcs_set_exposure.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hdcs_set_exposure.exit

do.end.i12:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i11 = getelementptr i8, ptr %1, i32 -168
  %call111.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name.i11, i32 noundef %28, i32 noundef %div12.i, i32 noundef %srowexp.1175.i) #9
  br label %hdcs_set_exposure.exit

hdcs_set_exposure.exit:                           ; preds = %do.end.i12, %do.body.i.hdcs_set_exposure.exit_crit_edge, %if.else76.i.hdcs_set_exposure.exit_crit_edge
  %retval.0.i = phi i32 [ %call100.i, %if.else76.i.hdcs_set_exposure.exit_crit_edge ], [ %err.0.i, %do.end.i12 ], [ %err.0.i, %do.body.i.hdcs_set_exposure.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %exp.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %hdcs_set_exposure.exit, %hdcs_set_gain.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %retval.0.i, %hdcs_set_exposure.exit ], [ %call.i.i.i, %hdcs_set_gain.exit ]
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_sensor_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_sensor(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_bridge(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @stv06xx_sensor_hdcs1x00, !1, !"stv06xx_sensor_hdcs1x00", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.h", i32 128, i32 29}
!2 = !{ptr @stv06xx_sensor_hdcs1020, !3, !"stv06xx_sensor_hdcs1020", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.h", i32 147, i32 29}
!4 = !{ptr @hdcs_init_controls._key, !5, !"_key", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 348, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @hdcs_ctrl_ops, !8, !"hdcs_ctrl_ops", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 340, i32 35}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 270, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hdcs_set_gain._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @hdcs_set_gain._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 245, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hdcs_set_exposure._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @hdcs_set_exposure._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 366, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hdcs_probe_1x00._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @hdcs_probe_1x00._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @hdcs1x00_mode, !26, !"hdcs1x00_mode", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 22, i32 31}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 423, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hdcs_probe_1020._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hdcs_probe_1020._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @hdcs1020_mode, !33, !"hdcs1020_mode", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 36, i32 31}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 459, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hdcs_start._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @hdcs_start._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 468, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hdcs_stop._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hdcs_stop._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @stv_bridge_init, !45, !"stv_bridge_init", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.h", i32 166, i32 18}
!46 = !{ptr @stv_sensor_init, !47, !"stv_sensor_init", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.h", i32 180, i32 17}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 524, i32 2}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hdcs_dump._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hdcs_dump._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_hdcs.c", i32 528, i32 3}
!55 = !{ptr @hdcs_dump._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hdcs_dump._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
