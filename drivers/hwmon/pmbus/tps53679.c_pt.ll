; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/tps53679.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/tps53679.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_tps53679__288_306_tps53679_driver_init6 = internal global ptr @tps53679_driver_init, section ".initcall6.init", align 4
@tps53679_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @tps53679_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps53679_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps53679_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps53679_driver_exit = internal global ptr @tps53679_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"tps53679.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps53679.description=PMBus driver for Texas Instruments TPS53679\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"tps53679.file=drivers/hwmon/pmbus/tps53679\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"tps53679.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [25 x i8] c"tps53679.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps53679\00", [23 x i8] zeroinitializer }, align 32
@tps53679_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps53647\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps53667\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps53676\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps53679\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps53681\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps53688\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@tps53679_id = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bmr474\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tps53647\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps53667\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tps53676\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tps53679\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tps53681\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tps53688\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tps53679_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 0, [32 x i8] zeroinitializer, [8 x i32] [i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, <{ i32, i32, [30 x i32] }> <{ i32 62077, i32 45652, [30 x i32] zeroinitializer }>, [10 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 0, i32 0, i32 0], ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TISg`\00", [26 x i8] zeroinitializer }, align 32
@tps53676_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 160, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected device ID: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps53676_identify\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/pmbus/tps53679.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps53676_identify._entry_ptr = internal global ptr @tps53676_identify._entry, section ".printk_index", align 4
@tps53679_identify_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 98, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected PMBus revision 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps53679_identify_chip\00", [41 x i8] zeroinitializer }, align 32
@tps53679_identify_chip._entry_ptr = internal global ptr @tps53679_identify_chip._entry, section ".printk_index", align 4
@tps53679_identify_chip._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 106, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected device ID 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@tps53679_identify_chip._entry_ptr.12 = internal global ptr @tps53679_identify_chip._entry.10, section ".printk_index", align 4
@switch.table.tps53679_identify = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 2, i32 2, i32 1, i32 2, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.tps53681_identify = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 2, i32 2, i32 1, i32 2, i32 1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"tps53679_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 297, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 299, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"tps53679_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 286, i32 49 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"tps53679_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 273, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"tps53679_info\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 206, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 159, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 160, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 98, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [34 x i8] c"../drivers/hwmon/pmbus/tps53679.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 106, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"switch.table.tps53679_identify\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [31 x i8] c"switch.table.tps53681_identify\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps53679_driver_exit, ptr @__initcall__kmod_tps53679__288_306_tps53679_driver_init6, ptr @tps53676_identify._entry, ptr @tps53676_identify._entry_ptr, ptr @tps53679_driver_exit, ptr @tps53679_identify_chip._entry, ptr @tps53679_identify_chip._entry.10, ptr @tps53679_identify_chip._entry_ptr, ptr @tps53679_identify_chip._entry_ptr.12, ptr @tps53679_driver, ptr @.str, ptr @tps53679_of_match, ptr @tps53679_id, ptr @tps53679_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @switch.table.tps53679_identify, ptr @switch.table.tps53681_identify], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53679_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53679_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53679_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53679_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53676_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53679_identify_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps53679_identify_chip._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps53679_identify to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps53681_identify to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps53679_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps53679_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps53679_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tps53679_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps53679_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %2 = ptrtoint ptr %call to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @i2c_match_id(ptr noundef nonnull @tps53679_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chip_id.0 = phi i32 [ %2, %if.then ], [ %4, %if.else ]
  %call3 = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef nonnull @tps53679_info, i32 noundef 492, i32 noundef 3264) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = zext i32 %chip_id.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %chip_id.0, label %if.end6.cleanup_crit_edge [
    i32 0, label %if.end6.sw.bb_crit_edge
    i32 1, label %if.end6.sw.bb_crit_edge32
    i32 2, label %sw.bb7
    i32 3, label %if.end6.sw.bb9_crit_edge
    i32 5, label %if.end6.sw.bb9_crit_edge33
    i32 4, label %sw.bb12
  ]

if.end6.sw.bb9_crit_edge33:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb_crit_edge32:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge32
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call3, align 4
  %identify = getelementptr inbounds %struct.pmbus_driver_info, ptr %call3, i32 0, i32 13
  %7 = ptrtoint ptr %identify to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tps53679_identify, ptr %identify, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %identify8 = getelementptr inbounds %struct.pmbus_driver_info, ptr %call3, i32 0, i32 13
  %8 = ptrtoint ptr %identify8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tps53676_identify, ptr %identify8, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6.sw.bb9_crit_edge, %if.end6.sw.bb9_crit_edge33
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %call3, align 4
  %identify11 = getelementptr inbounds %struct.pmbus_driver_info, ptr %call3, i32 0, i32 13
  %10 = ptrtoint ptr %identify11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tps53679_identify, ptr %identify11, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %call3, align 4
  %phases = getelementptr inbounds %struct.pmbus_driver_info, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %phases to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %phases, align 4
  %identify14 = getelementptr inbounds %struct.pmbus_driver_info, ptr %call3, i32 0, i32 13
  %13 = ptrtoint ptr %identify14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tps53681_identify, ptr %identify14, align 4
  %read_word_data = getelementptr inbounds %struct.pmbus_driver_info, ptr %call3, i32 0, i32 10
  %14 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tps53681_read_word_data, ptr %read_word_data, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb9, %sw.bb7, %sw.bb
  %call15 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.epilog ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps53679_identify(ptr noundef %client, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.i = icmp sgt i32 %1, 0
  br i1 %cmp16.i, label %entry.for.body.i_crit_edge, label %entry.tps53679_identify_mode.exit_crit_edge

entry.tps53679_identify_mode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_mode.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %switch.lookup.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %switch.lookup.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %i.017.i, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.body.i.tps53679_identify_mode.exit_crit_edge, label %if.end.i

for.body.i.tps53679_identify_mode.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_mode.exit

if.end.i:                                         ; preds = %for.body.i
  %conv.i = and i32 %call.i, 31
  %switch.tableidx = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.hole_check, label %if.end.i.tps53679_identify_mode.exit_crit_edge

if.end.i.tps53679_identify_mode.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_mode.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 91, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.tps53679_identify_mode.exit_crit_edge, label %switch.lookup

switch.hole_check.tps53679_identify_mode.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_mode.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.tps53679_identify, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 %i.017.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.load, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %switch.lookup.for.body.i_crit_edge, label %switch.lookup.tps53679_identify_mode.exit_crit_edge

switch.lookup.tps53679_identify_mode.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_mode.exit

switch.lookup.for.body.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tps53679_identify_mode.exit:                      ; preds = %switch.lookup.tps53679_identify_mode.exit_crit_edge, %switch.hole_check.tps53679_identify_mode.exit_crit_edge, %if.end.i.tps53679_identify_mode.exit_crit_edge, %for.body.i.tps53679_identify_mode.exit_crit_edge, %entry.tps53679_identify_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.tps53679_identify_mode.exit_crit_edge ], [ -22, %switch.hole_check.tps53679_identify_mode.exit_crit_edge ], [ %call.i, %for.body.i.tps53679_identify_mode.exit_crit_edge ], [ -22, %if.end.i.tps53679_identify_mode.exit_crit_edge ], [ 0, %switch.lookup.tps53679_identify_mode.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps53676_identify(ptr noundef %client, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 10
  %10 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 11
  %11 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 12
  %12 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 13
  %13 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %call = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -83, ptr noundef nonnull %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef nonnull dereferenceable(5) %buf, i32 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull %buf) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -77, ptr noundef nonnull %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call7)
  %cmp11.not = icmp eq i32 %call7, 24
  br i1 %cmp11.not, label %for.body.preheader, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end10
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool15.not = icmp sgt i8 %15, -1
  br i1 %tobool15.not, label %for.body.preheader.for.inc_crit_edge, label %if.then16

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then16:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  %18 = and i8 %17, 8
  %.lobit = lshr exact i8 %18, 3
  %19 = xor i8 %.lobit, 1
  %20 = zext i8 %19 to i32
  %.lobit69 = lshr exact i8 %18, 3
  %21 = zext i8 %.lobit69 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.preheader.for.inc_crit_edge
  %phases_a.1 = phi i32 [ 0, %for.body.preheader.for.inc_crit_edge ], [ %20, %if.then16 ]
  %phases_b.1 = phi i32 [ 0, %for.body.preheader.for.inc_crit_edge ], [ %21, %if.then16 ]
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool15.not.1 = icmp sgt i8 %23, -1
  br i1 %tobool15.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then16.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then16.1:                                      ; preds = %for.inc
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %26 = and i8 %25, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool20.not.1 = icmp eq i8 %26, 0
  br i1 %tobool20.not.1, label %if.else.1, label %if.then21.1

if.then21.1:                                      ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #8
  %inc.1 = add nuw nsw i32 %phases_b.1, 1
  br label %for.inc.1

if.else.1:                                        ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.1 = add nuw nsw i32 %phases_a.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then21.1, %for.inc.for.inc.1_crit_edge
  %phases_a.1.1 = phi i32 [ %phases_a.1, %if.then21.1 ], [ %inc22.1, %if.else.1 ], [ %phases_a.1, %for.inc.for.inc.1_crit_edge ]
  %phases_b.1.1 = phi i32 [ %inc.1, %if.then21.1 ], [ %phases_b.1, %if.else.1 ], [ %phases_b.1, %for.inc.for.inc.1_crit_edge ]
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool15.not.2 = icmp sgt i8 %28, -1
  br i1 %tobool15.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then16.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then16.2:                                      ; preds = %for.inc.1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %31 = and i8 %30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not.2 = icmp eq i8 %31, 0
  br i1 %tobool20.not.2, label %if.else.2, label %if.then21.2

if.then21.2:                                      ; preds = %if.then16.2
  call void @__sanitizer_cov_trace_pc() #8
  %inc.2 = add nuw nsw i32 %phases_b.1.1, 1
  br label %for.inc.2

if.else.2:                                        ; preds = %if.then16.2
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.2 = add nuw nsw i32 %phases_a.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then21.2, %for.inc.1.for.inc.2_crit_edge
  %phases_a.1.2 = phi i32 [ %phases_a.1.1, %if.then21.2 ], [ %inc22.2, %if.else.2 ], [ %phases_a.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %phases_b.1.2 = phi i32 [ %inc.2, %if.then21.2 ], [ %phases_b.1.1, %if.else.2 ], [ %phases_b.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %tobool15.not.3 = icmp sgt i8 %33, -1
  br i1 %tobool15.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then16.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then16.3:                                      ; preds = %for.inc.2
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool20.not.3 = icmp eq i8 %36, 0
  br i1 %tobool20.not.3, label %if.else.3, label %if.then21.3

if.then21.3:                                      ; preds = %if.then16.3
  call void @__sanitizer_cov_trace_pc() #8
  %inc.3 = add nuw nsw i32 %phases_b.1.2, 1
  br label %for.inc.3

if.else.3:                                        ; preds = %if.then16.3
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.3 = add nuw nsw i32 %phases_a.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %if.then21.3, %for.inc.2.for.inc.3_crit_edge
  %phases_a.1.3 = phi i32 [ %phases_a.1.2, %if.then21.3 ], [ %inc22.3, %if.else.3 ], [ %phases_a.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %phases_b.1.3 = phi i32 [ %inc.3, %if.then21.3 ], [ %phases_b.1.2, %if.else.3 ], [ %phases_b.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool15.not.4 = icmp sgt i8 %38, -1
  br i1 %tobool15.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then16.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then16.4:                                      ; preds = %for.inc.3
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %7, align 1
  %41 = and i8 %40, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool20.not.4 = icmp eq i8 %41, 0
  br i1 %tobool20.not.4, label %if.else.4, label %if.then21.4

if.then21.4:                                      ; preds = %if.then16.4
  call void @__sanitizer_cov_trace_pc() #8
  %inc.4 = add nuw nsw i32 %phases_b.1.3, 1
  br label %for.inc.4

if.else.4:                                        ; preds = %if.then16.4
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.4 = add nuw nsw i32 %phases_a.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %if.then21.4, %for.inc.3.for.inc.4_crit_edge
  %phases_a.1.4 = phi i32 [ %phases_a.1.3, %if.then21.4 ], [ %inc22.4, %if.else.4 ], [ %phases_a.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %phases_b.1.4 = phi i32 [ %inc.4, %if.then21.4 ], [ %phases_b.1.3, %if.else.4 ], [ %phases_b.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %tobool15.not.5 = icmp sgt i8 %43, -1
  br i1 %tobool15.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then16.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then16.5:                                      ; preds = %for.inc.4
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %9, align 1
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool20.not.5 = icmp eq i8 %46, 0
  br i1 %tobool20.not.5, label %if.else.5, label %if.then21.5

if.then21.5:                                      ; preds = %if.then16.5
  call void @__sanitizer_cov_trace_pc() #8
  %inc.5 = add nuw nsw i32 %phases_b.1.4, 1
  br label %for.inc.5

if.else.5:                                        ; preds = %if.then16.5
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.5 = add nuw nsw i32 %phases_a.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %if.then21.5, %for.inc.4.for.inc.5_crit_edge
  %phases_a.1.5 = phi i32 [ %phases_a.1.4, %if.then21.5 ], [ %inc22.5, %if.else.5 ], [ %phases_a.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %phases_b.1.5 = phi i32 [ %inc.5, %if.then21.5 ], [ %phases_b.1.4, %if.else.5 ], [ %phases_b.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool15.not.6 = icmp sgt i8 %48, -1
  br i1 %tobool15.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then16.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then16.6:                                      ; preds = %for.inc.5
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %11, align 1
  %51 = and i8 %50, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool20.not.6 = icmp eq i8 %51, 0
  br i1 %tobool20.not.6, label %if.else.6, label %for.inc.6.thread

for.inc.6.thread:                                 ; preds = %if.then16.6
  call void @__sanitizer_cov_trace_pc() #8
  %inc.6 = add nuw nsw i32 %phases_b.1.5, 1
  %arrayidx2663 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx2663 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx2663, align 4
  %conv2764 = trunc i32 %phases_a.1.5 to i8
  %phases65 = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 1
  %53 = ptrtoint ptr %phases65 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv2764, ptr %phases65, align 4
  br label %if.then31

if.else.6:                                        ; preds = %if.then16.6
  call void @__sanitizer_cov_trace_pc() #8
  %inc22.6 = add nuw nsw i32 %phases_a.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %for.inc.5.for.inc.6_crit_edge
  %phases_a.1.6 = phi i32 [ %inc22.6, %if.else.6 ], [ %phases_a.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx26 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx26, align 4
  %55 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %info, align 4
  %conv27 = trunc i32 %phases_a.1.6 to i8
  %phases = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 1
  %56 = ptrtoint ptr %phases to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv27, ptr %phases, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phases_b.1.5)
  %cmp29.not = icmp eq i32 %phases_b.1.5, 0
  br i1 %cmp29.not, label %for.inc.6.cleanup_crit_edge, label %for.inc.6.if.then31_crit_edge

for.inc.6.if.then31_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %for.inc.6.if.then31_crit_edge, %for.inc.6.thread
  %phases_b.1.667 = phi i32 [ %inc.6, %for.inc.6.thread ], [ %phases_b.1.5, %for.inc.6.if.then31_crit_edge ]
  %57 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %info, align 4
  %conv33 = trunc i32 %phases_b.1.667 to i8
  %arrayidx35 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv33, ptr %arrayidx35, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %for.inc.6.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ -5, %if.end10.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %for.inc.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps53681_identify(ptr noundef %client, ptr nocapture noundef %info) #2 align 64 {
entry:
  %buf.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i.i) #6
  %0 = call ptr @memset(ptr %buf.i.i, i32 255, i32 32)
  %call.i.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.tps53679_identify_chip.exit.thread.i_crit_edge, label %if.end.i.i

entry.tps53679_identify_chip.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_chip.exit.thread.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %call.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, 51
  br i1 %cmp1.not.i.i, label %if.end4.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.8, i32 noundef %call.i.i) #10
  br label %tps53679_identify_chip.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -83, ptr noundef nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.end4.i.i.tps53679_identify_chip.exit.thread.i_crit_edge, label %if.end9.i.i

if.end4.i.i.tps53679_identify_chip.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_chip.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5.i.i)
  %cmp10.not.i.i = icmp eq i32 %call5.i.i, 1
  br i1 %cmp10.not.i.i, label %lor.lhs.false.i.i, label %if.end9.i.i.do.end19.i.i_crit_edge

if.end9.i.i.do.end19.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i.i

lor.lhs.false.i.i:                                ; preds = %if.end9.i.i
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %2)
  %cmp14.not.i.i = icmp eq i8 %2, -127
  br i1 %cmp14.not.i.i, label %if.end.i, label %lor.lhs.false.i.i.do.end19.i.i_crit_edge

lor.lhs.false.i.i.do.end19.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i.i

do.end19.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end19.i.i_crit_edge, %if.end9.i.i.do.end19.i.i_crit_edge
  %dev20.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.i.i, align 1
  %conv22.i.i = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv22.i.i) #10
  br label %tps53679_identify_chip.exit.thread.i

tps53679_identify_chip.exit.thread.i:             ; preds = %do.end19.i.i, %if.end4.i.i.tps53679_identify_chip.exit.thread.i_crit_edge, %do.end.i.i, %entry.tps53679_identify_chip.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call5.i.i, %if.end4.i.i.tps53679_identify_chip.exit.thread.i_crit_edge ], [ %call.i.i, %entry.tps53679_identify_chip.exit.thread.i_crit_edge ], [ -19, %do.end19.i.i ], [ -19, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i.i) #6
  br label %tps53679_identify_multiphase.exit

if.end.i:                                         ; preds = %lor.lhs.false.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i.i) #6
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp16.i.i = icmp sgt i32 %6, 0
  br i1 %cmp16.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %switch.lookup.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.017.i.i = phi i32 [ %inc.i.i, %switch.lookup.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %call.i1.i = call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %i.017.i.i, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp1.i.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i.tps53679_identify_multiphase.exit_crit_edge, label %if.end.i2.i

for.body.i.i.tps53679_identify_multiphase.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_multiphase.exit

if.end.i2.i:                                      ; preds = %for.body.i.i
  %conv.i.i = and i32 %call.i1.i, 31
  %switch.tableidx = add nsw i32 %conv.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 7
  br i1 %7, label %switch.hole_check, label %if.end.i2.i.tps53679_identify_multiphase.exit_crit_edge

if.end.i2.i.tps53679_identify_multiphase.exit_crit_edge: ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_multiphase.exit

switch.hole_check:                                ; preds = %if.end.i2.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 91, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.tps53679_identify_multiphase.exit_crit_edge, label %switch.lookup

switch.hole_check.tps53679_identify_multiphase.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_multiphase.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.tps53681_identify, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 %i.017.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  %cmp.i3.i = icmp slt i32 %inc.i.i, %12
  br i1 %cmp.i3.i, label %switch.lookup.for.body.i.i_crit_edge, label %switch.lookup.if.end7.i_crit_edge

switch.lookup.if.end7.i_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

switch.lookup.for.body.i.i_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end7.i:                                        ; preds = %switch.lookup.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %call.i5.i = call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp.i6.i = icmp slt i32 %call.i5.i, 0
  br i1 %cmp.i6.i, label %if.end7.i.tps53679_identify_multiphase.exit_crit_edge, label %if.end.i8.i

if.end7.i.tps53679_identify_multiphase.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tps53679_identify_multiphase.exit

if.end.i8.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = trunc i32 %call.i5.i to i8
  %14 = and i8 %13, 7
  %conv.i7.i = add nuw nsw i8 %14, 1
  %phases.i.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %phases.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i7.i, ptr %phases.i.i, align 4
  br label %tps53679_identify_multiphase.exit

tps53679_identify_multiphase.exit:                ; preds = %if.end.i8.i, %if.end7.i.tps53679_identify_multiphase.exit_crit_edge, %switch.hole_check.tps53679_identify_multiphase.exit_crit_edge, %if.end.i2.i.tps53679_identify_multiphase.exit_crit_edge, %for.body.i.i.tps53679_identify_multiphase.exit_crit_edge, %tps53679_identify_chip.exit.thread.i
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %tps53679_identify_chip.exit.thread.i ], [ 0, %if.end.i8.i ], [ %call.i5.i, %if.end7.i.tps53679_identify_multiphase.exit_crit_edge ], [ -22, %switch.hole_check.tps53679_identify_multiphase.exit_crit_edge ], [ %call.i1.i, %for.body.i.i.tps53679_identify_multiphase.exit_crit_edge ], [ -22, %if.end.i2.i.tps53679_identify_multiphase.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps53681_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %reg)
  %cmp = icmp eq i32 %reg, 140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp1 = icmp eq i32 %page, 0
  %or.cond = and i1 %cmp1, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %phase)
  %cmp3 = icmp eq i32 %phase, 255
  %or.cond6 = and i1 %cmp3, %or.cond
  br i1 %or.cond6, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 128, i8 noundef zeroext -116) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -61, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_tps53679__288_306_tps53679_driver_init6, !1, !"__initcall__kmod_tps53679__288_306_tps53679_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 306, i32 1}
!2 = !{ptr @__exitcall_tps53679_driver_exit, !1, !"__exitcall_tps53679_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 308, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 309, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 310, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 311, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 299, i32 11}
!14 = !{ptr @tps53679_driver, !15, !"tps53679_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 297, i32 26}
!16 = !{ptr @tps53679_info, !17, !"tps53679_info", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 206, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 159, i32 14}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 160, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tps53676_identify._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tps53676_identify._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 98, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tps53679_identify_chip._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @tps53679_identify_chip._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 106, i32 3}
!35 = !{ptr @tps53679_identify_chip._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tps53679_identify_chip._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @tps53679_of_match, !38, !"tps53679_of_match", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 286, i32 49}
!39 = !{ptr @tps53679_id, !40, !"tps53679_id", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/pmbus/tps53679.c", i32 273, i32 35}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
