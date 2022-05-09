; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/adm1275.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/adm1275.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.coefficients = type { i16, i16, i16 }
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
%struct.adm1275_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_adm1275__296_801_adm1275_driver_init6 = internal global ptr @adm1275_driver_init, section ".initcall6.init", align 4
@adm1275_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @adm1275_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm1275_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm1275_driver_exit = internal global ptr @adm1275_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [29 x i8] c"adm1275.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [76 x i8] c"adm1275.description=PMBus driver for Analog Devices ADM1275 and compatibles\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [41 x i8] c"adm1275.file=drivers/hwmon/pmbus/adm1275\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [20 x i8] c"adm1275.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns301 = internal constant [24 x i8] c"adm1275.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1275\00", [24 x i8] zeroinitializer }, align 32
@adm1275_id = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1075\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adm1272\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adm1275\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"adm1276\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"adm1278\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"adm1293\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"adm1294\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@adm1275_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 486, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read Manufacturer ID\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adm1275_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/adm1275.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr = internal global ptr @adm1275_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADI\00", [28 x i8] zeroinitializer }, align 32
@adm1275_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported Manufacturer ID\0A\00", [35 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.9 = internal global ptr @adm1275_probe._entry.7, section ".printk_index", align 4
@adm1275_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read Manufacturer Model\0A\00", [61 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.12 = internal global ptr @adm1275_probe._entry.10, section ".printk_index", align 4
@adm1275_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.15 = internal global ptr @adm1275_probe._entry.13, section ".printk_index", align 4
@adm1275_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device mismatch: Configured %s, detected %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.19 = internal global ptr @adm1275_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@adm1075_coefficients = internal constant { [5 x %struct.coefficients], [34 x i8] } { [5 x %struct.coefficients] [%struct.coefficients { i16 27169, i16 0, i16 -1 }, %struct.coefficients { i16 806, i16 20475, i16 -1 }, %struct.coefficients { i16 404, i16 20475, i16 -1 }, %struct.coefficients { i16 8549, i16 0, i16 -1 }, %struct.coefficients { i16 4279, i16 0, i16 -1 }], [34 x i8] zeroinitializer }, align 32
@adm1275_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid input current range\00", [36 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.23 = internal global ptr @adm1275_probe._entry.21, section ".printk_index", align 4
@adm1272_coefficients = internal constant { [9 x %struct.coefficients], [42 x i8] } { [9 x %struct.coefficients] [%struct.coefficients { i16 6770, i16 0, i16 -2 }, %struct.coefficients { i16 4062, i16 0, i16 -2 }, %struct.coefficients { i16 1326, i16 20480, i16 -1 }, %struct.coefficients { i16 663, i16 20480, i16 -1 }, %struct.coefficients { i16 3512, i16 0, i16 -2 }, %struct.coefficients { i16 21071, i16 0, i16 -3 }, %struct.coefficients { i16 17561, i16 0, i16 -3 }, %struct.coefficients { i16 10535, i16 0, i16 -3 }, %struct.coefficients { i16 42, i16 31871, i16 -1 }], [42 x i8] zeroinitializer }, align 32
@adm1275_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 626, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable VOUT monitoring\0A\00", [62 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.26 = internal global ptr @adm1275_probe._entry.24, section ".printk_index", align 4
@adm1275_coefficients = internal constant { [3 x %struct.coefficients], [46 x i8] } { [3 x %struct.coefficients] [%struct.coefficients { i16 19199, i16 0, i16 -2 }, %struct.coefficients { i16 6720, i16 0, i16 -1 }, %struct.coefficients { i16 807, i16 20475, i16 -1 }], [46 x i8] zeroinitializer }, align 32
@adm1276_coefficients = internal constant { [5 x %struct.coefficients], [34 x i8] } { [5 x %struct.coefficients] [%struct.coefficients { i16 19199, i16 0, i16 -2 }, %struct.coefficients { i16 6720, i16 0, i16 -1 }, %struct.coefficients { i16 807, i16 20475, i16 -1 }, %struct.coefficients { i16 6043, i16 0, i16 -2 }, %struct.coefficients { i16 2115, i16 0, i16 -1 }], [34 x i8] zeroinitializer }, align 32
@adm1278_coefficients = internal constant { [4 x %struct.coefficients], [40 x i8] } { [4 x %struct.coefficients] [%struct.coefficients { i16 19599, i16 0, i16 -2 }, %struct.coefficients { i16 800, i16 20475, i16 -1 }, %struct.coefficients { i16 6123, i16 0, i16 -2 }, %struct.coefficients { i16 42, i16 31880, i16 -1 }], [40 x i8] zeroinitializer }, align 32
@adm1275_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.28 = internal global ptr @adm1275_probe._entry.27, section ".printk_index", align 4
@adm1293_coefficients = internal constant { [19 x %struct.coefficients], [46 x i8] } { [19 x %struct.coefficients] [%struct.coefficients { i16 3333, i16 -1, i16 0 }, %struct.coefficients { i16 5552, i16 -5, i16 -1 }, %struct.coefficients { i16 19604, i16 -50, i16 -2 }, %struct.coefficients { i16 8000, i16 -100, i16 -2 }, %struct.coefficients { i16 4000, i16 -100, i16 -2 }, %struct.coefficients { i16 20000, i16 -1000, i16 -3 }, %struct.coefficients { i16 10000, i16 -1000, i16 -3 }, %struct.coefficients { i16 10417, i16 0, i16 -1 }, %struct.coefficients { i16 5208, i16 0, i16 -1 }, %struct.coefficients { i16 26042, i16 0, i16 -2 }, %struct.coefficients { i16 13021, i16 0, i16 -2 }, %struct.coefficients { i16 17351, i16 0, i16 -2 }, %struct.coefficients { i16 8676, i16 0, i16 -2 }, %struct.coefficients { i16 4338, i16 0, i16 -2 }, %struct.coefficients { i16 21689, i16 0, i16 -3 }, %struct.coefficients { i16 6126, i16 0, i16 -2 }, %struct.coefficients { i16 30631, i16 0, i16 -3 }, %struct.coefficients { i16 15316, i16 0, i16 -3 }, %struct.coefficients { i16 7658, i16 0, i16 -3 }], [46 x i8] zeroinitializer }, align 32
@adm1275_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@adm1275_probe._entry_ptr.30 = internal global ptr @adm1275_probe._entry.29, section ".printk_index", align 4
@switch.table.adm1275_probe = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @i2c_smbus_read_word_data, ptr @i2c_smbus_read_byte_data, ptr @i2c_smbus_read_byte_data, ptr @i2c_smbus_read_word_data, ptr @i2c_smbus_read_word_data, ptr @i2c_smbus_read_word_data], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 32, i64 33]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.34 = internal global [22 x i64] [i64 20, i64 32, i64 66, i64 67, i64 70, i64 75, i64 139, i64 259, i64 260, i64 263, i64 264, i64 270, i64 271, i64 272, i64 279, i64 280, i64 282, i64 283, i64 284, i64 308, i64 309, i64 310]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 122, i64 123]
@__sancov_gen_cov_switch_values.36 = internal global [12 x i64] [i64 10, i64 32, i64 70, i64 75, i64 260, i64 264, i64 272, i64 280, i64 284, i64 308, i64 309, i64 310]
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"adm1275_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 793, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 795, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"adm1275_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 453, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 486, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 489, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 490, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 496, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 504, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 509, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 532, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"adm1075_coefficients\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 109, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 576, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"adm1272_coefficients\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 117, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 625, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"adm1275_coefficients\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 130, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"adm1276_coefficients\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 136, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"adm1278_coefficients\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 144, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 694, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"adm1293_coefficients\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 151, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private constant [33 x i8] c"../drivers/hwmon/pmbus/adm1275.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 755, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"switch.table.adm1275_probe\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_import_ns301, ptr @__UNIQUE_ID_license300, ptr @__exitcall_adm1275_driver_exit, ptr @__initcall__kmod_adm1275__296_801_adm1275_driver_init6, ptr @adm1275_driver_exit, ptr @adm1275_probe._entry, ptr @adm1275_probe._entry.10, ptr @adm1275_probe._entry.13, ptr @adm1275_probe._entry.16, ptr @adm1275_probe._entry.21, ptr @adm1275_probe._entry.24, ptr @adm1275_probe._entry.27, ptr @adm1275_probe._entry.29, ptr @adm1275_probe._entry.7, ptr @adm1275_probe._entry_ptr, ptr @adm1275_probe._entry_ptr.12, ptr @adm1275_probe._entry_ptr.15, ptr @adm1275_probe._entry_ptr.19, ptr @adm1275_probe._entry_ptr.23, ptr @adm1275_probe._entry_ptr.26, ptr @adm1275_probe._entry_ptr.28, ptr @adm1275_probe._entry_ptr.30, ptr @adm1275_probe._entry_ptr.9, ptr @adm1275_driver, ptr @.str, ptr @adm1275_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @adm1075_coefficients, ptr @.str.22, ptr @adm1272_coefficients, ptr @.str.25, ptr @adm1275_coefficients, ptr @adm1276_coefficients, ptr @adm1278_coefficients, ptr @adm1293_coefficients, ptr @switch.table.adm1275_probe], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1075_coefficients to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1272_coefficients to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_coefficients to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1276_coefficients to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1278_coefficients to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1293_coefficients to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1275_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adm1275_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1275_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm1275_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm1275_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adm1275_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1275_probe(ptr noundef %client) #2 align 64 {
entry:
  %block_buffer = alloca [33 x i8], align 1
  %shunt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %block_buffer) #9
  %0 = call ptr @memset(ptr %block_buffer, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shunt) #9
  %1 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %shunt, align 4, !annotation !82
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #9
  %and.i = and i32 %call.i.i, 50855936
  call void @__sanitizer_cov_trace_const_cmp4(i32 50855936, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 50855936
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -103, ptr noundef nonnull %block_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp4.not = icmp eq i32 %call1, 3
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end3.do.end11_crit_edge

if.end3.do.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

lor.lhs.false:                                    ; preds = %if.end3
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %block_buffer, ptr noundef nonnull dereferenceable(3) @.str.6, i32 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.end13, label %lor.lhs.false.do.end11_crit_edge

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %if.end3.do.end11_crit_edge
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %call15 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %block_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end13
  %call29 = call i32 @strlen(ptr noundef nonnull @adm1275_id) #13
  %call30 = call i32 @strncasecmp(ptr noundef nonnull @adm1275_id, ptr noundef nonnull %block_buffer, i32 noundef %call29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.body.preheader.if.end42_crit_edge, label %for.inc

for.body.preheader.if.end42_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.11) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call29.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 1)) #13
  %call30.1 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 1), ptr noundef nonnull %block_buffer, i32 noundef %call29.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.1)
  %tobool31.not.1 = icmp eq i32 %call30.1, 0
  br i1 %tobool31.not.1, label %for.inc.if.end42_crit_edge, label %for.inc.1

for.inc.if.end42_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.inc.1:                                        ; preds = %for.inc
  %call29.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 2)) #13
  %call30.2 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 2), ptr noundef nonnull %block_buffer, i32 noundef %call29.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.2)
  %tobool31.not.2 = icmp eq i32 %call30.2, 0
  br i1 %tobool31.not.2, label %for.inc.1.if.end42_crit_edge, label %for.inc.2

for.inc.1.if.end42_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.inc.2:                                        ; preds = %for.inc.1
  %call29.3 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 3)) #13
  %call30.3 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 3), ptr noundef nonnull %block_buffer, i32 noundef %call29.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.3)
  %tobool31.not.3 = icmp eq i32 %call30.3, 0
  br i1 %tobool31.not.3, label %for.inc.2.if.end42_crit_edge, label %for.inc.3

for.inc.2.if.end42_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.inc.3:                                        ; preds = %for.inc.2
  %call29.4 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 4)) #13
  %call30.4 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 4), ptr noundef nonnull %block_buffer, i32 noundef %call29.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.4)
  %tobool31.not.4 = icmp eq i32 %call30.4, 0
  br i1 %tobool31.not.4, label %for.inc.3.if.end42_crit_edge, label %for.inc.4

for.inc.3.if.end42_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.inc.4:                                        ; preds = %for.inc.3
  %call29.5 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 5)) #13
  %call30.5 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 5), ptr noundef nonnull %block_buffer, i32 noundef %call29.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.5)
  %tobool31.not.5 = icmp eq i32 %call30.5, 0
  br i1 %tobool31.not.5, label %for.inc.4.if.end42_crit_edge, label %for.inc.5

for.inc.4.if.end42_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.inc.5:                                        ; preds = %for.inc.4
  %call29.6 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 6)) #13
  %call30.6 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 6), ptr noundef nonnull %block_buffer, i32 noundef %call29.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.6)
  %tobool31.not.6 = icmp eq i32 %call30.6, 0
  br i1 %tobool31.not.6, label %for.inc.5.if.end42_crit_edge, label %for.inc.6

for.inc.5.if.end42_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end42:                                         ; preds = %for.inc.5.if.end42_crit_edge, %for.inc.4.if.end42_crit_edge, %for.inc.3.if.end42_crit_edge, %for.inc.2.if.end42_crit_edge, %for.inc.1.if.end42_crit_edge, %for.inc.if.end42_crit_edge, %for.body.preheader.if.end42_crit_edge
  %mid.0599.lcssa = phi ptr [ @adm1275_id, %for.body.preheader.if.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 1), %for.inc.if.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 2), %for.inc.1.if.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 3), %for.inc.2.if.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 4), %for.inc.3.if.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 5), %for.inc.4.if.end42_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @adm1275_id, i32 0, i32 6), %for.inc.5.if.end42_crit_edge ]
  %name43 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call47 = call i32 @strcmp(ptr noundef %name43, ptr noundef nonnull %mid.0599.lcssa) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end42.if.end58_crit_edge, label %do.end52

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.end52:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev53, ptr noundef nonnull @.str.17, ptr noundef %name43, ptr noundef %mid.0599.lcssa) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.end42.if.end58_crit_edge
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0599.lcssa, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 6
  br i1 %10, label %switch.lookup, label %if.end58.if.end70_crit_edge

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

switch.lookup:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.adm1275_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end70

if.end70:                                         ; preds = %switch.lookup, %if.end58.if.end70_crit_edge
  %config_read_fn.0 = phi ptr [ %switch.load, %switch.lookup ], [ @i2c_smbus_read_byte_data, %if.end58.if.end70_crit_edge ]
  %call71 = call i32 %config_read_fn.0(ptr noundef %client, i8 noundef zeroext -44) #9, !callees !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.cleanup_crit_edge, label %if.end74

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %call75 = call i32 %config_read_fn.0(ptr noundef %client, i8 noundef zeroext -40) #9, !callees !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.cleanup_crit_edge, label %if.end78

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %dev79 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev79, i32 noundef 508, i32 noundef 3520) #9
  %tobool81.not = icmp eq ptr %call.i, null
  br i1 %tobool81.not, label %if.end78.cleanup_crit_edge, label %if.end83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83:                                         ; preds = %if.end78
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i555 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef nonnull %shunt, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i555)
  %tobool86.not = icmp sgt i32 %call.i.i555, -1
  br i1 %tobool86.not, label %if.end88, label %if.end88.thread

if.end88.thread:                                  ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1000, ptr %shunt, align 4
  br label %if.end91

if.end88:                                         ; preds = %if.end83
  %15 = ptrtoint ptr %shunt to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %shunt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp89 = icmp eq i32 %.pr, 0
  br i1 %cmp89, label %if.end88.cleanup_crit_edge, label %if.end88.if.end91_crit_edge

if.end88.if.end91_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %if.end88.if.end91_crit_edge, %if.end88.thread
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call.i, align 4
  %info93 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11
  %19 = ptrtoint ptr %info93 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %info93, align 4
  %format = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %format, align 4
  %arrayidx96 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx96, align 4
  %arrayidx98 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx98, align 4
  %arrayidx100 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 2, i32 4
  %23 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx100, align 4
  %arrayidx102 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx102, align 4
  %func = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 7
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4202512, ptr %func, align 4
  %read_word_data = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 10
  %26 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @adm1275_read_word_data, ptr %read_word_data, align 4
  %read_byte_data = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 9
  %27 = ptrtoint ptr %read_byte_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @adm1275_read_byte_data, ptr %read_byte_data, align 4
  %write_word_data = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 11
  %28 = ptrtoint ptr %write_word_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @adm1275_write_word_data, ptr %write_word_data, align 4
  %29 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end276 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb125
    i32 2, label %sw.bb163
    i32 3, label %sw.bb186
    i32 4, label %sw.bb212
    i32 5, label %if.end91.sw.bb243_crit_edge
    i32 6, label %if.end91.sw.bb243_crit_edge604
  ]

if.end91.sw.bb243_crit_edge604:                   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb243

if.end91.sw.bb243_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb243

sw.bb:                                            ; preds = %if.end91
  %and = and i32 %call75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  br i1 %tobool105.not, label %if.else107, label %if.then106

if.then106:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %have_oc_fault = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %have_oc_fault to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %have_oc_fault, align 4
  br label %if.end108

if.else107:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %have_uc_fault = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %have_uc_fault to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %have_uc_fault, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.else107, %if.then106
  %have_pin_max = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %have_pin_max to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %have_pin_max, align 1
  %have_vaux_status = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %have_vaux_status to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %have_vaux_status, align 1
  %and109 = and i32 %call71, 24
  %34 = zext i32 %and109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and109, label %do.end114 [
    i32 8, label %if.end108.sw.epilog_crit_edge
    i32 16, label %sw.bb111
  ]

if.end108.sw.epilog_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.22) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end114, %sw.bb111, %if.end108.sw.epilog_crit_edge
  %cindex.0 = phi i32 [ -1, %do.end114 ], [ 2, %sw.bb111 ], [ 1, %if.end108.sw.epilog_crit_edge ]
  %pindex.0 = phi i32 [ -1, %do.end114 ], [ 4, %sw.bb111 ], [ 3, %if.end108.sw.epilog_crit_edge ]
  %35 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %func, align 4
  %or = or i32 %36, 16417
  store i32 %or, ptr %func, align 4
  %and118 = and i32 %call71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %sw.epilog.if.then285_crit_edge, label %if.then120

sw.epilog.if.then285_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then285

if.then120:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or123 = or i32 %36, 20517
  br label %if.then285.sink.split

sw.bb125:                                         ; preds = %if.end91
  %have_vout = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %have_vout to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %have_vout, align 2
  %have_pin_max126 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %have_pin_max126 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %have_pin_max126, align 1
  %have_temp_max = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %have_temp_max to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %have_temp_max, align 4
  %have_power_sampling = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 10
  %40 = ptrtoint ptr %have_power_sampling to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %have_power_sampling, align 1
  %and127 = lshr i32 %call71, 5
  %and127.lobit = and i32 %and127, 1
  %and129 = and i32 %call71, 1
  %41 = or i32 %and129, 2
  %and132 = and i32 %call71, 33
  %42 = zext i32 %and132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and132, label %sw.bb125.unreachabledefault [
    i32 0, label %sw.bb125.sw.epilog138_crit_edge
    i32 32, label %sw.bb135
    i32 1, label %sw.bb136
    i32 33, label %sw.bb137
  ]

sw.bb125.sw.epilog138_crit_edge:                  ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog138

sw.bb125.unreachabledefault:                      ; preds = %sw.bb125
  unreachable

sw.bb135:                                         ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog138

sw.bb136:                                         ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog138

sw.bb137:                                         ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog138

sw.epilog138:                                     ; preds = %sw.bb137, %sw.bb136, %sw.bb135, %sw.bb125.sw.epilog138_crit_edge
  %pindex.1 = phi i32 [ 7, %sw.bb137 ], [ 6, %sw.bb136 ], [ 5, %sw.bb135 ], [ 4, %sw.bb125.sw.epilog138_crit_edge ]
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4256308, ptr %func, align 4
  %and142 = and i32 %call71, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and142)
  %cmp143.not = icmp eq i32 %and142, 10
  br i1 %cmp143.not, label %sw.epilog138.if.end155_crit_edge, label %if.then144

sw.epilog138.if.end155_crit_edge:                 ; preds = %sw.epilog138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then144:                                       ; preds = %sw.epilog138
  %or145 = or i32 %call71, 10
  %conv = trunc i32 %or145 to i8
  %call146 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -44, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %do.end152, label %if.then144.if.end155_crit_edge

if.then144.if.end155_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

do.end152:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end155:                                        ; preds = %if.then144.if.end155_crit_edge, %sw.epilog138.if.end155_crit_edge
  %config.0 = phi i32 [ %or145, %if.then144.if.end155_crit_edge ], [ %call71, %sw.epilog138.if.end155_crit_edge ]
  %and156 = and i32 %config.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.if.then285_crit_edge, label %if.then158

if.end155.if.then285_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then285

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %func, align 4
  %or161 = or i32 %45, 1
  br label %if.then285.sink.split

sw.bb163:                                         ; preds = %if.end91
  %and164 = and i32 %call75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.else168, label %if.then166

if.then166:                                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  %have_oc_fault167 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 1
  %46 = ptrtoint ptr %have_oc_fault167 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %have_oc_fault167, align 4
  br label %if.end170

if.else168:                                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  %have_uc_fault169 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %have_uc_fault169 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %have_uc_fault169, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.else168, %if.then166
  %have_vout171 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %have_vout171 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %have_vout171, align 2
  %and172 = lshr i32 %call71, 5
  %and172.lobit = and i32 %and172, 1
  %49 = xor i32 %and172.lobit, 1
  %and175 = and i32 %call71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  %50 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %func, align 4
  br i1 %tobool176.not, label %if.else181, label %if.then177

if.then177:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %or180 = or i32 %51, 4100
  br label %.sink.split

if.else181:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %or184 = or i32 %51, 16385
  br label %.sink.split

sw.bb186:                                         ; preds = %if.end91
  %and187 = and i32 %call75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.else191, label %if.then189

if.then189:                                       ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #11
  %have_oc_fault190 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %have_oc_fault190 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %have_oc_fault190, align 4
  br label %if.end193

if.else191:                                       ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #11
  %have_uc_fault192 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %have_uc_fault192 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %have_uc_fault192, align 1
  br label %if.end193

if.end193:                                        ; preds = %if.else191, %if.then189
  %have_vout194 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 3
  %54 = ptrtoint ptr %have_vout194 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %have_vout194, align 2
  %have_pin_max195 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 8
  %55 = ptrtoint ptr %have_pin_max195 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %have_pin_max195, align 1
  %and196 = and i32 %call71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  %and196.lobit = lshr exact i32 %and196, 5
  %56 = xor i32 %and196.lobit, 1
  %cond201 = select i1 %tobool197.not, i32 4, i32 3
  %57 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %func, align 4
  %or204 = or i32 %58, 16417
  store i32 %or204, ptr %func, align 4
  %and205 = and i32 %call71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end193._crit_edge, label %if.then207

if.end193._crit_edge:                             ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %74

if.then207:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %or210 = or i32 %58, 20517
  br label %.sink.split

sw.bb212:                                         ; preds = %if.end91
  %have_vout213 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %have_vout213 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %have_vout213, align 2
  %have_pin_max214 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 8
  %60 = ptrtoint ptr %have_pin_max214 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %have_pin_max214, align 1
  %have_temp_max215 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 9
  %61 = ptrtoint ptr %have_temp_max215 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %have_temp_max215, align 4
  %have_power_sampling216 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 10
  %62 = ptrtoint ptr %have_power_sampling216 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %have_power_sampling216, align 1
  %63 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4256308, ptr %func, align 4
  %and220 = and i32 %call71, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and220)
  %cmp221.not = icmp eq i32 %and220, 10
  br i1 %cmp221.not, label %sw.bb212.if.end235_crit_edge, label %if.then223

sw.bb212.if.end235_crit_edge:                     ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

if.then223:                                       ; preds = %sw.bb212
  %or224 = or i32 %call71, 10
  %conv225 = trunc i32 %or224 to i8
  %call226 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -44, i8 noundef zeroext %conv225) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %do.end232, label %if.then223.if.end235_crit_edge

if.then223.if.end235_crit_edge:                   ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

do.end232:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end235:                                        ; preds = %if.then223.if.end235_crit_edge, %sw.bb212.if.end235_crit_edge
  %config.1 = phi i32 [ %or224, %if.then223.if.end235_crit_edge ], [ %call71, %sw.bb212.if.end235_crit_edge ]
  %and236 = and i32 %config.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end235.if.then285_crit_edge, label %if.then238

if.end235.if.then285_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then285

if.then238:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %func, align 4
  %or241 = or i32 %65, 1
  br label %if.then285.sink.split

sw.bb243:                                         ; preds = %if.end91.sw.bb243_crit_edge, %if.end91.sw.bb243_crit_edge604
  %have_mfr_vaux_status = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 5
  %have_power_sampling245 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 10
  %66 = ptrtoint ptr %have_power_sampling245 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %have_power_sampling245, align 1
  %and246 = and i32 %call71, 12
  %67 = ptrtoint ptr %have_mfr_vaux_status to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16843009, ptr %have_mfr_vaux_status, align 4
  %68 = zext i32 %and246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %and246, label %sw.bb243.sw.epilog251_crit_edge [
    i32 4, label %sw.bb247
    i32 8, label %sw.bb248
    i32 12, label %sw.bb249
  ]

sw.bb243.sw.epilog251_crit_edge:                  ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog251

sw.bb247:                                         ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog251

sw.bb248:                                         ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog251

sw.bb249:                                         ; preds = %sw.bb243
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog251

sw.epilog251:                                     ; preds = %sw.bb249, %sw.bb248, %sw.bb247, %sw.bb243.sw.epilog251_crit_edge
  %cmp258 = phi i1 [ false, %sw.bb243.sw.epilog251_crit_edge ], [ true, %sw.bb249 ], [ true, %sw.bb248 ], [ true, %sw.bb247 ]
  %vindex.0 = phi i32 [ -1, %sw.bb243.sw.epilog251_crit_edge ], [ 2, %sw.bb249 ], [ 1, %sw.bb248 ], [ 0, %sw.bb247 ]
  %and252 = lshr i32 %call71, 6
  %69 = and i32 %and252, 3
  %switch.offset = add nuw nsw i32 %69, 3
  %mul = shl nsw i32 %vindex.0, 2
  %sub = add nsw i32 %mul, 4
  %add261 = add nsw i32 %sub, %switch.offset
  %pindex.2 = select i1 %cmp258, i32 %add261, i32 -1
  %and263 = and i32 %call71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %sw.epilog251.sw.epilog278_crit_edge, label %if.then265

sw.epilog251.sw.epilog278_crit_edge:              ; preds = %sw.epilog251
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog278

if.then265:                                       ; preds = %sw.epilog251
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4206612, ptr %func, align 4
  br label %sw.epilog278

do.end276:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.14) #12
  br label %cleanup

sw.epilog278:                                     ; preds = %if.then265, %sw.epilog251.sw.epilog278_crit_edge
  %71 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %func, align 4
  %or272 = or i32 %72, 16417
  br label %.sink.split

.sink.split:                                      ; preds = %sw.epilog278, %if.then207, %if.else181, %if.then177
  %or184.sink = phi i32 [ %or184, %if.else181 ], [ %or180, %if.then177 ], [ %or210, %if.then207 ], [ %or272, %sw.epilog278 ]
  %pindex.3574.ph = phi i32 [ -1, %if.else181 ], [ -1, %if.then177 ], [ %cond201, %if.then207 ], [ %pindex.2, %sw.epilog278 ]
  %cindex.2572.ph = phi i32 [ 2, %if.else181 ], [ 2, %if.then177 ], [ 2, %if.then207 ], [ %switch.offset, %sw.epilog278 ]
  %vindex.1570.ph = phi i32 [ %49, %if.else181 ], [ %49, %if.then177 ], [ %56, %if.then207 ], [ %vindex.0, %sw.epilog278 ]
  %coefficients.0564.ph = phi ptr [ @adm1275_coefficients, %if.else181 ], [ @adm1275_coefficients, %if.then177 ], [ @adm1276_coefficients, %if.then207 ], [ @adm1293_coefficients, %sw.epilog278 ]
  %.ph = phi i32 [ %49, %if.else181 ], [ %49, %if.then177 ], [ %56, %if.then207 ], [ 0, %sw.epilog278 ]
  %73 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or184.sink, ptr %func, align 4
  br label %74

74:                                               ; preds = %.sink.split, %if.end193._crit_edge
  %pindex.3574 = phi i32 [ %cond201, %if.end193._crit_edge ], [ %pindex.3574.ph, %.sink.split ]
  %cindex.2572 = phi i32 [ 2, %if.end193._crit_edge ], [ %cindex.2572.ph, %.sink.split ]
  %vindex.1570 = phi i32 [ %56, %if.end193._crit_edge ], [ %vindex.1570.ph, %.sink.split ]
  %coefficients.0564 = phi ptr [ @adm1276_coefficients, %if.end193._crit_edge ], [ %coefficients.0564.ph, %.sink.split ]
  %75 = phi i32 [ %56, %if.end193._crit_edge ], [ %.ph, %.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vindex.1570)
  %cmp283 = icmp sgt i32 %vindex.1570, -1
  br i1 %cmp283, label %.if.then285_crit_edge, label %.if.end298_crit_edge

.if.end298_crit_edge:                             ; preds = %74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end298

.if.then285_crit_edge:                            ; preds = %74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then285

if.then285.sink.split:                            ; preds = %if.then238, %if.then158, %if.then120
  %or241.sink = phi i32 [ %or241, %if.then238 ], [ %or161, %if.then158 ], [ %or123, %if.then120 ]
  %.ph602 = phi i32 [ 0, %if.then238 ], [ %and127.lobit, %if.then158 ], [ 0, %if.then120 ]
  %coefficients.0564596.ph = phi ptr [ @adm1278_coefficients, %if.then238 ], [ @adm1272_coefficients, %if.then158 ], [ @adm1075_coefficients, %if.then120 ]
  %cindex.2572594.ph = phi i32 [ 1, %if.then238 ], [ %41, %if.then158 ], [ %cindex.0, %if.then120 ]
  %pindex.3574592.ph = phi i32 [ 2, %if.then238 ], [ %pindex.1, %if.then158 ], [ %pindex.0, %if.then120 ]
  %cmp359576590.ph = phi i1 [ true, %if.then238 ], [ true, %if.then158 ], [ false, %if.then120 ]
  %tindex.0578588.ph = phi i32 [ 3, %if.then238 ], [ 8, %if.then158 ], [ -1, %if.then120 ]
  %76 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or241.sink, ptr %func, align 4
  br label %if.then285

if.then285:                                       ; preds = %if.then285.sink.split, %.if.then285_crit_edge, %if.end235.if.then285_crit_edge, %if.end155.if.then285_crit_edge, %sw.epilog.if.then285_crit_edge
  %77 = phi i32 [ %75, %.if.then285_crit_edge ], [ 0, %if.end235.if.then285_crit_edge ], [ %and127.lobit, %if.end155.if.then285_crit_edge ], [ 0, %sw.epilog.if.then285_crit_edge ], [ %.ph602, %if.then285.sink.split ]
  %coefficients.0564596 = phi ptr [ %coefficients.0564, %.if.then285_crit_edge ], [ @adm1278_coefficients, %if.end235.if.then285_crit_edge ], [ @adm1272_coefficients, %if.end155.if.then285_crit_edge ], [ @adm1075_coefficients, %sw.epilog.if.then285_crit_edge ], [ %coefficients.0564596.ph, %if.then285.sink.split ]
  %vindex.1570595 = phi i32 [ %vindex.1570, %.if.then285_crit_edge ], [ 0, %if.end235.if.then285_crit_edge ], [ %and127.lobit, %if.end155.if.then285_crit_edge ], [ 0, %sw.epilog.if.then285_crit_edge ], [ %.ph602, %if.then285.sink.split ]
  %cindex.2572594 = phi i32 [ %cindex.2572, %.if.then285_crit_edge ], [ 1, %if.end235.if.then285_crit_edge ], [ %41, %if.end155.if.then285_crit_edge ], [ %cindex.0, %sw.epilog.if.then285_crit_edge ], [ %cindex.2572594.ph, %if.then285.sink.split ]
  %pindex.3574592 = phi i32 [ %pindex.3574, %.if.then285_crit_edge ], [ 2, %if.end235.if.then285_crit_edge ], [ %pindex.1, %if.end155.if.then285_crit_edge ], [ %pindex.0, %sw.epilog.if.then285_crit_edge ], [ %pindex.3574592.ph, %if.then285.sink.split ]
  %cmp359576590 = phi i1 [ false, %.if.then285_crit_edge ], [ true, %if.end235.if.then285_crit_edge ], [ true, %if.end155.if.then285_crit_edge ], [ false, %sw.epilog.if.then285_crit_edge ], [ %cmp359576590.ph, %if.then285.sink.split ]
  %tindex.0578588 = phi i32 [ -1, %.if.then285_crit_edge ], [ 3, %if.end235.if.then285_crit_edge ], [ 8, %if.end155.if.then285_crit_edge ], [ -1, %sw.epilog.if.then285_crit_edge ], [ %tindex.0578588.ph, %if.then285.sink.split ]
  %arrayidx286 = getelementptr %struct.coefficients, ptr %coefficients.0564596, i32 %vindex.1570595
  %78 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx286, align 2
  %conv287 = sext i16 %79 to i32
  %m288 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 4
  %80 = ptrtoint ptr %m288 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv287, ptr %m288, align 4
  %b = getelementptr %struct.coefficients, ptr %coefficients.0564596, i32 %vindex.1570595, i32 1
  %81 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %b, align 2
  %conv291 = sext i16 %82 to i32
  %b292 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 5
  %83 = ptrtoint ptr %b292 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv291, ptr %b292, align 4
  %R = getelementptr %struct.coefficients, ptr %coefficients.0564596, i32 %vindex.1570595, i32 2
  %84 = ptrtoint ptr %R to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %R, align 2
  %conv295 = sext i16 %85 to i32
  %R296 = getelementptr inbounds %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 6
  %86 = ptrtoint ptr %R296 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv295, ptr %R296, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then285, %.if.end298_crit_edge
  %87 = phi i32 [ %77, %if.then285 ], [ %75, %.if.end298_crit_edge ]
  %cindex.2572593 = phi i32 [ %cindex.2572594, %if.then285 ], [ %cindex.2572, %.if.end298_crit_edge ]
  %pindex.3574591 = phi i32 [ %pindex.3574592, %if.then285 ], [ %pindex.3574, %.if.end298_crit_edge ]
  %cmp359576589 = phi i1 [ %cmp359576590, %if.then285 ], [ false, %.if.end298_crit_edge ]
  %tindex.0578587 = phi i32 [ %tindex.0578588, %if.then285 ], [ -1, %.if.end298_crit_edge ]
  %coefficients.0566 = phi ptr [ %coefficients.0564596, %if.then285 ], [ %coefficients.0564, %.if.end298_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %cmp299 = icmp sgt i32 %87, -1
  br i1 %cmp299, label %if.then301, label %if.end298.if.end317_crit_edge

if.end298.if.end317_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end317

if.then301:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx302 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %87
  %88 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx302, align 2
  %conv304 = sext i16 %89 to i32
  %arrayidx306 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 4, i32 1
  %90 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv304, ptr %arrayidx306, align 4
  %b308 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %87, i32 1
  %91 = ptrtoint ptr %b308 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %b308, align 2
  %conv309 = sext i16 %92 to i32
  %arrayidx311 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 5, i32 1
  %93 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv309, ptr %arrayidx311, align 4
  %R313 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %87, i32 2
  %94 = ptrtoint ptr %R313 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %R313, align 2
  %conv314 = sext i16 %95 to i32
  %arrayidx316 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 6, i32 1
  %96 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv314, ptr %arrayidx316, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.then301, %if.end298.if.end317_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cindex.2572593)
  %cmp318 = icmp sgt i32 %cindex.2572593, -1
  br i1 %cmp318, label %if.then320, label %if.end317.if.end337_crit_edge

if.end317.if.end337_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end337

if.then320:                                       ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx321 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %cindex.2572593
  %97 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx321, align 2
  %conv323 = sext i16 %98 to i32
  %99 = ptrtoint ptr %shunt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %shunt, align 4
  %mul324 = mul i32 %100, %conv323
  %div = udiv i32 %mul324, 1000
  %arrayidx326 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 4, i32 3
  %101 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div, ptr %arrayidx326, align 4
  %b328 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %cindex.2572593, i32 1
  %102 = ptrtoint ptr %b328 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %b328, align 2
  %conv329 = sext i16 %103 to i32
  %arrayidx331 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 5, i32 3
  %104 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv329, ptr %arrayidx331, align 4
  %R333 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %cindex.2572593, i32 2
  %105 = ptrtoint ptr %R333 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %R333, align 2
  %conv334 = sext i16 %106 to i32
  %arrayidx336 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 6, i32 3
  %107 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv334, ptr %arrayidx336, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then320, %if.end317.if.end337_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pindex.3574591)
  %cmp338 = icmp sgt i32 %pindex.3574591, -1
  br i1 %cmp338, label %if.then340, label %if.end337.if.end358_crit_edge

if.end337.if.end358_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end358

if.then340:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx341 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %pindex.3574591
  %108 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx341, align 2
  %conv343 = sext i16 %109 to i32
  %110 = ptrtoint ptr %shunt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %shunt, align 4
  %mul344 = mul i32 %111, %conv343
  %div345 = udiv i32 %mul344, 1000
  %arrayidx347 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 4, i32 4
  %112 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div345, ptr %arrayidx347, align 4
  %b349 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %pindex.3574591, i32 1
  %113 = ptrtoint ptr %b349 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %b349, align 2
  %conv350 = sext i16 %114 to i32
  %arrayidx352 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 5, i32 4
  %115 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv350, ptr %arrayidx352, align 4
  %R354 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %pindex.3574591, i32 2
  %116 = ptrtoint ptr %R354 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %R354, align 2
  %conv355 = sext i16 %117 to i32
  %arrayidx357 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 6, i32 4
  %118 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv355, ptr %arrayidx357, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.then340, %if.end337.if.end358_crit_edge
  br i1 %cmp359576589, label %if.then361, label %if.end358.if.end377_crit_edge

if.end358.if.end377_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end377

if.then361:                                       ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx362 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %tindex.0578587
  %119 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx362, align 2
  %conv364 = sext i16 %120 to i32
  %arrayidx366 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 4, i32 5
  %121 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv364, ptr %arrayidx366, align 4
  %b368 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %tindex.0578587, i32 1
  %122 = ptrtoint ptr %b368 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %b368, align 2
  %conv369 = sext i16 %123 to i32
  %arrayidx371 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 5, i32 5
  %124 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv369, ptr %arrayidx371, align 4
  %R373 = getelementptr %struct.coefficients, ptr %coefficients.0566, i32 %tindex.0578587, i32 2
  %125 = ptrtoint ptr %R373 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %R373, align 2
  %conv374 = sext i16 %126 to i32
  %arrayidx376 = getelementptr %struct.adm1275_data, ptr %call.i, i32 0, i32 11, i32 6, i32 5
  %127 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv374, ptr %arrayidx376, align 4
  br label %if.end377

if.end377:                                        ; preds = %if.then361, %if.end358.if.end377_crit_edge
  %call378 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info93) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end377, %do.end276, %do.end232, %do.end152, %if.end88.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %for.inc.6, %do.end20, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ -19, %do.end11 ], [ %call15, %do.end20 ], [ -19, %do.end276 ], [ %call378, %if.end377 ], [ -19, %do.end232 ], [ -19, %do.end152 ], [ -19, %for.inc.6 ], [ -19, %entry.cleanup_crit_edge ], [ %call71, %if.end70.cleanup_crit_edge ], [ %call75, %if.end74.cleanup_crit_edge ], [ -12, %if.end78.cleanup_crit_edge ], [ -22, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shunt) #9
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %block_buffer) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1275_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %add.ptr = getelementptr i8, ptr %call, i32 -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %reg, label %sw.default [
    i32 75, label %sw.bb
    i32 70, label %sw.bb4
    i32 66, label %sw.bb9
    i32 67, label %sw.bb14
    i32 139, label %sw.bb20
    i32 282, label %sw.bb26
    i32 283, label %sw.bb31
    i32 279, label %sw.bb33
    i32 263, label %sw.bb35
    i32 270, label %sw.bb37
    i32 271, label %sw.bb42
    i32 259, label %sw.bb47
    i32 284, label %if.end.sw.epilog_crit_edge
    i32 280, label %if.end.sw.epilog_crit_edge111
    i32 264, label %if.end.sw.epilog_crit_edge112
    i32 272, label %sw.bb53
    i32 260, label %sw.bb58
    i32 310, label %sw.bb63
    i32 308, label %if.end.sw.bb71_crit_edge
    i32 309, label %if.end.sw.bb71_crit_edge113
  ]

if.end.sw.bb71_crit_edge113:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

if.end.sw.bb71_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

if.end.sw.epilog_crit_edge112:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge111:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %have_uc_fault = getelementptr i8, ptr %call, i32 -11
  %1 = ptrtoint ptr %have_uc_fault to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %have_uc_fault, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -41) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %have_oc_fault = getelementptr i8, ptr %call, i32 -12
  %3 = ptrtoint ptr %have_oc_fault to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %have_oc_fault, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %sw.bb4.cleanup_crit_edge, label %if.end7

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -41) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %have_vout = getelementptr i8, ptr %call, i32 -10
  %5 = ptrtoint ptr %have_vout to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %have_vout, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -34) #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %have_vout15 = getelementptr i8, ptr %call, i32 -10
  %7 = ptrtoint ptr %have_vout15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %have_vout15, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end18, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -33) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %have_vout21 = getelementptr i8, ptr %call, i32 -10
  %9 = ptrtoint ptr %have_vout21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %have_vout21, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %if.end24, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -35) #9
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %have_iout_min = getelementptr i8, ptr %call, i32 -7
  %11 = ptrtoint ptr %have_iout_min to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %have_iout_min, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not = icmp eq i8 %12, 0
  br i1 %tobool27.not, label %sw.bb26.cleanup_crit_edge, label %if.end29

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -29) #9
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -48) #9
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -46) #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -47) #9
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  %have_pin_min = getelementptr i8, ptr %call, i32 -6
  %13 = ptrtoint ptr %have_pin_min to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %have_pin_min, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool38.not = icmp eq i8 %14, 0
  br i1 %tobool38.not, label %sw.bb37.cleanup_crit_edge, label %if.end40

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -28) #9
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end
  %have_pin_max = getelementptr i8, ptr %call, i32 -5
  %15 = ptrtoint ptr %have_pin_max to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %have_pin_max, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool43.not = icmp eq i8 %16, 0
  br i1 %tobool43.not, label %sw.bb42.cleanup_crit_edge, label %if.end45

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -38) #9
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  %have_temp_max = getelementptr i8, ptr %call, i32 -4
  %17 = ptrtoint ptr %have_temp_max to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %have_temp_max, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool48.not = icmp eq i8 %18, 0
  br i1 %tobool48.not, label %sw.bb47.cleanup_crit_edge, label %if.end50

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef 0, i32 noundef 255, i8 noundef zeroext -41) #9
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end
  %have_pin_max54 = getelementptr i8, ptr %call, i32 -5
  %19 = ptrtoint ptr %have_pin_max54 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %have_pin_max54, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool55.not = icmp eq i8 %20, 0
  br i1 %tobool55.not, label %sw.bb53.cleanup_crit_edge, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb58:                                          ; preds = %if.end
  %have_temp_max59 = getelementptr i8, ptr %call, i32 -4
  %21 = ptrtoint ptr %have_temp_max59 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %have_temp_max59, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool60.not = icmp eq i8 %22, 0
  br i1 %tobool60.not, label %sw.bb58.cleanup_crit_edge, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb63:                                          ; preds = %if.end
  %have_power_sampling = getelementptr i8, ptr %call, i32 -3
  %23 = ptrtoint ptr %have_power_sampling to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %have_power_sampling, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool64.not = icmp eq i8 %24, 0
  br i1 %tobool64.not, label %sw.bb63.cleanup_crit_edge, label %if.end66

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call fastcc i32 @adm1275_read_pmon_config(ptr noundef %add.ptr, ptr noundef %client, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  %shl = shl nuw i32 1, %call67
  %spec.select = select i1 %cmp68, i32 %call67, i32 %shl
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end.sw.bb71_crit_edge, %if.end.sw.bb71_crit_edge113
  %have_power_sampling.i = getelementptr i8, ptr %call, i32 -3
  %25 = ptrtoint ptr %have_power_sampling.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %have_power_sampling.i, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %adm1275_read_pmon_config.exit

if.else.i:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %adm1275_read_pmon_config.exit

adm1275_read_pmon_config.exit:                    ; preds = %if.else.i, %if.then.i
  %shift.0.i = phi i32 [ 8, %if.then.i ], [ 0, %if.else.i ]
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.else.i ]
  %mask.0.i = phi i32 [ 1792, %if.then.i ], [ 7, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  %and.i = and i32 %mask.0.i, %ret.0.i
  %shr.i = lshr i32 %and.i, %shift.0.i
  %shl76 = shl nuw i32 1, %shr.i
  %spec.select110 = select i1 %cmp.i, i32 %ret.0.i, i32 %shl76
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %adm1275_read_pmon_config.exit, %if.end66, %sw.bb58.sw.epilog_crit_edge, %sw.bb53.sw.epilog_crit_edge, %if.end50, %if.end45, %if.end40, %sw.bb35, %sw.bb33, %sw.bb31, %if.end29, %if.end24, %if.end18, %if.end12, %if.end7, %if.end2, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge111, %if.end.sw.epilog_crit_edge112
  %ret.0 = phi i32 [ -61, %sw.default ], [ 0, %sw.bb58.sw.epilog_crit_edge ], [ 0, %sw.bb53.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge111 ], [ 0, %if.end.sw.epilog_crit_edge112 ], [ %call51, %if.end50 ], [ %call46, %if.end45 ], [ %call41, %if.end40 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call32, %sw.bb31 ], [ %call30, %if.end29 ], [ %call25, %if.end24 ], [ %call19, %if.end18 ], [ %call13, %if.end12 ], [ %call8, %if.end7 ], [ %call3, %if.end2 ], [ %spec.select, %if.end66 ], [ %spec.select110, %adm1275_read_pmon_config.exit ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb63.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.bb.cleanup_crit_edge ], [ -6, %sw.bb4.cleanup_crit_edge ], [ -61, %sw.bb9.cleanup_crit_edge ], [ -61, %sw.bb14.cleanup_crit_edge ], [ -61, %sw.bb20.cleanup_crit_edge ], [ -6, %sw.bb26.cleanup_crit_edge ], [ -6, %sw.bb37.cleanup_crit_edge ], [ -6, %sw.bb42.cleanup_crit_edge ], [ -6, %sw.bb47.cleanup_crit_edge ], [ -6, %sw.bb53.cleanup_crit_edge ], [ -6, %sw.bb58.cleanup_crit_edge ], [ -6, %sw.bb63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1275_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 123, label %sw.bb
    i32 122, label %sw.bb17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %have_oc_fault = getelementptr i8, ptr %call, i32 -12
  %1 = ptrtoint ptr %have_oc_fault to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %have_oc_fault, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end4
  %have_uc_fault = getelementptr i8, ptr %call, i32 -11
  %3 = ptrtoint ptr %have_uc_fault to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %have_uc_fault, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %call8 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %and = and i32 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %have_oc_fault to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %have_oc_fault, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool15.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool15.not, i32 16, i32 128
  %or = or i32 %cond, %call1
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %have_vout = getelementptr i8, ptr %call, i32 -10
  %7 = ptrtoint ptr %have_vout to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %have_vout, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  br i1 %tobool18.not, label %if.end20, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %sw.bb17
  %have_vaux_status = getelementptr i8, ptr %call, i32 -9
  %9 = ptrtoint ptr %have_vaux_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %have_vaux_status, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool21.not = icmp eq i8 %10, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then22.cleanup_crit_edge, label %if.end26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %and27 = lshr i32 %call23, 1
  %11 = and i32 %and27, 96
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %have_mfr_vaux_status = getelementptr i8, ptr %call, i32 -8
  %12 = ptrtoint ptr %have_mfr_vaux_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %have_mfr_vaux_status, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %if.else.cleanup_crit_edge, label %if.then38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  %14 = and i32 %call39, 96
  %spec.select = select i1 %cmp40, i32 %call39, i32 %14
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.else.cleanup_crit_edge, %if.end26, %if.then22.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.then13, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -61, %sw.bb17.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %or, %if.then13 ], [ %call1, %if.end11.cleanup_crit_edge ], [ %call1, %land.lhs.true.cleanup_crit_edge ], [ -61, %if.end.cleanup_crit_edge ], [ %11, %if.end26 ], [ %spec.select, %if.then38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1275_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 75, label %if.end.sw.bb_crit_edge
    i32 70, label %if.end.sw.bb_crit_edge170
    i32 284, label %sw.bb2
    i32 280, label %sw.bb8
    i32 264, label %sw.bb10
    i32 272, label %sw.bb12
    i32 260, label %sw.bb20
    i32 310, label %sw.bb22
    i32 308, label %if.end.cond.false97_crit_edge
    i32 309, label %if.end.cond.false97_crit_edge171
  ]

if.end.cond.false97_crit_edge171:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false97

if.end.cond.false97_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false97

if.end.sw.bb_crit_edge170:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge170
  %call1 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -41, i16 noundef zeroext %word) #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %call3 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -48, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb2
  %have_iout_min = getelementptr i8, ptr %call, i32 -7
  %1 = ptrtoint ptr %have_iout_min to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %have_iout_min, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29, i16 noundef zeroext 0) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -46, i16 noundef zeroext 0) #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -47, i16 noundef zeroext 0) #9
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %call13 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -38, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true15:                                  ; preds = %sw.bb12
  %have_pin_min = getelementptr i8, ptr %call, i32 -6
  %3 = ptrtoint ptr %have_pin_min to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %have_pin_min, align 2, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool16.not = icmp eq i8 %4, 0
  br i1 %tobool16.not, label %land.lhs.true15.cleanup_crit_edge, label %if.then17

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -28, i16 noundef zeroext 0) #9
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 @pmbus_write_word_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -41, i16 noundef zeroext 0) #9
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %have_power_sampling = getelementptr i8, ptr %call, i32 -3
  %5 = ptrtoint ptr %have_power_sampling to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %have_power_sampling, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool23.not = icmp eq i8 %6, 0
  br i1 %tobool23.not, label %sw.bb22.cleanup_crit_edge, label %cond.false54

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false54:                                     ; preds = %sw.bb22
  %7 = tail call i16 @llvm.umax.i16(i16 %word, i16 1)
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 128)
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #9, !range !85
  %sub.i = sub nsw i32 31, %10
  %11 = ptrtoint ptr %have_power_sampling to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %have_power_sampling, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.false54
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %if.end.i

if.else.i:                                        ; preds = %cond.false54
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %shift.0.i = phi i32 [ 11, %if.then.i ], [ 0, %if.else.i ]
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.else.i ]
  %mask.0.i = phi i32 [ 14336, %if.then.i ], [ 7, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %neg.i = xor i32 %mask.0.i, -1
  %and.i = and i32 %ret.0.i, %neg.i
  %conv10.i = and i32 %sub.i, 65535
  %shl.i = shl nuw nsw i32 %conv10.i, %shift.0.i
  %and12.i = and i32 %mask.0.i, %shl.i
  %or.i = or i32 %and.i, %and12.i
  %13 = ptrtoint ptr %have_power_sampling to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %have_power_sampling, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not.i = icmp eq i8 %14, 0
  br i1 %tobool15.not.i, label %if.else18.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.i = trunc i32 %or.i to i16
  %call17.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -44, i16 noundef zeroext %conv13.i) #9
  br label %cleanup

if.else18.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv19.i = trunc i32 %or.i to i8
  %call20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -44, i8 noundef zeroext %conv19.i) #9
  br label %cleanup

cond.false97:                                     ; preds = %if.end.cond.false97_crit_edge, %if.end.cond.false97_crit_edge171
  %15 = tail call i16 @llvm.umax.i16(i16 %word, i16 1)
  %16 = tail call i16 @llvm.umin.i16(i16 %15, i16 128)
  %17 = zext i16 %16 to i32
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #9, !range !85
  %sub.i142 = sub nsw i32 31, %18
  %have_power_sampling.i143 = getelementptr i8, ptr %call, i32 -3
  %19 = ptrtoint ptr %have_power_sampling.i143 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %have_power_sampling.i143, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i144 = icmp eq i8 %20, 0
  br i1 %tobool.not.i144, label %if.else.i148, label %if.then.i146

if.then.i146:                                     ; preds = %cond.false97
  call void @__sanitizer_cov_trace_pc() #11
  %call.i145 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %if.end.i153

if.else.i148:                                     ; preds = %cond.false97
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i147 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %if.end.i153

if.end.i153:                                      ; preds = %if.else.i148, %if.then.i146
  %shift.0.i149 = phi i32 [ 8, %if.then.i146 ], [ 0, %if.else.i148 ]
  %ret.0.i150 = phi i32 [ %call.i145, %if.then.i146 ], [ %call5.i147, %if.else.i148 ]
  %mask.0.i151 = phi i32 [ 1792, %if.then.i146 ], [ 7, %if.else.i148 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i150)
  %cmp.i152 = icmp slt i32 %ret.0.i150, 0
  br i1 %cmp.i152, label %if.end.i153.cleanup_crit_edge, label %if.end8.i161

if.end.i153.cleanup_crit_edge:                    ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i161:                                     ; preds = %if.end.i153
  %neg.i154 = xor i32 %mask.0.i151, -1
  %and.i155 = and i32 %ret.0.i150, %neg.i154
  %conv10.i156 = and i32 %sub.i142, 65535
  %shl.i157 = shl nuw nsw i32 %conv10.i156, %shift.0.i149
  %and12.i158 = and i32 %mask.0.i151, %shl.i157
  %or.i159 = or i32 %and.i155, %and12.i158
  %21 = ptrtoint ptr %have_power_sampling.i143 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %have_power_sampling.i143, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not.i160 = icmp eq i8 %22, 0
  br i1 %tobool15.not.i160, label %if.else18.i167, label %if.then16.i164

if.then16.i164:                                   ; preds = %if.end8.i161
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.i162 = trunc i32 %or.i159 to i16
  %call17.i163 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext -44, i16 noundef zeroext %conv13.i162) #9
  br label %cleanup

if.else18.i167:                                   ; preds = %if.end8.i161
  call void @__sanitizer_cov_trace_pc() #11
  %conv19.i165 = trunc i32 %or.i159 to i8
  %call20.i166 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -44, i8 noundef zeroext %conv19.i165) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else18.i167, %if.then16.i164, %if.end.i153.cleanup_crit_edge, %if.else18.i, %if.then16.i, %if.end.i.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb20, %if.then17, %land.lhs.true15.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb10, %sw.bb8, %if.then5, %land.lhs.true.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -6, %sw.bb22.cleanup_crit_edge ], [ %call21, %sw.bb20 ], [ %call13, %sw.bb12.cleanup_crit_edge ], [ %call18, %if.then17 ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call6, %if.then5 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call1, %sw.bb ], [ -61, %if.end.cleanup_crit_edge ], [ %ret.0.i, %if.end.i.cleanup_crit_edge ], [ %call17.i, %if.then16.i ], [ %call20.i, %if.else18.i ], [ %ret.0.i150, %if.end.i153.cleanup_crit_edge ], [ %call17.i163, %if.then16.i164 ], [ %call20.i166, %if.else18.i167 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adm1275_read_pmon_config(ptr nocapture noundef readonly %data, ptr noundef %client, i1 noundef zeroext %is_power) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %have_power_sampling = getelementptr inbounds %struct.adm1275_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %have_power_sampling to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %have_power_sampling, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -44) #9
  %cond = select i1 %is_power, i32 14336, i32 1792
  %cond4 = select i1 %is_power, i32 11, i32 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -44) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shift.0 = phi i32 [ %cond4, %if.then ], [ 0, %if.else ]
  %ret.0 = phi i32 [ %call, %if.then ], [ %call5, %if.else ]
  %mask.0 = phi i32 [ %cond, %if.then ], [ 7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  %and = and i32 %mask.0, %ret.0
  %shr = lshr i32 %and, %shift.0
  %retval.0 = select i1 %cmp, i32 %ret.0, i32 %shr
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_word_data(ptr noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_adm1275__296_801_adm1275_driver_init6, !1, !"__initcall__kmod_adm1275__296_801_adm1275_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 801, i32 1}
!2 = !{ptr @__exitcall_adm1275_driver_exit, !1, !"__exitcall_adm1275_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 803, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 804, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 805, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns301, !11, !"__UNIQUE_ID_import_ns301", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 806, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 795, i32 14}
!14 = !{ptr @adm1275_driver, !15, !"adm1275_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 793, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 486, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adm1275_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adm1275_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 489, i32 40}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 490, i32 3}
!28 = !{ptr @adm1275_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adm1275_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 496, i32 3}
!32 = !{ptr @adm1275_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adm1275_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 504, i32 3}
!36 = !{ptr @adm1275_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @adm1275_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 509, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adm1275_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @adm1275_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 532, i32 6}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 576, i32 4}
!47 = !{ptr @adm1275_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @adm1275_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 625, i32 5}
!51 = !{ptr @adm1275_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @adm1275_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @adm1275_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 694, i32 5}
!55 = !{ptr @adm1275_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @adm1275_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 755, i32 3}
!58 = !{ptr @adm1275_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @adm1075_coefficients, !60, !"adm1075_coefficients", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 109, i32 34}
!61 = !{ptr @adm1272_coefficients, !62, !"adm1272_coefficients", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 117, i32 34}
!63 = !{ptr @adm1275_coefficients, !64, !"adm1275_coefficients", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 130, i32 34}
!65 = !{ptr @adm1276_coefficients, !66, !"adm1276_coefficients", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 136, i32 34}
!67 = !{ptr @adm1278_coefficients, !68, !"adm1278_coefficients", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 144, i32 34}
!69 = !{ptr @adm1293_coefficients, !70, !"adm1293_coefficients", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 151, i32 34}
!71 = !{ptr @adm1275_id, !72, !"adm1275_id", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/pmbus/adm1275.c", i32 453, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{ptr @i2c_smbus_read_byte_data, ptr @i2c_smbus_read_word_data}
!84 = !{i8 0, i8 2}
!85 = !{i32 0, i32 33}
