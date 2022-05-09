; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-udraw-ps3.c_pt.bc'
source_filename = "../drivers/hid/hid-udraw-ps3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.udraw = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author223 = internal constant [56 x i8] c"hid_udraw_ps3.author=Bastien Nocera <hadess@hadess.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [50 x i8] c"hid_udraw_ps3.description=PS3 uDraw tablet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [45 x i8] c"hid_udraw_ps3.file=drivers/hid/hid-udraw-ps3\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [26 x i8] c"hid_udraw_ps3.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_hid_udraw_ps3__235_466_udraw_driver_init6 = internal global ptr @udraw_driver_init, section ".initcall6.init", align 4
@udraw_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @udraw_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @udraw_probe, ptr null, ptr null, ptr @udraw_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_udraw_driver_exit = internal global ptr @udraw_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_udraw_ps3\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid-udraw\00", [22 x i8] zeroinitializer }, align 32
@udraw_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 8406, i32 51991, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@udraw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 424, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"udraw_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hid/hid-udraw-ps3.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@udraw_probe._entry_ptr = internal global ptr @udraw_probe._entry, section ".printk_index", align 4
@udraw_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not allocate interfaces\0A\00", [33 x i8] zeroinitializer }, align 32
@udraw_probe._entry_ptr.9 = internal global ptr @udraw_probe._entry.7, section ".printk_index", align 4
@udraw_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 441, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register interfaces\0A\00", [33 x i8] zeroinitializer }, align 32
@udraw_probe._entry_ptr.12 = internal global ptr @udraw_probe._entry.10, section ".printk_index", align 4
@udraw_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@udraw_probe._entry_ptr.15 = internal global ptr @udraw_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"THQ uDraw Game Tablet for PS3 Joypad\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"THQ uDraw Game Tablet for PS3 Touchpad\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"THQ uDraw Game Tablet for PS3 Pen\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"THQ uDraw Game Tablet for PS3 Accelerometer\00", [52 x i8] zeroinitializer }, align 32
@switch.table.udraw_raw_event = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 127, i32 127, i32 127, i32 0, i32 -127, i32 -127, i32 -127], [32 x i8] zeroinitializer }, align 32
@switch.table.udraw_raw_event.20 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -127, i32 -127, i32 0, i32 127, i32 127, i32 127, i32 0, i32 -127], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 128]
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"udraw_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 460, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 466, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 461, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"udraw_devices\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 454, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 424, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 432, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 441, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 447, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 385, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 307, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 334, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [31 x i8] c"../drivers/hid/hid-udraw-ps3.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 362, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"switch.table.udraw_raw_event\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [32 x i8] c"switch.table.udraw_raw_event.20\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_udraw_driver_exit, ptr @__initcall__kmod_hid_udraw_ps3__235_466_udraw_driver_init6, ptr @udraw_driver_exit, ptr @udraw_probe._entry, ptr @udraw_probe._entry.10, ptr @udraw_probe._entry.13, ptr @udraw_probe._entry.7, ptr @udraw_probe._entry_ptr, ptr @udraw_probe._entry_ptr.12, ptr @udraw_probe._entry_ptr.15, ptr @udraw_probe._entry_ptr.9, ptr @udraw_driver, ptr @.str, ptr @.str.1, ptr @udraw_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @switch.table.udraw_raw_event, ptr @switch.table.udraw_raw_event.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udraw_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udraw_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udraw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udraw_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udraw_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udraw_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.udraw_raw_event to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.udraw_raw_event.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udraw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @udraw_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udraw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @udraw_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udraw_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev1 = getelementptr inbounds %struct.udraw, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %hdev1, align 4
  %last_two_finger_x = getelementptr inbounds %struct.udraw, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %last_two_finger_x to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %last_two_finger_x, align 4
  %last_two_finger_y = getelementptr inbounds %struct.udraw, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %last_two_finger_y to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_two_finger_y, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i74 = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool3.not = icmp eq i32 %call.i74, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call.i.i = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end6
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.16, ptr %call.i.i, align 8
  %phys.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 40
  %phys2.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %phys2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %phys.i.i, ptr %phys2.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent.i.i, align 8
  %open.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 31
  %7 = ptrtoint ptr %open.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @udraw_open, ptr %open.i.i, align 8
  %close.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 32
  %8 = ptrtoint ptr %close.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @udraw_close, ptr %close.i.i, align 4
  %uniq.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 41
  %uniq6.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %uniq6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uniq.i.i, ptr %uniq6.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 8
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bus.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %id.i.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %13 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i = trunc i32 %14 to i16
  %vendor8.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %vendor8.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %vendor8.i.i, align 2
  %product.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %16 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %product.i.i, align 8
  %conv9.i.i = trunc i32 %17 to i16
  %product11.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %product11.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9.i.i, ptr %product11.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 12
  %19 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version.i.i, align 4
  %conv12.i.i = trunc i32 %20 to i16
  %version14.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %version14.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv12.i.i, ptr %version14.i.i, align 2
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i36.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 40, i32 8
  %24 = ptrtoint ptr %driver_data.i.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %driver_data.i.i36.i.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %evbit.i, align 8
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 304, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 307, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 305, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 308, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 314, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 315, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 316, ptr noundef %keybit.i) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef -127, i32 noundef 127, i32 noundef 0, i32 noundef 0) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef -127, i32 noundef 127, i32 noundef 0, i32 noundef 0) #4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %call.i, align 4
  %call.i.i76 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool.not.i.i77 = icmp eq ptr %call.i.i76, null
  br i1 %tobool.not.i.i77, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end.i99

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i99:                                       ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %call.i.i76 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.17, ptr %call.i.i76, align 8
  %phys2.i.i79 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 1
  %28 = ptrtoint ptr %phys2.i.i79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %phys.i.i, ptr %phys2.i.i79, align 4
  %parent.i.i80 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 40, i32 1
  %29 = ptrtoint ptr %parent.i.i80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %parent.i.i80, align 8
  %open.i.i81 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 31
  %30 = ptrtoint ptr %open.i.i81 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @udraw_open, ptr %open.i.i81, align 8
  %close.i.i82 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 32
  %31 = ptrtoint ptr %close.i.i82 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @udraw_close, ptr %close.i.i82, align 4
  %uniq6.i.i84 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 2
  %32 = ptrtoint ptr %uniq6.i.i84 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %uniq.i.i, ptr %uniq6.i.i84, align 8
  %33 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bus.i.i, align 8
  %id.i.i86 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 3
  %35 = ptrtoint ptr %id.i.i86 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %id.i.i86, align 4
  %36 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i88 = trunc i32 %37 to i16
  %vendor8.i.i89 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %vendor8.i.i89 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i88, ptr %vendor8.i.i89, align 2
  %39 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %product.i.i, align 8
  %conv9.i.i91 = trunc i32 %40 to i16
  %product11.i.i92 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %product11.i.i92 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv9.i.i91, ptr %product11.i.i92, align 4
  %42 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %version.i.i, align 4
  %conv12.i.i94 = trunc i32 %43 to i16
  %version14.i.i95 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %version14.i.i95 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv12.i.i94, ptr %version14.i.i95, align 2
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i36.i.i97 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 40, i32 8
  %47 = ptrtoint ptr %driver_data.i.i36.i.i97 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %driver_data.i.i36.i.i97, align 4
  %evbit.i98 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 5
  %48 = ptrtoint ptr %evbit.i98 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10, ptr %evbit.i98, align 8
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i76, i32 noundef 0, i32 noundef 0, i32 noundef 1920, i32 noundef 1, i32 noundef 0) #4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i76) #4
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 26
  %49 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i16.i = icmp eq ptr %50, null
  br i1 %tobool.not.i16.i, label %if.end.i99.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.end.i99.input_abs_set_res.exit.i_crit_edge:    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #6
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 12, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.end.i99.input_abs_set_res.exit.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i76, i32 noundef 1, i32 noundef 0, i32 noundef 1080, i32 noundef 1, i32 noundef 0) #4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i76) #4
  %52 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i19.i = icmp eq ptr %53, null
  br i1 %tobool.not.i19.i, label %input_abs_set_res.exit.i.lor.lhs.false9_crit_edge, label %if.then.i21.i

input_abs_set_res.exit.i.lor.lhs.false9_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false9

if.then.i21.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %resolution.i20.i = getelementptr %struct.input_absinfo, ptr %53, i32 1, i32 5
  %54 = ptrtoint ptr %resolution.i20.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 12, ptr %resolution.i20.i, align 4
  br label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.then.i21.i, %input_abs_set_res.exit.i.lor.lhs.false9_crit_edge
  %keybit.i100 = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 330, ptr noundef %keybit.i100) #4
  tail call void @_set_bit(i32 noundef 325, ptr noundef %keybit.i100) #4
  tail call void @_set_bit(i32 noundef 333, ptr noundef %keybit.i100) #4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i.i76, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %propbit.i) #4
  %touch_input_dev.i = getelementptr inbounds %struct.udraw, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %touch_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i76, ptr %touch_input_dev.i, align 4
  %call.i.i102 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool.not.i.i103 = icmp eq ptr %call.i.i102, null
  br i1 %tobool.not.i.i103, label %lor.lhs.false9.cleanup.sink.split_crit_edge, label %if.end.i126

lor.lhs.false9.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i126:                                      ; preds = %lor.lhs.false9
  %56 = ptrtoint ptr %call.i.i102 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.18, ptr %call.i.i102, align 8
  %phys2.i.i105 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 1
  %57 = ptrtoint ptr %phys2.i.i105 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %phys.i.i, ptr %phys2.i.i105, align 4
  %parent.i.i106 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 40, i32 1
  %58 = ptrtoint ptr %parent.i.i106 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev, ptr %parent.i.i106, align 8
  %open.i.i107 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 31
  %59 = ptrtoint ptr %open.i.i107 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @udraw_open, ptr %open.i.i107, align 8
  %close.i.i108 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 32
  %60 = ptrtoint ptr %close.i.i108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @udraw_close, ptr %close.i.i108, align 4
  %uniq6.i.i110 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 2
  %61 = ptrtoint ptr %uniq6.i.i110 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %uniq.i.i, ptr %uniq6.i.i110, align 8
  %62 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %bus.i.i, align 8
  %id.i.i112 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 3
  %64 = ptrtoint ptr %id.i.i112 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %id.i.i112, align 4
  %65 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i114 = trunc i32 %66 to i16
  %vendor8.i.i115 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %vendor8.i.i115 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i.i114, ptr %vendor8.i.i115, align 2
  %68 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %product.i.i, align 8
  %conv9.i.i117 = trunc i32 %69 to i16
  %product11.i.i118 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %product11.i.i118 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv9.i.i117, ptr %product11.i.i118, align 4
  %71 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %version.i.i, align 4
  %conv12.i.i120 = trunc i32 %72 to i16
  %version14.i.i121 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %version14.i.i121 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv12.i.i120, ptr %version14.i.i121, align 2
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i36.i.i123 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 40, i32 8
  %76 = ptrtoint ptr %driver_data.i.i36.i.i123 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %driver_data.i.i36.i.i123, align 4
  %evbit.i124 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 5
  %77 = ptrtoint ptr %evbit.i124 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10, ptr %evbit.i124, align 8
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i102, i32 noundef 0, i32 noundef 0, i32 noundef 1920, i32 noundef 1, i32 noundef 0) #4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i102) #4
  %absinfo.i.i125 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 26
  %78 = ptrtoint ptr %absinfo.i.i125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %absinfo.i.i125, align 8
  %tobool.not.i14.i = icmp eq ptr %79, null
  br i1 %tobool.not.i14.i, label %if.end.i126.input_abs_set_res.exit.i129_crit_edge, label %if.then.i.i128

if.end.i126.input_abs_set_res.exit.i129_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #6
  br label %input_abs_set_res.exit.i129

if.then.i.i128:                                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #6
  %resolution.i.i127 = getelementptr %struct.input_absinfo, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %resolution.i.i127 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 12, ptr %resolution.i.i127, align 4
  br label %input_abs_set_res.exit.i129

input_abs_set_res.exit.i129:                      ; preds = %if.then.i.i128, %if.end.i126.input_abs_set_res.exit.i129_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i102, i32 noundef 1, i32 noundef 0, i32 noundef 1080, i32 noundef 1, i32 noundef 0) #4
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i.i102) #4
  %81 = ptrtoint ptr %absinfo.i.i125 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %absinfo.i.i125, align 8
  %tobool.not.i17.i = icmp eq ptr %82, null
  br i1 %tobool.not.i17.i, label %input_abs_set_res.exit.i129.lor.lhs.false11_crit_edge, label %if.then.i19.i

input_abs_set_res.exit.i129.lor.lhs.false11_crit_edge: ; preds = %input_abs_set_res.exit.i129
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false11

if.then.i19.i:                                    ; preds = %input_abs_set_res.exit.i129
  call void @__sanitizer_cov_trace_pc() #6
  %resolution.i18.i = getelementptr %struct.input_absinfo, ptr %82, i32 1, i32 5
  %83 = ptrtoint ptr %resolution.i18.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 12, ptr %resolution.i18.i, align 4
  br label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then.i19.i, %input_abs_set_res.exit.i129.lor.lhs.false11_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i102, i32 noundef 24, i32 noundef 0, i32 noundef 142, i32 noundef 0, i32 noundef 0) #4
  %keybit.i130 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 330, ptr noundef %keybit.i130) #4
  tail call void @_set_bit(i32 noundef 320, ptr noundef %keybit.i130) #4
  %propbit.i131 = getelementptr inbounds %struct.input_dev, ptr %call.i.i102, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %propbit.i131) #4
  %pen_input_dev.i = getelementptr inbounds %struct.udraw, ptr %call.i, i32 0, i32 2
  %84 = ptrtoint ptr %pen_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i102, ptr %pen_input_dev.i, align 4
  %call.i.i133 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool.not.i.i134 = icmp eq ptr %call.i.i133, null
  br i1 %tobool.not.i.i134, label %lor.lhs.false11.cleanup.sink.split_crit_edge, label %if.end18

lor.lhs.false11.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end18:                                         ; preds = %lor.lhs.false11
  %85 = ptrtoint ptr %call.i.i133 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.19, ptr %call.i.i133, align 8
  %phys2.i.i136 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 1
  %86 = ptrtoint ptr %phys2.i.i136 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %phys.i.i, ptr %phys2.i.i136, align 4
  %parent.i.i137 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 40, i32 1
  %87 = ptrtoint ptr %parent.i.i137 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dev, ptr %parent.i.i137, align 8
  %open.i.i138 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 31
  %88 = ptrtoint ptr %open.i.i138 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @udraw_open, ptr %open.i.i138, align 8
  %close.i.i139 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 32
  %89 = ptrtoint ptr %close.i.i139 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @udraw_close, ptr %close.i.i139, align 4
  %uniq6.i.i141 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 2
  %90 = ptrtoint ptr %uniq6.i.i141 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %uniq.i.i, ptr %uniq6.i.i141, align 8
  %91 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %bus.i.i, align 8
  %id.i.i143 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 3
  %93 = ptrtoint ptr %id.i.i143 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %id.i.i143, align 4
  %94 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vendor.i.i, align 4
  %conv.i.i145 = trunc i32 %95 to i16
  %vendor8.i.i146 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %vendor8.i.i146 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i.i145, ptr %vendor8.i.i146, align 2
  %97 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %product.i.i, align 8
  %conv9.i.i148 = trunc i32 %98 to i16
  %product11.i.i149 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 3, i32 2
  %99 = ptrtoint ptr %product11.i.i149 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv9.i.i148, ptr %product11.i.i149, align 4
  %100 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %version.i.i, align 4
  %conv12.i.i151 = trunc i32 %101 to i16
  %version14.i.i152 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 3, i32 3
  %102 = ptrtoint ptr %version14.i.i152 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv12.i.i151, ptr %version14.i.i152, align 2
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i36.i.i154 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 40, i32 8
  %105 = ptrtoint ptr %driver_data.i.i36.i.i154 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %driver_data.i.i36.i.i154, align 4
  %evbit.i155 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 5
  %106 = ptrtoint ptr %evbit.i155 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8, ptr %evbit.i155, align 8
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i133, i32 noundef 0, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i133, i32 noundef 1, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i.i133, i32 noundef 2, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #4
  %propbit.i156 = getelementptr inbounds %struct.input_dev, ptr %call.i.i133, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %propbit.i156) #4
  %accel_input_dev.i = getelementptr inbounds %struct.udraw, ptr %call.i, i32 0, i32 3
  %107 = ptrtoint ptr %accel_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i133, ptr %accel_input_dev.i, align 4
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  %call19 = tail call i32 @input_register_device(ptr noundef %109) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

lor.lhs.false21:                                  ; preds = %if.end18
  %110 = ptrtoint ptr %touch_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %touch_input_dev.i, align 4
  %call22 = tail call i32 @input_register_device(ptr noundef %111) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false21.cleanup.sink.split_crit_edge

lor.lhs.false21.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %112 = ptrtoint ptr %pen_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pen_input_dev.i, align 4
  %call25 = tail call i32 @input_register_device(ptr noundef %113) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.end, label %lor.lhs.false24.cleanup.sink.split_crit_edge

lor.lhs.false24.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

lor.end:                                          ; preds = %lor.lhs.false24
  %114 = ptrtoint ptr %accel_input_dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %accel_input_dev.i, align 4
  %call27 = tail call i32 @input_register_device(ptr noundef %115) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %lor.end.cleanup.sink.split_crit_edge

lor.end.cleanup.sink.split_crit_edge:             ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end35:                                         ; preds = %lor.end
  %call36 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 68) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end35.cleanup.sink.split_crit_edge

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %lor.end.cleanup.sink.split_crit_edge, %lor.lhs.false24.cleanup.sink.split_crit_edge, %lor.lhs.false21.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %lor.lhs.false11.cleanup.sink.split_crit_edge, %lor.lhs.false9.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.2, %if.end.cleanup.sink.split_crit_edge ], [ @.str.8, %lor.lhs.false11.cleanup.sink.split_crit_edge ], [ @.str.8, %lor.lhs.false9.cleanup.sink.split_crit_edge ], [ @.str.8, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end6.cleanup.sink.split_crit_edge ], [ @.str.11, %if.end18.cleanup.sink.split_crit_edge ], [ @.str.11, %lor.lhs.false21.cleanup.sink.split_crit_edge ], [ @.str.11, %lor.lhs.false24.cleanup.sink.split_crit_edge ], [ @.str.11, %lor.end.cleanup.sink.split_crit_edge ], [ @.str.14, %if.end35.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i74, %if.end.cleanup.sink.split_crit_edge ], [ -12, %lor.lhs.false11.cleanup.sink.split_crit_edge ], [ -12, %lor.lhs.false9.cleanup.sink.split_crit_edge ], [ -12, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -12, %if.end6.cleanup.sink.split_crit_edge ], [ 1, %if.end18.cleanup.sink.split_crit_edge ], [ 1, %lor.lhs.false21.cleanup.sink.split_crit_edge ], [ 1, %lor.lhs.false24.cleanup.sink.split_crit_edge ], [ 1, %lor.end.cleanup.sink.split_crit_edge ], [ %call36, %if.end35.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.14.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udraw_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %len)
  %cmp.not = icmp eq i32 %len, 27
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1 = icmp eq i8 %3, 0
  br i1 %cmp1, label %if.end.if.end18_crit_edge, label %if.else

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.else:                                          ; preds = %if.end
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.else15 [
    i8 64, label %if.else.if.end18_crit_edge
    i8 -128, label %if.then14
  ]

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then14, %if.else.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %cmp109 = phi i1 [ false, %if.else15 ], [ true, %if.then14 ], [ false, %if.end.if.end18_crit_edge ], [ false, %if.else.if.end18_crit_edge ]
  %cmp113 = phi i1 [ true, %if.else15 ], [ false, %if.then14 ], [ false, %if.end.if.end18_crit_edge ], [ false, %if.else.if.end18_crit_edge ]
  %cmp154 = phi i1 [ false, %if.else15 ], [ false, %if.then14 ], [ false, %if.end.if.end18_crit_edge ], [ true, %if.else.if.end18_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  tail call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef 308, i32 noundef %10) #4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %15 = lshr i8 %14, 1
  %.lobit = and i8 %15, 1
  %16 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %12, i32 noundef 1, i32 noundef 304, i32 noundef %16) #4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %21 = lshr i8 %20, 2
  %.lobit338 = and i8 %21, 1
  %22 = zext i8 %.lobit338 to i32
  tail call void @input_event(ptr noundef %18, i32 noundef 1, i32 noundef 305, i32 noundef %22) #4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data, align 1
  %27 = lshr i8 %26, 3
  %.lobit339 = and i8 %27, 1
  %28 = zext i8 %.lobit339 to i32
  tail call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef 307, i32 noundef %28) #4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %arrayidx45 = getelementptr i8, ptr %data, i32 1
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx45, align 1
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  tail call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef 314, i32 noundef %34) #4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx45, align 1
  %39 = lshr i8 %38, 1
  %.lobit340 = and i8 %39, 1
  %40 = zext i8 %.lobit340 to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 1, i32 noundef 315, i32 noundef %40) #4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx45, align 1
  %45 = lshr i8 %44, 4
  %.lobit341 = and i8 %45, 1
  %46 = zext i8 %.lobit341 to i32
  tail call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef 316, i32 noundef %46) #4
  %arrayidx71 = getelementptr i8, ptr %data, i32 2
  %47 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %48)
  %49 = icmp ult i8 %48, 8
  br i1 %49, label %switch.lookup, label %if.end18.sw.epilog_crit_edge

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %50 = sext i8 %48 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.udraw_raw_event, i32 0, i32 %50
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  %52 = sext i8 %48 to i32
  %switch.gep343 = getelementptr inbounds [8 x i32], ptr @switch.table.udraw_raw_event.20, i32 0, i32 %52
  %53 = ptrtoint ptr %switch.gep343 to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load344 = load i32, ptr %switch.gep343, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end18.sw.epilog_crit_edge
  %x.0 = phi i32 [ 0, %if.end18.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %y.0 = phi i32 [ 0, %if.end18.sw.epilog_crit_edge ], [ %switch.load344, %switch.lookup ]
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %55, i32 noundef 3, i32 noundef 0, i32 noundef %x.0) #4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %57, i32 noundef 3, i32 noundef 1, i32 noundef %y.0) #4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %59, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br i1 %cmp1, label %sw.epilog.if.end108_crit_edge, label %if.then85

sw.epilog.if.end108_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then85:                                        ; preds = %sw.epilog
  %arrayidx86 = getelementptr i8, ptr %data, i32 15
  %60 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %61)
  %cmp88.not = icmp eq i8 %61, 15
  br i1 %cmp88.not, label %if.then85.if.end95_crit_edge, label %if.then90

if.then85.if.end95_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #6
  %conv87 = zext i8 %61 to i32
  %mul = shl nuw nsw i32 %conv87, 8
  %arrayidx93 = getelementptr i8, ptr %data, i32 17
  %62 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %63 to i32
  %add = or i32 %mul, %conv94
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.then85.if.end95_crit_edge
  %x.1 = phi i32 [ %add, %if.then90 ], [ 0, %if.then85.if.end95_crit_edge ]
  %arrayidx96 = getelementptr i8, ptr %data, i32 16
  %64 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %65)
  %cmp98.not = icmp eq i8 %65, 15
  br i1 %cmp98.not, label %if.end95.if.end108_crit_edge, label %if.then100

if.end95.if.end108_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  %conv97 = zext i8 %65 to i32
  %mul103 = shl nuw nsw i32 %conv97, 8
  %arrayidx104 = getelementptr i8, ptr %data, i32 18
  %66 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %67 to i32
  %add106 = or i32 %mul103, %conv105
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end95.if.end108_crit_edge, %sw.epilog.if.end108_crit_edge
  %x.2 = phi i32 [ %x.1, %if.then100 ], [ %x.1, %if.end95.if.end108_crit_edge ], [ 0, %sw.epilog.if.end108_crit_edge ]
  %y.1 = phi i32 [ %add106, %if.then100 ], [ 0, %if.end95.if.end108_crit_edge ], [ 0, %sw.epilog.if.end108_crit_edge ]
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %last_one_finger_x = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %last_one_finger_x to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %x.2, ptr %last_one_finger_x, align 4
  %last_one_finger_y = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %last_one_finger_y to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %y.1, ptr %last_one_finger_y, align 4
  %last_two_finger_x = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 7
  %70 = ptrtoint ptr %last_two_finger_x to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %last_two_finger_x, align 4
  %last_two_finger_y = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 8
  %71 = ptrtoint ptr %last_two_finger_y to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %last_two_finger_y, align 4
  br label %if.then139

if.else112:                                       ; preds = %if.end108
  br i1 %cmp113, label %if.then115, label %if.else148

if.then115:                                       ; preds = %if.else112
  %last_two_finger_x116 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 7
  %72 = ptrtoint ptr %last_two_finger_x116 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %last_two_finger_x116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp117 = icmp eq i32 %73, -1
  br i1 %cmp117, label %if.then119, label %if.else124

if.then119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %last_two_finger_x116 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %x.2, ptr %last_two_finger_x116, align 4
  %last_two_finger_y121 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 8
  %75 = ptrtoint ptr %last_two_finger_y121 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %y.1, ptr %last_two_finger_y121, align 4
  %last_one_finger_x122 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %last_one_finger_x122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %last_one_finger_x122, align 4
  %last_one_finger_y123 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 6
  %78 = ptrtoint ptr %last_one_finger_y123 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %last_one_finger_y123, align 4
  br label %if.then139

if.else124:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #6
  %last_one_finger_x126 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 5
  %80 = ptrtoint ptr %last_one_finger_x126 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %last_one_finger_x126, align 4
  %sub.neg = sub i32 %x.2, %73
  %sub127 = add i32 %sub.neg, %81
  %last_two_finger_y128 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %last_two_finger_y128 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %last_two_finger_y128, align 4
  %last_one_finger_y129 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %last_one_finger_y129 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %last_one_finger_y129, align 4
  %sub130.neg = sub i32 %y.1, %83
  %sub131 = add i32 %sub130.neg, %85
  br label %if.then139

if.then139:                                       ; preds = %if.else124, %if.then119, %if.then111
  %y.2330 = phi i32 [ %sub131, %if.else124 ], [ %79, %if.then119 ], [ %y.1, %if.then111 ]
  %x.3328 = phi i32 [ %sub127, %if.else124 ], [ %77, %if.then119 ], [ %x.2, %if.then111 ]
  %touch_input_dev = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %touch_input_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %touch_input_dev, align 4
  tail call void @input_event(ptr noundef %87, i32 noundef 1, i32 noundef 330, i32 noundef 1) #4
  %88 = ptrtoint ptr %touch_input_dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %touch_input_dev, align 4
  %lnot.ext.i318 = zext i1 %cmp109 to i32
  tail call void @input_event(ptr noundef %89, i32 noundef 1, i32 noundef 325, i32 noundef %lnot.ext.i318) #4
  %90 = ptrtoint ptr %touch_input_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %touch_input_dev, align 4
  %lnot.ext.i319 = zext i1 %cmp113 to i32
  tail call void @input_event(ptr noundef %91, i32 noundef 1, i32 noundef 333, i32 noundef %lnot.ext.i319) #4
  %92 = ptrtoint ptr %touch_input_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %touch_input_dev, align 4
  tail call void @input_event(ptr noundef %93, i32 noundef 3, i32 noundef 0, i32 noundef %x.3328) #4
  %94 = ptrtoint ptr %touch_input_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %touch_input_dev, align 4
  tail call void @input_event(ptr noundef %95, i32 noundef 3, i32 noundef 1, i32 noundef %y.2330) #4
  br label %if.end152

if.else148:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #6
  %touch_input_dev149 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 1
  %96 = ptrtoint ptr %touch_input_dev149 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %touch_input_dev149, align 4
  tail call void @input_event(ptr noundef %97, i32 noundef 1, i32 noundef 330, i32 noundef 0) #4
  %98 = ptrtoint ptr %touch_input_dev149 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %touch_input_dev149, align 4
  tail call void @input_event(ptr noundef %99, i32 noundef 1, i32 noundef 325, i32 noundef 0) #4
  %100 = ptrtoint ptr %touch_input_dev149 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %touch_input_dev149, align 4
  tail call void @input_event(ptr noundef %101, i32 noundef 1, i32 noundef 333, i32 noundef 0) #4
  br label %if.end152

if.end152:                                        ; preds = %if.else148, %if.then139
  %y.2331 = phi i32 [ %y.1, %if.else148 ], [ %y.2330, %if.then139 ]
  %x.3329 = phi i32 [ %x.2, %if.else148 ], [ %x.3328, %if.then139 ]
  %touch_input_dev153 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 1
  %102 = ptrtoint ptr %touch_input_dev153 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %touch_input_dev153, align 4
  tail call void @input_event(ptr noundef %103, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br i1 %cmp154, label %if.then156, label %if.else175

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx157 = getelementptr i8, ptr %data, i32 13
  %104 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %105)
  %cmp160 = icmp ugt i8 %105, 113
  %conv158 = zext i8 %105 to i32
  %106 = add nsw i32 %conv158, -113
  %107 = select i1 %cmp160, i32 %106, i32 0
  %pen_input_dev = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 2
  %108 = ptrtoint ptr %pen_input_dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pen_input_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp169 = icmp ne i32 %107, 0
  %lnot.ext.i320 = zext i1 %cmp169 to i32
  tail call void @input_event(ptr noundef %109, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i320) #4
  %110 = ptrtoint ptr %pen_input_dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pen_input_dev, align 4
  tail call void @input_event(ptr noundef %111, i32 noundef 1, i32 noundef 320, i32 noundef 1) #4
  %112 = ptrtoint ptr %pen_input_dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pen_input_dev, align 4
  tail call void @input_event(ptr noundef %113, i32 noundef 3, i32 noundef 24, i32 noundef %107) #4
  %114 = ptrtoint ptr %pen_input_dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pen_input_dev, align 4
  tail call void @input_event(ptr noundef %115, i32 noundef 3, i32 noundef 0, i32 noundef %x.3329) #4
  %116 = ptrtoint ptr %pen_input_dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pen_input_dev, align 4
  tail call void @input_event(ptr noundef %117, i32 noundef 3, i32 noundef 1, i32 noundef %y.2331) #4
  br label %if.end179

if.else175:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #6
  %pen_input_dev176 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 2
  %118 = ptrtoint ptr %pen_input_dev176 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pen_input_dev176, align 4
  tail call void @input_event(ptr noundef %119, i32 noundef 1, i32 noundef 330, i32 noundef 0) #4
  %120 = ptrtoint ptr %pen_input_dev176 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pen_input_dev176, align 4
  tail call void @input_event(ptr noundef %121, i32 noundef 1, i32 noundef 320, i32 noundef 0) #4
  %122 = ptrtoint ptr %pen_input_dev176 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pen_input_dev176, align 4
  tail call void @input_event(ptr noundef %123, i32 noundef 3, i32 noundef 24, i32 noundef 0) #4
  br label %if.end179

if.end179:                                        ; preds = %if.else175, %if.then156
  %pen_input_dev180 = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 2
  %124 = ptrtoint ptr %pen_input_dev180 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pen_input_dev180, align 4
  tail call void @input_event(ptr noundef %125, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %accel_input_dev = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 3
  %126 = ptrtoint ptr %accel_input_dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %accel_input_dev, align 4
  tail call void @input_event(ptr noundef %127, i32 noundef 3, i32 noundef 0, i32 noundef 0) #4
  %128 = ptrtoint ptr %accel_input_dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %accel_input_dev, align 4
  tail call void @input_event(ptr noundef %129, i32 noundef 3, i32 noundef 1, i32 noundef 0) #4
  %130 = ptrtoint ptr %accel_input_dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %accel_input_dev, align 4
  tail call void @input_event(ptr noundef %131, i32 noundef 3, i32 noundef 2, i32 noundef 0) #4
  %132 = ptrtoint ptr %accel_input_dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %accel_input_dev, align 4
  tail call void @input_event(ptr noundef %133, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end179, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udraw_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %call1 = tail call i32 @hid_hw_open(ptr noundef %3) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udraw_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev = getelementptr inbounds %struct.udraw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  tail call void @hid_hw_close(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 14, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 15, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_hid_udraw_ps3__235_466_udraw_driver_init6, !8, !"__initcall__kmod_hid_udraw_ps3__235_466_udraw_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 466, i32 1}
!9 = !{ptr @__exitcall_udraw_driver_exit, !8, !"__exitcall_udraw_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 461, i32 10}
!13 = !{ptr @udraw_driver, !14, !"udraw_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 460, i32 26}
!15 = !{ptr @udraw_devices, !16, !"udraw_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 454, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 424, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @udraw_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @udraw_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 432, i32 3}
!27 = !{ptr @udraw_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @udraw_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 441, i32 3}
!31 = !{ptr @udraw_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @udraw_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 447, i32 3}
!35 = !{ptr @udraw_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @udraw_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 385, i32 39}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 307, i32 39}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 334, i32 39}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 362, i32 39}
!45 = distinct !{null, !46, !"accel_limits", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-udraw-ps3.c", i32 52, i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
