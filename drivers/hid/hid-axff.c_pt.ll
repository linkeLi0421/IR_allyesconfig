; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-axff.c_pt.bc'
source_filename = "../drivers/hid/hid-axff.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_axff__224_189_ax_driver_init6 = internal global ptr @ax_driver_init, section ".initcall6.init", align 4
@ax_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ax_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ax_probe, ptr @ax_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ax_driver_exit = internal global ptr @ax_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author225 = internal constant [30 x i8] c"hid_axff.author=Sergei Kolzun\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [71 x i8] c"hid_axff.description=Force feedback support for ACRUX game controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [35 x i8] c"hid_axff.file=drivers/hid/hid-axff\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [21 x i8] c"hid_axff.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_axff\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"acrux\00", [26 x i8] zeroinitializer }, align 32
@ax_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 6708, i32 2050, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6708, i32 63237, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ax_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ax_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-axff.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ACRUX HID hardware probe...\0A\00", [35 x i8] zeroinitializer }, align 32
@ax_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr = internal global ptr @ax_probe._entry, section ".printk_index", align 4
@ax_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.10 = internal global ptr @ax_probe._entry.8, section ".printk_index", align 4
@ax_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 153, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to enable force feedback support, error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.14 = internal global ptr @ax_probe._entry.11, section ".printk_index", align 4
@ax_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hw open failed\0A\00", [16 x i8] zeroinitializer }, align 32
@ax_probe._entry_ptr.17 = internal global ptr @ax_probe._entry.15, section ".printk_index", align 4
@axff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 74, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axff_init\00", [22 x i8] zeroinitializer }, align 32
@axff_init._entry_ptr = internal global ptr @axff_init._entry, section ".printk_index", align 4
@axff_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 81, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no output reports found\0A\00", [39 x i8] zeroinitializer }, align 32
@axff_init._entry_ptr.22 = internal global ptr @axff_init._entry.20, section ".printk_index", align 4
@axff_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 95, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"not enough fields in the report: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@axff_init._entry_ptr.25 = internal global ptr @axff_init._entry.23, section ".printk_index", align 4
@axff_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 112, ptr @.str.28, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Force Feedback for ACRUX game controllers by Sergei Kolzun <x0r@dv-life.ru>\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@axff_init._entry_ptr.29 = internal global ptr @axff_init._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@axff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: called with 0x%04x 0x%04x\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axff_play\00", [22 x i8] zeroinitializer }, align 32
@axff_play._entry_ptr = internal global ptr @axff_play._entry, section ".printk_index", align 4
@axff_play._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: running with 0x%02x 0x%02x\00", [63 x i8] zeroinitializer }, align 32
@axff_play._entry_ptr.34 = internal global ptr @axff_play._entry.32, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"ax_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 183, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 189, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 184, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"ax_devices\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 176, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 131, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 135, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 141, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 151, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 162, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 74, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 81, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 94, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 112, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 43, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [26 x i8] c"../drivers/hid/hid-axff.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 56, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_ax_driver_exit, ptr @__initcall__kmod_hid_axff__224_189_ax_driver_init6, ptr @ax_driver_exit, ptr @ax_probe._entry, ptr @ax_probe._entry.11, ptr @ax_probe._entry.15, ptr @ax_probe._entry.8, ptr @ax_probe._entry_ptr, ptr @ax_probe._entry_ptr.10, ptr @ax_probe._entry_ptr.14, ptr @ax_probe._entry_ptr.17, ptr @axff_init._entry, ptr @axff_init._entry.20, ptr @axff_init._entry.23, ptr @axff_init._entry.26, ptr @axff_init._entry_ptr, ptr @axff_init._entry_ptr.22, ptr @axff_init._entry_ptr.25, ptr @axff_init._entry_ptr.29, ptr @axff_play._entry, ptr @axff_play._entry.32, ptr @axff_play._entry_ptr, ptr @axff_play._entry_ptr.34, ptr @ax_driver, ptr @.str, ptr @.str.1, ptr @ax_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axff_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axff_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axff_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axff_play._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ax_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ax_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @ax_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ax_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call11 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %0 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %inputs.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %inputs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.18) #8
  br label %do.end24

if.end.i:                                         ; preds = %if.end18
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %input.i = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input.i, align 4
  %4 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.i82.not.i = icmp eq ptr %5, %report_list1.i
  br i1 %cmp.i82.not.i, label %do.end9.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp88.not.i = icmp eq i32 %7, 0
  br i1 %cmp88.not.i, label %for.cond.preheader.i.land.lhs.true.i_crit_edge, label %for.cond.preheader.i.for.cond16.preheader.i_crit_edge

for.cond.preheader.i.for.cond16.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %for.cond16.preheader.i

for.cond.preheader.i.land.lhs.true.i_crit_edge:   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.21) #8
  br label %do.end24

for.cond16.preheader.i:                           ; preds = %for.inc24.i.for.cond16.preheader.i_crit_edge, %for.cond.preheader.i.for.cond16.preheader.i_crit_edge
  %i.090.i = phi i32 [ %inc25.i, %for.inc24.i.for.cond16.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i.for.cond16.preheader.i_crit_edge ]
  %field_count.089.i = phi i32 [ %field_count.1.lcssa.i, %for.inc24.i.for.cond16.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i.for.cond16.preheader.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.hid_report, ptr %5, i32 0, i32 5, i32 %i.090.i
  %8 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx17.i, align 4
  %report_count84.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %report_count84.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_count84.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1885.not.i = icmp eq i32 %11, 0
  br i1 %cmp1885.not.i, label %for.cond16.preheader.i.for.inc24.i_crit_edge, label %for.cond16.preheader.i.for.body19.i_crit_edge

for.cond16.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body19.i

for.cond16.preheader.i.for.inc24.i_crit_edge:     ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond16.preheader.i.for.body19.i_crit_edge
  %12 = phi ptr [ %17, %for.body19.i.for.body19.i_crit_edge ], [ %9, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %j.087.i = phi i32 [ %inc23.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %field_count.186.i = phi i32 [ %inc.i, %for.body19.i.for.body19.i_crit_edge ], [ %field_count.089.i, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %value.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %14, i32 %j.087.i
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx22.i, align 4
  %inc.i = add i32 %field_count.186.i, 1
  %inc23.i = add nuw i32 %j.087.i, 1
  %16 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %report_count.i, align 4
  %cmp18.i = icmp ult i32 %inc23.i, %19
  br i1 %cmp18.i, label %for.body19.i.for.body19.i_crit_edge, label %for.body19.i.for.inc24.i_crit_edge

for.body19.i.for.inc24.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.i

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19.i

for.inc24.i:                                      ; preds = %for.body19.i.for.inc24.i_crit_edge, %for.cond16.preheader.i.for.inc24.i_crit_edge
  %field_count.1.lcssa.i = phi i32 [ %field_count.089.i, %for.cond16.preheader.i.for.inc24.i_crit_edge ], [ %inc.i, %for.body19.i.for.inc24.i_crit_edge ]
  %inc25.i = add nuw i32 %i.090.i, 1
  %20 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %maxfield.i, align 4
  %cmp.i = icmp ult i32 %inc25.i, %21
  br i1 %cmp.i, label %for.inc24.i.for.cond16.preheader.i_crit_edge, label %for.end26.i

for.inc24.i.for.cond16.preheader.i_crit_edge:     ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond16.preheader.i

for.end26.i:                                      ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %field_count.1.lcssa.i)
  %cmp27.i = icmp slt i32 %field_count.1.lcssa.i, 4
  br i1 %cmp27.i, label %for.end26.i.land.lhs.true.i_crit_edge, label %for.end26.i.if.end34.i_crit_edge

for.end26.i.if.end34.i_crit_edge:                 ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

for.end26.i.land.lhs.true.i_crit_edge:            ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end26.i.land.lhs.true.i_crit_edge, %for.cond.preheader.i.land.lhs.true.i_crit_edge
  %field_count.0.lcssa94.i = phi i32 [ %field_count.1.lcssa.i, %for.end26.i.land.lhs.true.i_crit_edge ], [ 0, %for.cond.preheader.i.land.lhs.true.i_crit_edge ]
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %22 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63237, i32 %23)
  %cmp28.not.i = icmp eq i32 %23, 63237
  br i1 %cmp28.not.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %do.end32.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

do.end32.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev33.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.24, i32 noundef %field_count.0.lcssa94.i) #8
  br label %do.end24

if.end34.i:                                       ; preds = %land.lhs.true.i.if.end34.i_crit_edge, %for.end26.i.if.end34.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 4) #9
  %tobool36.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool36.not.i, label %if.end34.i.do.end24_crit_edge, label %if.end38.i

if.end34.i.do.end24_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

if.end38.i:                                       ; preds = %if.end34.i
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit.i) #5
  %call39.i = tail call i32 @input_ff_create_memless(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @axff_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %axff_init.exit, label %err_free_mem.i

err_free_mem.i:                                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %do.end24

axff_init.exit:                                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %5, ptr %call7.i.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %5, i32 noundef 9) #5
  %dev48.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48.i, ptr noundef nonnull @.str.27) #8
  br label %if.end26

do.end24:                                         ; preds = %err_free_mem.i, %if.end34.i.do.end24_crit_edge, %do.end32.i, %do.end9.i, %do.end.i
  %retval.0.i51.ph = phi i32 [ -12, %if.end34.i.do.end24_crit_edge ], [ %call39.i, %err_free_mem.i ], [ -19, %do.end32.i ], [ -19, %do.end9.i ], [ -19, %do.end.i ]
  %dev25 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i51.ph) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %axff_init.exit
  %call27 = tail call i32 @hid_hw_open(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %do.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.16) #8
  tail call void @hid_hw_stop(ptr noundef %hdev) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.end26.cleanup_crit_edge, %do.end16, %do.end8
  %retval.0 = phi i32 [ %call.i, %do.end8 ], [ %call11, %do.end16 ], [ %call27, %do.end32 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hid_hw_close(ptr noundef %hdev) #5
  tail call void @hid_hw_stop(ptr noundef %hdev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %weak_magnitude, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %8 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i16 %7 to i32
  %conv = zext i16 %5 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv3) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %div51 = udiv i16 %5, 257
  %div.zext = zext i16 %div51 to i32
  %div952 = udiv i16 %7, 257
  %div9.zext = zext i16 %div952 to i32
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp57.not = icmp eq i32 %10, 0
  br i1 %cmp57.not, label %do.end7.do.body23_crit_edge, label %do.end7.for.cond11.preheader_crit_edge

do.end7.for.cond11.preheader_crit_edge:           ; preds = %do.end7
  br label %for.cond11.preheader

do.end7.do.body23_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

for.cond11.preheader:                             ; preds = %for.inc20.for.cond11.preheader_crit_edge, %do.end7.for.cond11.preheader_crit_edge
  %i.059 = phi i32 [ %inc21, %for.inc20.for.cond11.preheader_crit_edge ], [ 0, %do.end7.for.cond11.preheader_crit_edge ]
  %field_count.058 = phi i32 [ %field_count.1.lcssa, %for.inc20.for.cond11.preheader_crit_edge ], [ 0, %do.end7.for.cond11.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.hid_report, ptr %3, i32 0, i32 5, i32 %i.059
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %report_count53 = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %report_count53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %report_count53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1254.not = icmp eq i32 %14, 0
  br i1 %cmp1254.not, label %for.cond11.preheader.for.inc20_crit_edge, label %for.cond11.preheader.for.body14_crit_edge

for.cond11.preheader.for.body14_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body14

for.cond11.preheader.for.inc20_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond11.preheader.for.body14_crit_edge
  %15 = phi ptr [ %21, %for.body14.for.body14_crit_edge ], [ %12, %for.cond11.preheader.for.body14_crit_edge ]
  %j.056 = phi i32 [ %inc19, %for.body14.for.body14_crit_edge ], [ 0, %for.cond11.preheader.for.body14_crit_edge ]
  %field_count.155 = phi i32 [ %inc, %for.body14.for.body14_crit_edge ], [ %field_count.058, %for.cond11.preheader.for.body14_crit_edge ]
  %16 = and i32 %field_count.155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  %div.div9 = select i1 %tobool15.not, i32 %div.zext, i32 %div9.zext
  %value = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value, align 4
  %arrayidx18 = getelementptr i32, ptr %18, i32 %j.056
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.div9, ptr %arrayidx18, align 4
  %inc = add i32 %field_count.155, 1
  %inc19 = add nuw i32 %j.056, 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %report_count, align 4
  %cmp12 = icmp ult i32 %inc19, %23
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.inc20_crit_edge

for.body14.for.inc20_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc20

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14

for.inc20:                                        ; preds = %for.body14.for.inc20_crit_edge, %for.cond11.preheader.for.inc20_crit_edge
  %field_count.1.lcssa = phi i32 [ %field_count.058, %for.cond11.preheader.for.inc20_crit_edge ], [ %inc, %for.body14.for.inc20_crit_edge ]
  %inc21 = add nuw i32 %i.059, 1
  %24 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxfield, align 4
  %cmp = icmp ult i32 %inc21, %25
  br i1 %cmp, label %for.inc20.for.cond11.preheader_crit_edge, label %for.inc20.do.body23_crit_edge

for.inc20.do.body23_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

for.inc20.for.cond11.preheader_crit_edge:         ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond11.preheader

do.body23:                                        ; preds = %for.inc20.do.body23_crit_edge, %do.end7.do.body23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %26 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %do.body23.do.end33_crit_edge, label %do.end28

do.body23.do.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end33

do.end28:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, i32 noundef %div.zext, i32 noundef %div9.zext) #8
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body23.do.end33_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %28, i32 noundef 9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_hid_axff__224_189_ax_driver_init6, !1, !"__initcall__kmod_hid_axff__224_189_ax_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-axff.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_ax_driver_exit, !1, !"__exitcall_ax_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author225, !4, !"__UNIQUE_ID_author225", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-axff.c", i32 191, i32 1}
!5 = !{ptr @__UNIQUE_ID_description226, !6, !"__UNIQUE_ID_description226", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-axff.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_file227, !8, !"__UNIQUE_ID_file227", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-axff.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_license228, !8, !"__UNIQUE_ID_license228", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-axff.c", i32 184, i32 11}
!13 = !{ptr @ax_driver, !14, !"ax_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-axff.c", i32 183, i32 26}
!15 = !{ptr @ax_devices, !16, !"ax_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-axff.c", i32 176, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-axff.c", i32 131, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ax_probe.__UNIQUE_ID_ddebug223, !18, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-axff.c", i32 135, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ax_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @ax_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-axff.c", i32 141, i32 3}
!30 = !{ptr @ax_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ax_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-axff.c", i32 151, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ax_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ax_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-axff.c", i32 162, i32 3}
!39 = !{ptr @ax_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ax_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-axff.c", i32 74, i32 3}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @axff_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @axff_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-axff.c", i32 81, i32 3}
!48 = !{ptr @axff_init._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @axff_init._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-axff.c", i32 94, i32 3}
!52 = !{ptr @axff_init._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @axff_init._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-axff.c", i32 112, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @axff_init._entry.26, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @axff_init._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-axff.c", i32 43, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @axff_play._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @axff_play._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-axff.c", i32 56, i32 2}
!66 = !{ptr @axff_play._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @axff_play._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2149035382, i64 2149035387, i64 2149035400, i64 2149035444, i64 2149035478, i64 2149035499}
