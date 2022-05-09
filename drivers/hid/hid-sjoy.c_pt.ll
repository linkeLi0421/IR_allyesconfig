; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-sjoy.c_pt.bc'
source_filename = "../drivers/hid/hid-sjoy.c"
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
%struct.atomic_t = type { i32 }
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
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_sjoy__225_169_sjoy_driver_init6 = internal global ptr @sjoy_driver_init, section ".initcall6.init", align 4
@sjoy_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @sjoy_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @sjoy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sjoy_driver_exit = internal global ptr @sjoy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file226 = internal constant [35 x i8] c"hid_sjoy.file=drivers/hid/hid-sjoy\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [21 x i8] c"hid_sjoy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [32 x i8] c"hid_sjoy.author=Jussi Kivilinna\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_sjoy\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smartjoyplus\00", [19 x i8] zeroinitializer }, align 32
@sjoy_devices = internal constant { [8 x %struct.hid_device_id], [32 x i8] } { [8 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 26214, i32 34817, i32 8 }, %struct.hid_device_id { i16 3, i16 0, i32 26214, i32 34818, i32 65608 }, %struct.hid_device_id { i16 3, i16 0, i32 26214, i32 34820, i32 65608 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 5, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34952, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34918, i32 65600 }, %struct.hid_device_id { i16 3, i16 0, i32 2883, i32 3, i32 65600 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sjoy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 126, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sjoy_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-sjoy.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sjoy_probe._entry_ptr = internal global ptr @sjoy_probe._entry, section ".printk_index", align 4
@sjoy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@sjoy_probe._entry_ptr.9 = internal global ptr @sjoy_probe._entry.7, section ".printk_index", align 4
@sjoyff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no output reports found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sjoyff_init\00", [20 x i8] zeroinitializer }, align 32
@sjoyff_init._entry_ptr = internal global ptr @sjoyff_init._entry, section ".printk_index", align 4
@sjoyff_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"required output report is missing\0A\00", [61 x i8] zeroinitializer }, align 32
@sjoyff_init._entry_ptr.14 = internal global ptr @sjoyff_init._entry.12, section ".printk_index", align 4
@sjoyff_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no fields in the report\0A\00", [39 x i8] zeroinitializer }, align 32
@sjoyff_init._entry_ptr.17 = internal global ptr @sjoyff_init._entry.15, section ".printk_index", align 4
@sjoyff_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 82, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not enough values in the field\0A\00", [32 x i8] zeroinitializer }, align 32
@sjoyff_init._entry_ptr.20 = internal global ptr @sjoyff_init._entry.18, section ".printk_index", align 4
@sjoyff_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.4, i32 107, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Force feedback for SmartJoy PLUS PS2/USB adapter\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sjoyff_init._entry_ptr.24 = internal global ptr @sjoyff_init._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_sjoyff_play.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hid_sjoyff_play\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"called with 0x%08x 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@hid_sjoyff_play.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"running with 0x%02x 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"sjoy_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 164, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 169, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 165, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"sjoy_devices\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 143, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 126, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 132, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 63, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 71, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 77, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 82, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 107, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 38, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [26 x i8] c"../drivers/hid/hid-sjoy.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 45, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_sjoy_driver_exit, ptr @__initcall__kmod_hid_sjoy__225_169_sjoy_driver_init6, ptr @sjoy_driver_exit, ptr @sjoy_probe._entry, ptr @sjoy_probe._entry.7, ptr @sjoy_probe._entry_ptr, ptr @sjoy_probe._entry_ptr.9, ptr @sjoyff_init._entry, ptr @sjoyff_init._entry.12, ptr @sjoyff_init._entry.15, ptr @sjoyff_init._entry.18, ptr @sjoyff_init._entry.21, ptr @sjoyff_init._entry_ptr, ptr @sjoyff_init._entry_ptr.14, ptr @sjoyff_init._entry_ptr.17, ptr @sjoyff_init._entry_ptr.20, ptr @sjoyff_init._entry_ptr.24, ptr @sjoy_driver, ptr @.str, ptr @.str.1, ptr @sjoy_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoy_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoy_devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoyff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoyff_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoyff_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoyff_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjoyff_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sjoy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @sjoy_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sjoy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @sjoy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sjoy_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, %1
  store i32 %or, ptr %quirks, align 8
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %4 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %report_list1.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %inputs.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 36
  %6 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %hidinput.02.i = load ptr, ptr %inputs.i, align 4
  %cmp.not3.i = icmp eq ptr %hidinput.02.i, %inputs.i
  br i1 %cmp.not3.i, label %if.end.i.do.end61.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.do.end61.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61.i

for.body.i:                                       ; preds = %if.end37.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %hidinput.05.i = phi ptr [ %hidinput.0.i, %if.end37.i.for.body.i_crit_edge ], [ %hidinput.02.i, %if.end.i.for.body.i_crit_edge ]
  %report_ptr.04.i = phi ptr [ %8, %if.end37.i.for.body.i_crit_edge ], [ %report_list1.i, %if.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %report_ptr.04.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %report_ptr.04.i, align 4
  %cmp5.i = icmp eq ptr %8, %report_list1.i
  br i1 %cmp5.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end11.i:                                       ; preds = %for.body.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.i = icmp eq i32 %10, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev20.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end11.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp23.i = icmp ult i32 %14, 3
  br i1 %cmp23.i, label %do.end27.i, label %if.end29.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev28.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end29.i:                                       ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 4) #9
  %tobool31.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool31.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end33.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33.i:                                       ; preds = %if.end29.i
  %input.i = getelementptr inbounds %struct.hid_input, ptr %hidinput.05.i, i32 0, i32 2
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input.i, align 4
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit.i) #5
  %call34.i = tail call i32 @input_ff_create_memless(ptr noundef %17, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @hid_sjoyff_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

if.end37.i:                                       ; preds = %if.end33.i
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %call7.i.i.i, align 8
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %value.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %22, align 4
  %24 = load ptr, ptr %call7.i.i.i, align 8
  %field44.i = getelementptr inbounds %struct.hid_report, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %field44.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %field44.i, align 4
  %value46.i = getelementptr inbounds %struct.hid_field, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %value46.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %value46.i, align 4
  %arrayidx47.i = getelementptr i32, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx47.i, align 4
  %30 = load ptr, ptr %call7.i.i.i, align 8
  %field49.i = getelementptr inbounds %struct.hid_report, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %field49.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %field49.i, align 4
  %value51.i = getelementptr inbounds %struct.hid_field, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %value51.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %value51.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %34, i32 2
  %35 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx52.i, align 4
  %36 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %36, i32 noundef 9) #5
  %37 = ptrtoint ptr %hidinput.05.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %hidinput.0.i = load ptr, ptr %hidinput.05.i, align 4
  %cmp.not.i = icmp eq ptr %hidinput.0.i, %inputs.i
  br i1 %cmp.not.i, label %if.end37.i.do.end61.i_crit_edge, label %if.end37.i.for.body.i_crit_edge

if.end37.i.for.body.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end37.i.do.end61.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61.i

do.end61.i:                                       ; preds = %if.end37.i.do.end61.i_crit_edge, %if.end.i.do.end61.i_crit_edge
  %dev62.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.i, ptr noundef nonnull @.str.22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end61.i, %if.then36.i, %if.end29.i.cleanup_crit_edge, %do.end27.i, %do.end19.i, %do.end9.i, %do.end.i, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call1, %do.end6 ], [ 0, %do.end.i ], [ 0, %do.end9.i ], [ 0, %do.end19.i ], [ 0, %do.end27.i ], [ 0, %if.then36.i ], [ 0, %do.end61.i ], [ 0, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sjoyff_play(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %u, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_sjoyff_play.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_sjoyff_play, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %3 to i32
  %conv2 = zext i16 %5 to i32
  %dev6 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_sjoyff_play.__UNIQUE_ID_ddebug223, ptr noundef %dev6, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %div48 = udiv i16 %3, 257
  %div.zext = zext i16 %div48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp ne i16 %5, 0
  %conv7 = zext i1 %cmp to i32
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  %arrayidx8 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7, ptr %arrayidx8, align 4
  %13 = load ptr, ptr %data, align 4
  %field10 = getelementptr inbounds %struct.hid_report, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %field10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %field10, align 4
  %value12 = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value12, align 4
  %arrayidx13 = getelementptr i32, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.zext, ptr %arrayidx13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_sjoyff_play.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_sjoyff_play, %if.then26)) #5
          to label %do.end30 [label %if.then26], !srcloc !65

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev27 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hid_sjoyff_play.__UNIQUE_ID_ddebug224, ptr noundef %dev27, ptr noundef nonnull @.str.27, i32 noundef %div.zext, i32 noundef %conv7) #5
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.end
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %20, i32 noundef 9) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_hid_sjoy__225_169_sjoy_driver_init6, !1, !"__initcall__kmod_hid_sjoy__225_169_sjoy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-sjoy.c", i32 169, i32 1}
!2 = !{ptr @__exitcall_sjoy_driver_exit, !1, !"__exitcall_sjoy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file226, !4, !"__UNIQUE_ID_file226", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-sjoy.c", i32 171, i32 1}
!5 = !{ptr @__UNIQUE_ID_license227, !4, !"__UNIQUE_ID_license227", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author228, !7, !"__UNIQUE_ID_author228", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-sjoy.c", i32 172, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-sjoy.c", i32 165, i32 10}
!11 = !{ptr @sjoy_driver, !12, !"sjoy_driver", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-sjoy.c", i32 164, i32 26}
!13 = !{ptr @sjoy_devices, !14, !"sjoy_devices", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-sjoy.c", i32 143, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-sjoy.c", i32 126, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sjoy_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sjoy_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-sjoy.c", i32 132, i32 3}
!25 = !{ptr @sjoy_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sjoy_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-sjoy.c", i32 63, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sjoyff_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @sjoyff_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-sjoy.c", i32 71, i32 4}
!34 = !{ptr @sjoyff_init._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sjoyff_init._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-sjoy.c", i32 77, i32 4}
!38 = !{ptr @sjoyff_init._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sjoyff_init._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-sjoy.c", i32 82, i32 4}
!42 = !{ptr @sjoyff_init._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sjoyff_init._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-sjoy.c", i32 107, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sjoyff_init._entry.21, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sjoyff_init._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hid/hid-sjoy.c", i32 38, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hid_sjoyff_play.__UNIQUE_ID_ddebug223, !50, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-sjoy.c", i32 45, i32 2}
!55 = !{ptr @hid_sjoyff_play.__UNIQUE_ID_ddebug224, !54, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2149035518, i64 2149035523, i64 2149035536, i64 2149035580, i64 2149035614, i64 2149035635}
