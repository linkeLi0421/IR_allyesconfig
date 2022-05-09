; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/lm25066.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/lm25066.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__coeff = type { i16, i16, i16 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lm25066_data = type { i32, i16, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_lm25066__312_561_lm25066_driver_init6 = internal global ptr @lm25066_driver_init, section ".initcall6.init", align 4
@lm25066_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @lm25066_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm25066_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm25066_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm25066_driver_exit = internal global ptr @lm25066_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [29 x i8] c"lm25066.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [66 x i8] c"lm25066.description=PMBus driver for LM25066 and compatible chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [41 x i8] c"lm25066.file=drivers/hwmon/pmbus/lm25066\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [20 x i8] c"lm25066.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns317 = internal constant [24 x i8] c"lm25066.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm25066\00", [24 x i8] zeroinitializer }, align 32
@lm25066_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm25056\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm25066\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm5064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm5066\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm5066i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@lm25066_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm25056\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm25066\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"lm5064\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"lm5066\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"lm5066i\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm25066_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Device mismatch: %s in device tree, %s detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm25066_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/lm25066.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm25066_probe._entry_ptr = internal global ptr @lm25066_probe._entry, section ".printk_index", align 4
@lm25066_coeff = internal constant { [5 x [10 x %struct.__coeff]], [84 x i8] } { [5 x [10 x %struct.__coeff]] [[10 x %struct.__coeff] [%struct.__coeff { i16 16296, i16 1343, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff { i16 13797, i16 -1833, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff { i16 5501, i16 -2908, i16 -3 }, %struct.__coeff { i16 1580, i16 -14500, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff zeroinitializer, %struct.__coeff { i16 6726, i16 -537, i16 -2 }, %struct.__coeff { i16 26882, i16 -5646, i16 -4 }], [10 x %struct.__coeff] [%struct.__coeff { i16 22070, i16 -1800, i16 -2 }, %struct.__coeff { i16 22070, i16 -1800, i16 -2 }, %struct.__coeff { i16 13661, i16 -5200, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff { i16 736, i16 -3300, i16 -2 }, %struct.__coeff { i16 16, i16 0, i16 0 }, %struct.__coeff zeroinitializer, %struct.__coeff zeroinitializer, %struct.__coeff { i16 6854, i16 -3100, i16 -2 }, %struct.__coeff { i16 369, i16 -1900, i16 -2 }], [10 x %struct.__coeff] [%struct.__coeff { i16 4611, i16 -642, i16 -2 }, %struct.__coeff { i16 4621, i16 423, i16 -2 }, %struct.__coeff { i16 10742, i16 1552, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff { i16 1204, i16 8524, i16 -3 }, %struct.__coeff { i16 16, i16 0, i16 0 }, %struct.__coeff zeroinitializer, %struct.__coeff zeroinitializer, %struct.__coeff { i16 5456, i16 2118, i16 -2 }, %struct.__coeff { i16 612, i16 11202, i16 -3 }], [10 x %struct.__coeff] [%struct.__coeff { i16 4587, i16 -1200, i16 -2 }, %struct.__coeff { i16 4587, i16 -2400, i16 -2 }, %struct.__coeff { i16 10753, i16 -1200, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff { i16 1204, i16 -6000, i16 -3 }, %struct.__coeff { i16 16, i16 0, i16 0 }, %struct.__coeff zeroinitializer, %struct.__coeff zeroinitializer, %struct.__coeff { i16 5405, i16 -600, i16 -2 }, %struct.__coeff { i16 605, i16 -8000, i16 -3 }], [10 x %struct.__coeff] [%struct.__coeff { i16 4617, i16 -140, i16 -2 }, %struct.__coeff { i16 4602, i16 500, i16 -2 }, %struct.__coeff { i16 15076, i16 -504, i16 -2 }, %struct.__coeff zeroinitializer, %struct.__coeff { i16 1701, i16 -4000, i16 -3 }, %struct.__coeff { i16 16, i16 0, i16 0 }, %struct.__coeff zeroinitializer, %struct.__coeff zeroinitializer, %struct.__coeff { i16 7645, i16 100, i16 -2 }, %struct.__coeff { i16 861, i16 -965, i16 -3 }]], [84 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 290, i64 291]
@__sancov_gen_cov_switch_values.7 = internal global [14 x i64] [i64 12, i64 32, i64 93, i64 107, i64 137, i64 151, i64 261, i64 265, i64 269, i64 271, i64 272, i64 277, i64 289, i64 307]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [18 x i64] [i64 16, i64 32, i64 67, i64 79, i64 81, i64 85, i64 87, i64 88, i64 89, i64 91, i64 93, i64 104, i64 106, i64 107, i64 272, i64 290, i64 291, i64 307]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"lm25066_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 552, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 554, i32 14 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"lm25066_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 448, i32 49 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"lm25066_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 438, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 485, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"lm25066_coeff\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 55, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [33 x i8] c"../drivers/hwmon/pmbus/lm25066.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 542, i32 48 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_import_ns317, ptr @__UNIQUE_ID_license316, ptr @__exitcall_lm25066_driver_exit, ptr @__initcall__kmod_lm25066__312_561_lm25066_driver_init6, ptr @lm25066_driver_exit, ptr @lm25066_probe._entry, ptr @lm25066_probe._entry_ptr, ptr @lm25066_driver, ptr @.str, ptr @lm25066_of_match, ptr @lm25066_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lm25066_coeff, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm25066_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm25066_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm25066_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm25066_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm25066_coeff to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm25066_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm25066_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm25066_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lm25066_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm25066_probe(ptr noundef %client) #2 align 64 {
entry:
  %shunt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shunt) #6
  %0 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shunt, align 4, !annotation !41
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #6
  %7 = and i32 %call.i.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 500, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm25066_id, ptr noundef %client) #6
  %call10 = tail call ptr @of_match_device(ptr noundef nonnull @lm25066_of_match, ptr noundef %dev) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end7.if.end18_crit_edge, label %land.lhs.true

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %data12 = getelementptr inbounds %struct.of_device_id, ptr %call10, i32 0, i32 3
  %8 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data12, align 4
  %10 = ptrtoint ptr %9 to i32
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call8, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp13.not = icmp eq i32 %12, %10
  br i1 %cmp13.not, label %land.lhs.true.if.end18_crit_edge, label %do.end

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %call10, ptr noundef %call8) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.lhs.true.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %driver_data19 = getelementptr inbounds %struct.i2c_device_id, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data19, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call.i, align 4
  %info20 = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %info20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %info20, align 4
  %format = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %format, align 4
  %arrayidx22 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 2, i32 5
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx28, align 4
  %func = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4506153, ptr %func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp31 = icmp eq i32 %14, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5030441, ptr %func, align 4
  %read_byte_data = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 9
  %24 = ptrtoint ptr %read_byte_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @lm25056_read_byte_data, ptr %read_byte_data, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4510253, ptr %func, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then32
  %lm25066_read_word_data.sink = phi ptr [ @lm25056_read_word_data, %if.then32 ], [ @lm25066_read_word_data, %if.else ]
  %26 = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 10
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lm25066_read_word_data.sink, ptr %26, align 4
  %28 = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4095, ptr %28, align 4
  %write_word_data = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 11
  %30 = ptrtoint ptr %write_word_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @lm25066_write_word_data, ptr %write_word_data, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 4
  %arrayidx42 = getelementptr [5 x [10 x %struct.__coeff]], ptr @lm25066_coeff, i32 0, i32 %32
  %arrayidx44 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 5
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx44, align 2
  %conv = sext i16 %34 to i32
  %m45 = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 4
  %arrayidx46 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 4, i32 5
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %arrayidx46, align 4
  %b = getelementptr %struct.__coeff, ptr %arrayidx42, i32 5, i32 1
  %36 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %b, align 2
  %conv48 = sext i16 %37 to i32
  %b49 = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 5
  %arrayidx50 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 5, i32 5
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv48, ptr %arrayidx50, align 4
  %R = getelementptr %struct.__coeff, ptr %arrayidx42, i32 5, i32 2
  %39 = ptrtoint ptr %R to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %R, align 2
  %conv52 = sext i16 %40 to i32
  %R53 = getelementptr inbounds %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 6
  %arrayidx54 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 6, i32 5
  %41 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv52, ptr %arrayidx54, align 4
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx42, align 2
  %conv57 = sext i16 %43 to i32
  %44 = ptrtoint ptr %m45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv57, ptr %m45, align 4
  %b61 = getelementptr inbounds %struct.__coeff, ptr %arrayidx42, i32 0, i32 1
  %45 = ptrtoint ptr %b61 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %b61, align 2
  %conv62 = sext i16 %46 to i32
  %47 = ptrtoint ptr %b49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv62, ptr %b49, align 4
  %R66 = getelementptr inbounds %struct.__coeff, ptr %arrayidx42, i32 0, i32 2
  %48 = ptrtoint ptr %R66 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %R66, align 2
  %conv67 = sext i16 %49 to i32
  %50 = ptrtoint ptr %R53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv67, ptr %R53, align 4
  %arrayidx70 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 1
  %51 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx70, align 2
  %conv72 = sext i16 %52 to i32
  %arrayidx74 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 4, i32 1
  %53 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv72, ptr %arrayidx74, align 4
  %b76 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 1, i32 1
  %54 = ptrtoint ptr %b76 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %b76, align 2
  %conv77 = sext i16 %55 to i32
  %arrayidx79 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 5, i32 1
  %56 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv77, ptr %arrayidx79, align 4
  %R81 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 1, i32 2
  %57 = ptrtoint ptr %R81 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %R81, align 2
  %conv82 = sext i16 %58 to i32
  %arrayidx84 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 6, i32 1
  %59 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv82, ptr %arrayidx84, align 4
  %R86 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 2, i32 2
  %60 = ptrtoint ptr %R86 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %R86, align 2
  %conv87 = sext i16 %61 to i32
  %arrayidx89 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 6, i32 2
  %62 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv87, ptr %arrayidx89, align 4
  %R91 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 4, i32 2
  %63 = ptrtoint ptr %R91 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %R91, align 2
  %conv92 = sext i16 %64 to i32
  %arrayidx94 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 6, i32 4
  %65 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv92, ptr %arrayidx94, align 4
  %and = and i32 %call5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool95.not = icmp eq i32 %and, 0
  br i1 %tobool95.not, label %if.else117, label %if.then96

if.then96:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx97 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 8
  %b103 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 8, i32 1
  %arrayidx107 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 9
  br label %if.end138

if.else117:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx90 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 4
  %arrayidx85 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 2
  %b124 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 2, i32 1
  br label %if.end138

if.end138:                                        ; preds = %if.else117, %if.then96
  %.sink = phi i32 [ 4, %if.else117 ], [ 9, %if.then96 ]
  %conv99.sink.in.in = phi ptr [ %arrayidx85, %if.else117 ], [ %arrayidx97, %if.then96 ]
  %conv104.sink.in.in = phi ptr [ %b124, %if.else117 ], [ %b103, %if.then96 ]
  %conv109.sink.in.in = phi ptr [ %arrayidx90, %if.else117 ], [ %arrayidx107, %if.then96 ]
  %b134 = getelementptr %struct.__coeff, ptr %arrayidx42, i32 %.sink, i32 1
  %66 = ptrtoint ptr %b134 to i32
  call void @__asan_load2_noabort(i32 %66)
  %conv114.sink.in = load i16, ptr %b134, align 2
  %conv114.sink = sext i16 %conv114.sink.in to i32
  %67 = ptrtoint ptr %conv109.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %67)
  %conv109.sink.in = load i16, ptr %conv109.sink.in.in, align 2
  %conv109.sink = sext i16 %conv109.sink.in to i32
  %68 = ptrtoint ptr %conv104.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %68)
  %conv104.sink.in = load i16, ptr %conv104.sink.in.in, align 2
  %conv104.sink = sext i16 %conv104.sink.in to i32
  %69 = ptrtoint ptr %conv99.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %69)
  %conv99.sink.in = load i16, ptr %conv99.sink.in.in, align 2
  %conv99.sink = sext i16 %conv99.sink.in to i32
  %70 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 4, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv99.sink, ptr %70, align 4
  %72 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 5, i32 2
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv104.sink, ptr %72, align 4
  %74 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 4, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv109.sink, ptr %74, align 4
  %76 = getelementptr %struct.lm25066_data, ptr %call.i, i32 0, i32 2, i32 5, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv114.sink, ptr %76, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %78 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node, align 8
  %call.i.i234 = call i32 @of_property_read_variable_u32_array(ptr noundef %79, ptr noundef nonnull @.str.6, ptr noundef nonnull %shunt, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i234)
  %tobool141.not = icmp sgt i32 %call.i.i234, -1
  br i1 %tobool141.not, label %if.end138.if.end143_crit_edge, label %if.then142

if.end138.if.end143_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1000, ptr %shunt, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %if.end138.if.end143_crit_edge
  %81 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %70, align 4
  %83 = ptrtoint ptr %shunt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %shunt, align 4
  %mul = mul i32 %84, %82
  %div = udiv i32 %mul, 1000
  store i32 %div, ptr %70, align 4
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %74, align 4
  %mul150 = mul i32 %86, %84
  %div151 = udiv i32 %mul150, 1000
  store i32 %div151, ptr %74, align 4
  %call154 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call154, %if.end143 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shunt) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm25056_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 290, label %sw.bb
    i32 291, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %call, 293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp1, i32 3070, i32 -3070
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 6140
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %sw.bb9.sw.epilog_crit_edge, label %if.end14

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %mul16 = mul i32 %call10, 293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul16)
  %cmp19 = icmp sgt i32 %mul16, 0
  %cond34.in.v = select i1 %cmp19, i32 3070, i32 -3070
  %cond34.in = add i32 %cond34.in.v, %mul16
  %cond34 = sdiv i32 %cond34.in, 6140
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 @lm25066_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end14, %sw.bb9.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call35, %sw.default ], [ %call10, %sw.bb9.sw.epilog_crit_edge ], [ %cond34, %if.end14 ], [ %call, %sw.bb.sw.epilog_crit_edge ], [ %cond, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm25056_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 294, i32 %reg)
  %cond = icmp eq i32 %reg, 294
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and = shl i32 %call, 5
  %0 = and i32 %and, 96
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call, %sw.bb.sw.epilog_crit_edge ], [ %0, %if.end ], [ -61, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm25066_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  %add.ptr = getelementptr i8, ptr %call, i32 -8
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %reg, label %sw.default [
    i32 289, label %sw.bb
    i32 137, label %sw.bb75
    i32 151, label %sw.bb77
    i32 93, label %sw.bb79
    i32 107, label %sw.bb81
    i32 261, label %sw.bb83
    i32 277, label %sw.bb85
    i32 265, label %sw.bb87
    i32 269, label %sw.bb89
    i32 271, label %sw.bb91
    i32 272, label %entry.sw.epilog100_crit_edge
    i32 307, label %sw.bb94
  ]

entry.sw.epilog100_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog100

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.sw.epilog100_crit_edge, label %if.end

sw.bb.sw.epilog100_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog100

if.end:                                           ; preds = %sw.bb
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %2, label %if.end.sw.epilog100_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb12
    i32 2, label %sw.bb33
    i32 3, label %if.end.sw.bb54_crit_edge
    i32 4, label %if.end.sw.bb54_crit_edge143
  ]

if.end.sw.bb54_crit_edge143:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb54

if.end.sw.bb54_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb54

if.end.sw.epilog100_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog100

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %call1, 293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp4 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp4, i32 3070, i32 -3070
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 6140
  br label %sw.epilog100

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul14 = mul i32 %call1, 2832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul14)
  %cmp17 = icmp sgt i32 %mul14, 0
  %cond32.in.v = select i1 %cmp17, i32 22700, i32 -22700
  %cond32.in = add i32 %cond32.in.v, %mul14
  %cond32 = sdiv i32 %cond32.in, 45400
  br label %sw.epilog100

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul35 = mul i32 %call1, 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul35)
  %cmp38 = icmp sgt i32 %mul35, 0
  %cond53.in.v = select i1 %cmp38, i32 226, i32 -226
  %cond53.in = add i32 %cond53.in.v, %mul35
  %cond53 = sdiv i32 %cond53.in, 453
  br label %sw.epilog100

sw.bb54:                                          ; preds = %if.end.sw.bb54_crit_edge, %if.end.sw.bb54_crit_edge143
  %mul56 = mul i32 %call1, 725
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul56)
  %cmp59 = icmp sgt i32 %mul56, 0
  %cond74.in.v = select i1 %cmp59, i32 1090, i32 -1090
  %cond74.in = add i32 %cond74.in.v, %mul56
  %cond74 = sdiv i32 %cond74.in, 2180
  br label %sw.epilog100

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -47) #6
  br label %sw.epilog100

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -46) #6
  br label %sw.epilog100

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -45) #6
  br label %sw.epilog100

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call82 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -44) #6
  br label %sw.epilog100

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call84 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -36) #6
  br label %sw.epilog100

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -35) #6
  br label %sw.epilog100

sw.bb87:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -34) #6
  br label %sw.epilog100

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call90 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -33) #6
  br label %sw.epilog100

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call92 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -43) #6
  br label %sw.epilog100

sw.bb94:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  %shl = shl nuw i32 1, %call95
  %spec.select = select i1 %cmp96, i32 %call95, i32 %shl
  br label %sw.epilog100

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog100

sw.epilog100:                                     ; preds = %sw.default, %sw.bb94, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb54, %sw.bb33, %sw.bb12, %sw.bb2, %if.end.sw.epilog100_crit_edge, %sw.bb.sw.epilog100_crit_edge, %entry.sw.epilog100_crit_edge
  %ret.0 = phi i32 [ -61, %sw.default ], [ %call92, %sw.bb91 ], [ %call90, %sw.bb89 ], [ %call88, %sw.bb87 ], [ %call86, %sw.bb85 ], [ %call84, %sw.bb83 ], [ %call82, %sw.bb81 ], [ %call80, %sw.bb79 ], [ %call78, %sw.bb77 ], [ %call76, %sw.bb75 ], [ %call1, %sw.bb.sw.epilog100_crit_edge ], [ %call1, %if.end.sw.epilog100_crit_edge ], [ %cond74, %sw.bb54 ], [ %cond53, %sw.bb33 ], [ %cond32, %sw.bb12 ], [ %cond, %sw.bb2 ], [ 0, %entry.sw.epilog100_crit_edge ], [ %spec.select, %sw.bb94 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm25066_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #6
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 104, label %entry.sw.bb_crit_edge
    i32 106, label %entry.sw.bb_crit_edge327
    i32 67, label %entry.sw.bb_crit_edge328
    i32 79, label %entry.sw.bb_crit_edge329
    i32 81, label %entry.sw.bb_crit_edge330
    i32 91, label %entry.sw.bb_crit_edge331
    i32 88, label %entry.sw.bb_crit_edge332
    i32 89, label %entry.sw.bb_crit_edge333
    i32 85, label %entry.sw.bb_crit_edge334
    i32 87, label %entry.sw.bb_crit_edge335
    i32 93, label %sw.bb28
    i32 107, label %sw.bb62
    i32 290, label %sw.bb96
    i32 291, label %sw.bb146
    i32 272, label %sw.bb202
    i32 307, label %cond.end242
  ]

entry.sw.bb_crit_edge335:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge334:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge333:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge332:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge331:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge330:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge329:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge328:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge327:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge327, %entry.sw.bb_crit_edge328, %entry.sw.bb_crit_edge329, %entry.sw.bb_crit_edge330, %entry.sw.bb_crit_edge331, %entry.sw.bb_crit_edge332, %entry.sw.bb_crit_edge333, %entry.sw.bb_crit_edge334, %entry.sw.bb_crit_edge335
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp = icmp slt i16 %word, 0
  br i1 %cmp, label %sw.bb.cond.end23_crit_edge, label %cond.false

sw.bb.cond.end23_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end23

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %rlimit = getelementptr i8, ptr %call, i32 -4
  %1 = ptrtoint ptr %rlimit to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rlimit, align 4
  %3 = tail call i16 @llvm.umin.i16(i16 %word, i16 %2)
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false, %sw.bb.cond.end23_crit_edge
  %cond24 = phi i16 [ %3, %cond.false ], [ 0, %sw.bb.cond.end23_crit_edge ]
  %conv26 = trunc i32 %reg to i8
  %call27 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext %conv26, i16 noundef zeroext %cond24) #6
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp30 = icmp slt i16 %word, 0
  br i1 %cmp30, label %sw.bb28.cond.end58_crit_edge, label %cond.false33

sw.bb28.cond.end58_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end58

cond.false33:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %rlimit46 = getelementptr i8, ptr %call, i32 -4
  %4 = ptrtoint ptr %rlimit46 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rlimit46, align 4
  %6 = tail call i16 @llvm.umin.i16(i16 %word, i16 %5)
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false33, %sw.bb28.cond.end58_crit_edge
  %cond59 = phi i16 [ %6, %cond.false33 ], [ 0, %sw.bb28.cond.end58_crit_edge ]
  %call61 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -45, i16 noundef zeroext %cond59) #6
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp64 = icmp slt i16 %word, 0
  br i1 %cmp64, label %sw.bb62.cond.end92_crit_edge, label %cond.false67

sw.bb62.cond.end92_crit_edge:                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end92

cond.false67:                                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  %rlimit80 = getelementptr i8, ptr %call, i32 -4
  %7 = ptrtoint ptr %rlimit80 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rlimit80, align 4
  %9 = tail call i16 @llvm.umin.i16(i16 %word, i16 %8)
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false67, %sw.bb62.cond.end92_crit_edge
  %cond93 = phi i16 [ %9, %cond.false67 ], [ 0, %sw.bb62.cond.end92_crit_edge ]
  %call95 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -44, i16 noundef zeroext %cond93) #6
  br label %sw.epilog

sw.bb96:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp99.not = icmp eq i16 %word, 0
  %conv97 = zext i16 %word to i32
  %mul = mul nuw nsw i32 %conv97, 6140
  %add = add nuw nsw i32 %mul, 146
  %div106 = udiv i32 %add, 293
  %phi.cast318 = trunc i32 %div106 to i16
  %cond111 = select i1 %cmp99.not, i16 0, i16 %phi.cast318
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond111)
  %cmp114 = icmp slt i16 %cond111, 0
  br i1 %cmp114, label %sw.bb96.cond.end142_crit_edge, label %cond.false117

sw.bb96.cond.end142_crit_edge:                    ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end142

cond.false117:                                    ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #8
  %rlimit130 = getelementptr i8, ptr %call, i32 -4
  %10 = ptrtoint ptr %rlimit130 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rlimit130, align 4
  %12 = tail call i16 @llvm.umin.i16(i16 %cond111, i16 %11)
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false117, %sw.bb96.cond.end142_crit_edge
  %cond143 = phi i16 [ %12, %cond.false117 ], [ 0, %sw.bb96.cond.end142_crit_edge ]
  %call145 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -28, i16 noundef zeroext %cond143) #6
  br label %sw.epilog

sw.bb146:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %word)
  %cmp152.not = icmp eq i16 %word, 0
  %conv148 = zext i16 %word to i32
  %mul149 = mul nuw nsw i32 %conv148, 6140
  %add160 = add nuw nsw i32 %mul149, 146
  %div161 = udiv i32 %add160, 293
  %phi.cast315 = trunc i32 %div161 to i16
  %cond167 = select i1 %cmp152.not, i16 0, i16 %phi.cast315
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond167)
  %cmp170 = icmp slt i16 %cond167, 0
  br i1 %cmp170, label %sw.bb146.cond.end198_crit_edge, label %cond.false173

sw.bb146.cond.end198_crit_edge:                   ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end198

cond.false173:                                    ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #8
  %rlimit186 = getelementptr i8, ptr %call, i32 -4
  %13 = ptrtoint ptr %rlimit186 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rlimit186, align 4
  %15 = tail call i16 @llvm.umin.i16(i16 %cond167, i16 %14)
  br label %cond.end198

cond.end198:                                      ; preds = %cond.false173, %sw.bb146.cond.end198_crit_edge
  %cond199 = phi i16 [ %15, %cond.false173 ], [ 0, %sw.bb146.cond.end198_crit_edge ]
  %call201 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29, i16 noundef zeroext %cond199) #6
  br label %sw.epilog

sw.bb202:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call203 = tail call i32 @pmbus_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -42) #6
  br label %sw.epilog

cond.end242:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i16 @llvm.umax.i16(i16 %word, i16 1)
  %17 = tail call i16 @llvm.umin.i16(i16 %16, i16 4096)
  %18 = zext i16 %17 to i32
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #6, !range !42
  %20 = trunc i32 %19 to i8
  %conv244 = sub nsw i8 31, %20
  %call245 = tail call i32 @pmbus_write_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -37, i8 noundef zeroext %conv244) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end242, %sw.bb202, %cond.end198, %cond.end142, %cond.end92, %cond.end58, %cond.end23, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call245, %cond.end242 ], [ %call203, %sw.bb202 ], [ %call201, %cond.end198 ], [ %call145, %cond.end142 ], [ %call95, %cond.end92 ], [ %call61, %cond.end58 ], [ %call27, %cond.end23 ], [ -61, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_lm25066__312_561_lm25066_driver_init6, !1, !"__initcall__kmod_lm25066__312_561_lm25066_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 561, i32 1}
!2 = !{ptr @__exitcall_lm25066_driver_exit, !1, !"__exitcall_lm25066_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 563, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 564, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 565, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns317, !11, !"__UNIQUE_ID_import_ns317", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 566, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 554, i32 14}
!14 = !{ptr @lm25066_driver, !15, !"lm25066_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 552, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 485, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lm25066_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lm25066_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 542, i32 48}
!26 = !{ptr @lm25066_coeff, !27, !"lm25066_coeff", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 55, i32 29}
!28 = !{ptr @lm25066_of_match, !29, !"lm25066_of_match", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 448, i32 49}
!30 = !{ptr @lm25066_id, !31, !"lm25066_id", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/lm25066.c", i32 438, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i32 0, i32 33}
