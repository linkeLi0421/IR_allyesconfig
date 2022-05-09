; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stv06xx_sensor = type { [32 x i8], i8, i8, i8, [4 x i32], [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@stv06xx_sensor_vv6410 = dso_local constant { %struct.stv06xx_sensor, [60 x i8] } { %struct.stv06xx_sensor { [32 x i8] c"ST VV6410\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 32, i8 5, i8 1, [4 x i32] [i32 1023, i32 0, i32 0, i32 0], [4 x i32] [i32 1023, i32 0, i32 0, i32 0], ptr @vv6410_probe, ptr @vv6410_init, ptr @vv6410_init_controls, ptr null, ptr null, ptr @vv6410_start, ptr @vv6410_stop, ptr @vv6410_dump }, [60 x i8] zeroinitializer }, align 32
@vv6410_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_stv06xx: vv6410 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vv6410_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c\00", [47 x i8] zeroinitializer }, align 32
@vv6410_probe._entry_ptr = internal global ptr @vv6410_probe._entry, section ".printk_index", align 4
@vv6410_mode = internal global { [1 x %struct.v4l2_pix_format], [48 x i8] } { [1 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 356, i32 292, i32 1195528775, i32 1, i32 356, i32 103952, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@vv6410_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stv06xx_vv6410:88:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@vv6410_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vv6410_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@vv6410_set_hflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: Set horizontal flip to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vv6410_set_hflip\00", [47 x i8] zeroinitializer }, align 32
@vv6410_set_hflip._entry_ptr = internal global ptr @vv6410_set_hflip._entry, section ".printk_index", align 4
@vv6410_set_vflip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Set vertical flip to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vv6410_set_vflip\00", [47 x i8] zeroinitializer }, align 32
@vv6410_set_vflip._entry_ptr = internal global ptr @vv6410_set_vflip._entry, section ".printk_index", align 4
@vv6410_set_analog_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Set analog gain to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vv6410_set_analog_gain\00", [41 x i8] zeroinitializer }, align 32
@vv6410_set_analog_gain._entry_ptr = internal global ptr @vv6410_set_analog_gain._entry, section ".printk_index", align 4
@vv6410_set_exposure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: Set coarse exposure to %d, fine exposure to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vv6410_set_exposure\00", [44 x i8] zeroinitializer }, align 32
@vv6410_set_exposure._entry_ptr = internal global ptr @vv6410_set_exposure._entry, section ".printk_index", align 4
@vv6410_sensor_init = internal constant { [10 x [2 x i8]], [44 x i8] } { [10 x [2 x i8]] [[2 x i8] c"\10\04", [2 x i8] c"\10\01", [2 x i8] c"\11@", [2 x i8] c"\14U", [2 x i8] c"\15\00", [2 x i8] c"\16\81", [2 x i8] c"%\02", [2 x i8] c"w^", [2 x i8] c"x\00", [2 x i8] c"y\11"], [44 x i8] zeroinitializer }, align 32
@vv6410_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Enabling subsampling\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vv6410_start\00", [19 x i8] zeroinitializer }, align 32
@vv6410_start._entry_ptr = internal global ptr @vv6410_start._entry, section ".printk_index", align 4
@vv6410_start._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: Starting stream\0A\00", [41 x i8] zeroinitializer }, align 32
@vv6410_start._entry_ptr.16 = internal global ptr @vv6410_start._entry.14, section ".printk_index", align 4
@vv6410_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Halting stream\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vv6410_stop\00", [20 x i8] zeroinitializer }, align 32
@vv6410_stop._entry_ptr = internal global ptr @vv6410_stop._entry, section ".printk_index", align 4
@vv6410_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016gspca_stv06xx: Dumping all vv6410 sensor registers\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vv6410_dump\00", [20 x i8] zeroinitializer }, align 32
@vv6410_dump._entry_ptr = internal global ptr @vv6410_dump._entry, section ".printk_index", align 4
@vv6410_dump._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016gspca_stv06xx: Register 0x%x contained 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@vv6410_dump._entry_ptr.23 = internal global ptr @vv6410_dump._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963793, i64 9963795, i64 9963796, i64 9963797]
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"stv06xx_sensor_vv6410\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 178, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 77, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"vv6410_mode\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 21, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 88, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"vv6410_ctrl_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 61, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 197, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 218, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 229, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 246, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"vv6410_sensor_init\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [52 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 220, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 123, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 144, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 163, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 173, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [52 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 177, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @vv6410_dump._entry, ptr @vv6410_dump._entry.21, ptr @vv6410_dump._entry_ptr, ptr @vv6410_dump._entry_ptr.23, ptr @vv6410_probe._entry, ptr @vv6410_probe._entry_ptr, ptr @vv6410_set_analog_gain._entry, ptr @vv6410_set_analog_gain._entry_ptr, ptr @vv6410_set_exposure._entry, ptr @vv6410_set_exposure._entry_ptr, ptr @vv6410_set_hflip._entry, ptr @vv6410_set_hflip._entry_ptr, ptr @vv6410_set_vflip._entry, ptr @vv6410_set_vflip._entry_ptr, ptr @vv6410_start._entry, ptr @vv6410_start._entry.14, ptr @vv6410_start._entry_ptr, ptr @vv6410_start._entry_ptr.16, ptr @vv6410_stop._entry, ptr @vv6410_stop._entry_ptr, ptr @stv06xx_sensor_vv6410, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vv6410_mode, ptr @vv6410_init_controls._key, ptr @.str.3, ptr @vv6410_ctrl_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vv6410_sensor_init, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_sensor_vv6410 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_set_hflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_set_vflip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_set_analog_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_set_exposure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_sensor_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_start._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vv6410_dump._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_probe(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !71
  %call = call i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext 0, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %2)
  %cmp1.not = icmp eq i16 %2, 25
  br i1 %cmp1.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %3 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vv6410_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_init(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5664, i16 noundef zeroext 128) #5
  %call.1 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5664, i16 noundef zeroext 0) #5
  %call.2 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5187, i16 noundef zeroext 0) #5
  %call.3 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5155, i16 noundef zeroext 4) #5
  %call.4 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5376, i16 noundef zeroext 11) #5
  %call.5 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5377, i16 noundef zeroext 167) #5
  %call.6 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5378, i16 noundef zeroext 183) #5
  %call.7 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5379, i16 noundef zeroext 0) #5
  %call.8 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5380, i16 noundef zeroext 0) #5
  %call.9 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5430, i16 noundef zeroext 2) #5
  %call.10 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5431, i16 noundef zeroext 0) #5
  %call.11 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5432, i16 noundef zeroext 96) #5
  %call.12 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5433, i16 noundef zeroext 1) #5
  %call.13 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5434, i16 noundef zeroext 32) #5
  %call.14 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5435, i16 noundef zeroext 1) #5
  %call2 = tail call i32 @stv06xx_write_sensor_bytes(ptr noundef %sd, ptr noundef nonnull @vv6410_sensor_init, i8 noundef zeroext 10) #5
  %0 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @vv6410_init_controls._key, ptr noundef nonnull @.str.3) #5
  %call1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vv6410_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 32768, i64 noundef 1, i64 noundef 20000) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @vv6410_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 10) #5
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_start(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %priv4 = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv4, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %do.body.if.end15_crit_edge

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end, %do.body.if.end15_crit_edge, %entry.if.end15_crit_edge
  %.sink56 = phi i16 [ 2, %do.end ], [ 2, %do.body.if.end15_crit_edge ], [ 1, %entry.if.end15_crit_edge ]
  %.sink55 = phi i16 [ 6, %do.end ], [ 6, %do.body.if.end15_crit_edge ], [ 10, %entry.if.end15_crit_edge ]
  %.sink = phi i16 [ 16, %do.end ], [ 16, %do.body.if.end15_crit_edge ], [ 0, %entry.if.end15_crit_edge ]
  %call12 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5571, i16 noundef zeroext %.sink56) #5
  %call13 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5760, i16 noundef zeroext %.sink55) #5
  %call14 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5187, i16 noundef zeroext %.sink) #5
  %call16 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5189, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 16, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %do.body24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body24:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %7 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp25 = icmp sgt i32 %7, 2
  br i1 %cmp25, label %do.end29, label %do.body24.cleanup_crit_edge

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %name32 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name32) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ 0, %do.end29 ], [ 0, %do.body24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_stop(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5189, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext 16, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp5 = icmp sgt i32 %0, 2
  br i1 %cmp5, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_dump(ptr noundef %sd) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !71
  %1 = trunc i32 %indvars.iv to i8
  %call2 = call i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext %1, ptr noundef nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %conv8 = zext i16 %3 to i32
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %indvars.iv, i32 noundef %conv8) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %indvars.iv.next)
  %cmp.not = icmp ne i32 %indvars.iv.next, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_read_sensor(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vv6410_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %i2c_data.i25 = alloca i16, align 2
  %i2c_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb1
    i32 9963795, label %sw.bb8
    i32 9963793, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %streaming = getelementptr i8, ptr %1, i32 238
  %5 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %streaming, align 2, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i) #5
  %9 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %i2c_data.i, align 2, !annotation !71
  %call.i = call i32 @stv06xx_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 22, ptr noundef nonnull %i2c_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.vv6410_set_hflip.exit_crit_edge, label %if.end.i

if.end.vv6410_set_hflip.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %vv6410_set_hflip.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %10 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i2c_data.i, align 2
  %12 = and i16 %11, -9
  %masksel.i = select i1 %tobool.not.i, i16 0, i16 8
  %storemerge.i = or i16 %12, %masksel.i
  store i16 %storemerge.i, ptr %i2c_data.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6.i = icmp sgt i32 %13, 1
  br i1 %cmp6.i, label %do.end.i, label %if.end.i.do.end13.i_crit_edge

if.end.i.do.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name.i, i32 noundef %8) #8
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %if.end.i.do.end13.i_crit_edge
  %14 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i2c_data.i, align 2
  %call14.i = call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 22, i16 noundef zeroext %15) #5
  %16 = call i32 @llvm.smin.i32(i32 %call14.i, i32 0) #5
  br label %vv6410_set_hflip.exit

vv6410_set_hflip.exit:                            ; preds = %do.end13.i, %if.end.vv6410_set_hflip.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %do.end13.i ], [ %call.i, %if.end.vv6410_set_hflip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %streaming2 = getelementptr i8, ptr %1, i32 238
  %17 = ptrtoint ptr %streaming2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %streaming2, align 2, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  br i1 %tobool3.not, label %sw.bb1.cleanup_crit_edge, label %if.end5

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %sw.bb1
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i25) #5
  %21 = ptrtoint ptr %i2c_data.i25 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %i2c_data.i25, align 2, !annotation !71
  %call.i26 = call i32 @stv06xx_read_sensor(ptr noundef %add.ptr, i8 noundef zeroext 22, ptr noundef nonnull %i2c_data.i25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %if.end5.vv6410_set_vflip.exit_crit_edge, label %if.end.i32

if.end5.vv6410_set_vflip.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %vv6410_set_vflip.exit

if.end.i32:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i28 = icmp eq i32 %20, 0
  %22 = ptrtoint ptr %i2c_data.i25 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i2c_data.i25, align 2
  %24 = and i16 %23, -17
  %masksel.i29 = select i1 %tobool.not.i28, i16 0, i16 16
  %storemerge.i30 = or i16 %24, %masksel.i29
  store i16 %storemerge.i30, ptr %i2c_data.i25, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp6.i31 = icmp sgt i32 %25, 1
  br i1 %cmp6.i31, label %do.end.i35, label %if.end.i32.do.end13.i37_crit_edge

if.end.i32.do.end13.i37_crit_edge:                ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13.i37

do.end.i35:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  %name.i33 = getelementptr i8, ptr %1, i32 -168
  %call10.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i33, i32 noundef %20) #8
  br label %do.end13.i37

do.end13.i37:                                     ; preds = %do.end.i35, %if.end.i32.do.end13.i37_crit_edge
  %26 = ptrtoint ptr %i2c_data.i25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %i2c_data.i25, align 2
  %call14.i36 = call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 22, i16 noundef zeroext %27) #5
  %28 = call i32 @llvm.smin.i32(i32 %call14.i36, i32 0) #5
  br label %vv6410_set_vflip.exit

vv6410_set_vflip.exit:                            ; preds = %do.end13.i37, %if.end5.vv6410_set_vflip.exit_crit_edge
  %retval.0.i38 = phi i32 [ %28, %do.end13.i37 ], [ %call.i26, %if.end5.vv6410_set_vflip.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i25) #5
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %31 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i39 = icmp sgt i32 %31, 1
  br i1 %cmp.i39, label %do.end.i42, label %sw.bb8.vv6410_set_analog_gain.exit_crit_edge

sw.bb8.vv6410_set_analog_gain.exit_crit_edge:     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %vv6410_set_analog_gain.exit

do.end.i42:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %name.i40 = getelementptr i8, ptr %1, i32 -168
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i40, i32 noundef %30) #8
  br label %vv6410_set_analog_gain.exit

vv6410_set_analog_gain.exit:                      ; preds = %do.end.i42, %sw.bb8.vv6410_set_analog_gain.exit_crit_edge
  %32 = trunc i32 %30 to i16
  %33 = and i16 %32, 15
  %conv.i = or i16 %33, 240
  %call4.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 36, i16 noundef zeroext %conv.i) #5
  %34 = tail call i32 @llvm.smin.i32(i32 %call4.i, i32 0) #5
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val12, align 4
  %mul.i = mul i32 %36, %36
  %shr.i = ashr i32 %mul.i, 14
  %div.i = sdiv i32 %36, 4
  %add.i = add nsw i32 %shr.i, %div.i
  %add.i.frozen = freeze i32 %add.i
  %div1.i = sdiv i32 %add.i.frozen, 415
  %37 = mul i32 %div1.i, 415
  %rem.i.decomposed = sub i32 %add.i.frozen, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 212894, i32 %add.i)
  %cmp.i43 = icmp sgt i32 %add.i, 212894
  %cond.i = select i1 %cmp.i43, i32 512, i32 %div1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp2.i = icmp sgt i32 %38, 1
  br i1 %cmp2.i, label %do.end.i46, label %sw.bb11.do.end6.i_crit_edge

sw.bb11.do.end6.i_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i46:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %name.i44 = getelementptr i8, ptr %1, i32 -168
  %call.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name.i44, i32 noundef %cond.i, i32 noundef %rem.i.decomposed) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i46, %sw.bb11.do.end6.i_crit_edge
  %shr7.i = lshr i32 %rem.i.decomposed, 8
  %conv.i47 = trunc i32 %shr7.i to i16
  %call8.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 32, i16 noundef zeroext %conv.i47) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end6.i.cleanup_crit_edge, label %if.end12.i

do.end6.i.cleanup_crit_edge:                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i:                                       ; preds = %do.end6.i
  %39 = trunc i32 %rem.i.decomposed to i16
  %conv13.i = and i16 %39, 255
  %call14.i48 = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 33, i16 noundef zeroext %conv13.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i48)
  %cmp15.i = icmp slt i32 %call14.i48, 0
  br i1 %cmp15.i, label %if.end12.i.cleanup_crit_edge, label %if.end18.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %if.end12.i
  %shr19.i = lshr i32 %cond.i, 8
  %conv20.i = trunc i32 %shr19.i to i16
  %call21.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 34, i16 noundef zeroext %conv20.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end18.i.cleanup_crit_edge, label %if.end25.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = trunc i32 %cond.i to i16
  %conv27.i = and i16 %40, 255
  %call28.i = tail call i32 @stv06xx_write_sensor(ptr noundef %add.ptr, i8 noundef zeroext 35, i16 noundef zeroext %conv27.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25.i, %if.end18.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %do.end6.i.cleanup_crit_edge, %vv6410_set_analog_gain.exit, %vv6410_set_vflip.exit, %sw.bb1.cleanup_crit_edge, %vv6410_set_hflip.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %34, %vv6410_set_analog_gain.exit ], [ %retval.0.i38, %vv6410_set_vflip.exit ], [ %retval.0.i, %vv6410_set_hflip.exit ], [ %call8.i, %do.end6.i.cleanup_crit_edge ], [ %call14.i48, %if.end12.i.cleanup_crit_edge ], [ %call21.i, %if.end18.i.cleanup_crit_edge ], [ %call28.i, %if.end25.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_sensor(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_bridge(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_sensor_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @stv06xx_sensor_vv6410, !1, !"stv06xx_sensor_vv6410", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.h", i32 178, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 77, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vv6410_probe._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vv6410_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @vv6410_mode, !9, !"vv6410_mode", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 21, i32 31}
!10 = !{ptr @vv6410_init_controls._key, !11, !"_key", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 88, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vv6410_ctrl_ops, !14, !"vv6410_ctrl_ops", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 61, i32 35}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 197, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vv6410_set_hflip._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @vv6410_set_hflip._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 218, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vv6410_set_vflip._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @vv6410_set_vflip._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 229, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vv6410_set_analog_gain._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @vv6410_set_analog_gain._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 246, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vv6410_set_exposure._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @vv6410_set_exposure._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"stv_bridge_init", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.h", i32 201, i32 30}
!37 = !{ptr @vv6410_sensor_init, !38, !"vv6410_sensor_init", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.h", i32 220, i32 17}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 123, i32 3}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vv6410_start._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vv6410_start._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 144, i32 2}
!46 = !{ptr @vv6410_start._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vv6410_start._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 163, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vv6410_stop._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @vv6410_stop._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 173, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vv6410_dump._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @vv6410_dump._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_vv6410.c", i32 177, i32 3}
!60 = !{ptr @vv6410_dump._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vv6410_dump._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i8 0, i8 2}
