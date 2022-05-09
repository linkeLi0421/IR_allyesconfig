; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-gaff.c_pt.bc'
source_filename = "../drivers/hid/hid-gaff.c"
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

@__initcall__kmod_hid_gaff__224_170_ga_driver_init6 = internal global ptr @ga_driver_init, section ".initcall6.init", align 4
@ga_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ga_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @ga_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ga_driver_exit = internal global ptr @ga_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file225 = internal constant [35 x i8] c"hid_gaff.file=drivers/hid/hid-gaff\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [21 x i8] c"hid_gaff.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_gaff\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"greenasia\00", [22 x i8] zeroinitializer }, align 32
@ga_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 3727, i32 18, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ga_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ga_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-gaff.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Greenasia HID hardware probe...\00", [32 x i8] zeroinitializer }, align 32
@ga_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ga_probe._entry_ptr = internal global ptr @ga_probe._entry, section ".printk_index", align 4
@ga_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 148, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ga_probe._entry_ptr.10 = internal global ptr @ga_probe._entry.8, section ".printk_index", align 4
@gaff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 75, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gaff_init\00", [22 x i8] zeroinitializer }, align 32
@gaff_init._entry_ptr = internal global ptr @gaff_init._entry, section ".printk_index", align 4
@gaff_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 82, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no output reports found\0A\00", [39 x i8] zeroinitializer }, align 32
@gaff_init._entry_ptr.15 = internal global ptr @gaff_init._entry.13, section ".printk_index", align 4
@gaff_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 90, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no fields in the report\0A\00", [39 x i8] zeroinitializer }, align 32
@gaff_init._entry_ptr.18 = internal global ptr @gaff_init._entry.16, section ".printk_index", align 4
@gaff_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 95, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"not enough values in the field\0A\00", [32 x i8] zeroinitializer }, align 32
@gaff_init._entry_ptr.21 = internal global ptr @gaff_init._entry.19, section ".printk_index", align 4
@gaff_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 123, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Force Feedback for GreenAsia 0x12 devices by Lukasz Lubojanski <lukasz@lubojanski.info>\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gaff_init._entry_ptr.25 = internal global ptr @gaff_init._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@hid_gaff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: called with 0x%04x 0x%04x\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_gaff_play\00", [18 x i8] zeroinitializer }, align 32
@hid_gaff_play._entry_ptr = internal global ptr @hid_gaff_play._entry, section ".printk_index", align 4
@hid_gaff_play._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: running with 0x%02x 0x%02x\00", [63 x i8] zeroinitializer }, align 32
@hid_gaff_play._entry_ptr.30 = internal global ptr @hid_gaff_play._entry.28, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"ga_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 165, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 170, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 166, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"ga_devices\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 159, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 138, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 142, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 148, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 75, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 82, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 90, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 95, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 123, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 39, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [26 x i8] c"../drivers/hid/hid-gaff.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 50, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_ga_driver_exit, ptr @__initcall__kmod_hid_gaff__224_170_ga_driver_init6, ptr @ga_driver_exit, ptr @ga_probe._entry, ptr @ga_probe._entry.8, ptr @ga_probe._entry_ptr, ptr @ga_probe._entry_ptr.10, ptr @gaff_init._entry, ptr @gaff_init._entry.13, ptr @gaff_init._entry.16, ptr @gaff_init._entry.19, ptr @gaff_init._entry.22, ptr @gaff_init._entry_ptr, ptr @gaff_init._entry_ptr.15, ptr @gaff_init._entry_ptr.18, ptr @gaff_init._entry_ptr.21, ptr @gaff_init._entry_ptr.25, ptr @hid_gaff_play._entry, ptr @hid_gaff_play._entry.28, ptr @hid_gaff_play._entry_ptr, ptr @hid_gaff_play._entry_ptr.30, ptr @ga_driver, ptr @.str, ptr @.str.1, ptr @ga_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaff_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaff_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaff_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gaff_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_gaff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_gaff_play._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ga_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ga_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ga_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @ga_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ga_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ga_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ga_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %report_list1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 1
  %input.i = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input.i, align 4
  %4 = ptrtoint ptr %report_list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %report_list1.i, align 4
  %cmp.i1.not.i = icmp eq ptr %5, %report_list1.i
  br i1 %cmp.i1.not.i, label %do.end9.i, label %if.end11.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev10.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev20.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end11.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp23.i = icmp ult i32 %11, 6
  br i1 %cmp23.i, label %do.end27.i, label %if.end29.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev28.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end29.i:                                       ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4) #9
  %tobool31.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool31.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end33.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33.i:                                       ; preds = %if.end29.i
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 80, ptr noundef %ffbit.i) #5
  %call34.i = tail call i32 @input_ff_create_memless(ptr noundef %3, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @hid_gaff_play) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

if.end37.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %call7.i.i.i, align 8
  %14 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %field.i, align 4
  %value.i = getelementptr inbounds %struct.hid_field, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 81, ptr %17, align 4
  %19 = load ptr, ptr %call7.i.i.i, align 8
  %field44.i = getelementptr inbounds %struct.hid_report, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %field44.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %field44.i, align 4
  %value46.i = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value46.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value46.i, align 4
  %arrayidx47.i = getelementptr i32, ptr %23, i32 1
  %24 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx47.i, align 4
  %25 = load ptr, ptr %call7.i.i.i, align 8
  %field49.i = getelementptr inbounds %struct.hid_report, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %field49.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %field49.i, align 4
  %value51.i = getelementptr inbounds %struct.hid_field, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %value51.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %value51.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx52.i, align 4
  %31 = load ptr, ptr %call7.i.i.i, align 8
  %field54.i = getelementptr inbounds %struct.hid_report, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %field54.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %field54.i, align 4
  %value56.i = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %value56.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value56.i, align 4
  %arrayidx57.i = getelementptr i32, ptr %35, i32 3
  %36 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx57.i, align 4
  %37 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %37, i32 noundef 9) #5
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i.i, align 8
  %field60.i = getelementptr inbounds %struct.hid_report, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %field60.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %field60.i, align 4
  %value62.i = getelementptr inbounds %struct.hid_field, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %value62.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value62.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 250, ptr %43, align 4
  %45 = load ptr, ptr %call7.i.i.i, align 8
  %field65.i = getelementptr inbounds %struct.hid_report, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %field65.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %field65.i, align 4
  %value67.i = getelementptr inbounds %struct.hid_field, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %value67.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %value67.i, align 4
  %arrayidx68.i = getelementptr i32, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 254, ptr %arrayidx68.i, align 4
  %51 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %51, i32 noundef 9) #5
  %dev73.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev73.i, ptr noundef nonnull @.str.23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37.i, %if.then36.i, %if.end29.i.cleanup_crit_edge, %do.end27.i, %do.end19.i, %do.end9.i, %do.end.i, %do.end16, %do.end8
  %retval.0 = phi i32 [ %call.i, %do.end8 ], [ %call11, %do.end16 ], [ 0, %do.end.i ], [ 0, %do.end9.i ], [ 0, %do.end19.i ], [ 0, %do.end27.i ], [ 0, %if.end29.i.cleanup_crit_edge ], [ 0, %if.then36.i ], [ 0, %if.end37.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
define internal i32 @hid_gaff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %effect) #2 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %6 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv2) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %mul = mul nuw nsw i32 %conv, 254
  %div = udiv i32 %mul, 65535
  %mul7 = mul nuw nsw i32 %conv2, 254
  %div8 = udiv i32 %mul7, 65535
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 81, ptr %12, align 4
  %14 = load ptr, ptr %data, align 4
  %field11 = getelementptr inbounds %struct.hid_report, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %field11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %field11, align 4
  %value13 = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %value13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value13, align 4
  %arrayidx14 = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx14, align 4
  %20 = load ptr, ptr %data, align 4
  %field16 = getelementptr inbounds %struct.hid_report, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %field16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %field16, align 4
  %value18 = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %value18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %value18, align 4
  %arrayidx19 = getelementptr i32, ptr %24, i32 2
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div8, ptr %arrayidx19, align 4
  %26 = load ptr, ptr %data, align 4
  %field21 = getelementptr inbounds %struct.hid_report, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %field21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %field21, align 4
  %value23 = getelementptr inbounds %struct.hid_field, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %value23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value23, align 4
  %arrayidx24 = getelementptr i32, ptr %30, i32 3
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx24, align 4
  %32 = load ptr, ptr %data, align 4
  %field26 = getelementptr inbounds %struct.hid_report, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %field26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %field26, align 4
  %value28 = getelementptr inbounds %struct.hid_field, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %value28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value28, align 4
  %arrayidx29 = getelementptr i32, ptr %36, i32 4
  %37 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %arrayidx29, align 4
  %38 = load ptr, ptr %data, align 4
  %field31 = getelementptr inbounds %struct.hid_report, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %field31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %field31, align 4
  %value33 = getelementptr inbounds %struct.hid_field, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %value33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %value33, align 4
  %arrayidx34 = getelementptr i32, ptr %42, i32 5
  %43 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %44 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool36.not = icmp eq i32 %44, 0
  br i1 %tobool36.not, label %do.end6.do.end45_crit_edge, label %do.end40

do.end6.do.end45_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end45

do.end40:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, i32 noundef %div, i32 noundef %div8) #8
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %do.end6.do.end45_crit_edge
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %46, i32 noundef 9) #5
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %field48 = getelementptr inbounds %struct.hid_report, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %field48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %field48, align 4
  %value50 = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %value50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 250, ptr %52, align 4
  %54 = load ptr, ptr %data, align 4
  %field53 = getelementptr inbounds %struct.hid_report, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %field53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %field53, align 4
  %value55 = getelementptr inbounds %struct.hid_field, ptr %56, i32 0, i32 10
  %57 = ptrtoint ptr %value55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value55, align 4
  %arrayidx56 = getelementptr i32, ptr %58, i32 1
  %59 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 254, ptr %arrayidx56, align 4
  %60 = load ptr, ptr %data, align 4
  %field58 = getelementptr inbounds %struct.hid_report, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %field58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %field58, align 4
  %value60 = getelementptr inbounds %struct.hid_field, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %value60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %value60, align 4
  %arrayidx61 = getelementptr i32, ptr %64, i32 2
  %65 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx61, align 4
  %66 = load ptr, ptr %data, align 4
  %field63 = getelementptr inbounds %struct.hid_report, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %field63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %field63, align 4
  %value65 = getelementptr inbounds %struct.hid_field, ptr %68, i32 0, i32 10
  %69 = ptrtoint ptr %value65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %value65, align 4
  %arrayidx66 = getelementptr i32, ptr %70, i32 4
  %71 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx66, align 4
  %72 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %72, i32 noundef 9) #5
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_hid_gaff__224_170_ga_driver_init6, !1, !"__initcall__kmod_hid_gaff__224_170_ga_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-gaff.c", i32 170, i32 1}
!2 = !{ptr @__exitcall_ga_driver_exit, !1, !"__exitcall_ga_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file225, !4, !"__UNIQUE_ID_file225", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-gaff.c", i32 172, i32 1}
!5 = !{ptr @__UNIQUE_ID_license226, !4, !"__UNIQUE_ID_license226", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-gaff.c", i32 166, i32 10}
!9 = !{ptr @ga_driver, !10, !"ga_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-gaff.c", i32 165, i32 26}
!11 = !{ptr @ga_devices, !12, !"ga_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-gaff.c", i32 159, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-gaff.c", i32 138, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ga_probe.__UNIQUE_ID_ddebug223, !14, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-gaff.c", i32 142, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ga_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @ga_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-gaff.c", i32 148, i32 3}
!26 = !{ptr @ga_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ga_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-gaff.c", i32 75, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gaff_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gaff_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-gaff.c", i32 82, i32 3}
!35 = !{ptr @gaff_init._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gaff_init._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-gaff.c", i32 90, i32 3}
!39 = !{ptr @gaff_init._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gaff_init._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-gaff.c", i32 95, i32 3}
!43 = !{ptr @gaff_init._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gaff_init._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-gaff.c", i32 123, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @gaff_init._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @gaff_init._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-gaff.c", i32 39, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hid_gaff_play._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hid_gaff_play._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-gaff.c", i32 50, i32 2}
!57 = !{ptr @hid_gaff_play._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hid_gaff_play._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2149035129, i64 2149035134, i64 2149035147, i64 2149035191, i64 2149035225, i64 2149035246}
