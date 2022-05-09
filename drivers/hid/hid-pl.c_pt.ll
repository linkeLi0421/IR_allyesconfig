; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-pl.c_pt.bc'
source_filename = "../drivers/hid/hid-pl.c"
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
%struct.plff_device = type { ptr, i32, ptr, ptr }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_pl__227_220_pl_driver_init6 = internal global ptr @pl_driver_init, section ".initcall6.init", align 4
@pl_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @pl_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @pl_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pl_driver_exit = internal global ptr @pl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [31 x i8] c"hid_pl.file=drivers/hid/hid-pl\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [19 x i8] c"hid_pl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hid_pl\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pantherlord\00", [20 x i8] zeroinitializer }, align 32
@pl_devices = internal constant { [5 x %struct.hid_device_id], [48 x i8] } { [5 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 2, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3888, i32 273, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pl_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hid/hid-pl.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl_probe._entry_ptr = internal global ptr @pl_probe._entry, section ".printk_index", align 4
@pl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@pl_probe._entry_ptr.9 = internal global ptr @pl_probe._entry.7, section ".printk_index", align 4
@plff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 97, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no output reports found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plff_init\00", [22 x i8] zeroinitializer }, align 32
@plff_init._entry_ptr = internal global ptr @plff_init._entry, section ".printk_index", align 4
@plff_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"required output report is missing\0A\00", [61 x i8] zeroinitializer }, align 32
@plff_init._entry_ptr.14 = internal global ptr @plff_init._entry.12, section ".printk_index", align 4
@plff_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no fields in the report\0A\00", [39 x i8] zeroinitializer }, align 32
@plff_init._entry_ptr.17 = internal global ptr @plff_init._entry.15, section ".printk_index", align 4
@plff_init.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.18, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hid-plff: detected single-field device\0A\00", [56 x i8] zeroinitializer }, align 32
@plff_init.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.19, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hid-plff: detected 4-field device\0A\00", [61 x i8] zeroinitializer }, align 32
@plff_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.4, i32 139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"not enough fields or values\0A\00", [35 x i8] zeroinitializer }, align 32
@plff_init._entry_ptr.22 = internal global ptr @plff_init._entry.20, section ".printk_index", align 4
@plff_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.4, i32 167, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Force feedback for PantherLord/GreenAsia devices by Anssi Hannula <anssi.hannula@gmail.com>\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@plff_init._entry_ptr.26 = internal global ptr @plff_init._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_plff_play.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_plff_play\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hid-plff: called with 0x%04x 0x%04x\0A\00", [59 x i8] zeroinitializer }, align 32
@hid_plff_play.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.29, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hid-plff: running with 0x%02x 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"pl_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 215, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 220, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 216, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"pl_devices\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 204, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 187, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 193, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 97, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 106, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 112, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 122, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 137, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 139, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 167, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 56, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [24 x i8] c"../drivers/hid/hid-pl.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 63, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_pl_driver_exit, ptr @__initcall__kmod_hid_pl__227_220_pl_driver_init6, ptr @pl_driver_exit, ptr @pl_probe._entry, ptr @pl_probe._entry.7, ptr @pl_probe._entry_ptr, ptr @pl_probe._entry_ptr.9, ptr @plff_init._entry, ptr @plff_init._entry.12, ptr @plff_init._entry.15, ptr @plff_init._entry.20, ptr @plff_init._entry.23, ptr @plff_init._entry_ptr, ptr @plff_init._entry_ptr.14, ptr @plff_init._entry_ptr.17, ptr @plff_init._entry_ptr.22, ptr @plff_init._entry_ptr.26, ptr @pl_driver, ptr @.str, ptr @.str.1, ptr @pl_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl_devices to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plff_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plff_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plff_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plff_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @pl_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @pl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, 64
  store i32 %or, ptr %quirks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @plff_init(ptr noundef %hdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call.i, %do.end ], [ %call4, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plff_init(ptr noundef %hid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %report_list1 = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 1, i32 1
  %0 = ptrtoint ptr %report_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %report_list1, align 4
  %cmp.i.not = icmp eq ptr %1, %report_list1
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %2 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %hidinput.08 = load ptr, ptr %inputs, align 4
  %cmp.not9 = icmp eq ptr %hidinput.08, %inputs
  br i1 %cmp.not9, label %if.end.do.end145_crit_edge, label %for.body.lr.ph

if.end.do.end145_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end145

for.body.lr.ph:                                   ; preds = %if.end
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end132.for.body_crit_edge, %for.body.lr.ph
  %hidinput.011 = phi ptr [ %hidinput.08, %for.body.lr.ph ], [ %hidinput.0, %if.end132.for.body_crit_edge ]
  %report_ptr.010 = phi ptr [ %report_list1, %for.body.lr.ph ], [ %4, %if.end132.for.body_crit_edge ]
  %3 = ptrtoint ptr %report_ptr.010 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %report_ptr.010, align 4
  %cmp5 = icmp eq ptr %4, %report_list1
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15 = icmp eq i32 %6, 0
  br i1 %cmp15, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %dev20 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %field = getelementptr inbounds %struct.hid_report, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %field, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp23 = icmp ugt i32 %10, 3
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %value = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %field, align 4
  %value30 = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value30, align 4
  %arrayidx31 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx31, align 4
  %19 = load ptr, ptr %field, align 4
  %value34 = getelementptr inbounds %struct.hid_field, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %value34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value34, align 4
  %arrayidx35 = getelementptr i32, ptr %21, i32 2
  %arrayidx39 = getelementptr i32, ptr %21, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @plff_init.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@plff_init, %if.then47)) #5
          to label %if.end124 [label %if.then47], !srcloc !69

if.then47:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @plff_init.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.18) #5
  br label %if.end124

if.else:                                          ; preds = %if.end21
  %maxusage = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 4
  %22 = ptrtoint ptr %maxusage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxusage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp53 = icmp eq i32 %23, 1
  br i1 %cmp53, label %land.lhs.true, label %if.else.do.end121_crit_edge

if.else.do.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

land.lhs.true:                                    ; preds = %if.else
  %usage = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 3
  %24 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usage, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524355, i32 %27)
  %cmp58 = icmp ne i32 %27, 524355
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp61 = icmp ult i32 %6, 4
  %or.cond = select i1 %cmp58, i1 true, i1 %cmp61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp66.not = icmp eq i32 %10, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp66.not
  br i1 %or.cond1, label %land.lhs.true.do.end121_crit_edge, label %land.lhs.true67

land.lhs.true.do.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

land.lhs.true67:                                  ; preds = %land.lhs.true
  %arrayidx69 = getelementptr %struct.hid_report, ptr %4, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx69, align 4
  %report_count70 = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %report_count70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %report_count70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp71.not = icmp eq i32 %31, 0
  br i1 %cmp71.not, label %land.lhs.true67.do.end121_crit_edge, label %land.lhs.true72

land.lhs.true67.do.end121_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

land.lhs.true72:                                  ; preds = %land.lhs.true67
  %arrayidx74 = getelementptr %struct.hid_report, ptr %4, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx74, align 4
  %report_count75 = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %report_count75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %report_count75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp76.not = icmp eq i32 %35, 0
  br i1 %cmp76.not, label %land.lhs.true72.do.end121_crit_edge, label %land.lhs.true77

land.lhs.true72.do.end121_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %arrayidx79 = getelementptr %struct.hid_report, ptr %4, i32 0, i32 5, i32 3
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx79, align 4
  %report_count80 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %report_count80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %report_count80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp81.not = icmp eq i32 %39, 0
  br i1 %cmp81.not, label %land.lhs.true77.do.end121_crit_edge, label %if.then82

land.lhs.true77.do.end121_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

if.then82:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  %value85 = getelementptr inbounds %struct.hid_field, ptr %8, i32 0, i32 10
  %40 = ptrtoint ptr %value85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value85, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %41, align 4
  %43 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx69, align 4
  %value89 = getelementptr inbounds %struct.hid_field, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %value89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %value89, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %46, align 4
  %48 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx74, align 4
  %value93 = getelementptr inbounds %struct.hid_field, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %value93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %value93, align 4
  %52 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx79, align 4
  %value97 = getelementptr inbounds %struct.hid_field, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %value97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value97, align 4
  %56 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3888, i32 %57)
  %cmp99 = icmp eq i32 %57, 3888
  %spec.select = select i1 %cmp99, i32 255, i32 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @plff_init.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@plff_init, %if.then114)) #5
          to label %if.end124 [label %if.then114], !srcloc !69

if.then114:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @plff_init.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.19) #5
  br label %if.end124

do.end121:                                        ; preds = %land.lhs.true77.do.end121_crit_edge, %land.lhs.true72.do.end121_crit_edge, %land.lhs.true67.do.end121_crit_edge, %land.lhs.true.do.end121_crit_edge, %if.else.do.end121_crit_edge
  %dev122 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end124:                                        ; preds = %if.then114, %if.then82, %if.then47, %if.then24
  %weak.0 = phi ptr [ %arrayidx39, %if.then47 ], [ %55, %if.then114 ], [ %arrayidx39, %if.then24 ], [ %55, %if.then82 ]
  %strong.0 = phi ptr [ %arrayidx35, %if.then47 ], [ %51, %if.then114 ], [ %arrayidx35, %if.then24 ], [ %51, %if.then82 ]
  %maxval.1 = phi i32 [ 127, %if.then47 ], [ %spec.select, %if.then114 ], [ 127, %if.then24 ], [ %spec.select, %if.then82 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 16) #9
  %tobool126.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool126.not, label %if.end124.cleanup_crit_edge, label %if.end128

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end128:                                        ; preds = %if.end124
  %input = getelementptr inbounds %struct.hid_input, ptr %hidinput.011, i32 0, i32 2
  %59 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input, align 4
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit) #5
  %call129 = tail call i32 @input_ff_create_memless(ptr noundef %60, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @hid_plff_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.then131

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end132:                                        ; preds = %if.end128
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %4, ptr %call7.i.i, align 8
  %strong134 = getelementptr inbounds %struct.plff_device, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %strong134 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %strong.0, ptr %strong134, align 8
  %weak135 = getelementptr inbounds %struct.plff_device, ptr %call7.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %weak135 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %weak.0, ptr %weak135, align 4
  %maxval136 = getelementptr inbounds %struct.plff_device, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %maxval136 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %maxval.1, ptr %maxval136, align 4
  %65 = ptrtoint ptr %strong.0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %strong.0, align 4
  %66 = ptrtoint ptr %weak.0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %weak.0, align 4
  %67 = load ptr, ptr %call7.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hid, ptr noundef %67, i32 noundef 9) #5
  %68 = ptrtoint ptr %hidinput.011 to i32
  call void @__asan_load4_noabort(i32 %68)
  %hidinput.0 = load ptr, ptr %hidinput.011, align 4
  %cmp.not = icmp eq ptr %hidinput.0, %inputs
  br i1 %cmp.not, label %if.end132.do.end145_crit_edge, label %if.end132.for.body_crit_edge

if.end132.for.body_crit_edge:                     ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end132.do.end145_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end145

do.end145:                                        ; preds = %if.end132.do.end145_crit_edge, %if.end.do.end145_crit_edge
  %dev146 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev146, ptr noundef nonnull @.str.24) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end145, %if.then131, %if.end124.cleanup_crit_edge, %do.end121, %do.end19, %do.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_plff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
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
  %conv = zext i16 %3 to i32
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  %conv2 = zext i16 %5 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_plff_play.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_plff_play, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hid_plff_play.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %maxval = getelementptr inbounds %struct.plff_device, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %maxval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxval, align 4
  %mul = mul i32 %7, %conv
  %div = sdiv i32 %mul, 65535
  %mul7 = mul i32 %7, %conv2
  %div8 = sdiv i32 %mul7, 65535
  %strong = getelementptr inbounds %struct.plff_device, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %strong to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %strong, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %9, align 4
  %weak = getelementptr inbounds %struct.plff_device, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %weak to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %weak, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div8, ptr %12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hid_plff_play.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hid_plff_play, %if.then21)) #5
          to label %do.end24 [label %if.then21], !srcloc !69

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hid_plff_play.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.29, i32 noundef %div, i32 noundef %div8) #5
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.end
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %15, i32 noundef 9) #5
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_hid_pl__227_220_pl_driver_init6, !1, !"__initcall__kmod_hid_pl__227_220_pl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-pl.c", i32 220, i32 1}
!2 = !{ptr @__exitcall_pl_driver_exit, !1, !"__exitcall_pl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-pl.c", i32 222, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-pl.c", i32 216, i32 10}
!9 = !{ptr @pl_driver, !10, !"pl_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-pl.c", i32 215, i32 26}
!11 = !{ptr @pl_devices, !12, !"pl_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-pl.c", i32 204, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-pl.c", i32 187, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pl_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @pl_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-pl.c", i32 193, i32 3}
!23 = !{ptr @pl_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pl_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-pl.c", i32 97, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @plff_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @plff_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-pl.c", i32 106, i32 4}
!32 = !{ptr @plff_init._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @plff_init._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-pl.c", i32 112, i32 4}
!36 = !{ptr @plff_init._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @plff_init._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-pl.c", i32 122, i32 4}
!40 = !{ptr @plff_init.__UNIQUE_ID_ddebug225, !39, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-pl.c", i32 137, i32 4}
!43 = !{ptr @plff_init.__UNIQUE_ID_ddebug226, !42, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-pl.c", i32 139, i32 4}
!46 = !{ptr @plff_init._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @plff_init._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-pl.c", i32 167, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @plff_init._entry.23, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @plff_init._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-pl.c", i32 56, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hid_plff_play.__UNIQUE_ID_ddebug223, !54, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-pl.c", i32 63, i32 2}
!59 = !{ptr @hid_plff_play.__UNIQUE_ID_ddebug224, !58, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2149036624, i64 2149036629, i64 2149036642, i64 2149036686, i64 2149036720, i64 2149036741}
